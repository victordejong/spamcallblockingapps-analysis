package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abo.class */
public final class abo implements acb {
    @Override // com.google.android.gms.internal.ads.acb
    /* renamed from: a */
    public final abt mo13651a(aad aadVar, int i, String str, aae aaeVar) {
        abt aceVar;
        if (i > 0) {
            int m13673c = abb.m13673c();
            aceVar = m13673c < aaeVar.f7617g ? new acj(aadVar, aaeVar) : m13673c < aaeVar.f7612b ? new acf(aadVar, aaeVar) : new acd(aadVar);
        } else {
            aceVar = new ace(aadVar);
        }
        return aceVar;
    }
}
