package com.privacystar.core.service.analytics.p009fo;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.p004v7.widget.helper.ItemTouchHelper;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.AnalyticsEvent;
import com.privacystar.core.data.model.AnalyticsEventFields;
import com.privacystar.core.data.model.helper.AnalyticsRealm;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.firebase.PSFirebaseInstanceIDService;
import com.privacystar.core.service.network.HttpConnection;
import com.privacystar.core.service.network.HttpResponse;
import com.privacystar.core.service.network.WebServices;
import com.privacystar.core.util.CryptoUtil;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.Text;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.realm.Realm;
import io.realm.exceptions.RealmError;
import io.realm.exceptions.RealmFileException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import timber.log.Timber;
/* renamed from: com.privacystar.core.service.analytics.fo.FOAnalyticsService */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/fo/FOAnalyticsService.class */
public class FOAnalyticsService {
    private static final String BAR = "|";
    private static final int WALLED_GARDEN_SOCKET_TIMEOUT_MS = 30000;
    private static HandlerThread handlerThread;
    private static boolean initialized;
    private static FOAnalyticsService instance;
    private static final Object lock = new Object();
    private String app;
    private String imsi;
    private String manu;
    private String mdn;
    private String mod;

    /* renamed from: os */
    private String f277os;
    private String pin;
    private String xid;
    private int retryCount = 10;
    private int retryTime = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
    private int dispatchLimit = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
    private String wsURL = PreferenceUtil.getAnalyticsUrl() + PreferenceUtil.getAnalyticsPath();

    /* renamed from: com.privacystar.core.service.analytics.fo.FOAnalyticsService$CallResolutionType */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/fo/FOAnalyticsService$CallResolutionType.class */
    public enum CallResolutionType {
        UNKNOWN,
        ANSWERED,
        BLOCKED,
        DECLINED,
        MISSED,
        VM
    }

    private FOAnalyticsService() {
        initialized = initialize(getContext());
    }

    private void clearQueue() {
        synchronized (lock) {
            try {
                Realm defaultInstance = Realm.getDefaultInstance();
                try {
                    AnalyticsRealm.clearAnalyticsQueue(defaultInstance);
                    if (defaultInstance != null) {
                        defaultInstance.close();
                    }
                } finally {
                    try {
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception e) {
                Timber.m32e(e, "clearing queue", new Object[0]);
            }
            this.retryCount = 10;
        }
    }

    private String dateToString(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(date);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dispatchImpl */
    public void bridge$lambda$0$FOAnalyticsService() {
        Timber.m37d("Attempting analytics dispatch.", new Object[0]);
        synchronized (lock) {
            if (Text.isBlank(WebServices.isNetworkAvailable(getContext()))) {
                Timber.m25w("No network connection. Aborting dispatch", new Object[0]);
            } else if (WebServices.isConnectionValid(30000)) {
                updateTable();
                List<AnalyticsEvent> selectFromTable = selectFromTable();
                if (!selectFromTable.isEmpty()) {
                    sendRequest(selectFromTable, getContext());
                }
            } else {
                Timber.m25w("Connection not valid. Aborting dispatch", new Object[0]);
            }
        }
    }

    private static Context getContext() {
        return PSApplication.context();
    }

    public static HandlerThread getHandlerThreadInstance() {
        HandlerThread handlerThread2;
        synchronized (FOAnalyticsService.class) {
            try {
                if (handlerThread == null) {
                    handlerThread = new HandlerThread("PSAnalyticsHandlerThread");
                    handlerThread.start();
                }
                handlerThread2 = handlerThread;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handlerThread2;
    }

    public static FOAnalyticsService getInstance() {
        FOAnalyticsService fOAnalyticsService;
        synchronized (FOAnalyticsService.class) {
            try {
                if (instance == null) {
                    instance = new FOAnalyticsService();
                }
                fOAnalyticsService = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fOAnalyticsService;
    }

    private boolean initialize(Context context) {
        if (initialized) {
            return true;
        }
        if (!PermissionUtils.checkPermission(context, "android.permission.READ_PHONE_STATE")) {
            return false;
        }
        Timber.m37d("PSAnalytics URL: %s", this.wsURL);
        try {
            this.pin = InformationUtil.getDevicePinOrNothing(context);
            this.imsi = InformationUtil.getIMSI(context);
            this.mdn = DeviceNumberProvider.INSTANCE.getNumber();
            this.f277os = InformationUtil.getPlatformNumberForPSA();
            this.app = InformationUtil.getApplicationVersion(context);
            this.manu = InformationUtil.getDeviceManufacturer();
            this.mod = InformationUtil.getDeviceName();
            this.xid = PSFirebaseInstanceIDService.getFcmId();
            return true;
        } catch (Exception e) {
            Timber.m32e(e, "attempting to instantiate analytics", new Object[0]);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$trackEvent$0$FOAnalyticsService(int i, String str) {
        synchronized (lock) {
            if (FOAnalyticsSettings.isEnabled(i)) {
                Timber.m37d("Tracking Event... Type: %d, Value: %s", Integer.valueOf(i), str);
                try {
                    Realm defaultInstance = Realm.getDefaultInstance();
                    try {
                        AnalyticsRealm.trackEvent(defaultInstance, i, str);
                        if (defaultInstance != null) {
                            defaultInstance.close();
                        }
                    } finally {
                        try {
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (RealmError e) {
                    Timber.m29i(e, "Realm couldn't be accessed due to I/O error. Most likely the device is out of memory.", new Object[0]);
                } catch (RealmFileException e2) {
                    Timber.m29i(e2, "Could not open Realm to track event. Most likely the device is out of memory.", new Object[0]);
                }
            } else {
                Timber.m37d("Not Tracking Event... Type: %d, Value: %s", Integer.valueOf(i), str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$trackEventBulk$1$FOAnalyticsService(List list) {
        synchronized (lock) {
            Realm defaultInstance = Realm.getDefaultInstance();
            AnalyticsRealm.trackEventBulk(defaultInstance, list);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        }
    }

    private void post(Runnable runnable) {
        new Handler(getHandlerThreadInstance().getLooper()).post(runnable);
    }

    private void processResponse(HttpResponse httpResponse) {
        synchronized (lock) {
            try {
                int responseCode = httpResponse.getResponseCode();
                Timber.m37d("Code: %d, message: %s", Integer.valueOf(responseCode), httpResponse.getResponseMessage());
                if (responseCode == 204) {
                    clearQueue();
                } else if (this.retryCount == 0) {
                    Timber.m25w("Retries exceeded", new Object[0]);
                    this.retryCount = 10;
                    unMarkRows();
                } else {
                    this.retryTime = (11 - this.retryCount) * ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
                    processRetryResponse();
                }
            } catch (Exception e) {
                Timber.m32e(e, "Error processing direct web call callback JSON", new Object[0]);
            }
        }
    }

    private void processRetryResponse() {
        try {
            Thread.sleep(this.retryTime);
            this.retryCount--;
            dispatch();
        } catch (Exception e) {
            Timber.m32e(e, "Error sleeping for %d ms. ", Integer.valueOf(this.retryTime));
            unMarkRows();
        }
    }

    public static void refresh() {
        synchronized (FOAnalyticsService.class) {
            try {
                synchronized (lock) {
                    instance = null;
                    instance = new FOAnalyticsService();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private JsonArray resultsToJsonArray(List<AnalyticsEvent> list) {
        JsonArray jsonArray = new JsonArray();
        for (AnalyticsEvent analyticsEvent : list) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("id", Integer.valueOf(analyticsEvent.getId()));
            jsonObject.addProperty("val", analyticsEvent.getEventType() + BAR + analyticsEvent.getEventBody());
            jsonObject.addProperty(AnalyticsEventFields.f254TS, dateToString(analyticsEvent.getTs()));
            jsonArray.add(jsonObject);
        }
        return jsonArray;
    }

    private List<AnalyticsEvent> selectFromTable() {
        List<AnalyticsEvent> selectEventsForDispatching;
        synchronized (lock) {
            try {
                Realm defaultInstance = Realm.getDefaultInstance();
                try {
                    selectEventsForDispatching = AnalyticsRealm.selectEventsForDispatching(defaultInstance, this.dispatchLimit);
                    if (selectEventsForDispatching.isEmpty()) {
                        Timber.m25w("No events found, aborting dispatch", new Object[0]);
                    }
                    if (defaultInstance != null) {
                        defaultInstance.close();
                    }
                } finally {
                    try {
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception e) {
                Timber.m32e(e, "while dispatching, second try-catch", new Object[0]);
                return new ArrayList();
            }
        }
        return selectEventsForDispatching;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void sendRequest(List<AnalyticsEvent> list, Context context) {
        Throwable th;
        Exception e;
        synchronized (lock) {
            if (initialized || initialize(context)) {
                JsonObject jsonObject = new JsonObject();
                HttpConnection httpConnection = null;
                httpConnection = null;
                try {
                    try {
                        jsonObject.addProperty("pin", this.pin);
                        jsonObject.addProperty("imsi", this.imsi);
                        jsonObject.addProperty("mdn", this.mdn);
                        jsonObject.addProperty("os", this.f277os);
                        jsonObject.addProperty(SettingsJsonConstants.APP_KEY, this.app);
                        jsonObject.addProperty("manu", this.manu);
                        jsonObject.addProperty("mod", this.mod);
                        this.xid = PSFirebaseInstanceIDService.getFcmId();
                        jsonObject.addProperty("xid", this.xid);
                        jsonObject.add("ets", resultsToJsonArray(list));
                        Timber.m37d("wsURL: %s requestBody: %s", this.wsURL, jsonObject.toString());
                        httpConnection = new HttpConnection(this.wsURL, HttpConnection.Method.POST);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("X-PSA-DIGEST", CryptoUtil.sha1HashIt(jsonObject.toString()));
                    httpConnection.addExtraHeaders(HttpConnection.addDefaultHeaders(hashMap));
                    httpConnection.setReadTimeout(3000);
                    httpConnection.setBody("application/json", jsonObject.toString());
                    Timber.m28v("Headers: %s", hashMap.toString());
                    processResponse(httpConnection.connect());
                    httpConnection = hashMap;
                    if (httpConnection != null) {
                        httpConnection.disconnect();
                        httpConnection = hashMap;
                    }
                } catch (Exception e3) {
                    e = e3;
                    HttpConnection httpConnection2 = httpConnection;
                    Timber.m32e(e, "sending analytics post request", new Object[0]);
                    httpConnection = httpConnection2;
                    if (httpConnection != null) {
                        httpConnection.disconnect();
                        httpConnection = httpConnection2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (httpConnection != null) {
                        httpConnection.disconnect();
                    }
                    throw th;
                }
            }
        }
    }

    private void unMarkRows() {
        Realm defaultInstance;
        synchronized (lock) {
            try {
                defaultInstance = Realm.getDefaultInstance();
            } catch (Exception e) {
                Timber.m32e(e, "unmarking rows", new Object[0]);
            }
            try {
                AnalyticsRealm.resetAnalyticsQueue(defaultInstance);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void updateTable() {
        Realm defaultInstance;
        synchronized (lock) {
            try {
                defaultInstance = Realm.getDefaultInstance();
            } catch (Exception e) {
                Timber.m32e(e, "while dispatching, first try-catch", new Object[0]);
            }
            try {
                AnalyticsRealm.beginEventProcessing(defaultInstance, this.dispatchLimit);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void dispatch() {
        if (FOAnalyticsSettings.isEnabled(0)) {
            post(new Runnable(this) { // from class: com.privacystar.core.service.analytics.fo.FOAnalyticsService$$Lambda$2
                private final FOAnalyticsService arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.arg$1.bridge$lambda$0$FOAnalyticsService();
                }
            });
        }
    }

    public void dispatch(int... iArr) {
        for (int i : iArr) {
            if (FOAnalyticsSettings.isEnabled(i)) {
                dispatch();
                return;
            }
        }
    }

    public void trackEvent(final int i, final String str) {
        post(new Runnable(i, str) { // from class: com.privacystar.core.service.analytics.fo.FOAnalyticsService$$Lambda$0
            private final int arg$1;
            private final String arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = i;
                this.arg$2 = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                FOAnalyticsService.lambda$trackEvent$0$FOAnalyticsService(this.arg$1, this.arg$2);
            }
        });
    }

    public void trackEvent(FOAnalyticsEvent fOAnalyticsEvent) {
        trackEvent(fOAnalyticsEvent.getEventType(), fOAnalyticsEvent.getEventValue());
    }

    public void trackEventBulk(final List<FOAnalyticsEvent> list) {
        post(new Runnable(list) { // from class: com.privacystar.core.service.analytics.fo.FOAnalyticsService$$Lambda$1
            private final List arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                FOAnalyticsService.lambda$trackEventBulk$1$FOAnalyticsService(this.arg$1);
            }
        });
    }
}
