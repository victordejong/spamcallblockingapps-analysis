package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnu.class */
final class zzcnu implements zzdi {
    private final zzdi zza;
    private final long zzb;
    private final zzdi zzc;
    private long zzd;
    private Uri zze;

    public zzcnu(zzdi zzdiVar, int i, zzdi zzdiVar2) {
        this.zza = zzdiVar;
        this.zzb = i;
        this.zzc = zzdiVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdi, com.google.android.gms.internal.ads.zzdv
    public final Map<String, List<String>> zza() {
        return zzfsw.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzb(zzdx zzdxVar) {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdg
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
    @Override // com.google.android.gms.internal.ads.zzdi
    public final long zzh(zzdm zzdmVar) throws IOException {
        zzdm zzdmVar2;
        this.zze = zzdmVar.zza;
        long j = zzdmVar.zzf;
        long j2 = this.zzb;
        zzdm zzdmVar3 = null;
        if (j >= j2) {
            zzdmVar2 = null;
        } else {
            long j3 = zzdmVar.zzg;
            zzdmVar2 = new zzdm(zzdmVar.zza, null, j, j, j3 != -1 ? Math.min(j3, j2 - j) : j2 - j, null, 0);
        }
        long j4 = zzdmVar.zzg;
        if (j4 == -1 || zzdmVar.zzf + j4 > this.zzb) {
            long max = Math.max(this.zzb, zzdmVar.zzf);
            long j5 = zzdmVar.zzg;
            zzdmVar3 = new zzdm(zzdmVar.zza, null, max, max, ((j5 > (-1L) ? 1 : (j5 == (-1L) ? 0 : -1)) != 0 ? Math.min(j5, (zzdmVar.zzf + j5) - this.zzb) : true) == true ? 1L : 0L, null, 0);
        }
        ?? r15 = 0;
        ?? zzh = zzdmVar2 != null ? this.zza.zzh(zzdmVar2) : (char) 0;
        if (zzdmVar3 != null) {
            r15 = this.zzc.zzh(zzdmVar3);
        }
        this.zzd = zzdmVar.zzf;
        if (zzh == -1 || r15 == -1) {
            return -1L;
        }
        return zzh + r15;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final Uri zzi() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzj() throws IOException {
        this.zza.zzj();
        this.zzc.zzj();
    }
}
