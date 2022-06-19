package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckj.class */
public final class zzckj implements zzatz {
    private final zzatz zza;
    private final long zzb;
    private final zzatz zzc;
    private long zzd;
    private Uri zze;

    public zzckj(zzatz zzatzVar, int i, zzatz zzatzVar2) {
        this.zza = zzatzVar;
        this.zzb = i;
        this.zzc = zzatzVar2;
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
    @Override // com.google.android.gms.internal.ads.zzatz
    public final long zza(zzaub zzaubVar) throws IOException {
        zzaub zzaubVar2;
        this.zze = zzaubVar.zza;
        long j = zzaubVar.zzc;
        long j2 = this.zzb;
        zzaub zzaubVar3 = null;
        if (j >= j2) {
            zzaubVar2 = null;
        } else {
            long j3 = zzaubVar.zzd;
            zzaubVar2 = new zzaub(zzaubVar.zza, null, j, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null, 0);
        }
        long j4 = zzaubVar.zzd;
        if (j4 == -1 || zzaubVar.zzc + j4 > this.zzb) {
            long max = Math.max(this.zzb, zzaubVar.zzc);
            long j5 = zzaubVar.zzd;
            zzaubVar3 = new zzaub(zzaubVar.zza, null, max, max, ((j5 > (-1L) ? 1 : (j5 == (-1L) ? 0 : -1)) != 0 ? Math.min(j5, (zzaubVar.zzc + j5) - this.zzb) : true) == true ? 1L : 0L, null, 0);
        }
        ?? r15 = 0;
        ?? zza = zzaubVar2 != null ? this.zza.zza(zzaubVar2) : (char) 0;
        if (zzaubVar3 != null) {
            r15 = this.zzc.zza(zzaubVar3);
        }
        this.zzd = zzaubVar.zzc;
        if (r15 == -1) {
            return -1L;
        }
        return zza + r15;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzatz
    public final int zzb(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        char c = this.zzd;
        long j = this.zzb;
        if (c < j) {
            i3 = this.zza.zzb(bArr, i, (int) Math.min(i2, j - c));
            c = this.zzd + i3;
            this.zzd = c;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (c >= this.zzb) {
            int zzb = this.zzc.zzb(bArr, i + i3, i2 - i3);
            this.zzd += zzb;
            i4 = i3 + zzb;
        }
        return i4;
    }

    @Override // com.google.android.gms.internal.ads.zzatz
    public final Uri zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzatz
    public final void zzd() throws IOException {
        this.zza.zzd();
        this.zzc.zzd();
    }
}
