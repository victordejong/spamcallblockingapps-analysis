package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpq.class */
final class zzpq implements zzdi {
    private final zzdi zza;
    private final int zzb;
    private final zzpp zzc;
    private final byte[] zzd;
    private int zze;

    public zzpq(zzdi zzdiVar, int i, zzpp zzppVar) {
        zzdy.zzd(i > 0);
        this.zza = zzdiVar;
        this.zzb = i;
        this.zzc = zzppVar;
        this.zzd = new byte[1];
        this.zze = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdi, com.google.android.gms.internal.ads.zzdv
    public final Map<String, List<String>> zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzb(zzdx zzdxVar) {
        Objects.requireNonNull(zzdxVar);
        this.zza.zzb(zzdxVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0085, code lost:
        if (r15 <= 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0088, code lost:
        r0 = r15 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0093, code lost:
        if (r0[r0] != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0096, code lost:
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009f, code lost:
        if (r15 <= 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a2, code lost:
        r6.zzc.zza(new com.google.android.gms.internal.ads.zzfd(r0, r15));
     */
    @Override // com.google.android.gms.internal.ads.zzdg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzg(byte[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpq.zzg(byte[], int, int):int");
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final long zzh(zzdm zzdmVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() {
        throw new UnsupportedOperationException();
    }
}
