package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
import com.mixpanel.android.mpmetrics.MPDbAdapter;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.util.RemoteResponse;
import com.mixpanel.android.util.RemoteService;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.DateUtil;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.IOException;
import java.net.MalformedURLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.cli.HelpFormatter;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/AnalyticsMessages.class */
public class AnalyticsMessages {
    private static final int ENQUEUE_EVENTS = 1;
    private static final int ENQUEUE_PEOPLE = 0;
    private static final int FLUSH_QUEUE = 2;
    private static final int INSTALL_DECIDE_CHECK = 12;
    private static final int KILL_WORKER = 5;
    @NonNull
    private static final String LOGTAG = "MixpanelAPI.Messages";
    @NonNull
    private static final Map<Context, AnalyticsMessages> sInstances = new HashMap();
    @NonNull
    protected final MPConfig mConfig;
    @NonNull
    protected final Context mContext;
    @NonNull
    private final Worker mWorker = createWorker();
    @NonNull
    private final SequenceNumber sequenceNumber;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription.class */
    public static class EventDescription extends MixpanelDescription {
        private final String mEventName;
        private final boolean mIsAutomatic;
        private final JSONObject mProperties;

        public EventDescription(String str, JSONObject jSONObject, String str2, boolean z) {
            super(str2);
            this.mEventName = str;
            this.mProperties = jSONObject;
            this.mIsAutomatic = z;
        }

        public String getEventName() {
            return this.mEventName;
        }

        public JSONObject getProperties() {
            return this.mProperties;
        }

        public boolean isAutomatic() {
            return this.mIsAutomatic;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/AnalyticsMessages$FlushDescription.class */
    public static class FlushDescription extends MixpanelDescription {
        private final boolean checkDecide;

        public FlushDescription(String str) {
            this(str, true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public FlushDescription(String str, boolean z) {
            super(str);
            this.checkDecide = z;
        }

        public boolean shouldCheckDecide() {
            return this.checkDecide;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/AnalyticsMessages$MixpanelDescription.class */
    public static class MixpanelDescription {
        private final String mToken;

        public MixpanelDescription(String str) {
            this.mToken = str;
        }

        public String getToken() {
            return this.mToken;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/AnalyticsMessages$PeopleDescription.class */
    public static class PeopleDescription extends MixpanelDescription {
        private final JSONObject message;

        public PeopleDescription(JSONObject jSONObject, String str) {
            super(str);
            this.message = jSONObject;
        }

        public JSONObject getMessage() {
            return this.message;
        }

        public String toString() {
            return this.message.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/AnalyticsMessages$Worker.class */
    public class Worker {
        private SystemInformation mSystemInformation;
        private final Object mHandlerLock = new Object();
        private long mFlushCount = 0;
        private long mAveFlushFrequency = 0;
        private long mLastFlushTime = -1;
        private Handler mHandler = restartWorkerThread();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler.class */
        public class AnalyticsMessageHandler extends Handler {
            private MPDbAdapter mDbAdapter = null;
            private final DecideChecker mDecideChecker = createDecideChecker();
            private long mDecideRetryAfter;
            private int mFailedRetries;
            private final long mFlushInterval;
            private long mTrackEngageRetryAfter;

            public AnalyticsMessageHandler(Looper looper) {
                super(looper);
                Worker.this.mSystemInformation = SystemInformation.getInstance(AnalyticsMessages.this.mContext);
                this.mFlushInterval = AnalyticsMessages.this.mConfig.getFlushInterval();
            }

            private JSONObject getDefaultEventProperties() throws JSONException {
                JSONObject jSONObject = new JSONObject();
                String spPrefix = MPConfig.getSpPrefix();
                jSONObject.put("local_time", getLocalTime());
                jSONObject.put("seq_no", AnalyticsMessages.this.sequenceNumber.getSequenceNumberAndIncrement());
                jSONObject.put("platform", "Android");
                jSONObject.put("af_platform", AbstractSpiCall.ANDROID_CLIENT_TYPE);
                jSONObject.put(spPrefix + "os", Build.VERSION.SDK_INT);
                jSONObject.put(spPrefix + "os_version", Build.VERSION.RELEASE == null ? BlockingManager.MATCHVALUE_UNKNOWN : Build.VERSION.RELEASE);
                jSONObject.put(spPrefix + "manufacturer", Build.MANUFACTURER == null ? BlockingManager.MATCHVALUE_UNKNOWN : Build.MANUFACTURER);
                jSONObject.put(spPrefix + "brand", Build.BRAND == null ? BlockingManager.MATCHVALUE_UNKNOWN : Build.BRAND);
                jSONObject.put(spPrefix + "model", Build.MODEL == null ? BlockingManager.MATCHVALUE_UNKNOWN : Build.MODEL);
                try {
                    jSONObject.put("device_language", Locale.getDefault().getISO3Language().substring(0, 2));
                } catch (Throwable th) {
                }
                DisplayMetrics displayMetrics = Worker.this.mSystemInformation.getDisplayMetrics();
                jSONObject.put(spPrefix + "screen_dpi", displayMetrics.densityDpi);
                jSONObject.put(spPrefix + "screen_height", displayMetrics.heightPixels);
                jSONObject.put(spPrefix + "screen_width", displayMetrics.widthPixels);
                String appVersionName = Worker.this.mSystemInformation.getAppVersionName();
                if (appVersionName != null) {
                    jSONObject.put("app_version", appVersionName);
                }
                Integer appVersionCode = Worker.this.mSystemInformation.getAppVersionCode();
                if (appVersionCode != null) {
                    jSONObject.put(spPrefix + "app_release", appVersionCode);
                }
                String currentNetworkOperator = Worker.this.mSystemInformation.getCurrentNetworkOperator();
                if (currentNetworkOperator != null) {
                    jSONObject.put(spPrefix + "carrier", currentNetworkOperator);
                }
                jSONObject.put(spPrefix + "wifi", Worker.this.mSystemInformation.isWifiConnected());
                jSONObject.put(spPrefix + "has_nfc", Worker.this.mSystemInformation.hasNFC());
                jSONObject.put(spPrefix + "has_telephone", Worker.this.mSystemInformation.hasTelephony());
                return jSONObject;
            }

            private String getLocalTime() {
                String str;
                try {
                    Calendar instance = Calendar.getInstance();
                    int i = (instance.get(15) + instance.get(16)) / 60000;
                    int abs = Math.abs(i / 60);
                    int abs2 = Math.abs(i % 60);
                    if (i == 0) {
                        str = "Z";
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append(i > 0 ? HelpFormatter.DEFAULT_OPT_PREFIX : "+");
                        sb.append(String.format(Locale.ENGLISH, "%02d", Integer.valueOf(abs)));
                        sb.append(":");
                        sb.append(String.format(Locale.ENGLISH, "%02d", Integer.valueOf(abs2)));
                        str = sb.toString();
                    }
                    return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss" + str, Locale.ENGLISH).format(instance.getTime());
                } catch (Throwable th) {
                    return "ERROR";
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [org.json.JSONObject] */
            /* JADX WARN: Type inference failed for: r0v5, types: [long] */
            /* JADX WARN: Type inference failed for: r13v0 */
            /* JADX WARN: Type inference failed for: r13v1, types: [long] */
            /* JADX WARN: Type inference failed for: r13v2 */
            /* JADX WARN: Type inference failed for: r13v4 */
            /* JADX WARN: Unknown variable types count: 3 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private org.json.JSONObject prepareEventObject(com.mixpanel.android.mpmetrics.AnalyticsMessages.EventDescription r7) throws org.json.JSONException {
                /*
                    r6 = this;
                    org.json.JSONObject r0 = new org.json.JSONObject
                    r1 = r0
                    r1.<init>()
                    r8 = r0
                    r0 = r7
                    org.json.JSONObject r0 = r0.getProperties()
                    r9 = r0
                    r0 = r6
                    org.json.JSONObject r0 = r0.getDefaultEventProperties()
                    r10 = r0
                    long r0 = java.lang.System.currentTimeMillis()
                    r11 = r0
                    r0 = r11
                    r13 = r0
                    r0 = r9
                    if (r0 == 0) goto L_0x0056
                    r0 = r9
                    java.util.Iterator r0 = r0.keys()
                    r15 = r0
                L_0x0026:
                    r0 = r15
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L_0x004d
                    r0 = r15
                    java.lang.Object r0 = r0.next()
                    java.lang.String r0 = (java.lang.String) r0
                    r16 = r0
                    r0 = r10
                    r1 = r16
                    r2 = r9
                    r3 = r16
                    java.lang.Object r2 = r2.get(r3)
                    org.json.JSONObject r0 = r0.put(r1, r2)
                    goto L_0x0026
                L_0x004d:
                    r0 = r9
                    java.lang.String r1 = "time"
                    long r0 = r0.getLong(r1)     // Catch: Throwable -> 0x0090
                    r13 = r0
                L_0x0056:
                    r0 = r8
                    java.lang.String r1 = "event"
                    r2 = r7
                    java.lang.String r2 = r2.getEventName()
                    java.util.Locale r3 = java.util.Locale.ENGLISH
                    java.lang.String r2 = r2.toLowerCase(r3)
                    java.lang.String r3 = " "
                    java.lang.String r4 = "_"
                    java.lang.String r2 = r2.replace(r3, r4)
                    java.lang.String r3 = "-"
                    java.lang.String r4 = "_"
                    java.lang.String r2 = r2.replace(r3, r4)
                    org.json.JSONObject r0 = r0.put(r1, r2)
                    r0 = r8
                    java.lang.String r1 = "ts"
                    r2 = r13
                    org.json.JSONObject r0 = r0.put(r1, r2)
                    r0 = r8
                    java.lang.String r1 = "payload"
                    r2 = r10
                    org.json.JSONObject r0 = r0.put(r1, r2)
                    r0 = r8
                    return r0
                L_0x0090:
                    r15 = move-exception
                    r0 = r11
                    r13 = r0
                    goto L_0x0056
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.AnalyticsMessages.Worker.AnalyticsMessageHandler.prepareEventObject(com.mixpanel.android.mpmetrics.AnalyticsMessages$EventDescription):org.json.JSONObject");
            }

            private void sendAllData(MPDbAdapter mPDbAdapter, String str) {
                if (!AnalyticsMessages.this.mConfig.getRemoteService().isOnline(AnalyticsMessages.this.mContext, AnalyticsMessages.this.mConfig.getOfflineMode())) {
                    AnalyticsMessages.this.logAboutMessageToMixpanel("Not flushing data to Mixpanel because the device is not connected to the internet.");
                    return;
                }
                ArrayList arrayList = new ArrayList();
                String eventsEndpoint = AnalyticsMessages.this.mConfig.getEventsEndpoint();
                if (eventsEndpoint != null) {
                    arrayList.add(eventsEndpoint);
                }
                List<String> eventsFallbackEndpoints = AnalyticsMessages.this.mConfig.getEventsFallbackEndpoints();
                if (eventsFallbackEndpoints != null) {
                    arrayList.addAll(eventsFallbackEndpoints);
                }
                sendData(mPDbAdapter, str, MPDbAdapter.Table.EVENTS, arrayList);
            }

            private void sendData(MPDbAdapter mPDbAdapter, String str, MPDbAdapter.Table table, List<String> list) {
                boolean z;
                DecideMessages decideMessages = this.mDecideChecker.getDecideMessages(str);
                boolean z2 = (decideMessages == null || decideMessages.isAutomaticEventsEnabled() == null) ? false : true;
                String[] generateDataString = mPDbAdapter.generateDataString(table, str, z2);
                Integer num = 0;
                String[] strArr = generateDataString;
                if (generateDataString != null) {
                    num = Integer.valueOf(generateDataString[2]);
                    strArr = generateDataString;
                }
                while (strArr != null && num.intValue() > 0) {
                    String str2 = strArr[0];
                    String str3 = strArr[1];
                    Iterator<String> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        String next = it.next();
                        try {
                            RemoteResponse performRequest = AnalyticsMessages.this.mConfig.getRemoteService().performRequest(next, str3);
                            z = performRequest.getResponseCode() == 200;
                            if (this.mFailedRetries > 0) {
                                this.mFailedRetries = 0;
                                removeMessages(2, str);
                            }
                            AnalyticsMessages.this.logAboutMessageToMixpanel("Posted to " + next + ": \n" + str3);
                            AnalyticsMessages analyticsMessages = AnalyticsMessages.this;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Response code = ");
                            sb.append(performRequest.getResponseCode());
                            analyticsMessages.logAboutMessageToMixpanel(sb.toString());
                            AnalyticsMessages.this.logAboutMessageToMixpanel("Response message = " + performRequest.getResponseMessage());
                        } catch (RemoteService.ServiceUnavailableException e) {
                            AnalyticsMessages.this.logAboutMessageToMixpanel("Cannot post message to " + next + ".", e);
                            this.mTrackEngageRetryAfter = (long) (e.getRetryAfter() * 1000);
                        } catch (MalformedURLException e2) {
                            MPLog.m310e(AnalyticsMessages.LOGTAG, "Cannot interpret " + next + " as a URL.", e2);
                        } catch (IOException e3) {
                            AnalyticsMessages.this.logAboutMessageToMixpanel("Cannot post message to " + next + ".", e3);
                        } catch (OutOfMemoryError e4) {
                            MPLog.m310e(AnalyticsMessages.LOGTAG, "Out of memory when posting to " + next + ".", e4);
                        }
                    }
                    if (z) {
                        AnalyticsMessages.this.logAboutMessageToMixpanel("Not retrying this batch of events, deleting them from DB.");
                        mPDbAdapter.cleanupEvents(str2, table, str, z2);
                        strArr = mPDbAdapter.generateDataString(table, str, z2);
                        if (strArr != null) {
                            num = Integer.valueOf(strArr[2]);
                        }
                    } else {
                        removeMessages(2, str);
                        this.mTrackEngageRetryAfter = Math.max(((long) Math.pow(2.0d, this.mFailedRetries)) * DateUtil.MINUTE_IN_MILLIS, this.mTrackEngageRetryAfter);
                        this.mTrackEngageRetryAfter = Math.min(this.mTrackEngageRetryAfter, 600000L);
                        Message obtain = Message.obtain();
                        obtain.what = 2;
                        obtain.obj = str;
                        sendMessageDelayed(obtain, this.mTrackEngageRetryAfter);
                        this.mFailedRetries++;
                        AnalyticsMessages.this.logAboutMessageToMixpanel("Retrying this batch of events in " + this.mTrackEngageRetryAfter + " ms");
                        return;
                    }
                }
            }

            protected DecideChecker createDecideChecker() {
                return new DecideChecker(AnalyticsMessages.this.mContext, AnalyticsMessages.this.mConfig);
            }

            protected long getTrackEngageRetryAfter() {
                return this.mTrackEngageRetryAfter;
            }

            /* JADX WARN: Removed duplicated region for block: B:124:0x0456 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:126:0x0397 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:128:? A[RETURN, SYNTHETIC] */
            @Override // android.os.Handler
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void handleMessage(android.os.Message r7) {
                /*
                    Method dump skipped, instructions count: 1171
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.AnalyticsMessages.Worker.AnalyticsMessageHandler.handleMessage(android.os.Message):void");
            }
        }

        public Worker() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateFlushFrequency() {
            long currentTimeMillis = System.currentTimeMillis();
            long j = this.mFlushCount + 1;
            if (this.mLastFlushTime > 0) {
                this.mAveFlushFrequency = ((currentTimeMillis - this.mLastFlushTime) + (this.mAveFlushFrequency * this.mFlushCount)) / j;
                long j2 = this.mAveFlushFrequency / 1000;
                AnalyticsMessages analyticsMessages = AnalyticsMessages.this;
                analyticsMessages.logAboutMessageToMixpanel("Average send frequency approximately " + j2 + " seconds.");
            }
            this.mLastFlushTime = currentTimeMillis;
            this.mFlushCount = j;
        }

        public boolean isDead() {
            boolean z;
            synchronized (this.mHandlerLock) {
                z = this.mHandler == null;
            }
            return z;
        }

        protected Handler restartWorkerThread() {
            HandlerThread handlerThread = new HandlerThread("com.mixpanel.android.AnalyticsWorker", 10);
            handlerThread.start();
            return new AnalyticsMessageHandler(handlerThread.getLooper());
        }

        public void runMessage(Message message) {
            synchronized (this.mHandlerLock) {
                if (this.mHandler == null) {
                    AnalyticsMessages analyticsMessages = AnalyticsMessages.this;
                    analyticsMessages.logAboutMessageToMixpanel("Dead mixpanel worker dropping a message: " + message.what);
                } else {
                    this.mHandler.sendMessage(message);
                }
            }
        }
    }

    AnalyticsMessages(@NonNull Context context) {
        this.mContext = context;
        this.mConfig = getConfig(context);
        this.sequenceNumber = SequenceNumber.getInstance(context);
    }

    public static AnalyticsMessages getInstance(Context context) {
        AnalyticsMessages analyticsMessages;
        synchronized (sInstances) {
            Context applicationContext = context.getApplicationContext();
            if (!sInstances.containsKey(applicationContext)) {
                analyticsMessages = new AnalyticsMessages(applicationContext);
                sInstances.put(applicationContext, analyticsMessages);
            } else {
                analyticsMessages = sInstances.get(applicationContext);
            }
        }
        return analyticsMessages;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logAboutMessageToMixpanel(String str) {
        MPLog.m307v(LOGTAG, str + " (Thread " + Thread.currentThread().getId() + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logAboutMessageToMixpanel(String str, Throwable th) {
        MPLog.m306v(LOGTAG, str + " (Thread " + Thread.currentThread().getId() + ")", th);
    }

    protected Worker createWorker() {
        return new Worker();
    }

    public void eventsMessage(EventDescription eventDescription) {
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = eventDescription;
        this.mWorker.runMessage(obtain);
    }

    protected MPConfig getConfig(Context context) {
        return MPConfig.getInstance(context);
    }

    public long getTrackEngageRetryAfter() {
        return ((Worker.AnalyticsMessageHandler) this.mWorker.mHandler).getTrackEngageRetryAfter();
    }

    public void hardKill() {
        Message obtain = Message.obtain();
        obtain.what = 5;
        this.mWorker.runMessage(obtain);
    }

    public void installDecideCheck(DecideMessages decideMessages) {
        Message obtain = Message.obtain();
        obtain.what = 12;
        obtain.obj = decideMessages;
        this.mWorker.runMessage(obtain);
    }

    boolean isDead() {
        return this.mWorker.isDead();
    }

    protected MPDbAdapter makeDbAdapter(Context context) {
        return MPDbAdapter.getInstance(context);
    }

    public void peopleMessage(PeopleDescription peopleDescription) {
        Message obtain = Message.obtain();
        obtain.what = 0;
        obtain.obj = peopleDescription;
        this.mWorker.runMessage(obtain);
    }

    public void postToServer(FlushDescription flushDescription) {
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.obj = flushDescription.getToken();
        obtain.arg1 = flushDescription.shouldCheckDecide() ? 1 : 0;
        this.mWorker.runMessage(obtain);
    }
}
