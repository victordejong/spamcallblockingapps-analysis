package com.zhy.http.okhttp.request;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.zhy.http.okhttp.OkHttpUtils;
import com.zhy.http.okhttp.callback.Callback;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Call buildCall(com.zhy.http.okhttp.callback.Callback r6) {
        /*
            Method dump skipped, instructions count: 195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.zhy.http.okhttp.request.RequestCall.buildCall(com.zhy.http.okhttp.callback.Callback):okhttp3.Call");
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
        return FirebasePerfOkHttpClient.execute(this.call);
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
