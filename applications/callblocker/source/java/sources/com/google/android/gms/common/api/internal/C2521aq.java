package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.AbstractC2495e;
import com.google.android.gms.common.api.AbstractC2499g;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.AbstractC2501i;
import com.google.android.gms.common.api.AbstractC2573j;
import com.google.android.gms.common.api.AbstractC2574k;
import com.google.android.gms.common.api.AbstractC2575l;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C2662s;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.api.internal.aq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/aq.class */
public final class C2521aq<R extends AbstractC2500h> extends AbstractC2575l<R> implements AbstractC2501i<R> {

    /* renamed from: a */
    private AbstractC2574k<? super R, ? extends AbstractC2500h> f7107a;

    /* renamed from: b */
    private C2521aq<? extends AbstractC2500h> f7108b;

    /* renamed from: c */
    private volatile AbstractC2573j<? super R> f7109c;

    /* renamed from: d */
    private AbstractC2495e<R> f7110d;

    /* renamed from: e */
    private final Object f7111e;

    /* renamed from: f */
    private Status f7112f;

    /* renamed from: g */
    private final WeakReference<AbstractC2492d> f7113g;

    /* renamed from: h */
    private final HandlerC2522ar f7114h;

    /* renamed from: i */
    private boolean f7115i;

    @GuardedBy("mSyncToken")
    /* renamed from: a */
    private final void m14379a() {
        if (this.f7107a == null && this.f7109c == null) {
            return;
        }
        AbstractC2492d abstractC2492d = this.f7113g.get();
        if (!this.f7115i && this.f7107a != null && abstractC2492d != null) {
            abstractC2492d.mo14399a(this);
            this.f7115i = true;
        }
        if (this.f7112f != null) {
            m14371b(this.f7112f);
        } else if (this.f7110d == null) {
        } else {
            this.f7110d.mo14387a(this);
        }
    }

    /* renamed from: a */
    public final void m14378a(Status status) {
        synchronized (this.f7111e) {
            this.f7112f = status;
            m14371b(this.f7112f);
        }
    }

    /* renamed from: b */
    private final void m14371b(Status status) {
        synchronized (this.f7111e) {
            if (this.f7107a != null) {
                Status m14214a = this.f7107a.m14214a(status);
                C2662s.m13980a(m14214a, "onFailure must not return null");
                this.f7108b.m14378a(m14214a);
            } else if (m14372b()) {
                this.f7109c.m14216a(status);
            }
        }
    }

    /* renamed from: b */
    public static void m14370b(AbstractC2500h abstractC2500h) {
        if (abstractC2500h instanceof AbstractC2499g) {
            try {
                ((AbstractC2499g) abstractC2500h).mo13641a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(abstractC2500h);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    @GuardedBy("mSyncToken")
    /* renamed from: b */
    private final boolean m14372b() {
        return (this.f7109c == null || this.f7113g.get() == null) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m14377a(AbstractC2495e<?> abstractC2495e) {
        synchronized (this.f7111e) {
            this.f7110d = abstractC2495e;
            m14379a();
        }
    }

    @Override // com.google.android.gms.common.api.AbstractC2501i
    /* renamed from: a */
    public final void mo14376a(R r) {
        synchronized (this.f7111e) {
            if (!r.mo14416b().m14460d()) {
                m14378a(r.mo14416b());
                m14370b(r);
            } else if (this.f7107a != null) {
                C2515ak.m14391a().submit(new RunnableC2523as(this, r));
            } else if (m14372b()) {
                this.f7109c.m14215b(r);
            }
        }
    }
}
