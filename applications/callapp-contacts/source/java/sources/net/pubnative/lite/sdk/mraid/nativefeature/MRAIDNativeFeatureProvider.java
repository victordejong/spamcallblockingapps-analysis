package net.pubnative.lite.sdk.mraid.nativefeature;

import android.content.Context;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.mopub.mraid.MraidNativeCommandHandler;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import net.pubnative.lite.sdk.mraid.internal.MRAIDLog;
import net.pubnative.lite.sdk.mraid.internal.MRAIDNativeFeatureManager;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider.class */
public class MRAIDNativeFeatureProvider {
    public static final String ACTION_HANDLE_CUSTOM_EVENT = "android.provider.calendar.action.HANDLE_CUSTOM_EVENT";
    public static final String AUTHORITY = "com.android.calendar";
    public static final String DESCRIPTION = "description";
    public static final String DISPLAY_COLOR = "displayColor";
    public static final String EVENT_COLOR = "eventColor";
    public static final String EVENT_COLOR_KEY = "eventColor_index";
    public static final String EVENT_LOCATION = "eventLocation";
    public static final String EXTRA_CUSTOM_APP_URI = "customAppUri";
    public static final String EXTRA_EVENT_ALL_DAY = "allDay";
    public static final String EXTRA_EVENT_BEGIN_TIME = "beginTime";
    public static final String EXTRA_EVENT_END_TIME = "endTime";
    public static final String STATUS = "eventStatus";
    private static final String TAG = "MRAIDNativeFeatureProvider";
    public static final String TITLE = "title";
    private final Context context;
    private final MRAIDNativeFeatureManager nativeFeatureManager;

    public MRAIDNativeFeatureProvider(Context context, MRAIDNativeFeatureManager mRAIDNativeFeatureManager) {
        this.context = context;
        this.nativeFeatureManager = mRAIDNativeFeatureManager;
    }

    private void copyStream(InputStream inputStream, OutputStream outputStream) {
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    return;
                }
                outputStream.write(bArr, 0, read);
            }
        } catch (Exception e) {
            String str = TAG;
            MRAIDLog.m635i(str, "Error saving picture: " + e.getLocalizedMessage());
        }
    }

    private File getAlbumDir() {
        File file = null;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "Image");
            if (!file.mkdirs() && !file.exists()) {
                MRAIDLog.m635i(TAG, "Failed to create camera directory");
                return null;
            }
        } else {
            MRAIDLog.m635i(TAG, "External storage is not mounted READ/WRITE.");
        }
        return file;
    }

    public void storePictureInGallery(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd-HHmmss");
        String str2 = getAlbumDir() + "/img" + simpleDateFormat.format(new Date()) + ".png";
        String str3 = TAG;
        MRAIDLog.m635i(str3, "Saving image into: ".concat(String.valueOf(str2)));
        File file = new File(str2);
        try {
            copyStream(new URL(str).openStream(), new FileOutputStream(file));
            MediaScannerConnection.scanFile(this.context, new String[]{file.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: net.pubnative.lite.sdk.mraid.nativefeature.MRAIDNativeFeatureProvider.2
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String str4, Uri uri) {
                    MRAIDLog.m640d("File saves successfully to ".concat(String.valueOf(str4)));
                }
            });
            MRAIDLog.m635i(str3, "Saved image successfully");
        } catch (MalformedURLException e) {
            MRAIDLog.m637e(TAG, "Not able to save image due to invalid URL: " + e.getLocalizedMessage());
        } catch (IOException e2) {
            MRAIDLog.m637e(TAG, "Unable to save image: " + e2.getLocalizedMessage());
        }
    }

    public final void callTel(String str) {
        if (this.nativeFeatureManager.isTelSupported()) {
            this.context.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(str)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    public void createCalendarEvent(String str) {
        char c;
        if (!this.nativeFeatureManager.isCalendarSupported()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str.replace("\\", "").replace("\"{", "{").replace("}\"", "}"));
            String optString = jSONObject.optString("description", "Untitled");
            String optString2 = jSONObject.optString("location", "unknown");
            String optString3 = jSONObject.optString("summary");
            String[] strArr = new String[2];
            strArr[0] = jSONObject.getString(EventConstants.START);
            strArr[1] = jSONObject.optString("end");
            int i = 0;
            char c2 = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i >= 2) {
                    break;
                }
                char c3 = c2;
                char c4 = c;
                if (!TextUtils.isEmpty(strArr[i])) {
                    strArr[i] = strArr[i].replaceAll("([+-]\\d\\d):(\\d\\d)$", "$1$2");
                    int i2 = 0;
                    while (true) {
                        c3 = c2;
                        c4 = c;
                        if (i2 < 2) {
                            try {
                                SimpleDateFormat simpleDateFormat = new SimpleDateFormat(new String[]{"yyyy-MM-dd'T'HH:mmZ", "yyyy-MM-dd'T'HH:mm:ssZ"}[i2], Locale.US);
                                if (i == 0) {
                                    c3 = simpleDateFormat.parse(strArr[i]).getTime();
                                    c4 = c;
                                } else {
                                    c4 = simpleDateFormat.parse(strArr[i]).getTime();
                                    c3 = c2;
                                }
                            } catch (ParseException e) {
                                i2++;
                            }
                        }
                    }
                }
                i++;
                c2 = c3;
                r0 = c4;
            }
            Intent type = new Intent("android.intent.action.INSERT").setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
            type.putExtra("title", optString);
            type.putExtra("description", optString3);
            type.putExtra(EVENT_LOCATION, optString2);
            if (c2 > 0) {
                type.putExtra(EXTRA_EVENT_BEGIN_TIME, (long) c2);
            }
            if (c > 0) {
                type.putExtra(EXTRA_EVENT_END_TIME, (long) c);
            }
            this.context.startActivity(type);
        } catch (JSONException e2) {
            MRAIDLog.m637e(TAG, "Error parsing JSON: " + e2.getLocalizedMessage());
        }
    }

    public void openBrowser(String str) {
        if (str.startsWith("market:")) {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } else if (!str.startsWith("http:") && !str.startsWith("https:")) {
        } else {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
    }

    public void playVideo(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.parse(str), "video/*");
        this.context.startActivity(intent);
    }

    public void sendSms(String str) {
        if (this.nativeFeatureManager.isSmsSupported()) {
            this.context.startActivity(new Intent("android.intent.action.SENDTO", Uri.parse(str)));
        }
    }

    public void storePicture(final String str) {
        if (this.nativeFeatureManager.isStorePictureSupported()) {
            new Thread(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.nativefeature.MRAIDNativeFeatureProvider.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        MRAIDNativeFeatureProvider.this.storePictureInGallery(str);
                    } catch (Exception e) {
                        MRAIDLog.m637e(MRAIDNativeFeatureProvider.TAG, e.getLocalizedMessage());
                    }
                }
            }).start();
        }
    }
}
