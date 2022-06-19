package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import androidx.p023b.C0430b;
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.api.internal.w */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/w.class */
public final class C11917w extends AbstractDialogInterface$OnCancelListenerC11881bv {

    /* renamed from: b */
    final C0430b<C11859b<?>> f39408b = new C0430b<>();

    /* renamed from: f */
    private final C11896f f39409f;

    C11917w(AbstractC11898h abstractC11898h, C11896f c11896f, C11937b c11937b) {
        super(abstractC11898h, c11937b);
        this.f39409f = c11896f;
        this.f39212a.mo19296a("ConnectionlessLifecycleHelper", this);
    }

    /* renamed from: a */
    public static void m19308a(Activity activity, C11896f c11896f, C11859b<?> c11859b) {
        C11891cd c11891cd;
        C11897g c11897g = new C11897g(activity);
        if (c11897g.f39364a instanceof FragmentActivity) {
            c11891cd = C11891cd.m19363a((FragmentActivity) c11897g.f39364a);
        } else if (!(c11897g.f39364a instanceof Activity)) {
            throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
        } else {
            c11891cd = zzb.m19298a((Activity) c11897g.f39364a);
        }
        C11917w c11917w = (C11917w) c11891cd.mo19295a("ConnectionlessLifecycleHelper", C11917w.class);
        C11917w c11917w2 = c11917w;
        if (c11917w == null) {
            c11917w2 = new C11917w(c11891cd, c11896f, C11937b.m19287a());
        }
        C12045o.m19161a(c11859b, "ApiKey cannot be null");
        c11917w2.f39408b.add(c11859b);
        c11896f.m19346a(c11917w2);
    }

    /* renamed from: f */
    private final void m19302f() {
        if (!this.f39408b.isEmpty()) {
            this.f39409f.m19346a(this);
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC11881bv
    /* renamed from: a */
    protected final void mo19307a(ConnectionResult connectionResult, int i) {
        this.f39409f.m19343b(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC11881bv, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: b */
    public final void mo19306b() {
        super.mo19306b();
        m19302f();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: c */
    public final void mo19305c() {
        super.mo19305c();
        m19302f();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC11881bv, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public final void mo19304d() {
        super.mo19304d();
        C11896f c11896f = this.f39409f;
        synchronized (C11896f.f39344b) {
            if (c11896f.f39349e == this) {
                c11896f.f39349e = null;
                c11896f.f39350f.clear();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC11881bv
    /* renamed from: e */
    protected final void mo19303e() {
        this.f39409f.m19344b();
    }
}
