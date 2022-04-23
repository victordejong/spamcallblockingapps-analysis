package com.verizon.ads.verizonsspreporter;

import android.content.Context;
import com.verizon.ads.Bid;
import com.verizon.ads.Configuration;
import com.verizon.ads.EnvironmentInfo;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Job;
import com.verizon.ads.JobScheduler;
import com.verizon.ads.Logger;
import com.verizon.ads.VASAds;
import com.verizon.ads.Waterfall;
import com.verizon.ads.WaterfallResult;
import com.verizon.ads.events.EventReceiver;
import com.verizon.ads.events.Events;
import com.verizon.ads.support.ClickEvent;
import com.verizon.ads.support.ImpressionEvent;
import com.verizon.ads.utils.HttpUtils;
import com.verizon.ads.utils.IOUtils;
import com.verizon.ads.utils.JSONWriter;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import io.bidmachine.BidMachineFetcher;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspreporter/VerizonSSPReporter.class */
public class VerizonSSPReporter {

    /* renamed from: c  reason: collision with root package name */
    private static volatile File f35768c;

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35766a = Logger.getInstance(VerizonSSPReporter.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f35767b = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static volatile UploadState f35769d = UploadState.IDLE;
    private static volatile AtomicInteger e = new AtomicInteger(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.verizon.ads.verizonsspreporter.VerizonSSPReporter$4  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspreporter/VerizonSSPReporter$4.class */
    public static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f35773a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[UploadState.values().length];
            f35773a = iArr;
            try {
                iArr[UploadState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f35773a[UploadState.UPLOADING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f35773a[UploadState.ERROR_SENDING_TO_SERVER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f35773a[UploadState.CLEARING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState.class */
    public enum UploadState {
        IDLE,
        UPLOADING,
        ERROR_SENDING_TO_SERVER,
        CLEARING
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader.class */
    public static class Uploader {

        /* renamed from: a  reason: collision with root package name */
        private static volatile ThreadUtils.ScheduledRunnable f35774a;

        /* renamed from: b  reason: collision with root package name */
        private static File f35775b;

        /* renamed from: c  reason: collision with root package name */
        private static Job f35776c = new Job() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.1
            @Override // com.verizon.ads.Job
            public final long getDelay() {
                return 0L;
            }

            @Override // com.verizon.ads.Job
            public final int getId() {
                return 17;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Uploader.a();
            }
        };

        Uploader() {
        }

        private static String a(File file) {
            Throwable th;
            IOException e;
            FileInputStream fileInputStream;
            boolean exists = file.exists();
            FileInputStream fileInputStream2 = null;
            String str = null;
            str = null;
            try {
                if (exists) {
                    try {
                        fileInputStream = new FileInputStream(file);
                        fileInputStream2 = fileInputStream;
                        try {
                            str = IOUtils.read(fileInputStream, "UTF-8");
                        } catch (IOException e2) {
                            e = e2;
                            Logger logger = VerizonSSPReporter.f35766a;
                            StringBuilder sb = new StringBuilder("Error opening file <");
                            sb.append(file.getName());
                            sb.append(">");
                            fileInputStream2 = fileInputStream;
                            logger.e(sb.toString(), e);
                            IOUtils.closeStream(fileInputStream);
                            return str;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        fileInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream2 = null;
                        IOUtils.closeStream(fileInputStream2);
                        throw th;
                    }
                    IOUtils.closeStream(fileInputStream);
                }
                return str;
            } catch (Throwable th3) {
                th = th3;
            }
        }

        private static Set<File> a(String str, File[] fileArr) {
            HashSet hashSet = new HashSet();
            for (File file : fileArr) {
                if (file.getName().startsWith(str)) {
                    hashSet.add(file);
                }
            }
            return hashSet;
        }

        static /* synthetic */ void a() {
            VerizonSSPReporter.f35766a.d("Reporting is starting upload");
            File[] b2 = b();
            if (b2.length == 0) {
                VerizonSSPReporter.f35766a.d("Reporting found no events to upload");
            } else if (!EnvironmentInfo.isNetworkAvailable()) {
                VerizonSSPReporter.f35766a.w("Cannot upload report because network is not available");
            } else {
                String string = Configuration.getString("com.verizon.ads.verizonssp", "reportingBaseUrl", "https://ads.nexage.com");
                if (string == null) {
                    VerizonSSPReporter.f35766a.e("Unable to determine base url for request");
                    a(UploadState.ERROR_SENDING_TO_SERVER);
                    return;
                }
                String concat = string.concat("/admax/sdk/report/4");
                String siteId = VASAds.getSiteId();
                if (TextUtils.isEmpty(siteId)) {
                    VerizonSSPReporter.f35766a.e("Unable to upload report -- siteId has not been set");
                    a(UploadState.ERROR_SENDING_TO_SERVER);
                    return;
                }
                File b3 = b(b2);
                if (b3 != null) {
                    HttpUtils.Response contentFromPostRequest = HttpUtils.getContentFromPostRequest(concat + "?dcn=" + siteId, b3, "application/json");
                    if (contentFromPostRequest.code != 200) {
                        Logger logger = VerizonSSPReporter.f35766a;
                        logger.e("Reporting failed to upload with response code <" + contentFromPostRequest.code + ">");
                        a(UploadState.ERROR_SENDING_TO_SERVER);
                        return;
                    }
                    VerizonSSPReporter.f35766a.d("Report successfully uploaded");
                    if (!b3.delete()) {
                        Logger logger2 = VerizonSSPReporter.f35766a;
                        logger2.d("Failed to delete report file + " + b3.getAbsolutePath());
                    }
                }
                a(b2);
                if (VerizonSSPReporter.e.get() >= d()) {
                    JobScheduler.schedule(f35776c);
                    return;
                }
            }
            a(UploadState.IDLE);
        }

        static /* synthetic */ void a(Context context) {
            f35775b = context.getFilesDir();
            StringBuilder sb = new StringBuilder();
            File file = new File(f35775b + "/.com.verizon.ads/");
            file.mkdirs();
            sb.append(file);
            sb.append("/.reporting/");
            File unused = VerizonSSPReporter.f35768c = new File(sb.toString());
            VerizonSSPReporter.f35768c.mkdirs();
            if (!VerizonSSPReporter.f35768c.isDirectory()) {
                VerizonSSPReporter.f35766a.e("Unable to creating reporting directory");
                return;
            }
            c();
            f35774a = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.3
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonSSPReporter.f35766a.d("Reporting startup -- requesting upload");
                    Uploader.a(UploadState.UPLOADING);
                }
            }, 5000L);
        }

        static void a(UploadState uploadState) {
            synchronized (VerizonSSPReporter.f35767b) {
                if (uploadState != VerizonSSPReporter.f35769d) {
                    UploadState unused = VerizonSSPReporter.f35769d = uploadState;
                    int i = AnonymousClass4.f35773a[VerizonSSPReporter.f35769d.ordinal()];
                    if (i == 1) {
                        VerizonSSPReporter.f35766a.d("Reporting upload state set to IDLE");
                        f35774a = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.4
                            @Override // java.lang.Runnable
                            public final void run() {
                                VerizonSSPReporter.f35766a.d("Reporting batch frequency detected -- requesting upload");
                                Uploader.a(UploadState.UPLOADING);
                            }
                        }, e());
                    } else if (i == 2) {
                        VerizonSSPReporter.f35766a.d("Reporting upload state set to UPLOADING");
                        if (f35774a != null) {
                            f35774a.cancel();
                        }
                        JobScheduler.schedule(f35776c);
                    } else if (i == 3) {
                        VerizonSSPReporter.f35766a.d("Reporting upload state set to ERROR_SENDING_TO_SERVER");
                        f35774a = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                VerizonSSPReporter.f35766a.d("Reporting batch frequency detected -- requesting upload");
                                Uploader.a(UploadState.UPLOADING);
                            }
                        }, e());
                    } else if (i == 4) {
                        VerizonSSPReporter.f35766a.d("Reporting upload state set to CLEARING");
                        if (f35774a != null) {
                            f35774a.cancel();
                        }
                        f();
                    }
                }
            }
        }

        static void a(String str, JSONObject jSONObject) {
            String uuid = UUID.randomUUID().toString();
            if (a(new File(VerizonSSPReporter.f35768c, str + uuid + ".json"), jSONObject.toString())) {
                synchronized (VerizonSSPReporter.f35767b) {
                    int incrementAndGet = VerizonSSPReporter.e.incrementAndGet();
                    if (VerizonSSPReporter.f35769d == UploadState.IDLE && incrementAndGet >= d()) {
                        VerizonSSPReporter.f35766a.d("Reporting batch size limit detected -- requesting upload");
                        a(UploadState.UPLOADING);
                    }
                }
            }
        }

        private static void a(File[] fileArr) {
            int i = 0;
            for (File file : fileArr) {
                if (!file.delete()) {
                    VerizonSSPReporter.f35766a.e("Failed to delete reporting file <" + file.getName() + ">");
                } else {
                    i--;
                }
            }
            VerizonSSPReporter.e.addAndGet(i);
        }

        private static boolean a(File file, String str) {
            Throwable th;
            boolean z;
            Exception e;
            FileOutputStream fileOutputStream;
            FileOutputStream fileOutputStream2 = null;
            FileOutputStream fileOutputStream3 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                IOUtils.write(fileOutputStream, str);
                z = IOUtils.closeStream(fileOutputStream);
            } catch (Exception e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                Logger logger = VerizonSSPReporter.f35766a;
                StringBuilder sb = new StringBuilder("Error writing to file <");
                sb.append(file.getName());
                sb.append(">");
                fileOutputStream3 = fileOutputStream2;
                logger.e(sb.toString(), e);
                z = IOUtils.closeStream(fileOutputStream2);
                return z;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream3 = fileOutputStream;
                IOUtils.closeStream(fileOutputStream3);
                throw th;
            }
            return z;
        }

        private static File b(File[] fileArr) {
            try {
                File createTempFile = File.createTempFile("VerizonSSPReport", null);
                try {
                    JSONWriter jSONWriter = new JSONWriter(new OutputStreamWriter(new FileOutputStream(createTempFile), "UTF-8"));
                    Set<File> a2 = a("request_", fileArr);
                    Set<File> a3 = a("display_", fileArr);
                    Set<File> a4 = a("click_", fileArr);
                    if (!a2.isEmpty() || !a3.isEmpty() || !a4.isEmpty()) {
                        jSONWriter.beginObject();
                        if (!a2.isEmpty()) {
                            jSONWriter.name("req");
                            jSONWriter.beginArray();
                            for (File file : a2) {
                                jSONWriter.write(b(file));
                            }
                            jSONWriter.endArray();
                        }
                        if (!a3.isEmpty()) {
                            jSONWriter.name(BidMachineFetcher.AD_TYPE_DISPLAY);
                            jSONWriter.beginArray();
                            for (File file2 : a3) {
                                jSONWriter.write(b(file2));
                            }
                            jSONWriter.endArray();
                        }
                        if (!a4.isEmpty()) {
                            jSONWriter.name("click");
                            jSONWriter.beginArray();
                            for (File file3 : a4) {
                                jSONWriter.write(b(file3));
                            }
                            jSONWriter.endArray();
                        }
                        jSONWriter.endObject();
                        jSONWriter.close();
                        if (a2.size() + a4.size() + a3.size() == 0) {
                            VerizonSSPReporter.f35766a.d("No reporting events added to the request");
                            jSONWriter.close();
                            return null;
                        }
                        jSONWriter.close();
                        return createTempFile;
                    }
                    jSONWriter.close();
                    return null;
                } catch (Exception e) {
                    VerizonSSPReporter.f35766a.e("Error creating SSP reporting request", e);
                    return null;
                }
            } catch (Exception e2) {
                VerizonSSPReporter.f35766a.e("Could not create the SSP report file.", e2);
                return null;
            }
        }

        private static JSONObject b(File file) {
            JSONObject jSONObject;
            if (file.exists()) {
                try {
                    jSONObject = new JSONObject(a(file));
                } catch (JSONException e) {
                    Logger logger = VerizonSSPReporter.f35766a;
                    logger.e("Error parsing reporting file <" + file.getName() + ">", e);
                }
                return jSONObject;
            }
            jSONObject = null;
            return jSONObject;
        }

        private static File[] b() {
            File[] listFiles = VerizonSSPReporter.f35768c.listFiles(new FilenameFilter() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.2
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    return str.endsWith(".json");
                }
            });
            File[] fileArr = listFiles;
            if (listFiles == null) {
                fileArr = new File[0];
            }
            return fileArr;
        }

        private static void c() {
            File[] listFiles = VerizonSSPReporter.f35768c.listFiles();
            int i = 0;
            if (listFiles != null) {
                i = 0;
                for (File file : listFiles) {
                    i = i;
                    if (file.getName().endsWith(".json")) {
                        i++;
                    }
                }
            }
            VerizonSSPReporter.e.set(i);
        }

        private static int d() {
            return Configuration.getInt("com.verizon.ads.verizonssp", "reportingBatchSize", 5);
        }

        private static long e() {
            return Configuration.getInt("com.verizon.ads.verizonssp", "reportingBatchFrequency", 120000);
        }

        private static void f() {
            VerizonSSPReporter.f35766a.d("Reporting is clearing events");
            File[] b2 = b();
            if (b2.length > 0) {
                a(b2);
            }
            a(UploadState.IDLE);
        }
    }

    public VerizonSSPReporter(Context context) {
        f35766a.d("Initializing VerizonSSPReporter");
        Events.subscribe(new EventReceiver() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.1
            @Override // com.verizon.ads.events.EventReceiver
            public final void onEvent$645b3fe5(Object obj) {
                if (obj instanceof ClickEvent) {
                    VerizonSSPReporter.a((ClickEvent) obj);
                } else {
                    VerizonSSPReporter.f35766a.w("Unable to process unknown click event type");
                }
            }
        }, ClickEvent.CLICK_EVENT_ID);
        Events.subscribe(new EventReceiver() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.2
            @Override // com.verizon.ads.events.EventReceiver
            public final void onEvent$645b3fe5(Object obj) {
                if (obj instanceof ImpressionEvent) {
                    VerizonSSPReporter.a((ImpressionEvent) obj);
                } else {
                    VerizonSSPReporter.f35766a.w("Unable to process unknown impression event type");
                }
            }
        }, ImpressionEvent.IMPRESSION_EVENT_ID);
        Events.subscribe(new EventReceiver() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.3
            @Override // com.verizon.ads.events.EventReceiver
            public final void onEvent$645b3fe5(Object obj) {
                if (obj instanceof WaterfallResult) {
                    VerizonSSPReporter.a(VerizonSSPReporter.this, (WaterfallResult) obj);
                    return;
                }
                VerizonSSPReporter.f35766a.w("Unable to process unknown waterfall event result type");
            }
        }, WaterfallResult.EVENT_WATERFALL_RESULT);
        Uploader.a(context);
    }

    private static int a(WaterfallResult.WaterfallItemResult waterfallItemResult) {
        if (waterfallItemResult == null) {
            f35766a.w("WaterfallItemResult cannot be null");
            return 0;
        }
        ErrorInfo errorInfo = waterfallItemResult.getErrorInfo();
        if (errorInfo == null) {
            return 1;
        }
        return errorInfo.getErrorCode();
    }

    private static long a(List<WaterfallResult.WaterfallItemResult> list) {
        long j = 0;
        for (WaterfallResult.WaterfallItemResult waterfallItemResult : list) {
            j += waterfallItemResult.getElapsedTime();
        }
        return j;
    }

    private static String a(WaterfallResult waterfallResult, String str) {
        for (WaterfallResult.WaterfallItemResult waterfallItemResult : waterfallResult.getWaterfallItemResults()) {
            if (waterfallItemResult.getErrorInfo() == null) {
                return (String) waterfallItemResult.getMetadata().get(str);
            }
        }
        return null;
    }

    private JSONArray a(WaterfallResult waterfallResult) {
        VerizonSSPWaterfallProvider.VerizonSSPBid verizonSSPBid;
        if (Logger.isLogLevelEnabled(3)) {
            f35766a.d(String.format("Reporting waterfall item results for responseId: %s", waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID)));
        }
        JSONArray jSONArray = new JSONArray();
        Bid bid = waterfallResult.getBid();
        if (bid instanceof VerizonSSPWaterfallProvider.VerizonSSPBid) {
            verizonSSPBid = (VerizonSSPWaterfallProvider.VerizonSSPBid) bid;
        } else {
            verizonSSPBid = null;
            if (bid != null) {
                f35766a.w("Unable to process unknown bid type");
                verizonSSPBid = null;
            }
        }
        try {
            if (verizonSSPBid == null) {
                for (WaterfallResult.WaterfallItemResult waterfallItemResult : waterfallResult.getWaterfallItemResults()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("tag", waterfallItemResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID));
                    jSONObject.put("status", a(waterfallItemResult));
                    jSONObject.put("resp", waterfallItemResult.getElapsedTime());
                    jSONArray.put(jSONObject);
                }
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("tag", verizonSSPBid.itemId);
                jSONObject2.put("status", b(waterfallResult.getWaterfallItemResults()));
                jSONObject2.put("resp", a(waterfallResult.getWaterfallItemResults()));
                jSONObject2.put("superAuction", a(verizonSSPBid, waterfallResult.getWaterfallItemResults()));
                jSONArray.put(jSONObject2);
            }
        } catch (Exception e2) {
            f35766a.e("Error adding waterfall item");
        }
        return jSONArray;
    }

    private static JSONObject a(VerizonSSPWaterfallProvider.VerizonSSPBid verizonSSPBid, List<WaterfallResult.WaterfallItemResult> list) throws JSONException {
        if (verizonSSPBid == null) {
            f35766a.w("Bid object cannot be null");
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        if (verizonSSPBid.bidderItem != null) {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("type", verizonSSPBid.bidderItem.getString("type"));
            jSONObject2.put("price", verizonSSPBid.bidderItem.getString("bidPrice"));
            jSONObject2.put("status", 1);
            jSONArray.put(jSONObject2);
            jSONObject.put("bidders", jSONArray);
        }
        JSONArray jSONArray2 = new JSONArray();
        for (WaterfallResult.WaterfallItemResult waterfallItemResult : list) {
            if (waterfallItemResult.getErrorInfo() != null && waterfallItemResult.getErrorInfo().getErrorCode() == 113) {
                return jSONObject;
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("status", a(waterfallItemResult));
            jSONObject3.put("ts", waterfallItemResult.getStartTime());
            jSONObject3.put("tag", waterfallItemResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID));
            jSONObject3.put("resp", waterfallItemResult.getElapsedTime());
            jSONArray2.put(jSONObject3);
        }
        jSONObject.put("demandSources", jSONArray2);
        return jSONObject;
    }

    static /* synthetic */ void a(ClickEvent clickEvent) {
        try {
            Map<String, Object> metadata = ((Waterfall) clickEvent.adSession.get(VASAds.RESPONSE_WATERFALL, Waterfall.class, null)).getMetadata();
            if (Boolean.TRUE.equals(metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_REPORTING_ENABLED))) {
                if (Logger.isLogLevelEnabled(3)) {
                    Logger logger = f35766a;
                    logger.d("Reporting click event for responseId: " + metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
                }
                Map<String, Object> metadata2 = ((Waterfall.WaterfallItem) clickEvent.adSession.get(VASAds.RESPONSE_WATERFALL_ITEM, Waterfall.WaterfallItem.class, null)).getMetadata();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("a", metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
                jSONObject.put("ts", clickEvent.clickTime);
                jSONObject.put("zone", metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_PLACEMENT_NAME));
                jSONObject.put("tag", metadata2.get(VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID));
                jSONObject.put("grp", metadata.get("impressionGroup"));
                Uploader.a("click_", jSONObject);
            } else if (Logger.isLogLevelEnabled(3)) {
                Logger logger2 = f35766a;
                logger2.d("Reporting disabled. Ignoring click event for responseId: " + metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
            }
        } catch (Exception e2) {
            f35766a.e("Error recording click event");
        }
    }

    static /* synthetic */ void a(ImpressionEvent impressionEvent) {
        try {
            Map<String, Object> metadata = ((Waterfall) impressionEvent.adSession.get(VASAds.RESPONSE_WATERFALL, Waterfall.class, null)).getMetadata();
            if (Boolean.TRUE.equals(metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_REPORTING_ENABLED))) {
                if (Logger.isLogLevelEnabled(3)) {
                    f35766a.d(String.format("Reporting impression event for responseId: %s", metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID)));
                }
                Map<String, Object> metadata2 = ((Waterfall.WaterfallItem) impressionEvent.adSession.get(VASAds.RESPONSE_WATERFALL_ITEM, Waterfall.WaterfallItem.class, null)).getMetadata();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("a", metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
                jSONObject.put("ts", impressionEvent.impressionTime);
                jSONObject.put("zone", metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_PLACEMENT_NAME));
                jSONObject.put("tag", metadata2.get(VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID));
                jSONObject.put(VerizonSSPWaterfallProvider.METADATA_KEY_BUYER, metadata2.get(VerizonSSPWaterfallProvider.METADATA_KEY_BUYER));
                jSONObject.put(VerizonSSPWaterfallProvider.METADATA_KEY_PRU, metadata2.get(VerizonSSPWaterfallProvider.METADATA_KEY_PRU));
                jSONObject.put("grp", metadata.get("impressionGroup"));
                Uploader.a("display_", jSONObject);
            } else if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f35766a;
                logger.d("Reporting disabled. Ignoring impression event for responseId: " + metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
            }
        } catch (Exception e2) {
            f35766a.e("Error recording impression event");
        }
    }

    static /* synthetic */ void a(VerizonSSPReporter verizonSSPReporter, WaterfallResult waterfallResult) {
        if (Boolean.TRUE.equals(waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_REPORTING_ENABLED))) {
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f35766a;
                logger.d("Adding waterfall result event for responseId: " + waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put("a", waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
                jSONObject.put("zone", waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_PLACEMENT_NAME));
                jSONObject.put("grp", waterfallResult.getMetadata().get("impressionGroup"));
                jSONObject.put("resp", waterfallResult.getElapsedTime());
                jSONObject.put("adnet", verizonSSPReporter.a(waterfallResult));
                if (waterfallResult.getBid() == null) {
                    jSONObject.put(VerizonSSPWaterfallProvider.METADATA_KEY_BUYER, a(waterfallResult, VerizonSSPWaterfallProvider.METADATA_KEY_BUYER));
                    jSONObject.put(VerizonSSPWaterfallProvider.METADATA_KEY_PRU, a(waterfallResult, VerizonSSPWaterfallProvider.METADATA_KEY_PRU));
                }
                Uploader.a("request_", jSONObject);
            } catch (JSONException e2) {
                f35766a.e("Unable to process waterfall result event");
            }
        } else if (Logger.isLogLevelEnabled(3)) {
            Logger logger2 = f35766a;
            logger2.d("Reporting disabled. Ignoring waterfall result event for responseId: " + waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
        }
    }

    private static int b(List<WaterfallResult.WaterfallItemResult> list) {
        for (WaterfallResult.WaterfallItemResult waterfallItemResult : list) {
            if (waterfallItemResult.getErrorInfo() != null && waterfallItemResult.getErrorInfo().getErrorCode() == 113) {
                return 113;
            }
            if (a(waterfallItemResult) == 1) {
                return 111;
            }
        }
        return 112;
    }

    public static void clear() {
        if (f35769d != UploadState.UPLOADING) {
            Uploader.a(UploadState.CLEARING);
        }
    }
}
