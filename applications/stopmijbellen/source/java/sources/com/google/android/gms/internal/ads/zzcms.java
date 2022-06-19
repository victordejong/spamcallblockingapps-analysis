package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcms.class */
final class zzcms extends zzaib {
    public static final zzcms zzb = new zzcms();

    @Override // com.google.android.gms.internal.ads.zzaib
    public final zzaif zza(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new zzaih() : "mvhd".equals(str) ? new zzaii() : new zzaij(str);
    }
}
