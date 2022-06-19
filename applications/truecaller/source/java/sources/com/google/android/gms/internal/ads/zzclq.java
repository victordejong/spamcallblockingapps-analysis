package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclq.class */
public final class zzclq implements zzaj {
    private final zzaj zza;
    private final long zzb;
    private final zzaj zzc;
    private long zzd;
    private Uri zze;

    public zzclq(zzaj zzajVar, int i, zzaj zzajVar2) {
        this.zza = zzajVar;
        this.zzb = i;
        this.zzc = zzajVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zza(zzay zzayVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Map<String, List<String>> zzf() {
        return zzfon.zza();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzah
    public final int zzg(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        char c = this.zzd;
        long j = this.zzb;
        if (c < j) {
            i3 = this.zza.zzg(bArr, i, (int) Math.min(i2, j - c));
            c = this.zzd + i3;
            this.zzd = c;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        if (c >= this.zzb) {
            int zzg = this.zzc.zzg(bArr, i + i3, i2 - i3);
            this.zzd += zzg;
            i4 = i3 + zzg;
        }
        return i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r1v8, types: [long] */
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
    @Override // com.google.android.gms.internal.ads.zzaj
    public final long zzh(zzan zzanVar) throws IOException {
        zzan zzanVar2;
        this.zze = zzanVar.zza;
        long j = zzanVar.zzf;
        long j2 = this.zzb;
        zzan zzanVar3 = null;
        if (j >= j2) {
            zzanVar2 = null;
        } else {
            long j3 = zzanVar.zzg;
            zzanVar2 = new zzan(zzanVar.zza, null, j, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null, 0);
        }
        long j4 = zzanVar.zzg;
        if (j4 == -1 || zzanVar.zzf + j4 > this.zzb) {
            long max = Math.max(this.zzb, zzanVar.zzf);
            long j5 = zzanVar.zzg;
            zzanVar3 = new zzan(zzanVar.zza, null, max, max, ((j5 > (-1L) ? 1 : (j5 == (-1L) ? 0 : -1)) != 0 ? Math.min(j5, (zzanVar.zzf + j5) - this.zzb) : true) == true ? 1L : 0L, null, 0);
        }
        ?? r15 = 0;
        ?? zzh = zzanVar2 != null ? this.zza.zzh(zzanVar2) : (char) 0;
        if (zzanVar3 != null) {
            r15 = this.zzc.zzh(zzanVar3);
        }
        this.zzd = zzanVar.zzf;
        if (zzh == -1 || r15 == -1) {
            return -1L;
        }
        return zzh + r15;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final Uri zzi() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzj() throws IOException {
        this.zza.zzj();
        this.zzc.zzj();
    }
}
