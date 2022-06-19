package com.huawei.hms.support.api;

import com.huawei.hms.support.api.client.ResultCallback;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/ErrorResultImpl$a.class */
public class ErrorResultImpl$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ResultCallback f7788a;

    /* renamed from: b */
    public final /* synthetic */ ErrorResultImpl f7789b;

    /* renamed from: c */
    public final /* synthetic */ ErrorResultImpl f7790c;

    public ErrorResultImpl$a(ErrorResultImpl errorResultImpl, ResultCallback resultCallback, ErrorResultImpl errorResultImpl2) {
        this.f7790c = errorResultImpl;
        this.f7788a = resultCallback;
        this.f7789b = errorResultImpl2;
    }

    @Override // java.lang.Runnable
    public void run() {
        ResultCallback resultCallback = this.f7788a;
        ErrorResultImpl errorResultImpl = this.f7790c;
        resultCallback.onResult(ErrorResultImpl.a(errorResultImpl, ErrorResultImpl.a(errorResultImpl), this.f7789b));
    }
}
