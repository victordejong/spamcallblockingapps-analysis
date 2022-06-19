package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acd.class */
public final class acd extends abt {
    public acd(aad aadVar) {
        super(aadVar);
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: a */
    public final boolean mo13638a(String str) {
        aad aadVar = this.f7764c.get();
        if (aadVar != null) {
            aadVar.mo13463a(mo13632b(str), this);
        }
        C3556uu.m6745e("VideoStreamNoopCache is doing nothing.");
        m13658a(str, mo13632b(str), "noop", "Noop cache is a noop.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: b */
    public final void mo13634b() {
    }
}
