package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqv.class */
public final class zzqv extends zzqx {
    public final long zza;
    public final List<zzqw> zzb = new ArrayList();
    public final List<zzqv> zzc = new ArrayList();

    public zzqv(int i, long j) {
        super(i);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzqx
    public final String toString() {
        String zzf = zzqx.zzf(this.zzd);
        String arrays = Arrays.toString(this.zzb.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        int length = String.valueOf(arrays).length();
        StringBuilder sb = new StringBuilder(zzf.length() + 22 + length + String.valueOf(arrays2).length());
        C22128a.m8666T0(sb, zzf, " leaves: ", arrays, " containers: ");
        sb.append(arrays2);
        return sb.toString();
    }

    public final void zza(zzqw zzqwVar) {
        this.zzb.add(zzqwVar);
    }

    public final void zzb(zzqv zzqvVar) {
        this.zzc.add(zzqvVar);
    }

    public final zzqw zzc(int i) {
        int size = this.zzb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzqw zzqwVar = this.zzb.get(i2);
            if (zzqwVar.zzd == i) {
                return zzqwVar;
            }
        }
        return null;
    }

    public final zzqv zzd(int i) {
        int size = this.zzc.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzqv zzqvVar = this.zzc.get(i2);
            if (zzqvVar.zzd == i) {
                return zzqvVar;
            }
        }
        return null;
    }
}
