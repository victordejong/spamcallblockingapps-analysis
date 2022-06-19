package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgk.class */
public final class zzgk implements zzhx {
    private final zzoa zza;
    private zznu zzb;
    private zznv zzc;

    public zzgk(zzoa zzoaVar) {
        this.zza = zzoaVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
        if (r0.zzn() != r12) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0096, code lost:
        if (r0.zzn() == r12) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bb, code lost:
        if (r0.zzn() != r12) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c1, code lost:
        r0 = false;
     */
    @Override // com.google.android.gms.internal.ads.zzhx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzah r9, android.net.Uri r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11, long r12, long r14, com.google.android.gms.internal.ads.zznx r16) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgk.zza(com.google.android.gms.internal.ads.zzah, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zznx):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zzb() {
        if (this.zzb != null) {
            this.zzb = null;
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zzc() {
        zznu zznuVar = this.zzb;
        if (zznuVar instanceof zzqq) {
            ((zzqq) zznuVar).zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final long zzd() {
        zznv zznvVar = this.zzc;
        if (zznvVar != null) {
            return zznvVar.zzn();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final void zze(long j, long j2) {
        zznu zznuVar = this.zzb;
        Objects.requireNonNull(zznuVar);
        zznuVar.zzd(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzhx
    public final int zzf(zzoq zzoqVar) throws IOException {
        zznu zznuVar = this.zzb;
        Objects.requireNonNull(zznuVar);
        zznv zznvVar = this.zzc;
        Objects.requireNonNull(zznvVar);
        return zznuVar.zzc(zznvVar, zzoqVar);
    }
}
