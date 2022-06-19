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
import java.util.Iterator;
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

    /* renamed from: c */
    private static volatile File f61982c;

    /* renamed from: a */
    private static final Logger f61980a = Logger.getInstance(VerizonSSPReporter.class);

    /* renamed from: b */
    private static final Object f61981b = new Object();

    /* renamed from: d */
    private static volatile UploadState f61983d = UploadState.IDLE;

    /* renamed from: e */
    private static volatile AtomicInteger f61984e = new AtomicInteger(0);

    /* renamed from: com.verizon.ads.verizonsspreporter.VerizonSSPReporter$4 */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspreporter/VerizonSSPReporter$4.class */
    public static /* synthetic */ class C175024 {

        /* renamed from: a */
        static final /* synthetic */ int[] f61988a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[UploadState.values().length];
            f61988a = iArr;
            try {
                iArr[UploadState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f61988a[UploadState.UPLOADING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f61988a[UploadState.ERROR_SENDING_TO_SERVER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f61988a[UploadState.CLEARING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState.class */
    public enum UploadState {
        IDLE,
        UPLOADING,
        ERROR_SENDING_TO_SERVER,
        CLEARING
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader.class */
    public static class Uploader {

        /* renamed from: a */
        private static volatile ThreadUtils.ScheduledRunnable f61989a;

        /* renamed from: b */
        private static File f61990b;

        /* renamed from: c */
        private static Job f61991c = new Job() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.1
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
                Uploader.m5086a();
            }
        };

        Uploader() {
        }

        /* renamed from: a */
        private static String m5083a(File file) {
            Throwable th;
            FileInputStream fileInputStream;
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
                            str = IOUtils.read(fileInputStream2, "UTF-8");
                        } catch (IOException e2) {
                            e = e2;
                            Logger logger = VerizonSSPReporter.f61980a;
                            FileInputStream fileInputStream4 = fileInputStream2;
                            FileInputStream fileInputStream5 = fileInputStream2;
                            StringBuilder sb = new StringBuilder("Error opening file <");
                            FileInputStream fileInputStream6 = fileInputStream2;
                            sb.append(file.getName());
                            FileInputStream fileInputStream7 = fileInputStream2;
                            sb.append(">");
                            fileInputStream3 = fileInputStream2;
                            logger.m5564e(sb.toString(), e);
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

        /* renamed from: a */
        private static Set<File> m5080a(String str, File[] fileArr) {
            HashSet hashSet = new HashSet();
            for (File file : fileArr) {
                if (file.getName().startsWith(str)) {
                    hashSet.add(file);
                }
            }
            return hashSet;
        }

        /* renamed from: a */
        static /* synthetic */ void m5086a() {
            VerizonSSPReporter.f61980a.m5567d("Reporting is starting upload");
            File[] m5078b = m5078b();
            if (m5078b.length == 0) {
                VerizonSSPReporter.f61980a.m5567d("Reporting found no events to upload");
            } else if (!EnvironmentInfo.isNetworkAvailable()) {
                VerizonSSPReporter.f61980a.m5559w("Cannot upload report because network is not available");
            } else {
                String string = Configuration.getString("com.verizon.ads.verizonssp", "reportingBaseUrl", "https://ads.nexage.com");
                if (string == null) {
                    VerizonSSPReporter.f61980a.m5565e("Unable to determine base url for request");
                    m5084a(UploadState.ERROR_SENDING_TO_SERVER);
                    return;
                }
                String concat = string.concat("/admax/sdk/report/4");
                String siteId = VASAds.getSiteId();
                if (TextUtils.isEmpty(siteId)) {
                    VerizonSSPReporter.f61980a.m5565e("Unable to upload report -- siteId has not been set");
                    m5084a(UploadState.ERROR_SENDING_TO_SERVER);
                    return;
                }
                File m5076b = m5076b(m5078b);
                if (m5076b != null) {
                    HttpUtils.Response contentFromPostRequest = HttpUtils.getContentFromPostRequest(concat + "?dcn=" + siteId, m5076b, "application/json");
                    if (contentFromPostRequest.code != 200) {
                        Logger logger = VerizonSSPReporter.f61980a;
                        logger.m5565e("Reporting failed to upload with response code <" + contentFromPostRequest.code + ">");
                        m5084a(UploadState.ERROR_SENDING_TO_SERVER);
                        return;
                    }
                    VerizonSSPReporter.f61980a.m5567d("Report successfully uploaded");
                    if (!m5076b.delete()) {
                        Logger logger2 = VerizonSSPReporter.f61980a;
                        logger2.m5567d("Failed to delete report file + " + m5076b.getAbsolutePath());
                    }
                }
                m5079a(m5078b);
                if (VerizonSSPReporter.f61984e.get() >= m5074d()) {
                    JobScheduler.schedule(f61991c);
                    return;
                }
            }
            m5084a(UploadState.IDLE);
        }

        /* renamed from: a */
        static /* synthetic */ void m5085a(Context context) {
            f61990b = context.getFilesDir();
            StringBuilder sb = new StringBuilder();
            File file = new File(f61990b + "/.com.verizon.ads/");
            file.mkdirs();
            sb.append(file);
            sb.append("/.reporting/");
            File unused = VerizonSSPReporter.f61982c = new File(sb.toString());
            VerizonSSPReporter.f61982c.mkdirs();
            if (!VerizonSSPReporter.f61982c.isDirectory()) {
                VerizonSSPReporter.f61980a.m5565e("Unable to creating reporting directory");
                return;
            }
            m5075c();
            f61989a = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.3
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonSSPReporter.f61980a.m5567d("Reporting startup -- requesting upload");
                    Uploader.m5084a(UploadState.UPLOADING);
                }
            }, 5000L);
        }

        /* renamed from: a */
        static void m5084a(UploadState uploadState) {
            synchronized (VerizonSSPReporter.f61981b) {
                if (uploadState == VerizonSSPReporter.f61983d) {
                    return;
                }
                UploadState unused = VerizonSSPReporter.f61983d = uploadState;
                int i = C175024.f61988a[VerizonSSPReporter.f61983d.ordinal()];
                if (i == 1) {
                    VerizonSSPReporter.f61980a.m5567d("Reporting upload state set to IDLE");
                    f61989a = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            VerizonSSPReporter.f61980a.m5567d("Reporting batch frequency detected -- requesting upload");
                            Uploader.m5084a(UploadState.UPLOADING);
                        }
                    }, m5073e());
                } else if (i == 2) {
                    VerizonSSPReporter.f61980a.m5567d("Reporting upload state set to UPLOADING");
                    if (f61989a != null) {
                        f61989a.cancel();
                    }
                    JobScheduler.schedule(f61991c);
                } else if (i == 3) {
                    VerizonSSPReporter.f61980a.m5567d("Reporting upload state set to ERROR_SENDING_TO_SERVER");
                    f61989a = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            VerizonSSPReporter.f61980a.m5567d("Reporting batch frequency detected -- requesting upload");
                            Uploader.m5084a(UploadState.UPLOADING);
                        }
                    }, m5073e());
                } else if (i != 4) {
                } else {
                    VerizonSSPReporter.f61980a.m5567d("Reporting upload state set to CLEARING");
                    if (f61989a != null) {
                        f61989a.cancel();
                    }
                    m5072f();
                }
            }
        }

        /* renamed from: a */
        static void m5081a(String str, JSONObject jSONObject) {
            String uuid = UUID.randomUUID().toString();
            if (m5082a(new File(VerizonSSPReporter.f61982c, str + uuid + ".json"), jSONObject.toString())) {
                synchronized (VerizonSSPReporter.f61981b) {
                    int incrementAndGet = VerizonSSPReporter.f61984e.incrementAndGet();
                    if (VerizonSSPReporter.f61983d == UploadState.IDLE && incrementAndGet >= m5074d()) {
                        VerizonSSPReporter.f61980a.m5567d("Reporting batch size limit detected -- requesting upload");
                        m5084a(UploadState.UPLOADING);
                    }
                }
            }
        }

        /* renamed from: a */
        private static void m5079a(File[] fileArr) {
            int i = 0;
            for (File file : fileArr) {
                if (!file.delete()) {
                    VerizonSSPReporter.f61980a.m5565e("Failed to delete reporting file <" + file.getName() + ">");
                } else {
                    i--;
                }
            }
            VerizonSSPReporter.f61984e.addAndGet(i);
        }

        /* renamed from: a */
        private static boolean m5082a(File file, String str) {
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
                Logger logger = VerizonSSPReporter.f61980a;
                FileOutputStream fileOutputStream4 = fileOutputStream;
                FileOutputStream fileOutputStream5 = fileOutputStream;
                StringBuilder sb = new StringBuilder("Error writing to file <");
                FileOutputStream fileOutputStream6 = fileOutputStream;
                sb.append(file.getName());
                FileOutputStream fileOutputStream7 = fileOutputStream;
                sb.append(">");
                fileOutputStream3 = fileOutputStream;
                logger.m5564e(sb.toString(), e);
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

        /* renamed from: b */
        private static File m5076b(File[] fileArr) {
            try {
                File createTempFile = File.createTempFile("VerizonSSPReport", null);
                try {
                    JSONWriter jSONWriter = new JSONWriter(new OutputStreamWriter(new FileOutputStream(createTempFile), "UTF-8"));
                    Set<File> m5080a = m5080a("request_", fileArr);
                    Set<File> m5080a2 = m5080a("display_", fileArr);
                    Set<File> m5080a3 = m5080a("click_", fileArr);
                    if (m5080a.isEmpty() && m5080a2.isEmpty() && m5080a3.isEmpty()) {
                        jSONWriter.close();
                        return null;
                    }
                    jSONWriter.beginObject();
                    if (!m5080a.isEmpty()) {
                        jSONWriter.name("req");
                        jSONWriter.beginArray();
                        for (File file : m5080a) {
                            jSONWriter.write(m5077b(file));
                        }
                        jSONWriter.endArray();
                    }
                    if (!m5080a2.isEmpty()) {
                        jSONWriter.name(BidMachineFetcher.AD_TYPE_DISPLAY);
                        jSONWriter.beginArray();
                        for (File file2 : m5080a2) {
                            jSONWriter.write(m5077b(file2));
                        }
                        jSONWriter.endArray();
                    }
                    if (!m5080a3.isEmpty()) {
                        jSONWriter.name("click");
                        jSONWriter.beginArray();
                        for (File file3 : m5080a3) {
                            jSONWriter.write(m5077b(file3));
                        }
                        jSONWriter.endArray();
                    }
                    jSONWriter.endObject();
                    jSONWriter.close();
                    if (m5080a.size() + m5080a3.size() + m5080a2.size() != 0) {
                        jSONWriter.close();
                        return createTempFile;
                    }
                    VerizonSSPReporter.f61980a.m5567d("No reporting events added to the request");
                    jSONWriter.close();
                    return null;
                } catch (Exception e) {
                    VerizonSSPReporter.f61980a.m5564e("Error creating SSP reporting request", e);
                    return null;
                }
            } catch (Exception e2) {
                VerizonSSPReporter.f61980a.m5564e("Could not create the SSP report file.", e2);
                return null;
            }
        }

        /* renamed from: b */
        private static JSONObject m5077b(File file) {
            JSONObject jSONObject;
            if (file.exists()) {
                try {
                    jSONObject = new JSONObject(m5083a(file));
                } catch (JSONException e) {
                    VerizonSSPReporter.f61980a.m5564e("Error parsing reporting file <" + file.getName() + ">", e);
                }
                return jSONObject;
            }
            jSONObject = null;
            return jSONObject;
        }

        /* renamed from: b */
        private static File[] m5078b() {
            File[] listFiles = VerizonSSPReporter.f61982c.listFiles(new FilenameFilter() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.Uploader.2
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

        /* renamed from: c */
        private static void m5075c() {
            File[] listFiles = VerizonSSPReporter.f61982c.listFiles();
            int i = 0;
            int i2 = 0;
            if (listFiles != null) {
                int length = listFiles.length;
                int i3 = 0;
                while (true) {
                    i = i3;
                    if (i2 >= length) {
                        break;
                    }
                    int i4 = i;
                    if (listFiles[i2].getName().endsWith(".json")) {
                        i4 = i + 1;
                    }
                    i2++;
                    i3 = i4;
                }
            }
            VerizonSSPReporter.f61984e.set(i);
        }

        /* renamed from: d */
        private static int m5074d() {
            return Configuration.getInt("com.verizon.ads.verizonssp", "reportingBatchSize", 5);
        }

        /* renamed from: e */
        private static long m5073e() {
            return Configuration.getInt("com.verizon.ads.verizonssp", "reportingBatchFrequency", 120000);
        }

        /* renamed from: f */
        private static void m5072f() {
            VerizonSSPReporter.f61980a.m5567d("Reporting is clearing events");
            File[] m5078b = m5078b();
            if (m5078b.length > 0) {
                m5079a(m5078b);
            }
            m5084a(UploadState.IDLE);
        }
    }

    public VerizonSSPReporter(Context context) {
        f61980a.m5567d("Initializing VerizonSSPReporter");
        Events.subscribe(new EventReceiver() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.1
            @Override // com.verizon.ads.events.EventReceiver
            public final void onEvent$645b3fe5(Object obj) {
                if (obj instanceof ClickEvent) {
                    VerizonSSPReporter.m5098a((ClickEvent) obj);
                } else {
                    VerizonSSPReporter.f61980a.m5559w("Unable to process unknown click event type");
                }
            }
        }, ClickEvent.CLICK_EVENT_ID);
        Events.subscribe(new EventReceiver() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.2
            @Override // com.verizon.ads.events.EventReceiver
            public final void onEvent$645b3fe5(Object obj) {
                if (obj instanceof ImpressionEvent) {
                    VerizonSSPReporter.m5097a((ImpressionEvent) obj);
                } else {
                    VerizonSSPReporter.f61980a.m5559w("Unable to process unknown impression event type");
                }
            }
        }, ImpressionEvent.IMPRESSION_EVENT_ID);
        Events.subscribe(new EventReceiver() { // from class: com.verizon.ads.verizonsspreporter.VerizonSSPReporter.3
            @Override // com.verizon.ads.events.EventReceiver
            public final void onEvent$645b3fe5(Object obj) {
                if (!(obj instanceof WaterfallResult)) {
                    VerizonSSPReporter.f61980a.m5559w("Unable to process unknown waterfall event result type");
                    return;
                }
                VerizonSSPReporter.m5095a(VerizonSSPReporter.this, (WaterfallResult) obj);
            }
        }, WaterfallResult.EVENT_WATERFALL_RESULT);
        Uploader.m5085a(context);
    }

    /* renamed from: a */
    private static int m5101a(WaterfallResult.WaterfallItemResult waterfallItemResult) {
        if (waterfallItemResult == null) {
            f61980a.m5559w("WaterfallItemResult cannot be null");
            return 0;
        }
        ErrorInfo errorInfo = waterfallItemResult.getErrorInfo();
        if (errorInfo != null) {
            return errorInfo.getErrorCode();
        }
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: a */
    private static long m5092a(List<WaterfallResult.WaterfallItemResult> list) {
        Iterator<WaterfallResult.WaterfallItemResult> it2 = list.iterator();
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (it2.hasNext()) {
                r0 = c + it2.next().getElapsedTime();
            } else {
                return c;
            }
        }
    }

    /* renamed from: a */
    private static String m5099a(WaterfallResult waterfallResult, String str) {
        for (WaterfallResult.WaterfallItemResult waterfallItemResult : waterfallResult.getWaterfallItemResults()) {
            if (waterfallItemResult.getErrorInfo() == null) {
                return (String) waterfallItemResult.getMetadata().get(str);
            }
        }
        return null;
    }

    /* renamed from: a */
    private JSONArray m5100a(WaterfallResult waterfallResult) {
        VerizonSSPWaterfallProvider.VerizonSSPBid verizonSSPBid;
        if (Logger.isLogLevelEnabled(3)) {
            f61980a.m5567d(String.format("Reporting waterfall item results for responseId: %s", waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID)));
        }
        JSONArray jSONArray = new JSONArray();
        Bid bid = waterfallResult.getBid();
        if (bid instanceof VerizonSSPWaterfallProvider.VerizonSSPBid) {
            verizonSSPBid = (VerizonSSPWaterfallProvider.VerizonSSPBid) bid;
        } else {
            verizonSSPBid = null;
            if (bid != null) {
                f61980a.m5559w("Unable to process unknown bid type");
                verizonSSPBid = null;
            }
        }
        try {
            if (verizonSSPBid == null) {
                for (WaterfallResult.WaterfallItemResult waterfallItemResult : waterfallResult.getWaterfallItemResults()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("tag", waterfallItemResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID));
                    jSONObject.put("status", m5101a(waterfallItemResult));
                    jSONObject.put("resp", waterfallItemResult.getElapsedTime());
                    jSONArray.put(jSONObject);
                }
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("tag", verizonSSPBid.itemId);
                jSONObject2.put("status", m5090b(waterfallResult.getWaterfallItemResults()));
                jSONObject2.put("resp", m5092a(waterfallResult.getWaterfallItemResults()));
                jSONObject2.put("superAuction", m5094a(verizonSSPBid, waterfallResult.getWaterfallItemResults()));
                jSONArray.put(jSONObject2);
            }
        } catch (Exception e) {
            f61980a.m5565e("Error adding waterfall item");
        }
        return jSONArray;
    }

    /* renamed from: a */
    private static JSONObject m5094a(VerizonSSPWaterfallProvider.VerizonSSPBid verizonSSPBid, List<WaterfallResult.WaterfallItemResult> list) throws JSONException {
        if (verizonSSPBid == null) {
            f61980a.m5559w("Bid object cannot be null");
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
            jSONObject3.put("status", m5101a(waterfallItemResult));
            jSONObject3.put("ts", waterfallItemResult.getStartTime());
            jSONObject3.put("tag", waterfallItemResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID));
            jSONObject3.put("resp", waterfallItemResult.getElapsedTime());
            jSONArray2.put(jSONObject3);
        }
        jSONObject.put("demandSources", jSONArray2);
        return jSONObject;
    }

    /* renamed from: a */
    static /* synthetic */ void m5098a(ClickEvent clickEvent) {
        try {
            Map<String, Object> metadata = ((Waterfall) clickEvent.adSession.get(VASAds.RESPONSE_WATERFALL, Waterfall.class, null)).getMetadata();
            if (!Boolean.TRUE.equals(metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_REPORTING_ENABLED))) {
                if (!Logger.isLogLevelEnabled(3)) {
                    return;
                }
                Logger logger = f61980a;
                logger.m5567d("Reporting disabled. Ignoring click event for responseId: " + metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger2 = f61980a;
                logger2.m5567d("Reporting click event for responseId: " + metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
            }
            Map<String, Object> metadata2 = ((Waterfall.WaterfallItem) clickEvent.adSession.get(VASAds.RESPONSE_WATERFALL_ITEM, Waterfall.WaterfallItem.class, null)).getMetadata();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("a", metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
            jSONObject.put("ts", clickEvent.clickTime);
            jSONObject.put("zone", metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_PLACEMENT_NAME));
            jSONObject.put("tag", metadata2.get(VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID));
            jSONObject.put("grp", metadata.get("impressionGroup"));
            Uploader.m5081a("click_", jSONObject);
        } catch (Exception e) {
            f61980a.m5565e("Error recording click event");
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5097a(ImpressionEvent impressionEvent) {
        try {
            Map<String, Object> metadata = ((Waterfall) impressionEvent.adSession.get(VASAds.RESPONSE_WATERFALL, Waterfall.class, null)).getMetadata();
            if (!Boolean.TRUE.equals(metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_REPORTING_ENABLED))) {
                if (!Logger.isLogLevelEnabled(3)) {
                    return;
                }
                Logger logger = f61980a;
                logger.m5567d("Reporting disabled. Ignoring impression event for responseId: " + metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                f61980a.m5567d(String.format("Reporting impression event for responseId: %s", metadata.get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID)));
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
            Uploader.m5081a("display_", jSONObject);
        } catch (Exception e) {
            f61980a.m5565e("Error recording impression event");
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5095a(VerizonSSPReporter verizonSSPReporter, WaterfallResult waterfallResult) {
        if (!Boolean.TRUE.equals(waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_REPORTING_ENABLED))) {
            if (!Logger.isLogLevelEnabled(3)) {
                return;
            }
            Logger logger = f61980a;
            logger.m5567d("Reporting disabled. Ignoring waterfall result event for responseId: " + waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
            return;
        }
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger2 = f61980a;
            logger2.m5567d("Adding waterfall result event for responseId: " + waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put("a", waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_RESPONSE_ID));
            jSONObject.put("zone", waterfallResult.getMetadata().get(VerizonSSPWaterfallProvider.METADATA_KEY_PLACEMENT_NAME));
            jSONObject.put("grp", waterfallResult.getMetadata().get("impressionGroup"));
            jSONObject.put("resp", waterfallResult.getElapsedTime());
            jSONObject.put("adnet", verizonSSPReporter.m5100a(waterfallResult));
            if (waterfallResult.getBid() == null) {
                jSONObject.put(VerizonSSPWaterfallProvider.METADATA_KEY_BUYER, m5099a(waterfallResult, VerizonSSPWaterfallProvider.METADATA_KEY_BUYER));
                jSONObject.put(VerizonSSPWaterfallProvider.METADATA_KEY_PRU, m5099a(waterfallResult, VerizonSSPWaterfallProvider.METADATA_KEY_PRU));
            }
            Uploader.m5081a("request_", jSONObject);
        } catch (JSONException e) {
            f61980a.m5565e("Unable to process waterfall result event");
        }
    }

    /* renamed from: b */
    private static int m5090b(List<WaterfallResult.WaterfallItemResult> list) {
        for (WaterfallResult.WaterfallItemResult waterfallItemResult : list) {
            if (waterfallItemResult.getErrorInfo() != null && waterfallItemResult.getErrorInfo().getErrorCode() == 113) {
                return 113;
            }
            if (m5101a(waterfallItemResult) == 1) {
                return 111;
            }
        }
        return 112;
    }

    public static void clear() {
        if (f61983d != UploadState.UPLOADING) {
            Uploader.m5084a(UploadState.CLEARING);
        }
    }
}
