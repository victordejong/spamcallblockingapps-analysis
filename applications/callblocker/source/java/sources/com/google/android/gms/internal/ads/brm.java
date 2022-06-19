package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/brm.class */
final class brm implements arc {

    /* renamed from: a */
    private boolean f11908a = false;

    /* renamed from: b */
    private final /* synthetic */ C3658yo f11909b;

    public brm(brh brhVar, C3658yo c3658yo) {
        this.f11909b = c3658yo;
    }

    /* renamed from: b */
    private final void m11696b(int i, String str) {
        this.f11909b.m6733a(new zzcnn(((Boolean) dyx.m8158e().m7876a(edi.f16494cu)).booleanValue() ? 3 : i, i, str));
    }

    @Override // com.google.android.gms.internal.ads.arc
    /* renamed from: a */
    public final void mo11699a() {
        synchronized (this) {
            this.f11909b.m6731b(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.arc
    /* renamed from: a */
    public final void mo11698a(int i) {
        if (this.f11908a) {
            return;
        }
        m11696b(i, null);
    }

    @Override // com.google.android.gms.internal.ads.arc
    /* renamed from: a */
    public final void mo11697a(int i, String str) {
        synchronized (this) {
            this.f11908a = true;
            m11696b(i, str);
        }
    }
}
