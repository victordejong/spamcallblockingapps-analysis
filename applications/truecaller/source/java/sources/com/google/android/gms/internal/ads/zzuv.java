package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzuv.class */
public final class zzuv implements zznu {
    public static final zzoa zza = zzur.zza;
    private zznx zzb;
    private zzox zzc;
    private zzut zzd;
    private int zze = -1;
    private long zzf = -1;

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zza(zznv zznvVar) throws IOException {
        return zzuy.zza(zznvVar) != null;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzb(zznx zznxVar) {
        this.zzb = zznxVar;
        this.zzc = zznxVar.zzB(0, 1);
        zznxVar.zzC();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x009c, code lost:
        if (r0 != 65534) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d2  */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    @Override // com.google.android.gms.internal.ads.zznu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(com.google.android.gms.internal.ads.zznv r10, com.google.android.gms.internal.ads.zzoq r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuv.zzc(com.google.android.gms.internal.ads.zznv, com.google.android.gms.internal.ads.zzoq):int");
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzd(long j, long j2) {
        zzut zzutVar = this.zzd;
        if (zzutVar != null) {
            zzutVar.zza(j2);
        }
    }
}
