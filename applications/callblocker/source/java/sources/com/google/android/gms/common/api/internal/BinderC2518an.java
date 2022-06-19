package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C2636d;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.C2668u;
import com.google.android.gms.p127b.AbstractC2463d;
import com.google.android.gms.p127b.C2447a;
import com.google.android.gms.p127b.C2462c;
import com.google.android.gms.p127b.p128a.BinderC2453e;
import com.google.android.gms.p127b.p128a.C2460l;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.internal.an */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/an.class */
public final class BinderC2518an extends BinderC2453e implements AbstractC2492d.AbstractC2493a, AbstractC2492d.AbstractC2494b {

    /* renamed from: a */
    private static C2471a.C2472a<? extends AbstractC2463d, C2447a> f7097a = C2462c.f6993a;

    /* renamed from: b */
    private final Context f7098b;

    /* renamed from: c */
    private final Handler f7099c;

    /* renamed from: d */
    private final C2471a.C2472a<? extends AbstractC2463d, C2447a> f7100d;

    /* renamed from: e */
    private Set<Scope> f7101e;

    /* renamed from: f */
    private C2636d f7102f;

    /* renamed from: g */
    private AbstractC2463d f7103g;

    /* renamed from: h */
    private AbstractC2519ao f7104h;

    public BinderC2518an(Context context, Handler handler, C2636d c2636d) {
        this(context, handler, c2636d, f7097a);
    }

    public BinderC2518an(Context context, Handler handler, C2636d c2636d, C2471a.C2472a<? extends AbstractC2463d, C2447a> c2472a) {
        this.f7098b = context;
        this.f7099c = handler;
        this.f7102f = (C2636d) C2662s.m13980a(c2636d, "ClientSettings must not be null");
        this.f7101e = c2636d.m14047d();
        this.f7100d = c2472a;
    }

    /* renamed from: b */
    public final void m14380b(C2460l c2460l) {
        C2579b m14480a = c2460l.m14480a();
        if (m14480a.m14210b()) {
            C2668u m14479b = c2460l.m14479b();
            C2579b m13914b = m14479b.m13914b();
            if (!m13914b.m14210b()) {
                String valueOf = String.valueOf(m13914b);
                Log.wtf("SignInCoordinator", new StringBuilder(String.valueOf(valueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(valueOf).toString(), new Exception());
                this.f7104h.mo14254b(m13914b);
                this.f7103g.m14448e();
                return;
            }
            this.f7104h.mo14256a(m14479b.m13915a(), this.f7101e);
        } else {
            this.f7104h.mo14254b(m14480a);
        }
        this.f7103g.m14448e();
    }

    /* renamed from: a */
    public final void m14385a() {
        if (this.f7103g != null) {
            this.f7103g.m14448e();
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2547e
    /* renamed from: a */
    public final void mo14295a(int i) {
        this.f7103g.m14448e();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2547e
    /* renamed from: a */
    public final void mo14294a(Bundle bundle) {
        this.f7103g.mo14478a(this);
    }

    @Override // com.google.android.gms.p127b.p128a.BinderC2453e, com.google.android.gms.p127b.p128a.AbstractC2452d
    /* renamed from: a */
    public final void mo14384a(C2460l c2460l) {
        this.f7099c.post(new RunnableC2520ap(this, c2460l));
    }

    /* renamed from: a */
    public final void m14381a(AbstractC2519ao abstractC2519ao) {
        if (this.f7103g != null) {
            this.f7103g.m14448e();
        }
        this.f7102f.m14050a(Integer.valueOf(System.identityHashCode(this)));
        this.f7103g = this.f7100d.mo2035a(this.f7098b, this.f7099c.getLooper(), this.f7102f, (C2636d) this.f7102f.m14043h(), (AbstractC2492d.AbstractC2493a) this, (AbstractC2492d.AbstractC2494b) this);
        this.f7104h = abstractC2519ao;
        if (this.f7101e == null || this.f7101e.isEmpty()) {
            this.f7099c.post(new RunnableC2517am(this));
        } else {
            this.f7103g.mo14477c();
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2557k
    /* renamed from: b */
    public final void mo14238b(C2579b c2579b) {
        this.f7104h.mo14254b(c2579b);
    }
}
