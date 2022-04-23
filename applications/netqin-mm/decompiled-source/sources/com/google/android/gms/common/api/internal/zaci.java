package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.HandlerC3251e0;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3253f0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaci.class */
public final class zaci<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {

    /* renamed from: a */
    public ResultTransform<? super R, ? extends Result> f23265a;

    /* renamed from: b */
    public zaci<? extends Result> f23266b;

    /* renamed from: c */
    public volatile ResultCallbacks<? super R> f23267c;

    /* renamed from: d */
    public final Object f23268d;

    /* renamed from: e */
    public Status f23269e;

    /* renamed from: f */
    public final WeakReference<GoogleApiClient> f23270f;

    /* renamed from: g */
    public final HandlerC3251e0 f23271g;

    /* renamed from: b */
    public static void m17494b(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).mo15656a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("TransformedResultImpl", sb.toString(), e);
            }
        }
    }

    /* renamed from: a */
    public final void m17500a() {
        this.f23267c = null;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    /* renamed from: a */
    public final void mo17499a(R r) {
        synchronized (this.f23268d) {
            if (!r.mo8632d().m17740y()) {
                m17498a(r.mo8632d());
                m17494b(r);
            } else if (this.f23265a != null) {
                zabz.m17509a().submit(new RunnableC3253f0(this, r));
            } else if (m17495b()) {
                ResultCallbacks<? super R> resultCallbacks = this.f23267c;
                Preconditions.m17288a(resultCallbacks);
                resultCallbacks.m17749b(r);
            }
        }
    }

    /* renamed from: a */
    public final void m17498a(Status status) {
        synchronized (this.f23268d) {
            this.f23269e = status;
            m17493b(status);
        }
    }

    /* renamed from: b */
    public final void m17493b(Status status) {
        synchronized (this.f23268d) {
            if (this.f23265a != null) {
                Status a = this.f23265a.m17747a(status);
                Preconditions.m17287a(a, "onFailure must not return null");
                Status status2 = a;
                zaci<? extends Result> zaciVar = this.f23266b;
                Preconditions.m17288a(zaciVar);
                zaciVar.m17498a(status2);
            } else if (m17495b()) {
                ResultCallbacks<? super R> resultCallbacks = this.f23267c;
                Preconditions.m17288a(resultCallbacks);
                resultCallbacks.mo17750a(status);
            }
        }
    }

    /* renamed from: b */
    public final boolean m17495b() {
        return (this.f23267c == null || this.f23270f.get() == null) ? false : true;
    }
}
