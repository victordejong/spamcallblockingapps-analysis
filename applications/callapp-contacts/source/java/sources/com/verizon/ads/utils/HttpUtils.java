package com.verizon.ads.utils;

import android.graphics.Bitmap;
import com.verizon.ads.Logger;
import com.verizon.ads.utils.IOUtils;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/HttpUtils.class */
public class HttpUtils {

    /* renamed from: a */
    private static final Logger f61744a = Logger.getInstance(HttpUtils.class);

    /* renamed from: b */
    private static HttpInterceptor f61745b = null;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/HttpUtils$HttpInterceptor.class */
    public interface HttpInterceptor {
        void onRequest(String str, HttpRequestRunner httpRequestRunner);

        void onResponse(String str, Response response);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/HttpUtils$HttpRequestListener.class */
    public interface HttpRequestListener {
        void onResponse(Response response);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/HttpUtils$HttpRequestRunner.class */
    public static class HttpRequestRunner implements Runnable {

        /* renamed from: a */
        private final CountDownLatch f61746a = new CountDownLatch(1);

        /* renamed from: b */
        private final long f61747b;

        /* renamed from: c */
        private final String f61748c;

        /* renamed from: d */
        private final ResponseStreamer f61749d;
        public Map<String, String> headers;
        public InputStream postDataStream;
        public Response response;
        public int timeout;
        public String url;

        HttpRequestRunner(long j, String str, InputStream inputStream, String str2, int i, ResponseStreamer responseStreamer) {
            this.f61747b = j;
            this.url = str;
            this.postDataStream = inputStream;
            this.f61748c = str2;
            this.timeout = i;
            this.f61749d = responseStreamer;
        }

        /* renamed from: a */
        final Response m5309a(long j) {
            try {
                if (this.f61746a.await(j, TimeUnit.MILLISECONDS)) {
                    return this.response;
                }
                if (Logger.isLogLevelEnabled(3)) {
                    HttpUtils.f61744a.m5567d(String.format(Locale.getDefault(), "HTTP request timed out.\n\trequestId: %d\n\twait time: %d", Long.valueOf(this.f61747b), Long.valueOf(j)));
                }
                return new Response(408);
            } catch (InterruptedException e) {
                HttpUtils.f61744a.m5565e(String.format(Locale.getDefault(), "Http request was interrupted.\n\trequestId: %d", Long.valueOf(this.f61747b)));
                return new Response(400);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:115:0x0474, code lost:
            if (r14 != null) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x035c, code lost:
            if (r14 != null) goto L83;
         */
        /* JADX WARN: Not initialized variable reg: 17, insn: 0x04fd: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:132:0x04f9 */
        /* JADX WARN: Not initialized variable reg: 18, insn: 0x04f9: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r18 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:132:0x04f9 */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0434  */
        /* JADX WARN: Removed duplicated region for block: B:124:0x04b0  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x04f0  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x0516  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 1316
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.utils.HttpUtils.HttpRequestRunner.run():void");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(String.format(Locale.getDefault(), "requestId: %d\n\turl: %s\n\ttimeout: %d", Long.valueOf(this.f61747b), this.url, Integer.valueOf(this.timeout)));
            if (this.f61748c != null) {
                sb.append(String.format(Locale.getDefault(), "\n\tcontent type: %s", this.f61748c));
            }
            return sb.toString();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/HttpUtils$Response.class */
    public static class Response {
        public Map<String, String> adMetadata;
        public Bitmap bitmap;
        public int code;
        public String content;
        public String contentType;
        public File file;

        public Response() {
        }

        public Response(int i) {
            this.code = i;
        }

        public Response(String str, String str2, int i) {
            this(i);
            this.content = str;
            this.contentType = str2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(String.format(Locale.getDefault(), "code: %d", Integer.valueOf(this.code)));
            if (this.contentType != null) {
                sb.append(String.format(Locale.getDefault(), "\n\tcontent-type: %s", this.contentType));
            }
            if (this.content != null) {
                String str = this.contentType;
                if (str == null || str.contains("text") || this.contentType.contains("json")) {
                    sb.append(String.format(Locale.getDefault(), "\n\tcontent: %s", this.content));
                } else {
                    sb.append("\n\tcontent: <non-text-content>");
                }
            } else if (this.bitmap != null) {
                sb.append(String.format(Locale.getDefault(), "\n\tbitmap: dimensions: %d x %d\n\tbitmap size: %d", Integer.valueOf(this.bitmap.getWidth()), Integer.valueOf(this.bitmap.getHeight()), Integer.valueOf(this.bitmap.getByteCount())));
            } else if (this.file != null) {
                sb.append(String.format(Locale.getDefault(), "\n\tfile: %s", this.file.getAbsolutePath()));
            }
            return sb.toString();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/HttpUtils$ResponseStreamer.class */
    public interface ResponseStreamer {
        void streamContent(InputStream inputStream, Response response);
    }

    /* renamed from: a */
    public static Response m5310a(String str, InputStream inputStream, String str2, Map<String, String> map, Integer num, ResponseStreamer responseStreamer) {
        long currentTimeMillis = System.currentTimeMillis();
        int intValue = num == null ? 15000 : num.intValue();
        HttpRequestRunner httpRequestRunner = new HttpRequestRunner(currentTimeMillis, str, inputStream, str2, intValue, responseStreamer);
        if (map != null) {
            httpRequestRunner.headers = new HashMap(map);
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61744a.m5567d(String.format(Locale.getDefault(), "Sending Http request.\n\t%s", httpRequestRunner.toString()));
        }
        HttpInterceptor httpInterceptor = f61745b;
        if (httpInterceptor != null) {
            httpInterceptor.onRequest(str, httpRequestRunner);
        }
        ThreadUtils.runOnWorkerThread(httpRequestRunner);
        Response m5309a = httpRequestRunner.m5309a(intValue);
        HttpInterceptor httpInterceptor2 = f61745b;
        if (httpInterceptor2 != null) {
            httpInterceptor2.onResponse(str, m5309a);
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61744a.m5567d(String.format(Locale.getDefault(), "Http response.\n\trequestId: %d\n\t%s", Long.valueOf(currentTimeMillis), m5309a.toString()));
        }
        return m5309a;
    }

    /* renamed from: a */
    public static /* synthetic */ void m5311a(String str, HttpRequestListener httpRequestListener) {
        httpRequestListener.onResponse(getBitmapFromGetRequest(str));
    }

    public static Response getBitmapFromGetRequest(String str) {
        return m5310a(str, null, null, null, null, new IOUtils.BitmapStreamer());
    }

    public static void getBitmapFromGetRequestAsync(final String str, final HttpRequestListener httpRequestListener) {
        if (httpRequestListener == null) {
            return;
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.utils._$$Lambda$HttpUtils$_kAqPm_sBqlo_mqoTXkCW6K_vQQ
            @Override // java.lang.Runnable
            public final void run() {
                HttpUtils.m5311a(str, httpRequestListener);
            }
        });
    }

    public static Response getContentFromGetRequest(String str) {
        return m5310a(str, null, null, null, null, new IOUtils.StringStreamer());
    }

    public static Response getContentFromGetRequest(String str, int i) {
        return m5310a(str, null, null, null, Integer.valueOf(i), new IOUtils.StringStreamer());
    }

    public static Response getContentFromPostRequest(String str, int i) {
        return m5310a(str, null, null, null, Integer.valueOf(i), new IOUtils.StringStreamer());
    }

    public static Response getContentFromPostRequest(String str, File file, String str2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            Response m5310a = m5310a(str, fileInputStream, str2, null, null, new IOUtils.StringStreamer());
            fileInputStream.close();
            return m5310a;
        } catch (Exception e) {
            f61744a.m5565e("Error occurred posting data to url = ".concat(String.valueOf(str)));
            return new Response(400);
        }
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str2.getBytes("UTF-8"));
            Response m5310a = m5310a(str, byteArrayInputStream, str3, null, null, new IOUtils.StringStreamer());
            byteArrayInputStream.close();
            return m5310a;
        } catch (Exception e) {
            f61744a.m5565e("Error occurred posting data to url = ".concat(String.valueOf(str)));
            return new Response(400);
        }
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3, int i) {
        return getContentFromPostRequest(str, str2, str3, null, i);
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3, Map<String, String> map, int i) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str2.getBytes("UTF-8"));
            Response m5310a = m5310a(str, byteArrayInputStream, str3, map, Integer.valueOf(i), new IOUtils.StringStreamer());
            byteArrayInputStream.close();
            return m5310a;
        } catch (Exception e) {
            f61744a.m5565e("Error occurred posting data to url = ".concat(String.valueOf(str)));
            return new Response(400);
        }
    }

    public static Response getFileFromGetRequest(String str, File file, int i) {
        return m5310a(str, null, null, null, Integer.valueOf(i), new IOUtils.FileStreamer(file));
    }

    public static void setInterceptor(HttpInterceptor httpInterceptor) {
        f61745b = httpInterceptor;
    }
}
