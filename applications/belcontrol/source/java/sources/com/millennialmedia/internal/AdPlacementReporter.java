package com.millennialmedia.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer2.C0515C;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.adwrapper.AdWrapper;
import com.millennialmedia.internal.task.TaskFactory;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.IOUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementReporter.class */
public class AdPlacementReporter {
    public static final int BID_LOSS_DECISION_MAKER_FAILED = 108;
    public static final int BID_LOSS_DECISION_MAKER_SERVED = 107;
    public static final int BID_NOT_SUBMITTED = 0;
    public static final int BID_PRICE_MISSING = 110;
    public static final int BID_SUBMITTED = 1;
    public static final int BID_WIN_AD_FAILED = 106;
    public static final int BID_WIN_AD_SERVED = 103;
    public static final int BID_WIN_MM_FAILED_AD_SERVED = 104;
    public static final int DISPLAY_TYPE_AUTO = 0;
    public static final int DISPLAY_TYPE_CLICK = 2;
    public static final int DISPLAY_TYPE_UNKNOWN = -1;
    public static final int DISPLAY_TYPE_VISIBILITY = 1;
    private static final String EVENT_CLICK = "click_";
    private static final String EVENT_DISPLAY = "display_";
    private static final String EVENT_REQUEST = "request_";
    private static final String EXTENSION_JSON = ".json";
    private static final String EXTENSION_TEMP = ".tmp";
    public static final int NO_BID_DECISION_MAKER_FAILED = 101;
    public static final int NO_BID_DECISION_MAKER_SERVED = 102;
    public static final int PLAYLIST_LOADED_FROM_CACHE_DEMAND_ITEM_FAILED = 112;
    public static final int PLAYLIST_LOADED_FROM_CACHE_DEMAND_ITEM_SUCCEEDED = 111;
    public static final int PLAYLIST_REPLACED_IN_CACHE = 114;
    public static final int PLAYLIST_TIMED_OUT_IN_CACHE = 113;
    public static final String REPORTING_DIR = "/.reporting/";
    private static final String REPORT_KEY_ADNET = "adnet";
    private static final String REPORT_KEY_BUYER = "buyer";
    private static final String REPORT_KEY_CLICK = "click";
    private static final String REPORT_KEY_DISPLAY = "display";
    private static final String REPORT_KEY_IMPRESSION_GROUP = "grp";
    private static final String REPORT_KEY_ITEM_ID = "tag";
    private static final String REPORT_KEY_PLACEMENT_NAME = "zone";
    private static final String REPORT_KEY_PRICE = "price";
    private static final String REPORT_KEY_PRU = "pru";
    private static final String REPORT_KEY_REQUEST = "req";
    private static final String REPORT_KEY_RESPONSE_ID = "a";
    private static final String REPORT_KEY_RESPONSE_TIME = "resp";
    private static final String REPORT_KEY_STATUS = "status";
    private static final String REPORT_KEY_SUPER_AUCTION = "superAuction";
    private static final String REPORT_KEY_SUPER_AUCTION_BIDDERS = "bidders";
    private static final String REPORT_KEY_SUPER_AUCTION_DEMAND_SOURCES = "demandSources";
    private static final String REPORT_KEY_TIMESTAMP = "ts";
    private static final String REPORT_KEY_TYPE = "type";
    public static final String SITEID_FILENAME = "siteid";
    public static final String SSP_REPORTING_PATH = "/admax/sdk/report/4";
    public static final String SSP_SITE_ID_PARAMETER = "?dcn=";
    private static final int STARTUP_DELAY_IN_SECONDS = 5;
    public static final int STATUS_AD_SERVED = 1;
    public static final int STATUS_NO_AD = -1;
    public static final int STATUS_NO_AD_ERROR = -3;
    public static final int STATUS_NO_AD_TIMEOUT = -2;
    private static final String TAG = "AdPlacementReporter";
    private static volatile File reportingDir;
    private volatile PlayListItemReporter activePlayListItemReporter;
    private volatile String buyer;
    private boolean clickReported = false;
    private boolean displayReported = false;
    private volatile String eventId;
    private volatile String impressionGroup;
    private volatile String itemId;
    private volatile String placementName;
    private volatile ElapsedTimer playlistProcessingElapsedTimer;
    private volatile JSONObject playlistReportJson;
    private volatile String pru;
    private volatile String responseId;
    private static final Object stateLock = new Object();
    private static volatile UploadState uploadState = UploadState.IDLE;
    private static volatile AtomicInteger numQueuedEvents = new AtomicInteger(0);

    /* renamed from: com.millennialmedia.internal.AdPlacementReporter$1 */
    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementReporter$1.class */
    public static /* synthetic */ class C07741 {

        /* renamed from: $SwitchMap$com$millennialmedia$internal$AdPlacementReporter$UploadState */
        public static final /* synthetic */ int[] f4123xc38a2756;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[UploadState.values().length];
            f4123xc38a2756 = iArr;
            try {
                iArr[UploadState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4123xc38a2756[UploadState.UPLOADING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4123xc38a2756[UploadState.ERROR_NETWORK_UNAVAILABLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4123xc38a2756[UploadState.ERROR_SENDING_TO_SERVER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4123xc38a2756[UploadState.CLEARING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementReporter$Bidder.class */
    public static class Bidder {
        public String price;
        public int status;
        public String type;
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementReporter$DemandSource.class */
    public static class DemandSource {
        private ElapsedTimer elapsedTimer;
        public int status;
        public String tag;
        public String type;

        public DemandSource() {
            ElapsedTimer elapsedTimer = new ElapsedTimer();
            this.elapsedTimer = elapsedTimer;
            elapsedTimer.start();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementReporter$ElapsedTimer.class */
    public static class ElapsedTimer {
        private long endTime;
        private long startTime;

        public long getElapsedTime() {
            if (this.endTime == 0) {
                stop();
            }
            return this.endTime - this.startTime;
        }

        public void start() {
            this.startTime = SystemClock.elapsedRealtime();
            this.endTime = 0L;
        }

        public void stop() {
            this.endTime = SystemClock.elapsedRealtime();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter.class */
    public class PlayListItemReporter {
        public String buyer;
        private ElapsedTimer elapsedTimer;
        public String itemId;
        public String pru;
        public int status;
        private SuperAuction superAuction;

        public PlayListItemReporter() {
            AdPlacementReporter.this = r4;
            ElapsedTimer elapsedTimer = new ElapsedTimer();
            this.elapsedTimer = elapsedTimer;
            elapsedTimer.start();
        }

        public SuperAuction getSuperAuction() {
            if (this.superAuction == null) {
                this.superAuction = new SuperAuction();
            }
            return this.superAuction;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementReporter$SuperAuction.class */
    public static class SuperAuction {
        public List<Bidder> bidders = new CopyOnWriteArrayList();
        public List<DemandSource> demandSources = new CopyOnWriteArrayList();
        public String itemId;
        public int status;
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementReporter$UploadState.class */
    public enum UploadState {
        IDLE,
        UPLOADING,
        ERROR_NETWORK_UNAVAILABLE,
        ERROR_SENDING_TO_SERVER,
        CLEARING
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdPlacementReporter$Uploader.class */
    public static class Uploader {
        private static volatile ThreadUtils.ScheduledRunnable scheduledRunnable;

        private static String buildRequest(File[] fileArr) {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONArray();
            JSONArray jSONArray3 = new JSONArray();
            try {
                for (File file : fileArr) {
                    JSONObject retrieveEvent = retrieveEvent(file);
                    if (retrieveEvent != null) {
                        String name = file.getName();
                        if (name.startsWith(AdPlacementReporter.EVENT_REQUEST)) {
                            jSONArray.put(retrieveEvent);
                        } else if (name.startsWith(AdPlacementReporter.EVENT_DISPLAY)) {
                            jSONArray2.put(retrieveEvent);
                        } else if (name.startsWith(AdPlacementReporter.EVENT_CLICK)) {
                            jSONArray3.put(retrieveEvent);
                        }
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("req", jSONArray);
                }
                if (jSONArray2.length() > 0) {
                    jSONObject.put(AdPlacementReporter.REPORT_KEY_DISPLAY, jSONArray2);
                }
                if (jSONArray3.length() > 0) {
                    jSONObject.put("click", jSONArray3);
                }
                if (jSONObject.length() == 0) {
                    if (!MMLog.isDebugEnabled()) {
                        return null;
                    }
                    MMLog.m4070d(AdPlacementReporter.TAG, "No reporting events added to the request");
                    return null;
                }
                if (MMLog.isDebugEnabled()) {
                    try {
                        MMLog.m4070d(AdPlacementReporter.TAG, "Generated report.\n" + jSONObject.toString(2));
                    } catch (JSONException e) {
                        MMLog.m4070d(AdPlacementReporter.TAG, "Unable to format report with indentation");
                    }
                }
                return jSONObject.toString();
            } catch (Exception e2) {
                MMLog.m4067e(AdPlacementReporter.TAG, "Error creating SSP reporting request", e2);
                return null;
            }
        }

        public static void clearNow() {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(AdPlacementReporter.TAG, "Reporting is clearing events");
            }
            File[] eventsToUpload = getEventsToUpload();
            if (eventsToUpload.length > 0) {
                deleteUploadedEvents(eventsToUpload);
            }
            setUploadState(UploadState.IDLE);
        }

        private static void countQueuedEvents() {
            int i;
            File[] listFiles = AdPlacementReporter.reportingDir.listFiles();
            int length = listFiles.length;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i2 >= length) {
                    AdPlacementReporter.numQueuedEvents.set(i4);
                    return;
                }
                File file = listFiles[i2];
                if (file.getName().endsWith(AdPlacementReporter.EXTENSION_TEMP)) {
                    i = i4;
                    if (!setEventAsCompleted(file, false)) {
                        i2++;
                        i3 = i;
                    }
                    i = i4 + 1;
                    i2++;
                    i3 = i;
                } else {
                    i = i4;
                    if (!file.getName().endsWith(AdPlacementReporter.EXTENSION_JSON)) {
                        i2++;
                        i3 = i;
                    }
                    i = i4 + 1;
                    i2++;
                    i3 = i;
                }
            }
        }

        private static void deleteUploadedEvents(File[] fileArr) {
            int i = 0;
            for (File file : fileArr) {
                if (!file.delete()) {
                    MMLog.m4068e(AdPlacementReporter.TAG, "Failed to delete reporting file <" + file.getName() + ">");
                } else {
                    i--;
                }
            }
            AdPlacementReporter.numQueuedEvents.addAndGet(i);
        }

        private static File[] getEventsToUpload() {
            File[] listFiles = AdPlacementReporter.reportingDir.listFiles(new FilenameFilter() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return str.endsWith(AdPlacementReporter.EXTENSION_JSON);
                }
            });
            File[] fileArr = listFiles;
            if (listFiles == null) {
                fileArr = new File[0];
            }
            return fileArr;
        }

        private static void incrementQueuedEventsCount() {
            synchronized (AdPlacementReporter.stateLock) {
                int incrementAndGet = AdPlacementReporter.numQueuedEvents.incrementAndGet();
                if (AdPlacementReporter.uploadState == UploadState.IDLE && incrementAndGet >= Handshake.getReportingBatchSize()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(AdPlacementReporter.TAG, "Reporting batch size limit detected -- requesting upload");
                    }
                    setUploadState(UploadState.UPLOADING);
                }
            }
        }

        public static String readFromFile(File file) {
            FileInputStream fileInputStream;
            Throwable th;
            IOException e;
            FileInputStream fileInputStream2;
            String str;
            FileInputStream fileInputStream3 = null;
            String str2 = null;
            try {
                if (file.exists()) {
                    try {
                        fileInputStream2 = new FileInputStream(file);
                        fileInputStream3 = fileInputStream2;
                        try {
                            str = IOUtils.read(fileInputStream2, C0515C.UTF8_NAME);
                        } catch (IOException e2) {
                            e = e2;
                            String str3 = AdPlacementReporter.TAG;
                            FileInputStream fileInputStream4 = fileInputStream2;
                            FileInputStream fileInputStream5 = fileInputStream2;
                            StringBuilder sb = new StringBuilder();
                            FileInputStream fileInputStream6 = fileInputStream2;
                            sb.append("Error opening file <");
                            FileInputStream fileInputStream7 = fileInputStream2;
                            sb.append(file.getName());
                            FileInputStream fileInputStream8 = fileInputStream2;
                            sb.append(">");
                            fileInputStream3 = fileInputStream2;
                            MMLog.m4067e(str3, sb.toString(), e);
                            str = null;
                            IOUtils.closeStream(fileInputStream2);
                            str2 = str;
                            return str2;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        fileInputStream2 = null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = null;
                        IOUtils.closeStream(fileInputStream);
                        throw th;
                    }
                    IOUtils.closeStream(fileInputStream2);
                    str2 = str;
                }
                return str2;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = fileInputStream3;
            }
        }

        private static JSONObject retrieveEvent(File file) {
            JSONObject jSONObject;
            if (file.exists()) {
                try {
                    jSONObject = new JSONObject(readFromFile(file));
                } catch (JSONException e) {
                    MMLog.m4067e(AdPlacementReporter.TAG, "Error parsing reporting file <" + file.getName() + ">", e);
                }
                return jSONObject;
            }
            jSONObject = null;
            return jSONObject;
        }

        private static String retrieveSiteId() {
            return readFromFile(new File(AdPlacementReporter.reportingDir, AdPlacementReporter.SITEID_FILENAME));
        }

        public static boolean saveToFile(File file, String str) {
            Throwable th;
            boolean z;
            Exception e;
            FileOutputStream fileOutputStream;
            FileOutputStream fileOutputStream2;
            FileOutputStream fileOutputStream3 = null;
            try {
                try {
                    fileOutputStream2 = new FileOutputStream(file);
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                IOUtils.write(fileOutputStream2, str);
                z = IOUtils.closeStream(fileOutputStream2);
            } catch (Exception e3) {
                fileOutputStream = fileOutputStream2;
                e = e3;
                String str2 = AdPlacementReporter.TAG;
                FileOutputStream fileOutputStream4 = fileOutputStream;
                FileOutputStream fileOutputStream5 = fileOutputStream;
                StringBuilder sb = new StringBuilder();
                FileOutputStream fileOutputStream6 = fileOutputStream;
                sb.append("Error writing to file <");
                FileOutputStream fileOutputStream7 = fileOutputStream;
                sb.append(file.getName());
                FileOutputStream fileOutputStream8 = fileOutputStream;
                sb.append(">");
                fileOutputStream3 = fileOutputStream;
                MMLog.m4067e(str2, sb.toString(), e);
                z = IOUtils.closeStream(fileOutputStream);
                return z;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream3 = fileOutputStream2;
                IOUtils.closeStream(fileOutputStream3);
                throw th;
            }
            return z;
        }

        public static boolean setEventAsCompleted(File file, boolean z) {
            File file2 = new File(file.getPath().replace(AdPlacementReporter.EXTENSION_TEMP, AdPlacementReporter.EXTENSION_JSON));
            if (file2.exists()) {
                String str = AdPlacementReporter.TAG;
                MMLog.m4062w(str, "Target file already exists + <" + file2.getName() + ">");
            } else if (file.renameTo(file2)) {
                if (!z) {
                    return true;
                }
                incrementQueuedEventsCount();
                return true;
            }
            String str2 = AdPlacementReporter.TAG;
            MMLog.m4062w(str2, "Unable to rename temp file <" + file.getName() + ">");
            if (!file.delete()) {
                String str3 = AdPlacementReporter.TAG;
                MMLog.m4068e(str3, "Error deleting temp file <" + file.getName() + ">");
                return false;
            }
            return false;
        }

        public static void setUploadState(UploadState uploadState) {
            Runnable runnable;
            synchronized (AdPlacementReporter.stateLock) {
                if (uploadState == AdPlacementReporter.uploadState) {
                    return;
                }
                UploadState unused = AdPlacementReporter.uploadState = uploadState;
                int i = C07741.f4123xc38a2756[AdPlacementReporter.uploadState.ordinal()];
                if (i == 1) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(AdPlacementReporter.TAG, "Reporting upload state set to IDLE");
                    }
                    runnable = new Runnable() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(AdPlacementReporter.TAG, "Reporting batch frequency detected -- requesting upload");
                            }
                            Uploader.setUploadState(UploadState.UPLOADING);
                        }
                    };
                } else if (i == 2) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(AdPlacementReporter.TAG, "Reporting upload state set to UPLOADING");
                    }
                    if (scheduledRunnable != null) {
                        scheduledRunnable.cancel();
                    }
                    TaskFactory.createAdPlacementReporterTask().execute();
                    return;
                } else if (i == 3) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(AdPlacementReporter.TAG, "Reporting upload state set to ERROR_NETWORK_UNAVAILABLE");
                    }
                    EnvironmentUtils.getApplicationContext().registerReceiver(new BroadcastReceiver() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.4
                        @Override // android.content.BroadcastReceiver
                        public void onReceive(Context context, Intent intent) {
                            if (EnvironmentUtils.isNetworkAvailable()) {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.m4070d(AdPlacementReporter.TAG, "Reporting detected network is now available -- requesting upload");
                                }
                                EnvironmentUtils.getApplicationContext().unregisterReceiver(this);
                                Uploader.setUploadState(UploadState.UPLOADING);
                            }
                        }
                    }, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    return;
                } else if (i != 4) {
                    if (i != 5) {
                        return;
                    }
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(AdPlacementReporter.TAG, "Reporting upload state set to CLEARING");
                    }
                    if (scheduledRunnable != null) {
                        scheduledRunnable.cancel();
                    }
                    clearNow();
                    return;
                } else {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(AdPlacementReporter.TAG, "Reporting upload state set to ERROR_SENDING_TO_SERVER");
                    }
                    runnable = new Runnable() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.5
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(AdPlacementReporter.TAG, "Reporting batch frequency detected -- requesting upload");
                            }
                            Uploader.setUploadState(UploadState.UPLOADING);
                        }
                    };
                }
                scheduledRunnable = ThreadUtils.runOnWorkerThreadDelayed(runnable, Handshake.getReportingBatchFrequency());
            }
        }

        public static void start() {
            File unused = AdPlacementReporter.reportingDir = new File(EnvironmentUtils.getMillennialDir() + AdPlacementReporter.REPORTING_DIR);
            AdPlacementReporter.reportingDir.mkdirs();
            if (!AdPlacementReporter.reportingDir.isDirectory()) {
                MMLog.m4068e(AdPlacementReporter.TAG, "Unable to creating reporting directory");
                return;
            }
            countQueuedEvents();
            scheduledRunnable = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.AdPlacementReporter.Uploader.2
                @Override // java.lang.Runnable
                public void run() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(AdPlacementReporter.TAG, "Reporting startup -- requesting upload");
                    }
                    Uploader.setUploadState(UploadState.UPLOADING);
                }
            }, 5000L);
        }

        public static File storeEvent(String str, String str2, JSONObject jSONObject, boolean z) {
            if (str2 == null) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(str2);
            sb.append(z ? AdPlacementReporter.EXTENSION_JSON : AdPlacementReporter.EXTENSION_TEMP);
            File file = new File(AdPlacementReporter.reportingDir, sb.toString());
            if (saveToFile(file, jSONObject.toString()) && z) {
                incrementQueuedEventsCount();
            }
            return file;
        }

        public static void storeSiteId(String str) {
            saveToFile(new File(AdPlacementReporter.reportingDir, AdPlacementReporter.SITEID_FILENAME), str);
        }

        public static void uploadNow() {
            String str;
            StringBuilder sb;
            String str2;
            UploadState uploadState;
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(AdPlacementReporter.TAG, "Reporting is starting upload");
            }
            File[] eventsToUpload = getEventsToUpload();
            if (eventsToUpload.length == 0) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(AdPlacementReporter.TAG, "Reporting found no events to upload");
                }
                setUploadState(UploadState.IDLE);
                return;
            }
            String reportingBaseUrl = Handshake.getReportingBaseUrl();
            if (reportingBaseUrl == null) {
                MMLog.m4068e(AdPlacementReporter.TAG, "Unable to determine base url for request");
                setUploadState(UploadState.ERROR_SENDING_TO_SERVER);
                return;
            }
            String concat = reportingBaseUrl.concat(AdPlacementReporter.SSP_REPORTING_PATH);
            String retrieveSiteId = retrieveSiteId();
            if (TextUtils.isEmpty(retrieveSiteId)) {
                MMLog.m4068e(AdPlacementReporter.TAG, "Unable to upload report -- siteId has not been set");
                setUploadState(UploadState.ERROR_SENDING_TO_SERVER);
                return;
            }
            String buildRequest = buildRequest(eventsToUpload);
            if (buildRequest != null) {
                HttpUtils.Response contentFromPostRequest = HttpUtils.getContentFromPostRequest(concat + AdPlacementReporter.SSP_SITE_ID_PARAMETER + retrieveSiteId, buildRequest, "application/json");
                if (contentFromPostRequest.code != 200) {
                    if (EnvironmentUtils.isDeviceIdle()) {
                        str = AdPlacementReporter.TAG;
                        sb = new StringBuilder();
                        sb.append("Reporting failed to upload with response code <");
                        sb.append(contentFromPostRequest.code);
                        str2 = "> while in Doze mode";
                    } else if (!EnvironmentUtils.isNetworkAvailable()) {
                        MMLog.m4068e(AdPlacementReporter.TAG, "Reporting failed to upload because network is unavailable");
                        uploadState = UploadState.ERROR_NETWORK_UNAVAILABLE;
                        setUploadState(uploadState);
                        return;
                    } else {
                        str = AdPlacementReporter.TAG;
                        sb = new StringBuilder();
                        sb.append("Reporting failed to upload with response code <");
                        sb.append(contentFromPostRequest.code);
                        str2 = ">";
                    }
                    sb.append(str2);
                    MMLog.m4068e(str, sb.toString());
                    uploadState = UploadState.ERROR_SENDING_TO_SERVER;
                    setUploadState(uploadState);
                    return;
                } else if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(AdPlacementReporter.TAG, "Report successfully uploaded");
                }
            }
            deleteUploadedEvents(eventsToUpload);
            if (AdPlacementReporter.numQueuedEvents.get() >= Handshake.getReportingBatchSize()) {
                TaskFactory.createAdPlacementReporterTask().execute();
            } else {
                setUploadState(UploadState.IDLE);
            }
        }
    }

    private AdPlacementReporter(PlayList playList, String str) {
        if (MMLog.isDebugEnabled()) {
            String str2 = TAG;
            MMLog.m4070d(str2, "Creating new reporting instance for responseId: " + playList.responseId);
        }
        Uploader.storeSiteId(playList.siteId);
        if (!TextUtils.isEmpty(playList.responseId)) {
            this.eventId = UUID.randomUUID().toString();
        }
        this.responseId = playList.responseId;
        this.placementName = playList.placementName;
        this.impressionGroup = str;
        this.playlistReportJson = new JSONObject();
        this.playlistReportJson.put(REPORT_KEY_TIMESTAMP, System.currentTimeMillis());
        this.playlistReportJson.put(REPORT_KEY_ADNET, new JSONArray());
        this.playlistReportJson.put(REPORT_KEY_RESPONSE_ID, this.responseId);
        this.playlistReportJson.put(REPORT_KEY_PLACEMENT_NAME, this.placementName);
        this.playlistReportJson.put(REPORT_KEY_IMPRESSION_GROUP, str);
        Uploader.storeEvent(EVENT_REQUEST, this.eventId, this.playlistReportJson, false);
        this.playlistProcessingElapsedTimer = new ElapsedTimer();
        this.playlistProcessingElapsedTimer.start();
    }

    public static void clear() {
        if (uploadState != UploadState.UPLOADING) {
            Uploader.setUploadState(UploadState.CLEARING);
        }
    }

    public static String getDisplayTypeName(int i) {
        return i == 1 ? "visibility" : i == 2 ? "click" : i == 0 ? "auto" : "unknown";
    }

    public static PlayListItemReporter getPlayListItemReporter(AdPlacementReporter adPlacementReporter) {
        if (adPlacementReporter == null) {
            return null;
        }
        adPlacementReporter.activePlayListItemReporter = adPlacementReporter.getPlayListItemReporter();
        return adPlacementReporter.activePlayListItemReporter;
    }

    public static AdPlacementReporter getPlayListReporter(PlayList playList, String str) {
        if (playList.reportingEnabled) {
            try {
                return new AdPlacementReporter(playList, str);
            } catch (Exception e) {
                MMLog.m4068e(TAG, "Error starting ad placement reporting");
                return null;
            }
        }
        return null;
    }

    public static UploadState getUploadState() {
        return uploadState;
    }

    public static void init() {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Initializing");
        }
        Uploader.start();
    }

    public static Bidder reportBidItem(JSONObject jSONObject, PlayListItemReporter playListItemReporter, int i) {
        Bidder bidder = new Bidder();
        bidder.price = jSONObject.optString("bidPrice");
        bidder.type = jSONObject.optString("type");
        bidder.status = i;
        playListItemReporter.getSuperAuction().bidders.add(bidder);
        return bidder;
    }

    public static DemandSource reportDemandSource(PlayListItemReporter playListItemReporter, String str, AdWrapper adWrapper) {
        DemandSource demandSource = new DemandSource();
        demandSource.tag = adWrapper.itemId;
        demandSource.type = str;
        playListItemReporter.getSuperAuction().demandSources.add(demandSource);
        return demandSource;
    }

    public static void reportPlayList(AdPlacementReporter adPlacementReporter) {
        if (adPlacementReporter == null) {
            return;
        }
        if (adPlacementReporter.activePlayListItemReporter != null) {
            adPlacementReporter.activePlayListItemReporter.status = -2;
            reportPlayListItem(adPlacementReporter, adPlacementReporter.activePlayListItemReporter);
        }
        adPlacementReporter.reportPlayList();
    }

    public static void reportPlayListItem(AdPlacementReporter adPlacementReporter, PlayListItemReporter playListItemReporter) {
        if (adPlacementReporter == null) {
            return;
        }
        if (adPlacementReporter.activePlayListItemReporter == playListItemReporter) {
            adPlacementReporter.reportPlayListItem(playListItemReporter);
            adPlacementReporter.activePlayListItemReporter = null;
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            MMLog.m4070d(TAG, "reportPlayListItem called but item is not the active item");
        }
    }

    public static void reportPlayListItem(AdPlacementReporter adPlacementReporter, PlayListItemReporter playListItemReporter, int i) {
        if (playListItemReporter == null) {
            return;
        }
        playListItemReporter.status = i;
        reportPlayListItem(adPlacementReporter, playListItemReporter);
    }

    private void reportSuperAuction(PlayListItemReporter playListItemReporter, JSONObject jSONObject) {
        if (playListItemReporter.superAuction != null) {
            jSONObject.put(REPORT_KEY_STATUS, playListItemReporter.superAuction.status);
            JSONObject jSONObject2 = new JSONObject();
            if (!playListItemReporter.superAuction.bidders.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (Bidder bidder : playListItemReporter.superAuction.bidders) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("type", bidder.type);
                    jSONObject3.put(REPORT_KEY_PRICE, bidder.price);
                    jSONObject3.put(REPORT_KEY_STATUS, bidder.status);
                    jSONArray.put(jSONObject3);
                }
                jSONObject2.put(REPORT_KEY_SUPER_AUCTION_BIDDERS, jSONArray);
            }
            if (!playListItemReporter.superAuction.demandSources.isEmpty()) {
                JSONArray jSONArray2 = new JSONArray();
                for (DemandSource demandSource : playListItemReporter.superAuction.demandSources) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(REPORT_KEY_STATUS, demandSource.status);
                    jSONObject4.put(REPORT_KEY_TIMESTAMP, System.currentTimeMillis());
                    jSONObject4.put(REPORT_KEY_ITEM_ID, demandSource.tag);
                    jSONObject4.put(REPORT_KEY_RESPONSE_TIME, demandSource.elapsedTimer.getElapsedTime());
                    jSONArray2.put(jSONObject4);
                }
                jSONObject2.put(REPORT_KEY_SUPER_AUCTION_DEMAND_SOURCES, jSONArray2);
            }
            jSONObject.put(REPORT_KEY_SUPER_AUCTION, jSONObject2);
        }
    }

    public static void setClicked(AdPlacementReporter adPlacementReporter) {
        if (adPlacementReporter == null) {
            return;
        }
        adPlacementReporter.setClicked();
    }

    public static void setDisplayed(AdPlacementReporter adPlacementReporter) {
        setDisplayed(adPlacementReporter, -1);
    }

    public static void setDisplayed(AdPlacementReporter adPlacementReporter, int i) {
        if (adPlacementReporter == null) {
            return;
        }
        adPlacementReporter.setDisplayed(i);
    }

    public static void uploadNow() {
        Uploader.uploadNow();
    }

    public PlayListItemReporter getPlayListItemReporter() {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Reporting playlist item start for responseId: " + this.responseId);
        }
        return new PlayListItemReporter();
    }

    public void reportPlayList() {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Reporting playlist stop for responseId: " + this.responseId);
        }
        try {
            this.playlistReportJson.put(REPORT_KEY_RESPONSE_TIME, this.playlistProcessingElapsedTimer.getElapsedTime());
            File storeEvent = Uploader.storeEvent(EVENT_REQUEST, this.eventId, this.playlistReportJson, false);
            if (storeEvent != null) {
                Uploader.setEventAsCompleted(storeEvent, true);
            }
            this.playlistReportJson = null;
        } catch (Exception e) {
            MMLog.m4068e(TAG, "Error stopping playlist reporting");
        }
    }

    public void reportPlayListItem(PlayListItemReporter playListItemReporter) {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Reporting playlist item stop for responseId: " + this.responseId);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(REPORT_KEY_ITEM_ID, playListItemReporter.itemId);
            jSONObject.put(REPORT_KEY_STATUS, playListItemReporter.status);
            jSONObject.put(REPORT_KEY_RESPONSE_TIME, playListItemReporter.elapsedTimer.getElapsedTime());
            reportSuperAuction(playListItemReporter, jSONObject);
            if (playListItemReporter.status == 1) {
                this.buyer = playListItemReporter.buyer;
                this.pru = playListItemReporter.pru;
                if (playListItemReporter.superAuction == null || playListItemReporter.superAuction.itemId == null) {
                    this.itemId = playListItemReporter.itemId;
                    this.playlistReportJson.put(REPORT_KEY_BUYER, this.buyer);
                    this.playlistReportJson.put(REPORT_KEY_PRU, this.pru);
                } else {
                    this.itemId = playListItemReporter.superAuction.itemId;
                }
            }
            this.playlistReportJson.getJSONArray(REPORT_KEY_ADNET).put(jSONObject);
            Uploader.storeEvent(EVENT_REQUEST, this.eventId, this.playlistReportJson, false);
        } catch (Exception e) {
            MMLog.m4068e(TAG, "Error adding playlist item");
        }
    }

    public void setClicked() {
        if (!this.clickReported) {
            if (MMLog.isDebugEnabled()) {
                String str = TAG;
                MMLog.m4070d(str, "Reporting ad clicked for responseId: " + this.responseId);
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(REPORT_KEY_RESPONSE_ID, this.responseId);
                jSONObject.put(REPORT_KEY_TIMESTAMP, System.currentTimeMillis());
                jSONObject.put(REPORT_KEY_PLACEMENT_NAME, this.placementName);
                jSONObject.put(REPORT_KEY_ITEM_ID, this.itemId);
                jSONObject.put(REPORT_KEY_IMPRESSION_GROUP, this.impressionGroup);
                Uploader.storeEvent(EVENT_CLICK, this.eventId, jSONObject, true);
            } catch (Exception e) {
                MMLog.m4068e(TAG, "Error recording click");
            }
            this.clickReported = true;
        }
    }

    public void setDisplayed(int i) {
        if (!this.displayReported) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, String.format("Reporting ad displayed for responseId: %s, %s", this.responseId, getDisplayTypeName(i)));
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(REPORT_KEY_RESPONSE_ID, this.responseId);
                jSONObject.put(REPORT_KEY_TIMESTAMP, System.currentTimeMillis());
                jSONObject.put(REPORT_KEY_PLACEMENT_NAME, this.placementName);
                jSONObject.put(REPORT_KEY_ITEM_ID, this.itemId);
                jSONObject.put(REPORT_KEY_BUYER, this.buyer);
                jSONObject.put(REPORT_KEY_PRU, this.pru);
                jSONObject.put(REPORT_KEY_IMPRESSION_GROUP, this.impressionGroup);
                Uploader.storeEvent(EVENT_DISPLAY, this.eventId, jSONObject, true);
            } catch (Exception e) {
                MMLog.m4068e(TAG, "Error recording display");
            }
            this.displayReported = true;
        }
    }
}
