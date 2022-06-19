package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bsy.class */
public final class bsy extends dze {

    /* renamed from: a */
    private final bti f12206a;

    public bsy(Context context, afh afhVar, chj chjVar, azg azgVar, dza dzaVar) {
        btk btkVar = new btk(azgVar);
        btkVar.m11640a(dzaVar);
        this.f12206a = new bti(new btr(afhVar, context, btkVar, chjVar), chjVar.m11329c());
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: a */
    public final void mo7972a(dya dyaVar) {
        this.f12206a.m11644a(dyaVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: a */
    public final void mo7971a(dya dyaVar, int i) {
        synchronized (this) {
            this.f12206a.m11644a(dyaVar, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: a */
    public final boolean mo7973a() {
        boolean m11647a;
        synchronized (this) {
            m11647a = this.f12206a.m11647a();
        }
        return m11647a;
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: b */
    public final String mo7970b() {
        String m11643b;
        synchronized (this) {
            m11643b = this.f12206a.m11643b();
        }
        return m11643b;
    }

    @Override // com.google.android.gms.internal.ads.dzf
    /* renamed from: c */
    public final String mo7969c() {
        String m11642c;
        synchronized (this) {
            m11642c = this.f12206a.m11642c();
        }
        return m11642c;
    }
}
