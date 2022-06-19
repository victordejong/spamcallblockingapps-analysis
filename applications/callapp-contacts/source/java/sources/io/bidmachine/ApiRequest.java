package io.bidmachine;

import android.text.TextUtils;
import com.explorestack.protobuf.openrtb.Openrtb;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.protobuf.InitRequest;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.utils.BMError;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.net.URLConnection;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ApiRequest.class */
public final class ApiRequest<RequestDataType, ResponseType> extends NetworkRequest<RequestDataType, ResponseType, BMError> {
    static int REQUEST_TIMEOUT = 10000;
    String requiredUrl;
    int timeOut;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/ApiRequest$ApiAuctionDataBinder.class */
    public static class ApiAuctionDataBinder extends ApiDataBinder<Request, Response> {
        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        protected Response createSuccessResult(NetworkRequest<Request, Response, BMError> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            Openrtb parseFrom = Openrtb.parseFrom(bArr);
            if (parseFrom != null) {
                C17869g.dump("Response", parseFrom);
                return parseFrom.getResponse();
            }
            return null;
        }

        protected byte[] obtainData(NetworkRequest<Request, Response, BMError> networkRequest, URLConnection uRLConnection, Request request) throws Exception {
            Openrtb.Builder newBuilder = Openrtb.newBuilder();
            newBuilder.setRequest(request);
            newBuilder.setVer("3.0");
            newBuilder.setDomainspec("adcom");
            newBuilder.setDomainver("1.0");
            C17869g.dump("Auction request", newBuilder);
            return newBuilder.build().toByteArray();
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, Object obj) throws Exception {
            return obtainData((NetworkRequest<Request, Response, BMError>) networkRequest, uRLConnection, (Request) obj);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public void prepareHeaders(NetworkRequest<Request, Response, BMError> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty("Content-Type", "application/x-protobuf");
            Logger.log("Auction request headers", uRLConnection.getRequestProperties());
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/ApiRequest$ApiDataBinder.class */
    public static abstract class ApiDataBinder<RequestDataType, ResponseDataType> extends NetworkRequest.RequestDataBinder<RequestDataType, ResponseDataType, BMError> {
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/ApiRequest$ApiInitDataBinder.class */
    public static class ApiInitDataBinder extends ApiDataBinder<InitRequest, InitResponse> {
        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        protected InitResponse createSuccessResult(NetworkRequest<InitRequest, InitResponse, BMError> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return InitResponse.parseFrom(bArr);
        }

        protected byte[] obtainData(NetworkRequest<InitRequest, InitResponse, BMError> networkRequest, URLConnection uRLConnection, InitRequest initRequest) throws Exception {
            C17869g.dump("Init request", initRequest);
            if (initRequest != null) {
                return initRequest.toByteArray();
            }
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, Object obj) throws Exception {
            return obtainData((NetworkRequest<InitRequest, InitResponse, BMError>) networkRequest, uRLConnection, (InitRequest) obj);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public void prepareHeaders(NetworkRequest<InitRequest, InitResponse, BMError> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty("Content-Type", "application/x-protobuf");
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/ApiRequest$Builder.class */
    public static class Builder<RequestDataType, ResponseDataType> {
        private NetworkRequest.Callback<ResponseDataType, BMError> callback;
        private NetworkRequest.CancelCallback cancelCallback;
        private ApiDataBinder<RequestDataType, ResponseDataType> dataBinder;
        private RequestDataType requestData;
        private String url;
        private int timeOut = ApiRequest.REQUEST_TIMEOUT;
        private NetworkRequest.Method method = NetworkRequest.Method.Post;

        public ApiRequest<RequestDataType, ResponseDataType> build() {
            ApiRequest<RequestDataType, ResponseDataType> apiRequest = new ApiRequest<>(null, this.method, this.requestData);
            apiRequest.setCallback((NetworkRequest.Callback<ResponseDataType, BMError>) this.callback);
            apiRequest.setCancelCallback(this.cancelCallback);
            apiRequest.setDataBinder(this.dataBinder);
            apiRequest.requiredUrl = this.url;
            apiRequest.timeOut = this.timeOut;
            return apiRequest;
        }

        public ApiRequest<RequestDataType, ResponseDataType> request() {
            ApiRequest<RequestDataType, ResponseDataType> build = build();
            build().request();
            return build;
        }

        public Builder<RequestDataType, ResponseDataType> setCallback(NetworkRequest.Callback<ResponseDataType, BMError> callback) {
            this.callback = callback;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setCancelCallback(NetworkRequest.CancelCallback cancelCallback) {
            this.cancelCallback = cancelCallback;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setDataBinder(ApiDataBinder<RequestDataType, ResponseDataType> apiDataBinder) {
            this.dataBinder = apiDataBinder;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setLoadingTimeOut(int i) {
            if (i <= 0) {
                i = ApiRequest.REQUEST_TIMEOUT;
            }
            this.timeOut = i;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setMethod(NetworkRequest.Method method) {
            this.method = method;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setRequestData(RequestDataType requestdatatype) {
            this.requestData = requestdatatype;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> url(String str) {
            this.url = str;
            return this;
        }
    }

    private ApiRequest(String str, NetworkRequest.Method method, RequestDataType requestdatatype) {
        super(str, method, requestdatatype);
        addContentEncoder(new NetworkRequest.GZIPRequestDataEncoder());
    }

    private BMError getErrorFromCode(URLConnection uRLConnection, int i) {
        return (i < 200 || i >= 300) ? (i < 400 || i >= 500) ? (i < 500 || i >= 600) ? BMError.Internal : BMError.Server : BMError.requestError(String.valueOf(i)) : BMError.NoContent;
    }

    @Override // io.bidmachine.core.NetworkRequest
    public final String getBaseUrl() {
        return this.requiredUrl;
    }

    @Override // io.bidmachine.core.NetworkRequest
    public final BMError obtainError(URLConnection uRLConnection, InputStream inputStream, int i) {
        Logger.log("Request error (" + i + "), headers:", uRLConnection.getHeaderFields());
        String headerField = uRLConnection.getHeaderField("ad-exchange-error-reason");
        String headerField2 = uRLConnection.getHeaderField("ad-exchange-error-message");
        return (TextUtils.isEmpty(headerField2) || TextUtils.isEmpty(headerField)) ? !TextUtils.isEmpty(headerField2) ? BMError.requestError(headerField2) : !TextUtils.isEmpty(headerField) ? BMError.requestError(headerField) : getErrorFromCode(uRLConnection, i) : BMError.requestError(String.format("%s - %s", headerField, headerField2));
    }

    @Override // io.bidmachine.core.NetworkRequest
    protected final BMError obtainError(URLConnection uRLConnection, ResponseType responsetype, int i) {
        if (i == 200) {
            return null;
        }
        return getErrorFromCode(uRLConnection, i);
    }

    @Override // io.bidmachine.core.NetworkRequest
    public final BMError obtainError(URLConnection uRLConnection, Throwable th) {
        Logger.log("obtainError: " + th + "(" + uRLConnection + ")");
        return th instanceof UnknownHostException ? BMError.Connection : ((th instanceof SocketTimeoutException) || (th instanceof ConnectTimeoutException)) ? BMError.TimeoutError : BMError.Internal;
    }

    @Override // io.bidmachine.core.NetworkRequest
    public final void prepareRequestParams(URLConnection uRLConnection) {
        super.prepareRequestParams(uRLConnection);
        uRLConnection.setConnectTimeout(this.timeOut);
        uRLConnection.setReadTimeout(this.timeOut);
    }
}
