package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabl.class */
final class zzabl extends zzabn {
    public final long zza;
    public final List<zzabm> zzb = new ArrayList();
    public final List<zzabl> zzc = new ArrayList();

    public zzabl(int i, long j) {
        super(i);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzabn
    public final String toString() {
        String zzf = zzabn.zzf(this.zzd);
        String arrays = Arrays.toString(this.zzb.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        int length = String.valueOf(arrays).length();
        StringBuilder sb = new StringBuilder(zzf.length() + 22 + length + String.valueOf(arrays2).length());
        C0082b.m8749m(sb, zzf, " leaves: ", arrays, " containers: ");
        sb.append(arrays2);
        return sb.toString();
    }

    public final zzabl zza(int i) {
        int size = this.zzc.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzabl zzablVar = this.zzc.get(i2);
            if (zzablVar.zzd == i) {
                return zzablVar;
            }
        }
        return null;
    }

    public final zzabm zzb(int i) {
        int size = this.zzb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzabm zzabmVar = this.zzb.get(i2);
            if (zzabmVar.zzd == i) {
                return zzabmVar;
            }
        }
        return null;
    }

    public final void zzc(zzabl zzablVar) {
        this.zzc.add(zzablVar);
    }

    public final void zzd(zzabm zzabmVar) {
        this.zzb.add(zzabmVar);
    }
}
