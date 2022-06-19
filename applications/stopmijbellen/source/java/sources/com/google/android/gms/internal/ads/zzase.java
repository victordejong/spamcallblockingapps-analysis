package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzase.class */
final class zzase extends zzasg {
    public final long zza;
    public final List<zzasf> zzb = new ArrayList();
    public final List<zzase> zzc = new ArrayList();

    public zzase(int i, long j) {
        super(i);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final String toString() {
        String zzg = zzasg.zzg(this.zzaR);
        String arrays = Arrays.toString(this.zzb.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        int length = String.valueOf(arrays).length();
        StringBuilder sb = new StringBuilder(zzg.length() + 22 + length + String.valueOf(arrays2).length());
        C0082b.m8749m(sb, zzg, " leaves: ", arrays, " containers: ");
        sb.append(arrays2);
        return sb.toString();
    }

    public final zzase zza(int i) {
        int size = this.zzc.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzase zzaseVar = this.zzc.get(i2);
            if (zzaseVar.zzaR == i) {
                return zzaseVar;
            }
        }
        return null;
    }

    public final zzasf zzb(int i) {
        int size = this.zzb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzasf zzasfVar = this.zzb.get(i2);
            if (zzasfVar.zzaR == i) {
                return zzasfVar;
            }
        }
        return null;
    }

    public final void zzc(zzase zzaseVar) {
        this.zzc.add(zzaseVar);
    }

    public final void zzd(zzasf zzasfVar) {
        this.zzb.add(zzasfVar);
    }
}
