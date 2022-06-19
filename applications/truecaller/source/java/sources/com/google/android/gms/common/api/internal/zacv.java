package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.HandlerC24930l0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.RunnableC24928k0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zacv.class */
public final class zacv<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {

    /* renamed from: f */
    public final WeakReference<GoogleApiClient> f5885f;

    /* renamed from: g */
    public final HandlerC24930l0 f5886g;

    /* renamed from: a */
    public ResultTransform<? super R, ? extends Result> f5880a = null;

    /* renamed from: b */
    public zacv<? extends Result> f5881b = null;

    /* renamed from: c */
    public PendingResult<R> f5882c = null;

    /* renamed from: d */
    public final Object f5883d = new Object();

    /* renamed from: e */
    public Status f5884e = null;

    /* renamed from: h */
    public boolean f5887h = false;

    public zacv(WeakReference<GoogleApiClient> weakReference) {
        Preconditions.m38897k(weakReference, "GoogleApiClient reference must not be null");
        this.f5885f = weakReference;
        GoogleApiClient googleApiClient = weakReference.get();
        this.f5886g = new HandlerC24930l0(this, googleApiClient != null ? googleApiClient.mo38954m() : Looper.getMainLooper());
    }

    /* renamed from: c */
    public static void m38946c(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String.valueOf(result).length();
            }
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    /* renamed from: a */
    public final void mo38948a(R r) {
        synchronized (this.f5883d) {
            if (!r.getStatus().m39042q2()) {
                m38944e(r.getStatus());
                if (r instanceof Releasable) {
                    try {
                        ((Releasable) r).release();
                    } catch (RuntimeException e) {
                        String.valueOf(r).length();
                    }
                }
            } else if (this.f5880a != null) {
                zacj.f5871a.submit(new RunnableC24928k0(this, r));
            } else {
                this.f5885f.get();
            }
        }
    }

    /* renamed from: b */
    public final <S extends Result> TransformedResult<S> m38947b(ResultTransform<? super R, ? extends S> resultTransform) {
        zacv<? extends Result> zacvVar;
        synchronized (this.f5883d) {
            Preconditions.m38895m(this.f5880a == null, "Cannot call then() twice.");
            Preconditions.m38895m(true, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f5880a = resultTransform;
            zacvVar = new zacv<>(this.f5885f);
            this.f5881b = zacvVar;
            m38945d();
        }
        return zacvVar;
    }

    /* renamed from: d */
    public final void m38945d() {
        if (this.f5880a == null) {
            return;
        }
        GoogleApiClient googleApiClient = this.f5885f.get();
        if (!this.f5887h && this.f5880a != null && googleApiClient != null) {
            googleApiClient.mo38953t(this);
            this.f5887h = true;
        }
        Status status = this.f5884e;
        if (status != null) {
            m38943f(status);
            return;
        }
        PendingResult<R> pendingResult = this.f5882c;
        if (pendingResult == null) {
            return;
        }
        pendingResult.setResultCallback(this);
    }

    /* renamed from: e */
    public final void m38944e(Status status) {
        synchronized (this.f5883d) {
            this.f5884e = status;
            m38943f(status);
        }
    }

    /* renamed from: f */
    public final void m38943f(Status status) {
        synchronized (this.f5883d) {
            if (this.f5880a != null) {
                Preconditions.m38897k(status, "onFailure must not return null");
                zacv<? extends Result> zacvVar = this.f5881b;
                Objects.requireNonNull(zacvVar, "null reference");
                zacvVar.m38944e(status);
            } else {
                this.f5885f.get();
            }
        }
    }
}
