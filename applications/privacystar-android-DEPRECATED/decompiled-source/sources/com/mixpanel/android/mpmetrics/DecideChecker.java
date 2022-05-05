package com.mixpanel.android.mpmetrics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.mixpanel.android.mpmetrics.InAppNotification;
import com.mixpanel.android.util.ImageStore;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.util.RemoteService;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/DecideChecker.class */
public class DecideChecker {
    private static final String AUTOMATIC_EVENTS = "automatic_events";
    private static final JSONArray EMPTY_JSON_ARRAY = new JSONArray();
    private static final String EVENT_BINDINGS = "event_bindings";
    private static final String LOGTAG = "MixpanelAPI.DChecker";
    private static final String NOTIFICATIONS = "notifications";
    private static final String VARIANTS = "variants";
    private final Map<String, DecideMessages> mChecks = new HashMap();
    private final MPConfig mConfig;
    private final Context mContext;
    private final ImageStore mImageStore;
    private final SystemInformation mSystemInformation;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/DecideChecker$Result.class */
    public static class Result {
        public final List<InAppNotification> notifications = new ArrayList();
        public JSONArray eventBindings = DecideChecker.EMPTY_JSON_ARRAY;
        public JSONArray variants = DecideChecker.EMPTY_JSON_ARRAY;
        public boolean automaticEvents = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/DecideChecker$UnintelligibleMessageException.class */
    public static class UnintelligibleMessageException extends Exception {
        private static final long serialVersionUID = -6501269367559104957L;

        public UnintelligibleMessageException(String str, JSONException jSONException) {
            super(str, jSONException);
        }
    }

    public DecideChecker(Context context, MPConfig mPConfig) {
        this.mContext = context;
        this.mConfig = mPConfig;
        this.mImageStore = createImageStore(context);
        this.mSystemInformation = SystemInformation.getInstance(context);
    }

    private static byte[] checkDecide(RemoteService remoteService, Context context, String str) throws RemoteService.ServiceUnavailableException {
        byte[] bArr;
        if (!remoteService.isOnline(context, MPConfig.getInstance(context).getOfflineMode())) {
            return null;
        }
        try {
            bArr = remoteService.performRequest(str, "").getResponseMessage().getBytes();
        } catch (FileNotFoundException e) {
            MPLog.m306v(LOGTAG, "Cannot get " + str + ", file not found.", e);
            bArr = null;
            return bArr;
        } catch (OutOfMemoryError e2) {
            MPLog.m310e(LOGTAG, "Out of memory when getting to " + str + ".", e2);
            bArr = null;
            return bArr;
        } catch (MalformedURLException e3) {
            MPLog.m310e(LOGTAG, "Cannot interpret " + str + " as a URL.", e3);
            bArr = null;
            return bArr;
        } catch (IOException e4) {
            MPLog.m306v(LOGTAG, "Cannot get " + str + ".", e4);
            bArr = null;
            return bArr;
        }
        return bArr;
    }

    private String getDecideResponseFromServer(String str, String str2, RemoteService remoteService) throws RemoteService.ServiceUnavailableException {
        try {
            String encode = URLEncoder.encode(str, "utf-8");
            String encode2 = str2 != null ? URLEncoder.encode(str2, "utf-8") : null;
            StringBuilder sb = new StringBuilder();
            sb.append("?version=1&lib=android&token=");
            sb.append(encode);
            if (encode2 != null) {
                sb.append("&distinct_id=");
                sb.append(encode2);
            }
            sb.append("&properties=");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("$android_lib_version", "5.2.2-SNAPSHOT");
                jSONObject.putOpt("$android_app_version", this.mSystemInformation.getAppVersionName());
                jSONObject.putOpt("$android_version", Build.VERSION.RELEASE);
                jSONObject.putOpt("$android_app_release", this.mSystemInformation.getAppVersionCode());
                jSONObject.putOpt("$android_device_model", Build.MODEL);
                sb.append(URLEncoder.encode(jSONObject.toString(), "utf-8"));
            } catch (Exception e) {
                MPLog.m310e(LOGTAG, "Exception constructing properties JSON", e.getCause());
            }
            String str3 = this.mConfig.getDecideEndpoint() + sb.toString();
            MPLog.m307v(LOGTAG, "Querying decide server, url: " + str3);
            byte[] checkDecide = checkDecide(remoteService, this.mContext, str3);
            if (checkDecide == null) {
                return null;
            }
            try {
                return new String(checkDecide, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                throw new RuntimeException("UTF not supported on this platform?", e2);
            }
        } catch (UnsupportedEncodingException e3) {
            throw new RuntimeException("Mixpanel library requires utf-8 string encoding to be available", e3);
        }
    }

    @SuppressLint({"NewApi"})
    private static int getDisplayWidth(Display display) {
        if (Build.VERSION.SDK_INT < 13) {
            return display.getWidth();
        }
        Point point = new Point();
        display.getSize(point);
        return point.x;
    }

    private Bitmap getNotificationImage(InAppNotification inAppNotification, Context context) throws RemoteService.ServiceUnavailableException {
        String[] strArr = {inAppNotification.getImage2xUrl(), inAppNotification.getImageUrl()};
        int displayWidth = getDisplayWidth(((WindowManager) context.getSystemService("window")).getDefaultDisplay());
        String[] strArr2 = strArr;
        if (inAppNotification.getType() == InAppNotification.Type.TAKEOVER) {
            strArr2 = strArr;
            if (displayWidth >= 720) {
                strArr2 = new String[]{inAppNotification.getImage4xUrl(), inAppNotification.getImage2xUrl(), inAppNotification.getImageUrl()};
            }
        }
        for (String str : strArr2) {
            try {
                return this.mImageStore.getImage(str);
            } catch (ImageStore.CantGetImageException e) {
                MPLog.m306v(LOGTAG, "Can't load image " + str + " for a notification", e);
            }
        }
        return null;
    }

    static Result parseDecideResponse(String str) throws UnintelligibleMessageException {
        Result result = new Result();
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = null;
            if (jSONObject.has(NOTIFICATIONS)) {
                try {
                    jSONArray = jSONObject.getJSONArray(NOTIFICATIONS);
                } catch (JSONException e) {
                    MPLog.m311e(LOGTAG, "Mixpanel endpoint returned non-array JSON for notifications: " + jSONObject);
                    jSONArray = null;
                }
            }
            if (jSONArray != null) {
                int min = Math.min(jSONArray.length(), 2);
                for (int i = 0; i < min; i++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        String string = jSONObject2.getString("type");
                        if (string.equalsIgnoreCase("takeover")) {
                            result.notifications.add(new TakeoverInAppNotification(jSONObject2));
                        } else if (string.equalsIgnoreCase("mini")) {
                            result.notifications.add(new MiniInAppNotification(jSONObject2));
                        }
                    } catch (BadDecideObjectException e2) {
                        MPLog.m310e(LOGTAG, "Received a strange response from notifications service: " + jSONArray.toString(), e2);
                    } catch (OutOfMemoryError e3) {
                        MPLog.m310e(LOGTAG, "Not enough memory to show load notification from package: " + jSONArray.toString(), e3);
                    } catch (JSONException e4) {
                        MPLog.m310e(LOGTAG, "Received a strange response from notifications service: " + jSONArray.toString(), e4);
                    }
                }
            }
            if (jSONObject.has(EVENT_BINDINGS)) {
                try {
                    result.eventBindings = jSONObject.getJSONArray(EVENT_BINDINGS);
                } catch (JSONException e5) {
                    MPLog.m311e(LOGTAG, "Mixpanel endpoint returned non-array JSON for event bindings: " + jSONObject);
                }
            }
            if (jSONObject.has(VARIANTS)) {
                try {
                    result.variants = jSONObject.getJSONArray(VARIANTS);
                } catch (JSONException e6) {
                    MPLog.m311e(LOGTAG, "Mixpanel endpoint returned non-array JSON for variants: " + jSONObject);
                }
            }
            if (jSONObject.has(AUTOMATIC_EVENTS)) {
                try {
                    result.automaticEvents = jSONObject.getBoolean(AUTOMATIC_EVENTS);
                } catch (JSONException e7) {
                    MPLog.m311e(LOGTAG, "Mixpanel endpoint returned a non boolean value for automatic events: " + jSONObject);
                }
            }
            return result;
        } catch (JSONException e8) {
            throw new UnintelligibleMessageException("Mixpanel endpoint returned unparsable result:\n" + str, e8);
        }
    }

    private Result runDecideCheck(String str, String str2, RemoteService remoteService) throws RemoteService.ServiceUnavailableException, UnintelligibleMessageException {
        Result result;
        String decideResponseFromServer = getDecideResponseFromServer(str, str2, remoteService);
        MPLog.m307v(LOGTAG, "Mixpanel decide server response was:\n" + decideResponseFromServer);
        if (decideResponseFromServer != null) {
            Result parseDecideResponse = parseDecideResponse(decideResponseFromServer);
            Iterator<InAppNotification> it = parseDecideResponse.notifications.iterator();
            while (true) {
                result = parseDecideResponse;
                if (!it.hasNext()) {
                    break;
                }
                InAppNotification next = it.next();
                Bitmap notificationImage = getNotificationImage(next, this.mContext);
                if (notificationImage == null) {
                    MPLog.m309i(LOGTAG, "Could not retrieve image for notification " + next.getId() + ", will not show the notification.");
                    it.remove();
                } else {
                    next.setImage(notificationImage);
                }
            }
        } else {
            result = null;
        }
        return result;
    }

    public void addDecideCheck(DecideMessages decideMessages) {
        this.mChecks.put(decideMessages.getToken(), decideMessages);
    }

    protected ImageStore createImageStore(Context context) {
        return new ImageStore(context, "DecideChecker");
    }

    public DecideMessages getDecideMessages(String str) {
        return this.mChecks.get(str);
    }

    public void runDecideCheck(String str, RemoteService remoteService) throws RemoteService.ServiceUnavailableException {
        MPLog.m307v(LOGTAG, "Disabled!");
    }
}
