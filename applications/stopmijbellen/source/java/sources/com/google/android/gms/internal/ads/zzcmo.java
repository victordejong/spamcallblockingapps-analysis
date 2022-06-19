package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmo.class */
final class zzcmo implements zzavw {
    private final zzavw zza;
    private final long zzb;
    private final zzavw zzc;
    private long zzd;
    private Uri zze;

    public zzcmo(zzavw zzavwVar, int i, zzavw zzavwVar2) {
        this.zza = zzavwVar;
        this.zzb = i;
        this.zzc = zzavwVar2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzavw
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        char c = this.zzd;
        long j = this.zzb;
        if (c < j) {
            i3 = this.zza.zza(bArr, i, (int) Math.min(i2, j - c));
            c = this.zzd + i3;
            this.zzd = c;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (c >= this.zzb) {
            int zza = this.zzc.zza(bArr, i + i3, i2 - i3);
            this.zzd += zza;
            i4 = i3 + zza;
        }
        return i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r1v7, types: [long] */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v11 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzavw
    public final long zzb(zzavy zzavyVar) throws IOException {
        zzavy zzavyVar2;
        this.zze = zzavyVar.zza;
        long j = zzavyVar.zzc;
        long j2 = this.zzb;
        zzavy zzavyVar3 = null;
        if (j >= j2) {
            zzavyVar2 = null;
        } else {
            long j3 = zzavyVar.zzd;
            zzavyVar2 = new zzavy(zzavyVar.zza, null, j, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null, 0);
        }
        long j4 = zzavyVar.zzd;
        if (j4 == -1 || zzavyVar.zzc + j4 > this.zzb) {
            long max = Math.max(this.zzb, zzavyVar.zzc);
            long j5 = zzavyVar.zzd;
            zzavyVar3 = new zzavy(zzavyVar.zza, null, max, max, ((j5 > (-1L) ? 1 : (j5 == (-1L) ? 0 : -1)) != 0 ? Math.min(j5, (zzavyVar.zzc + j5) - this.zzb) : true) == true ? 1L : 0L, null, 0);
        }
        ?? r15 = 0;
        ?? zzb = zzavyVar2 != null ? this.zza.zzb(zzavyVar2) : (char) 0;
        if (zzavyVar3 != null) {
            r15 = this.zzc.zzb(zzavyVar3);
        }
        this.zzd = zzavyVar.zzc;
        if (r15 == -1) {
            return -1L;
        }
        return zzb + r15;
    }

    @Override // com.google.android.gms.internal.ads.zzavw
    public final Uri zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzavw
    public final void zzd() throws IOException {
        this.zza.zzd();
        this.zzc.zzd();
    }
}
