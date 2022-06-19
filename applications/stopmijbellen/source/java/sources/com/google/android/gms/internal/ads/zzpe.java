package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpe.class */
public final class zzpe implements zzqq {
    private final zzww zza;
    private zzwp zzb;
    private zzwq zzc;

    public zzpe(zzww zzwwVar) {
        this.zza = zzwwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqq
    public final int zza(zzxm zzxmVar) throws IOException {
        zzwp zzwpVar = this.zzb;
        Objects.requireNonNull(zzwpVar);
        zzwq zzwqVar = this.zzc;
        Objects.requireNonNull(zzwqVar);
        return zzwpVar.zza(zzwqVar, zzxmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqq
    public final long zzb() {
        zzwq zzwqVar = this.zzc;
        if (zzwqVar != null) {
            return zzwqVar.zze();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzqq
    public final void zzc() {
        zzwp zzwpVar = this.zzb;
        if (zzwpVar instanceof zzabg) {
            ((zzabg) zzwpVar).zze();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
        if (r0.zze() != r12) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0096, code lost:
        if (r0.zze() == r12) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bb, code lost:
        if (r0.zze() != r12) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c1, code lost:
        r0 = false;
     */
    @Override // com.google.android.gms.internal.ads.zzqq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzdg r9, android.net.Uri r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11, long r12, long r14, com.google.android.gms.internal.ads.zzws r16) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpe.zzd(com.google.android.gms.internal.ads.zzdg, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zzws):void");
    }

    @Override // com.google.android.gms.internal.ads.zzqq
    public final void zze() {
        if (this.zzb != null) {
            this.zzb = null;
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzqq
    public final void zzf(long j, long j2) {
        zzwp zzwpVar = this.zzb;
        Objects.requireNonNull(zzwpVar);
        zzwpVar.zzc(j, j2);
    }
}
