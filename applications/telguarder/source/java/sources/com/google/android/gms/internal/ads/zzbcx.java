package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcx.class */
final class zzbcx extends zzbl {
    static final zzbcx zzepj = new zzbcx();

    zzbcx() {
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final zzbs zza(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new zzbu() : "mvhd".equals(str) ? new zzbt() : new zzbv(str);
    }
}
