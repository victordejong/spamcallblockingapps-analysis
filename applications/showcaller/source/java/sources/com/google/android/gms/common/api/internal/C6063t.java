package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.C6084b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.C6155o;
import p020b.p036e.C1491b;
/* renamed from: com.google.android.gms.common.api.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/t.class */
public final class C6063t extends AbstractDialogInterface$OnCancelListenerC6030g1 {

    /* renamed from: i */
    private final C1491b<C6012b<?>> f19358i = new C1491b<>();

    /* renamed from: j */
    private final C6025f f19359j;

    C6063t(AbstractC6031h abstractC6031h, C6025f c6025f, C6084b c6084b) {
        super(abstractC6031h, c6084b);
        this.f19359j = c6025f;
        this.f19216d.mo17246b("ConnectionlessLifecycleHelper", this);
    }

    /* renamed from: t */
    public static void m17263t(Activity activity, C6025f c6025f, C6012b<?> c6012b) {
        AbstractC6031h m17439c = LifecycleCallback.m17439c(activity);
        C6063t c6063t = (C6063t) m17439c.mo17244d("ConnectionlessLifecycleHelper", C6063t.class);
        C6063t c6063t2 = c6063t;
        if (c6063t == null) {
            c6063t2 = new C6063t(m17439c, c6025f, C6084b.m17237m());
        }
        C6155o.m17017k(c6012b, "ApiKey cannot be null");
        c6063t2.f19358i.add(c6012b);
        c6025f.m17353q(c6063t2);
    }

    /* renamed from: v */
    private final void m17261v() {
        if (!this.f19358i.isEmpty()) {
            this.f19359j.m17353q(this);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: h */
    public final void mo17268h() {
        super.mo17268h();
        m17261v();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC6030g1, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public final void mo17267j() {
        super.mo17267j();
        m17261v();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC6030g1, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: k */
    public final void mo17266k() {
        super.mo17266k();
        this.f19359j.m17352r(this);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC6030g1
    /* renamed from: o */
    protected final void mo17265o(ConnectionResult connectionResult, int i) {
        this.f19359j.m17345y(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractDialogInterface$OnCancelListenerC6030g1
    /* renamed from: p */
    protected final void mo17264p() {
        this.f19359j.m17350t();
    }

    /* renamed from: u */
    public final C1491b<C6012b<?>> m17262u() {
        return this.f19358i;
    }
}
