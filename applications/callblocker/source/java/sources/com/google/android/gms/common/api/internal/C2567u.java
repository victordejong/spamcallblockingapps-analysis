package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.p013b.C0375b;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.common.api.internal.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/u.class */
public class C2567u extends AbstractDialogInterface$OnCancelListenerC2532ba {

    /* renamed from: e */
    private final C0375b<C2531b<?>> f7226e = new C0375b<>();

    /* renamed from: f */
    private C2548f f7227f;

    private C2567u(AbstractC2554i abstractC2554i) {
        super(abstractC2554i);
        this.f7079a.mo14241a("ConnectionlessLifecycleHelper", this);
    }

    /* renamed from: a */
    public static void m14227a(Activity activity, C2548f c2548f, C2531b<?> c2531b) {
        AbstractC2554i a = m14403a(activity);
        C2567u c2567u = (C2567u) a.mo14240a("ConnectionlessLifecycleHelper", C2567u.class);
        C2567u c2567u2 = c2567u;
        if (c2567u == null) {
            c2567u2 = new C2567u(a);
        }
        c2567u2.f7227f = c2548f;
        C2662s.m13980a(c2531b, "ApiKey cannot be null");
        c2567u2.f7226e.add(c2531b);
        c2548f.m14314a(c2567u2);
    }

    /* renamed from: i */
    private final void m14221i() {
        if (!this.f7226e.isEmpty()) {
            this.f7227f.m14314a(this);
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC2532ba
    /* renamed from: a */
    public final void mo14226a(C2579b c2579b, int i) {
        this.f7227f.m14308b(c2579b, i);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC2532ba, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: b */
    public void mo14225b() {
        super.mo14225b();
        m14221i();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: c */
    public void mo14224c() {
        super.mo14224c();
        m14221i();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC2532ba, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public void mo3906d() {
        super.mo3906d();
        this.f7227f.m14309b(this);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC2532ba
    /* renamed from: f */
    protected final void mo14223f() {
        this.f7227f.m14307c();
    }

    /* renamed from: g */
    public final C0375b<C2531b<?>> m14222g() {
        return this.f7226e;
    }
}
