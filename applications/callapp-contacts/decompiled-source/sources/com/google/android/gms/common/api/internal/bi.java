package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.p;
import com.google.android.gms.common.api.q;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bi.class */
public final class bi<R extends m> extends q<R> implements n<R> {
    final WeakReference<g> g;
    final bh h;

    /* renamed from: a  reason: collision with root package name */
    p<? super R, ? extends m> f22684a = null;

    /* renamed from: b  reason: collision with root package name */
    bi<? extends m> f22685b = null;

    /* renamed from: c  reason: collision with root package name */
    volatile o<? super R> f22686c = null;

    /* renamed from: d  reason: collision with root package name */
    j<R> f22687d = null;
    final Object e = new Object();
    Status f = null;
    boolean i = false;

    public bi(WeakReference<g> weakReference) {
        com.google.android.gms.common.internal.o.a(weakReference, "GoogleApiClient reference must not be null");
        this.g = weakReference;
        g gVar = weakReference.get();
        this.h = new bh(this, gVar != null ? gVar.c() : Looper.getMainLooper());
    }

    private final boolean a() {
        return (this.f22686c == null || this.g.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void b(m mVar) {
        if (mVar instanceof l) {
            try {
                ((l) mVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(mVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("TransformedResultImpl", sb.toString(), e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Status status) {
        synchronized (this.e) {
            this.f = status;
            b(status);
        }
    }

    @Override // com.google.android.gms.common.api.n
    public final void a(R r) {
        synchronized (this.e) {
            if (!r.getStatus().isSuccess()) {
                a(r.getStatus());
                b(r);
            } else if (this.f22684a != null) {
                ax.a().submit(new bg(this, r));
            } else if (a()) {
                com.google.android.gms.common.internal.o.a(this.f22686c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Status status) {
        synchronized (this.e) {
            if (this.f22684a != null) {
                ((bi) com.google.android.gms.common.internal.o.a(this.f22685b)).a((Status) com.google.android.gms.common.internal.o.a(status, "onFailure must not return null"));
            } else if (a()) {
                com.google.android.gms.common.internal.o.a(this.f22686c);
            }
        }
    }
}
