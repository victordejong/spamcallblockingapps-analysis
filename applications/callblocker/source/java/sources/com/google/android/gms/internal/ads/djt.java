package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djt.class */
public final class djt extends djz {

    /* renamed from: d */
    private final diu f14487d;

    /* renamed from: e */
    private long f14488e;

    public djt(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2, diu diuVar) {
        super(dinVar, str, str2, c2799a, i, 53);
        this.f14487d = diuVar;
        if (diuVar != null) {
            this.f14488e = diuVar.m9384a();
        }
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        if (this.f14487d != null) {
            this.f14501b.m12601A(((Long) this.f14502c.invoke(null, Long.valueOf(this.f14488e))).longValue());
        }
    }
}
