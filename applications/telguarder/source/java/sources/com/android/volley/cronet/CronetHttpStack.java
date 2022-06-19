package com.android.volley.cronet;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import androidx.browser.trusted.sharing.ShareTarget;
import com.android.volley.AuthFailureError;
import com.android.volley.Header;
import com.android.volley.Request;
import com.android.volley.RequestTask;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.AsyncHttpStack;
import com.android.volley.toolbox.ByteArrayPool;
import com.android.volley.toolbox.HttpClientStack;
import com.android.volley.toolbox.HttpResponse;
import com.android.volley.toolbox.PoolingByteArrayOutputStream;
import com.android.volley.toolbox.UrlRewriter;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetException;
import org.chromium.net.UploadDataProviders;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;
/* loaded from: classes-dex2jar.jar:com/android/volley/cronet/CronetHttpStack.class */
public class CronetHttpStack extends AsyncHttpStack {
    private final CronetEngine mCronetEngine;
    private final CurlCommandLogger mCurlCommandLogger;
    private final boolean mCurlLoggingEnabled;
    private final boolean mLogAuthTokensInCurlCommands;
    private final ByteArrayPool mPool;
    private final RequestListener mRequestListener;
    private final UrlRewriter mUrlRewriter;

    /* renamed from: com.android.volley.cronet.CronetHttpStack$2 */
    /* loaded from: classes-dex2jar.jar:com/android/volley/cronet/CronetHttpStack$2.class */
    public static /* synthetic */ class C07452 {
        static final /* synthetic */ int[] $SwitchMap$com$android$volley$Request$Priority;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Request.Priority.values().length];
            $SwitchMap$com$android$volley$Request$Priority = iArr;
            try {
                iArr[Request.Priority.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$volley$Request$Priority[Request.Priority.HIGH.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$volley$Request$Priority[Request.Priority.IMMEDIATE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$volley$Request$Priority[Request.Priority.NORMAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/cronet/CronetHttpStack$Builder.class */
    public static class Builder {
        private static final int DEFAULT_POOL_SIZE = 4096;
        private final Context context;
        private CronetEngine mCronetEngine;
        private CurlCommandLogger mCurlCommandLogger;
        private boolean mCurlLoggingEnabled;
        private boolean mLogAuthTokensInCurlCommands;
        private ByteArrayPool mPool;
        private RequestListener mRequestListener;
        private UrlRewriter mUrlRewriter;

        public Builder(Context context) {
            this.context = context;
        }

        public CronetHttpStack build() {
            if (this.mCronetEngine == null) {
                this.mCronetEngine = new CronetEngine.Builder(this.context).build();
            }
            if (this.mUrlRewriter == null) {
                this.mUrlRewriter = new UrlRewriter() { // from class: com.android.volley.cronet.CronetHttpStack.Builder.1
                    @Override // com.android.volley.toolbox.UrlRewriter
                    public String rewriteUrl(String str) {
                        return str;
                    }
                };
            }
            if (this.mRequestListener == null) {
                this.mRequestListener = new RequestListener() { // from class: com.android.volley.cronet.CronetHttpStack.Builder.2
                };
            }
            if (this.mPool == null) {
                this.mPool = new ByteArrayPool(4096);
            }
            if (this.mCurlCommandLogger == null) {
                this.mCurlCommandLogger = new CurlCommandLogger() { // from class: com.android.volley.cronet.CronetHttpStack.Builder.3
                    @Override // com.android.volley.cronet.CronetHttpStack.CurlCommandLogger
                    public void logCurlCommand(String str) {
                        VolleyLog.m1388v(str, new Object[0]);
                    }
                };
            }
            return new CronetHttpStack(this.mCronetEngine, this.mPool, this.mUrlRewriter, this.mRequestListener, this.mCurlLoggingEnabled, this.mCurlCommandLogger, this.mLogAuthTokensInCurlCommands);
        }

        public Builder setCronetEngine(CronetEngine cronetEngine) {
            this.mCronetEngine = cronetEngine;
            return this;
        }

        public Builder setCurlCommandLogger(CurlCommandLogger curlCommandLogger) {
            this.mCurlCommandLogger = curlCommandLogger;
            return this;
        }

        public Builder setCurlLoggingEnabled(boolean z) {
            this.mCurlLoggingEnabled = z;
            return this;
        }

        public Builder setLogAuthTokensInCurlCommands(boolean z) {
            this.mLogAuthTokensInCurlCommands = z;
            return this;
        }

        public Builder setPool(ByteArrayPool byteArrayPool) {
            this.mPool = byteArrayPool;
            return this;
        }

        public Builder setRequestListener(RequestListener requestListener) {
            this.mRequestListener = requestListener;
            return this;
        }

        public Builder setUrlRewriter(UrlRewriter urlRewriter) {
            this.mUrlRewriter = urlRewriter;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/cronet/CronetHttpStack$CurlCommandLogger.class */
    public interface CurlCommandLogger {
        void logCurlCommand(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/cronet/CronetHttpStack$CurlLoggedRequestParameters.class */
    public static class CurlLoggedRequestParameters {
        private byte[] mBody;
        private final TreeMap<String, String> mHeaders;
        private String mHttpMethod;

        private CurlLoggedRequestParameters() {
            this.mHeaders = new TreeMap<>(String.CASE_INSENSITIVE_ORDER);
        }

        void applyToRequest(UrlRequest.Builder builder, ExecutorService executorService) {
            for (Map.Entry<String, String> entry : this.mHeaders.entrySet()) {
                builder.addHeader(entry.getKey(), entry.getValue());
            }
            builder.setHttpMethod(this.mHttpMethod);
            byte[] bArr = this.mBody;
            if (bArr != null) {
                builder.setUploadDataProvider(UploadDataProviders.create(bArr), executorService);
            }
        }

        byte[] getBody() {
            return this.mBody;
        }

        TreeMap<String, String> getHeaders() {
            return this.mHeaders;
        }

        String getHttpMethod() {
            return this.mHttpMethod;
        }

        void putAllHeaders(Map<String, String> map) {
            this.mHeaders.putAll(map);
        }

        void setBody(String str, byte[] bArr) {
            this.mBody = bArr;
            if (bArr == null || this.mHeaders.containsKey("Content-Type")) {
                return;
            }
            this.mHeaders.put("Content-Type", str);
        }

        void setHttpMethod(String str) {
            this.mHttpMethod = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/cronet/CronetHttpStack$RequestListener.class */
    public static abstract class RequestListener {
        private CronetHttpStack mStack;

        protected Executor getBlockingExecutor() {
            return this.mStack.getBlockingExecutor();
        }

        protected Executor getNonBlockingExecutor() {
            return this.mStack.getNonBlockingExecutor();
        }

        void initialize(CronetHttpStack cronetHttpStack) {
            this.mStack = cronetHttpStack;
        }

        public void onRequestPrepared(Request<?> request, UrlRequest.Builder builder) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/cronet/CronetHttpStack$SetUpRequestTask.class */
    private class SetUpRequestTask<T> extends RequestTask<T> {
        Map<String, String> additionalHeaders;
        UrlRequest.Builder builder;
        AsyncHttpStack.OnRequestComplete callback;
        Request<T> request;
        String url;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        SetUpRequestTask(Request<T> request, String str, UrlRequest.Builder builder, Map<String, String> map, AsyncHttpStack.OnRequestComplete onRequestComplete) {
            super(request);
            CronetHttpStack.this = r4;
            this.url = str;
            this.builder = builder;
            this.additionalHeaders = map;
            this.callback = onRequestComplete;
            this.request = request;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                CronetHttpStack.this.mRequestListener.onRequestPrepared(this.request, this.builder);
                CurlLoggedRequestParameters curlLoggedRequestParameters = new CurlLoggedRequestParameters();
                CronetHttpStack.this.setHttpMethod(curlLoggedRequestParameters, this.request);
                CronetHttpStack.this.setRequestHeaders(curlLoggedRequestParameters, this.request, this.additionalHeaders);
                curlLoggedRequestParameters.applyToRequest(this.builder, CronetHttpStack.this.getNonBlockingExecutor());
                UrlRequest build = this.builder.build();
                if (CronetHttpStack.this.mCurlLoggingEnabled) {
                    CronetHttpStack.this.mCurlCommandLogger.logCurlCommand(CronetHttpStack.this.generateCurlCommand(this.url, curlLoggedRequestParameters));
                }
                build.start();
            } catch (AuthFailureError e) {
                this.callback.onAuthError(e);
            }
        }
    }

    private CronetHttpStack(CronetEngine cronetEngine, ByteArrayPool byteArrayPool, UrlRewriter urlRewriter, RequestListener requestListener, boolean z, CurlCommandLogger curlCommandLogger, boolean z2) {
        this.mCronetEngine = cronetEngine;
        this.mPool = byteArrayPool;
        this.mUrlRewriter = urlRewriter;
        this.mRequestListener = requestListener;
        this.mCurlLoggingEnabled = z;
        this.mCurlCommandLogger = curlCommandLogger;
        this.mLogAuthTokensInCurlCommands = z2;
        requestListener.initialize(this);
    }

    private void addBodyIfExists(CurlLoggedRequestParameters curlLoggedRequestParameters, String str, byte[] bArr) {
        curlLoggedRequestParameters.setBody(str, bArr);
    }

    public String generateCurlCommand(String str, CurlLoggedRequestParameters curlLoggedRequestParameters) {
        StringBuilder sb = new StringBuilder("curl ");
        sb.append("-X ");
        sb.append(curlLoggedRequestParameters.getHttpMethod());
        sb.append(" ");
        for (Map.Entry<String, String> entry : curlLoggedRequestParameters.getHeaders().entrySet()) {
            sb.append("--header \"");
            sb.append(entry.getKey());
            sb.append(": ");
            if (this.mLogAuthTokensInCurlCommands || (!"Authorization".equals(entry.getKey()) && !"Cookie".equals(entry.getKey()))) {
                sb.append(entry.getValue());
            } else {
                sb.append("[REDACTED]");
            }
            sb.append("\" ");
        }
        sb.append("\"");
        sb.append(str);
        sb.append("\"");
        if (curlLoggedRequestParameters.getBody() != null) {
            if (curlLoggedRequestParameters.getBody().length >= 1024) {
                sb.append(" [REQUEST BODY TOO LARGE TO INCLUDE]");
            } else if (isBinaryContentForLogging(curlLoggedRequestParameters)) {
                String encodeToString = Base64.encodeToString(curlLoggedRequestParameters.getBody(), 2);
                sb.insert(0, "echo '" + encodeToString + "' | base64 -d > /tmp/$$.bin; ").append(" --data-binary @/tmp/$$.bin");
            } else {
                try {
                    sb.append(" --data-ascii \"");
                    sb.append(new String(curlLoggedRequestParameters.getBody(), POBCommonConstants.URL_ENCODING));
                    sb.append("\"");
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException("Could not encode to UTF-8", e);
                }
            }
        }
        return sb.toString();
    }

    public int getContentLength(UrlResponseInfo urlResponseInfo) {
        List list = (List) urlResponseInfo.getAllHeaders().get("Content-Length");
        if (list == null) {
            return 1024;
        }
        return Integer.parseInt((String) list.get(0));
    }

    public static List<Header> getHeaders(List<Map.Entry<String, String>> list) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : list) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    private int getPriority(Request<?> request) {
        int i = C07452.$SwitchMap$com$android$volley$Request$Priority[request.getPriority().ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3) ? 4 : 3;
        }
        return 2;
    }

    private boolean isBinaryContentForLogging(CurlLoggedRequestParameters curlLoggedRequestParameters) {
        String str = curlLoggedRequestParameters.getHeaders().get("Content-Encoding");
        if (str != null) {
            for (String str2 : TextUtils.split(str, ",")) {
                if ("gzip".equals(str2.trim())) {
                    return true;
                }
            }
        }
        String str3 = curlLoggedRequestParameters.getHeaders().get("Content-Type");
        if (str3 != null) {
            boolean z = false;
            if (!str3.startsWith("text/")) {
                z = false;
                if (!str3.startsWith("application/xml")) {
                    z = false;
                    if (!str3.startsWith(POBCommonConstants.RESPONSE_HEADER_CONTENT_TYPE_JSON)) {
                        z = true;
                    }
                }
            }
            return z;
        }
        return true;
    }

    public void setHttpMethod(CurlLoggedRequestParameters curlLoggedRequestParameters, Request<?> request) throws AuthFailureError {
        switch (request.getMethod()) {
            case -1:
                byte[] postBody = request.getPostBody();
                if (postBody == null) {
                    curlLoggedRequestParameters.setHttpMethod(ShareTarget.METHOD_GET);
                    return;
                }
                curlLoggedRequestParameters.setHttpMethod(ShareTarget.METHOD_POST);
                addBodyIfExists(curlLoggedRequestParameters, request.getPostBodyContentType(), postBody);
                return;
            case 0:
                curlLoggedRequestParameters.setHttpMethod(ShareTarget.METHOD_GET);
                return;
            case 1:
                curlLoggedRequestParameters.setHttpMethod(ShareTarget.METHOD_POST);
                addBodyIfExists(curlLoggedRequestParameters, request.getBodyContentType(), request.getBody());
                return;
            case 2:
                curlLoggedRequestParameters.setHttpMethod("PUT");
                addBodyIfExists(curlLoggedRequestParameters, request.getBodyContentType(), request.getBody());
                return;
            case 3:
                curlLoggedRequestParameters.setHttpMethod("DELETE");
                return;
            case 4:
                curlLoggedRequestParameters.setHttpMethod("HEAD");
                return;
            case 5:
                curlLoggedRequestParameters.setHttpMethod("OPTIONS");
                return;
            case 6:
                curlLoggedRequestParameters.setHttpMethod("TRACE");
                return;
            case 7:
                curlLoggedRequestParameters.setHttpMethod(HttpClientStack.HttpPatch.METHOD_NAME);
                addBodyIfExists(curlLoggedRequestParameters, request.getBodyContentType(), request.getBody());
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    public void setRequestHeaders(CurlLoggedRequestParameters curlLoggedRequestParameters, Request<?> request, Map<String, String> map) throws AuthFailureError {
        curlLoggedRequestParameters.putAllHeaders(map);
        curlLoggedRequestParameters.putAllHeaders(request.getHeaders());
    }

    @Override // com.android.volley.toolbox.AsyncHttpStack
    public void executeRequest(Request<?> request, Map<String, String> map, final AsyncHttpStack.OnRequestComplete onRequestComplete) {
        if (getBlockingExecutor() == null || getNonBlockingExecutor() == null) {
            throw new IllegalStateException("Must set blocking and non-blocking executors");
        }
        UrlRequest.Callback callback = new UrlRequest.Callback() { // from class: com.android.volley.cronet.CronetHttpStack.1
            PoolingByteArrayOutputStream bytesReceived = null;
            WritableByteChannel receiveChannel = null;

            public void onFailed(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, CronetException cronetException) {
                onRequestComplete.onError(cronetException);
            }

            public void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
                byteBuffer.flip();
                try {
                    this.receiveChannel.write(byteBuffer);
                    byteBuffer.clear();
                    urlRequest.read(byteBuffer);
                } catch (IOException e) {
                    urlRequest.cancel();
                    onRequestComplete.onError(e);
                }
            }

            public void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
                urlRequest.followRedirect();
            }

            public void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
                PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(CronetHttpStack.this.mPool, CronetHttpStack.this.getContentLength(urlResponseInfo));
                this.bytesReceived = poolingByteArrayOutputStream;
                this.receiveChannel = Channels.newChannel(poolingByteArrayOutputStream);
                urlRequest.read(ByteBuffer.allocateDirect(1024));
            }

            public void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
                onRequestComplete.onSuccess(new HttpResponse(urlResponseInfo.getHttpStatusCode(), CronetHttpStack.getHeaders(urlResponseInfo.getAllHeadersAsList()), this.bytesReceived.toByteArray()));
            }
        };
        String url = request.getUrl();
        String rewriteUrl = this.mUrlRewriter.rewriteUrl(url);
        if (rewriteUrl != null) {
            getBlockingExecutor().execute(new SetUpRequestTask(request, rewriteUrl, this.mCronetEngine.newUrlRequestBuilder(rewriteUrl, callback, getNonBlockingExecutor()).allowDirectExecutor().disableCache().setPriority(getPriority(request)), map, onRequestComplete));
            return;
        }
        onRequestComplete.onError(new IOException("URL blocked by rewriter: " + url));
    }
}
