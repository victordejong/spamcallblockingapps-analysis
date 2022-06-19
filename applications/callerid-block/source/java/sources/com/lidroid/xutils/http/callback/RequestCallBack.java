package com.lidroid.xutils.http.callback;

import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/callback/RequestCallBack.class */
public abstract class RequestCallBack<T> {
    private static final int DEFAULT_RATE = 1000;
    private static final int MIN_RATE = 200;
    private int rate;
    private String requestUrl;
    protected Object userTag;

    public RequestCallBack() {
        this.rate = DEFAULT_RATE;
    }

    public RequestCallBack(int i) {
        this.rate = i;
    }

    public RequestCallBack(int i, Object obj) {
        this.rate = i;
        this.userTag = obj;
    }

    public RequestCallBack(Object obj) {
        this.rate = DEFAULT_RATE;
        this.userTag = obj;
    }

    public final int getRate() {
        int i = this.rate;
        return i < MIN_RATE ? MIN_RATE : i;
    }

    public final String getRequestUrl() {
        return this.requestUrl;
    }

    public Object getUserTag() {
        return this.userTag;
    }

    public void onCancelled() {
    }

    public abstract void onFailure(HttpException httpException, String str);

    public void onLoading(long j, long j2, boolean z) {
    }

    public void onStart() {
    }

    public abstract void onSuccess(ResponseInfo<T> responseInfo);

    public final void setRate(int i) {
        this.rate = i;
    }

    public final void setRequestUrl(String str) {
        this.requestUrl = str;
    }

    public void setUserTag(Object obj) {
        this.userTag = obj;
    }
}
