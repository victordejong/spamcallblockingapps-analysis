package org.xutils.http;

import org.xutils.common.util.LogUtil;
import org.xutils.http.app.RequestTracker;
import org.xutils.http.request.UriRequest;
/* renamed from: org.xutils.http.b */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/b.class */
final class C9653b implements RequestTracker {

    /* renamed from: a */
    private final RequestTracker f40730a;

    public C9653b(RequestTracker requestTracker) {
        this.f40730a = requestTracker;
    }

    @Override // org.xutils.http.app.RequestTracker
    public void onCache(UriRequest uriRequest, Object obj) {
        try {
            this.f40730a.onCache(uriRequest, obj);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }

    @Override // org.xutils.http.app.RequestTracker
    public void onCancelled(UriRequest uriRequest) {
        try {
            this.f40730a.onCancelled(uriRequest);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }

    @Override // org.xutils.http.app.RequestTracker
    public void onError(UriRequest uriRequest, Throwable th, boolean z) {
        try {
            this.f40730a.onError(uriRequest, th, z);
        } catch (Throwable th2) {
            LogUtil.m258e(th2.getMessage(), th2);
        }
    }

    @Override // org.xutils.http.app.RequestTracker
    public void onFinished(UriRequest uriRequest) {
        try {
            this.f40730a.onFinished(uriRequest);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }

    @Override // org.xutils.http.app.RequestTracker
    public void onRequestCreated(UriRequest uriRequest) {
        try {
            this.f40730a.onRequestCreated(uriRequest);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }

    @Override // org.xutils.http.app.RequestTracker
    public void onStart(RequestParams requestParams) {
        try {
            this.f40730a.onStart(requestParams);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }

    @Override // org.xutils.http.app.RequestTracker
    public void onSuccess(UriRequest uriRequest, Object obj) {
        try {
            this.f40730a.onSuccess(uriRequest, obj);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }

    @Override // org.xutils.http.app.RequestTracker
    public void onWaiting(RequestParams requestParams) {
        try {
            this.f40730a.onWaiting(requestParams);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }
}
