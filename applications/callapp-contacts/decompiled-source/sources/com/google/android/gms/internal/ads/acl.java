package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acl.class */
public final class acl implements adc {
    @Override // com.google.android.gms.internal.ads.adc
    public final acu a(abb abbVar, int i, aay aayVar) {
        if (i <= 0) {
            return new adb(abbVar);
        }
        int i2 = abw.f23077b;
        return i2 < aayVar.g ? new adf(abbVar, aayVar) : i2 < aayVar.f23028b ? new adg(abbVar, aayVar) : new ade(abbVar);
    }
}
