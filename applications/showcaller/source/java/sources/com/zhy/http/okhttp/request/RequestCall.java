package com.zhy.http.okhttp.request;

import com.zhy.http.okhttp.OkHttpUtils;
import com.zhy.http.okhttp.callback.Callback;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/request/RequestCall.class */
public class RequestCall {
    private Call call;
    private OkHttpClient clone;
    private long connTimeOut;
    private OkHttpRequest okHttpRequest;
    private long readTimeOut;
    private Request request;
    private long writeTimeOut;

    public RequestCall(OkHttpRequest okHttpRequest) {
        this.okHttpRequest = okHttpRequest;
    }

    private Request generateRequest(Callback callback) {
        return this.okHttpRequest.generateRequest(callback);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    public Call buildCall(Callback callback) {
        this.request = generateRequest(callback);
        char c = this.readTimeOut;
        if (c > 0 || this.writeTimeOut > 0 || this.connTimeOut > 0) {
            if (c <= 0) {
                c = 10000;
            }
            this.readTimeOut = c;
            char c2 = this.writeTimeOut;
            if (c2 <= 0) {
                c2 = 10000;
            }
            this.writeTimeOut = c2;
            ?? r0 = this.connTimeOut;
            char c3 = 10000;
            if (r0 > 0) {
                c3 = r0;
            }
            this.connTimeOut = c3;
            OkHttpClient.Builder newBuilder = OkHttpUtils.getInstance().getOkHttpClient().newBuilder();
            long j = this.readTimeOut;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            OkHttpClient build = newBuilder.readTimeout(j, timeUnit).writeTimeout(this.writeTimeOut, timeUnit).connectTimeout(this.connTimeOut, timeUnit).build();
            this.clone = build;
            this.call = build.newCall(this.request);
        } else {
            this.call = OkHttpUtils.getInstance().getOkHttpClient().newCall(this.request);
        }
        return this.call;
    }

    public void cancel() {
        Call call = this.call;
        if (call != null) {
            call.cancel();
        }
    }

    public RequestCall connTimeOut(long j) {
        this.connTimeOut = j;
        return this;
    }

    public Response execute() {
        buildCall(null);
        return this.call.execute();
    }

    public void execute(Callback callback) {
        buildCall(callback);
        if (callback != null) {
            callback.onBefore(this.request, getOkHttpRequest().getId());
        }
        OkHttpUtils.getInstance().execute(this, callback);
    }

    public Call getCall() {
        return this.call;
    }

    public OkHttpRequest getOkHttpRequest() {
        return this.okHttpRequest;
    }

    public Request getRequest() {
        return this.request;
    }

    public RequestCall readTimeOut(long j) {
        this.readTimeOut = j;
        return this;
    }

    public RequestCall writeTimeOut(long j) {
        this.writeTimeOut = j;
        return this;
    }
}
