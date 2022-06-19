package com.millennialmedia.internal.utils;

import android.graphics.Bitmap;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.utils.IOUtils;
import java.io.File;
import java.io.InputStream;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/HttpUtils.class */
public class HttpUtils {
    private static final int DEFAULT_TIMEOUT = 15000;
    private static final String TAG = "HttpUtils";
    private static HttpInterceptor httpInterceptor;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/HttpUtils$HttpInterceptor.class */
    public interface HttpInterceptor {
        void onRequest(String str, HttpRequestRunner httpRequestRunner);

        void onResponse(String str, Response response);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/HttpUtils$HttpRequestListener.class */
    public interface HttpRequestListener {
        void onResponse(Response response);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/HttpUtils$HttpRequestRunner.class */
    public static class HttpRequestRunner implements Runnable {
        private String contentType;
        public Map<String, String> headers;
        private CountDownLatch latch = new CountDownLatch(1);
        public String postData;
        private long requestId;
        public Response response;
        private ResponseStreamer responseStreamer;
        public int timeout;
        public String url;

        public HttpRequestRunner(long j, String str, String str2, String str3, int i, ResponseStreamer responseStreamer) {
            this.requestId = j;
            this.url = str;
            this.postData = str2;
            this.contentType = str3;
            this.timeout = i;
            this.responseStreamer = responseStreamer;
        }

        public Response getResponse() {
            return this.response;
        }

        /* JADX WARN: Code restructure failed: missing block: B:110:0x044e, code lost:
            if (r14 != null) goto L126;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0341, code lost:
            if (r14 != null) goto L126;
         */
        /* JADX WARN: Not initialized variable reg: 17, insn: 0x04e0: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r17 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:130:0x04dc */
        /* JADX WARN: Not initialized variable reg: 18, insn: 0x04dc: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r18 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:130:0x04dc */
        /* JADX WARN: Removed duplicated region for block: B:105:0x040e  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x0489  */
        /* JADX WARN: Removed duplicated region for block: B:125:0x04c9  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x04f9  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 1287
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.utils.HttpUtils.HttpRequestRunner.run():void");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(String.format(Locale.getDefault(), "requestId: %d\n\turl: %s\n\ttimeout: %d", Long.valueOf(this.requestId), this.url, Integer.valueOf(this.timeout)));
            if (this.contentType != null) {
                sb.append(String.format(Locale.getDefault(), "\n\tcontent type: %s", this.contentType));
            }
            if (this.postData != null) {
                sb.append(String.format(Locale.getDefault(), "\n\tpost data: %s", this.postData));
            }
            return sb.toString();
        }

        public Response waitForResponse(long j) {
            try {
                if (this.latch.await(j, TimeUnit.MILLISECONDS)) {
                    return this.response;
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(HttpUtils.TAG, String.format(Locale.getDefault(), "HTTP request timed out.\n\trequestId: %d\n\twait time: %d", Long.valueOf(this.requestId), Long.valueOf(j)));
                }
                return new Response(408);
            } catch (InterruptedException e) {
                MMLog.m4068e(HttpUtils.TAG, String.format(Locale.getDefault(), "Http request was interrupted.\n\trequestId: %d", Long.valueOf(this.requestId)));
                return new Response(400);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/HttpUtils$Response.class */
    public static class Response {
        public AdMetadata adMetadata;
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

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(String.format(Locale.getDefault(), "code: %d", Integer.valueOf(this.code)));
            if (this.contentType != null) {
                sb.append(String.format(Locale.getDefault(), "\n\tcontent-type: %s", this.contentType));
            }
            if (this.content != null) {
                String str2 = this.contentType;
                str = (str2 == null || str2.contains("text") || this.contentType.contains("json")) ? String.format(Locale.getDefault(), "\n\tcontent: %s", this.content) : "\n\tcontent: <non-text-content>";
            } else if (this.bitmap == null) {
                if (this.file != null) {
                    str = String.format(Locale.getDefault(), "\n\tfile: %s", this.file.getAbsolutePath());
                }
                return sb.toString();
            } else {
                str = String.format(Locale.getDefault(), "\n\tbitmap: dimensions: %d x %d\n\tbitmap size: %d", Integer.valueOf(this.bitmap.getWidth()), Integer.valueOf(this.bitmap.getHeight()), Integer.valueOf(this.bitmap.getByteCount()));
            }
            sb.append(str);
            return sb.toString();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/HttpUtils$ResponseStreamer.class */
    public interface ResponseStreamer {
        void streamContent(InputStream inputStream, Response response);
    }

    public static Response getBitmapFromGetRequest(String str) {
        return sendHttpRequest(str, null, null, null, new IOUtils.BitmapStreamer());
    }

    public static void getBitmapFromGetRequestAsync(final String str, final HttpRequestListener httpRequestListener) {
        if (httpRequestListener == null) {
            return;
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.utils.HttpUtils.1
            @Override // java.lang.Runnable
            public void run() {
                httpRequestListener.onResponse(HttpUtils.getBitmapFromGetRequest(str));
            }
        });
    }

    public static Response getContentFromGetRequest(String str) {
        return sendHttpRequest(str, null, null, null, new IOUtils.StringStreamer());
    }

    public static Response getContentFromGetRequest(String str, int i) {
        return sendHttpRequest(str, null, null, Integer.valueOf(i), new IOUtils.StringStreamer());
    }

    public static Response getContentFromPostRequest(String str, int i) {
        return sendHttpRequest(str, null, null, Integer.valueOf(i), new IOUtils.StringStreamer());
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3) {
        return sendHttpRequest(str, str2, str3, null, new IOUtils.StringStreamer());
    }

    public static Response getContentFromPostRequest(String str, String str2, String str3, int i) {
        return sendHttpRequest(str, str2, str3, Integer.valueOf(i), new IOUtils.StringStreamer());
    }

    public static Response sendHttpRequest(String str, String str2, String str3, Integer num, ResponseStreamer responseStreamer) {
        long currentTimeMillis = System.currentTimeMillis();
        int intValue = num == null ? 15000 : num.intValue();
        HttpRequestRunner httpRequestRunner = new HttpRequestRunner(currentTimeMillis, str, str2, str3, intValue, responseStreamer);
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format(Locale.getDefault(), "Sending Http request.\n\t%s", httpRequestRunner.toString()));
        }
        HttpInterceptor httpInterceptor2 = httpInterceptor;
        if (httpInterceptor2 != null) {
            httpInterceptor2.onRequest(str, httpRequestRunner);
        }
        ThreadUtils.runOnWorkerThread(httpRequestRunner);
        Response waitForResponse = httpRequestRunner.waitForResponse(intValue);
        HttpInterceptor httpInterceptor3 = httpInterceptor;
        if (httpInterceptor3 != null) {
            httpInterceptor3.onResponse(str, waitForResponse);
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, String.format(Locale.getDefault(), "Http response.\n\trequestId: %d\n\t%s", Long.valueOf(currentTimeMillis), waitForResponse.toString()));
        }
        return waitForResponse;
    }

    public static void setInterceptor(HttpInterceptor httpInterceptor2) {
        httpInterceptor = httpInterceptor2;
    }
}
