package com.facebook.stetho.okhttp3;

import com.facebook.stetho.inspector.network.DefaultResponseHandler;
import com.facebook.stetho.inspector.network.NetworkEventReporter;
import com.facebook.stetho.inspector.network.NetworkEventReporterImpl;
import com.facebook.stetho.inspector.network.RequestBodyHelper;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
import okhttp3.Connection;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/okhttp3/StethoInterceptor.class */
public class StethoInterceptor implements Interceptor {
    private final NetworkEventReporter mEventReporter = NetworkEventReporterImpl.get();

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/okhttp3/StethoInterceptor$ForwardingResponseBody.class */
    private static class ForwardingResponseBody extends ResponseBody {
        private final ResponseBody mBody;
        private final BufferedSource mInterceptedSource;

        public ForwardingResponseBody(ResponseBody responseBody, InputStream inputStream) {
            this.mBody = responseBody;
            this.mInterceptedSource = Okio.buffer(Okio.source(inputStream));
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.mBody.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.mBody.contentType();
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            return this.mInterceptedSource;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorRequest.class */
    private static class OkHttpInspectorRequest implements NetworkEventReporter.InspectorRequest {
        private final Request mRequest;
        private RequestBodyHelper mRequestBodyHelper;
        private final String mRequestId;

        public OkHttpInspectorRequest(String str, Request request, RequestBodyHelper requestBodyHelper) {
            this.mRequestId = str;
            this.mRequest = request;
            this.mRequestBodyHelper = requestBodyHelper;
        }

        /* JADX WARN: Finally extract failed */
        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorRequest
        @Nullable
        public byte[] body() throws IOException {
            RequestBody body = this.mRequest.body();
            if (body == null) {
                return null;
            }
            BufferedSink buffer = Okio.buffer(Okio.sink(this.mRequestBodyHelper.createBodySink(firstHeaderValue(HttpRequest.HEADER_CONTENT_ENCODING))));
            try {
                body.writeTo(buffer);
                buffer.close();
                return this.mRequestBodyHelper.getDisplayBody();
            } catch (Throwable th) {
                buffer.close();
                throw th;
            }
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorHeaders
        @Nullable
        public String firstHeaderValue(String str) {
            return this.mRequest.header(str);
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorRequestCommon
        public String friendlyName() {
            return null;
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorRequest
        @Nullable
        public Integer friendlyNameExtra() {
            return null;
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorHeaders
        public int headerCount() {
            return this.mRequest.headers().size();
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorHeaders
        public String headerName(int i) {
            return this.mRequest.headers().name(i);
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorHeaders
        public String headerValue(int i) {
            return this.mRequest.headers().value(i);
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorRequestCommon
        /* renamed from: id */
        public String mo356id() {
            return this.mRequestId;
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorRequest
        public String method() {
            return this.mRequest.method();
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorRequest
        public String url() {
            return this.mRequest.url().toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/okhttp3/StethoInterceptor$OkHttpInspectorResponse.class */
    private static class OkHttpInspectorResponse implements NetworkEventReporter.InspectorResponse {
        private final Connection mConnection;
        private final Request mRequest;
        private final String mRequestId;
        private final Response mResponse;

        public OkHttpInspectorResponse(String str, Request request, Response response, Connection connection) {
            this.mRequestId = str;
            this.mRequest = request;
            this.mResponse = response;
            this.mConnection = connection;
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorResponse
        public int connectionId() {
            return this.mConnection.hashCode();
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorResponse
        public boolean connectionReused() {
            return false;
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorHeaders
        @Nullable
        public String firstHeaderValue(String str) {
            return this.mResponse.header(str);
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorResponse
        public boolean fromDiskCache() {
            return this.mResponse.cacheResponse() != null;
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorHeaders
        public int headerCount() {
            return this.mResponse.headers().size();
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorHeaders
        public String headerName(int i) {
            return this.mResponse.headers().name(i);
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorHeaders
        public String headerValue(int i) {
            return this.mResponse.headers().value(i);
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorResponseCommon
        public String reasonPhrase() {
            return this.mResponse.message();
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorResponseCommon
        public String requestId() {
            return this.mRequestId;
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorResponseCommon
        public int statusCode() {
            return this.mResponse.code();
        }

        @Override // com.facebook.stetho.inspector.network.NetworkEventReporter.InspectorResponse
        public String url() {
            return this.mRequest.url().toString();
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        RequestBodyHelper requestBodyHelper;
        MediaType mediaType;
        InputStream inputStream;
        String nextRequestId = this.mEventReporter.nextRequestId();
        Request request = chain.request();
        String str = null;
        if (this.mEventReporter.isEnabled()) {
            requestBodyHelper = new RequestBodyHelper(this.mEventReporter, nextRequestId);
            this.mEventReporter.requestWillBeSent(new OkHttpInspectorRequest(nextRequestId, request, requestBodyHelper));
        } else {
            requestBodyHelper = null;
        }
        try {
            Response proceed = chain.proceed(request);
            Response response = proceed;
            if (this.mEventReporter.isEnabled()) {
                if (requestBodyHelper != null && requestBodyHelper.hasBody()) {
                    requestBodyHelper.reportDataSent();
                }
                this.mEventReporter.responseHeadersReceived(new OkHttpInspectorResponse(nextRequestId, request, proceed, chain.connection()));
                ResponseBody body = proceed.body();
                if (body != null) {
                    mediaType = body.contentType();
                    inputStream = body.byteStream();
                } else {
                    mediaType = null;
                    inputStream = null;
                }
                NetworkEventReporter networkEventReporter = this.mEventReporter;
                if (mediaType != null) {
                    str = mediaType.toString();
                }
                InputStream interpretResponseStream = networkEventReporter.interpretResponseStream(nextRequestId, str, proceed.header(HttpRequest.HEADER_CONTENT_ENCODING), inputStream, new DefaultResponseHandler(this.mEventReporter, nextRequestId));
                response = proceed;
                if (interpretResponseStream != null) {
                    response = proceed.newBuilder().body(new ForwardingResponseBody(body, interpretResponseStream)).build();
                }
            }
            return response;
        } catch (IOException e) {
            if (this.mEventReporter.isEnabled()) {
                this.mEventReporter.httpExchangeFailed(nextRequestId, e.toString());
            }
            throw e;
        }
    }
}
