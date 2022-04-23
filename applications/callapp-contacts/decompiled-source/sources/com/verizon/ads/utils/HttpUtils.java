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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35648a = Logger.getInstance(HttpUtils.class);

    /* renamed from: b  reason: collision with root package name */
    private static HttpInterceptor f35649b = null;

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

        /* renamed from: a  reason: collision with root package name */
        private final CountDownLatch f35650a = new CountDownLatch(1);

        /* renamed from: b  reason: collision with root package name */
        private final long f35651b;

        /* renamed from: c  reason: collision with root package name */
        private final String f35652c;

        /* renamed from: d  reason: collision with root package name */
        private final ResponseStreamer f35653d;
        public Map<String, String> headers;
        public InputStream postDataStream;
        public Response response;
        public int timeout;
        public String url;

        HttpRequestRunner(long j, String str, InputStream inputStream, String str2, int i, ResponseStreamer responseStreamer) {
            this.f35651b = j;
            this.url = str;
            this.postDataStream = inputStream;
            this.f35652c = str2;
            this.timeout = i;
            this.f35653d = responseStreamer;
        }

        final Response a(long j) {
            try {
                if (this.f35650a.await(j, TimeUnit.MILLISECONDS)) {
                    return this.response;
                }
                if (Logger.isLogLevelEnabled(3)) {
                    HttpUtils.f35648a.d(String.format(Locale.getDefault(), "HTTP request timed out.\n\trequestId: %d\n\twait time: %d", Long.valueOf(this.f35651b), Long.valueOf(j)));
                }
                return new Response(408);
            } catch (InterruptedException e) {
                HttpUtils.f35648a.e(String.format(Locale.getDefault(), "Http request was interrupted.\n\trequestId: %d", Long.valueOf(this.f35651b)));
                return new Response(400);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:115:0x0474, code lost:
            if (r14 != null) goto L_0x035f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x035c, code lost:
            if (r14 != null) goto L_0x035f;
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
            sb.append(String.format(Locale.getDefault(), "requestId: %d\n\turl: %s\n\ttimeout: %d", Long.valueOf(this.f35651b), this.url, Integer.valueOf(this.timeout)));
            if (this.f35652c != null) {
                sb.append(String.format(Locale.getDefault(), "\n\tcontent type: %s", this.f35652c));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Response a(String str, InputStream inputStream, String str2, Map<String, String> map, Integer num, ResponseStreamer responseStreamer) {
        long currentTimeMillis = System.currentTimeMillis();
        int intValue = num == null ? 15000 : num.intValue();
        HttpRequestRunner httpRequestRunner = new HttpRequestRunner(currentTimeMillis, str, inputStream, str2, intValue, responseStreamer);
        if (map != null) {
            httpRequestRunner.headers = new HashMap(map);
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35648a.d(String.format(Locale.getDefault(), "Sending Http request.\n\t%s", httpRequestRunner.toString()));
        }
        HttpInterceptor httpInterceptor = f35649b;
        if (httpInterceptor != null) {
            httpInterceptor.onRequest(str, httpRequestRunner);
        }
        ThreadUtils.runOnWorkerThread(httpRequestRunner);
        Response a2 = httpRequestRunner.a(intValue);
        HttpInterceptor httpInterceptor2 = f35649b;
        if (httpInterceptor2 != null) {
            httpInterceptor2.onResponse(str, a2);
        }
        if (Logger.isLogLevelEnabled(3)) {
            f35648a.d(String.format(Locale.getDefault(), "Http response.\n\trequestId: %d\n\t%s", Long.valueOf(currentTimeMillis), a2.toString()));
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, HttpRequestListener httpRequestListener) {
        httpRequestListener.onResponse(getBitmapFromGetRequest(str));
    }

    public static Response getBitmapFromGetRequest(String str) {
        return a(str, null, null, null, null, new IOUtils.BitmapStreamer());
    }

    public static void getBitmapFromGetRequestAsync(final String str, final HttpRequestListener httpRequestListener) {
        if (httpRequestListener != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.utils._$$Lambda$HttpUtils$_kAqPm_sBqlo_mqoTXkCW6K_vQQ
                @Override // java.lang.Runnable
                public final void run() {
                    HttpUtils.a(str, httpRequestListener);
                }
            });
        }
    }

    public static Response getContentFromGetRequest(String str) {
        return a(str, null, null, null, null, new IOUtils.StringStreamer());
    }

    public static Response getContentFromGetRequest(String str, int i) {
        return a(str, null, null, null, Integer.valueOf(i), new IOUtils.StringStreamer());
    }

    public static Response getContentFromPostRequest(String str, int i) {
        return a(str, null, null, null, Integer.valueOf(i), new IOUtils.StringStreamer());
    }

    public static Response getContentFromPostRequest(String str, File file, String str2) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            Response a2 = a(str, fileInputStream, str2, null, null, new IOUtils.StringStreamer());
            fileInputStream.close();
            return a2;
        } catch (Exception e) {
            f35648a.e("Error occurred posting data to url = ".concat(String.valueOf(str)));
            return new Response(400);
        }
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str2.getBytes("UTF-8"));
            Response a2 = a(str, byteArrayInputStream, str3, null, null, new IOUtils.StringStreamer());
            byteArrayInputStream.close();
            return a2;
        } catch (Exception e) {
            f35648a.e("Error occurred posting data to url = ".concat(String.valueOf(str)));
            return new Response(400);
        }
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3, int i) {
        return getContentFromPostRequest(str, str2, str3, null, i);
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3, Map<String, String> map, int i) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str2.getBytes("UTF-8"));
            Response a2 = a(str, byteArrayInputStream, str3, map, Integer.valueOf(i), new IOUtils.StringStreamer());
            byteArrayInputStream.close();
            return a2;
        } catch (Exception e) {
            f35648a.e("Error occurred posting data to url = ".concat(String.valueOf(str)));
            return new Response(400);
        }
    }

    public static Response getFileFromGetRequest(String str, File file, int i) {
        return a(str, null, null, null, Integer.valueOf(i), new IOUtils.FileStreamer(file));
    }

    public static void setInterceptor(HttpInterceptor httpInterceptor) {
        f35649b = httpInterceptor;
    }
}
