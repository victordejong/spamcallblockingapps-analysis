package com.google.android.gms.internal.ads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzflh.class */
public final class zzflh extends zzflg {
    private final char zza;

    public zzflh(char c) {
        this.zza = c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [int] */
    public final String toString() {
        char c = this.zza;
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
            c >>= 4;
        }
        String copyValueOf = String.copyValueOf(cArr);
        return C22128a.m8610j(new StringBuilder(String.valueOf(copyValueOf).length() + 18), "CharMatcher.is('", copyValueOf, "')");
    }

    @Override // com.google.android.gms.internal.ads.zzflk
    public final boolean zza(char c) {
        return c == this.zza;
    }
}
