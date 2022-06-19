package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckn.class */
public final class zzckn extends zzxl {
    public static final zzckn zzb = new zzckn();

    @Override // com.google.android.gms.internal.ads.zzxl
    public final zzxp zza(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new zzxr() : "mvhd".equals(str) ? new zzxs() : new zzxt(str);
    }
}
