package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zack.class */
public final class zack<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {

    /* renamed from: a */
    private ResultTransform<? super R, ? extends Result> f7270a;

    /* renamed from: b */
    private zack<? extends Result> f7271b;

    /* renamed from: c */
    private volatile ResultCallbacks<? super R> f7272c;

    /* renamed from: d */
    private PendingResult<R> f7273d;

    /* renamed from: e */
    private final Object f7274e;

    /* renamed from: f */
    private Status f7275f;

    /* renamed from: g */
    private final WeakReference<GoogleApiClient> f7276g;

    /* renamed from: h */
    private final zacm f7277h;

    /* renamed from: i */
    private boolean f7278i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static void m14756e(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("TransformedResultImpl", sb.toString(), e);
            }
        }
    }

    @GuardedBy
    /* renamed from: f */
    private final void m14755f() {
        if (this.f7270a != null || this.f7272c != null) {
            GoogleApiClient googleApiClient = this.f7276g.get();
            if (!(this.f7278i || this.f7270a == null || googleApiClient == null)) {
                googleApiClient.mo14783j(this);
                this.f7278i = true;
            }
            Status status = this.f7275f;
            if (status != null) {
                m14748m(status);
                return;
            }
            PendingResult<R> pendingResult = this.f7273d;
            if (pendingResult != null) {
                pendingResult.mo14771c(this);
            }
        }
    }

    @GuardedBy
    /* renamed from: h */
    private final boolean m14753h() {
        return (this.f7272c == null || this.f7276g.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public final void m14750k(Status status) {
        synchronized (this.f7274e) {
            this.f7275f = status;
            m14748m(status);
        }
    }

    /* renamed from: m */
    private final void m14748m(Status status) {
        synchronized (this.f7274e) {
            if (this.f7270a != null) {
                Status a = this.f7270a.m15003a(status);
                Preconditions.m14522l(a, "onFailure must not return null");
                this.f7271b.m14750k(a);
            } else if (m14753h()) {
                this.f7272c.mo15005b(status);
            }
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    /* renamed from: a */
    public final void mo14760a(R r) {
        synchronized (this.f7274e) {
            if (!r.mo10851k().m14996d0()) {
                m14750k(r.mo10851k());
                m14756e(r);
            } else if (this.f7270a != null) {
                zacb.m14774a().submit(new zacn(this, r));
            } else if (m14753h()) {
                this.f7272c.m15004c(r);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final void m14759b(PendingResult<?> pendingResult) {
        synchronized (this.f7274e) {
            this.f7273d = pendingResult;
            m14755f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m14754g() {
        this.f7272c = null;
    }
}
