package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC2328o;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anc.class */
public final class anc implements AbstractC2328o {

    /* renamed from: a */
    private final aqq f10035a;

    /* renamed from: b */
    private AtomicBoolean f10036b = new AtomicBoolean(false);

    public anc(aqq aqqVar) {
        this.f10035a = aqqVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: c */
    public final void mo7433c() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: d */
    public final void mo7432d() {
        this.f10035a.m12802c();
    }

    /* renamed from: e */
    public final boolean m12902e() {
        return this.f10036b.get();
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: f_ */
    public final void mo7431f_() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC2328o
    /* renamed from: h_ */
    public final void mo7430h_() {
        this.f10036b.set(true);
        this.f10035a.m12805a();
    }
}
