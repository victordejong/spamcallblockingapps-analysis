package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqi.class */
public final class zzaqi extends zzaqk {
    public final long zza;
    public final List<zzaqj> zzb = new ArrayList();
    public final List<zzaqi> zzc = new ArrayList();

    public zzaqi(int i, long j) {
        super(i);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaqk
    public final String toString() {
        String zzg = zzaqk.zzg(this.zzaR);
        String arrays = Arrays.toString(this.zzb.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        int length = String.valueOf(arrays).length();
        StringBuilder sb = new StringBuilder(zzg.length() + 22 + length + String.valueOf(arrays2).length());
        C22128a.m8666T0(sb, zzg, " leaves: ", arrays, " containers: ");
        sb.append(arrays2);
        return sb.toString();
    }

    public final void zza(zzaqj zzaqjVar) {
        this.zzb.add(zzaqjVar);
    }

    public final void zzb(zzaqi zzaqiVar) {
        this.zzc.add(zzaqiVar);
    }

    public final zzaqj zzc(int i) {
        int size = this.zzb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzaqj zzaqjVar = this.zzb.get(i2);
            if (zzaqjVar.zzaR == i) {
                return zzaqjVar;
            }
        }
        return null;
    }

    public final zzaqi zzd(int i) {
        int size = this.zzc.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzaqi zzaqiVar = this.zzc.get(i2);
            if (zzaqiVar.zzaR == i) {
                return zzaqiVar;
            }
        }
        return null;
    }
}
