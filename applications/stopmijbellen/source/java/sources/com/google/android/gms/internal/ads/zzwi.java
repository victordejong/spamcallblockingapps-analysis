package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwi.class */
public final class zzwi implements zzxp {
    public final int zza;
    public final int[] zzb;
    public final long[] zzc;
    public final long[] zzd;
    public final long[] zze;
    private final long zzf;

    public zzwi(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zzb = iArr;
        this.zzc = jArr;
        this.zzd = jArr2;
        this.zze = jArr3;
        int length = iArr.length;
        this.zza = length;
        if (length <= 0) {
            this.zzf = 0L;
            return;
        }
        int i = length - 1;
        this.zzf = jArr2[i] + jArr3[i];
    }

    public final String toString() {
        int i = this.zza;
        String arrays = Arrays.toString(this.zzb);
        String arrays2 = Arrays.toString(this.zzc);
        String arrays3 = Arrays.toString(this.zze);
        String arrays4 = Arrays.toString(this.zzd);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 71 + String.valueOf(arrays2).length() + String.valueOf(arrays3).length() + String.valueOf(arrays4).length());
        sb.append("ChunkIndex(length=");
        sb.append(i);
        sb.append(", sizes=");
        sb.append(arrays);
        C0082b.m8749m(sb, ", offsets=", arrays2, ", timeUs=", arrays3);
        return C0608b.m7625j(sb, ", durationsUs=", arrays4, ")");
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final long zze() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final zzxn zzg(long j) {
        int zzd = zzfn.zzd(this.zze, j, true, true);
        zzxq zzxqVar = new zzxq(this.zze[zzd], this.zzc[zzd]);
        if (zzxqVar.zzb >= j || zzd == this.zza - 1) {
            return new zzxn(zzxqVar, zzxqVar);
        }
        int i = zzd + 1;
        return new zzxn(zzxqVar, new zzxq(this.zze[i], this.zzc[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    public final boolean zzh() {
        return true;
    }
}
