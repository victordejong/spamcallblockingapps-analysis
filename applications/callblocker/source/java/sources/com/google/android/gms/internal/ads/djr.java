package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djr.class */
public final class djr extends djz {

    /* renamed from: d */
    private final StackTraceElement[] f14485d;

    public djr(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(dinVar, str, str2, c2799a, i, 45);
        this.f14485d = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        if (this.f14485d != null) {
            dij dijVar = new dij((String) this.f14502c.invoke(null, this.f14485d));
            synchronized (this.f14501b) {
                this.f14501b.m12551x(dijVar.f14401a.longValue());
                if (dijVar.f14402b.booleanValue()) {
                    this.f14501b.m12581c(dijVar.f14403c.booleanValue() ? bce.ENUM_FALSE : bce.ENUM_TRUE);
                } else {
                    this.f14501b.m12581c(bce.ENUM_FAILURE);
                }
            }
        }
    }
}
