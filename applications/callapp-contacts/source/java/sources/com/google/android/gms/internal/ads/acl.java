package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acl.class */
public final class acl implements adc {
    @Override // com.google.android.gms.internal.ads.adc
    /* renamed from: a */
    public final acu mo18868a(abb abbVar, int i, aay aayVar) {
        if (i > 0) {
            int i2 = abw.f39860b;
            return i2 < aayVar.f39740g ? new adf(abbVar, aayVar) : i2 < aayVar.f39735b ? new adg(abbVar, aayVar) : new ade(abbVar);
        }
        return new adb(abbVar);
    }
}
