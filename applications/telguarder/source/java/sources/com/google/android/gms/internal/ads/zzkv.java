package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkv.class */
final class zzkv extends zzkw {
    public final long zzasu;
    public final List<zzky> zzasv = new ArrayList();
    public final List<zzkv> zzasw = new ArrayList();

    public zzkv(int i, long j) {
        super(i);
        this.zzasu = j;
    }

    @Override // com.google.android.gms.internal.ads.zzkw
    public final String toString() {
        String zzat = zzat(this.type);
        String arrays = Arrays.toString(this.zzasv.toArray());
        String arrays2 = Arrays.toString(this.zzasw.toArray());
        StringBuilder sb = new StringBuilder(String.valueOf(zzat).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
        sb.append(zzat);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }

    public final void zza(zzkv zzkvVar) {
        this.zzasw.add(zzkvVar);
    }

    public final void zza(zzky zzkyVar) {
        this.zzasv.add(zzkyVar);
    }

    public final zzky zzap(int i) {
        int size = this.zzasv.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzky zzkyVar = this.zzasv.get(i2);
            if (zzkyVar.type == i) {
                return zzkyVar;
            }
        }
        return null;
    }

    public final zzkv zzaq(int i) {
        int size = this.zzasw.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzkv zzkvVar = this.zzasw.get(i2);
            if (zzkvVar.type == i) {
                return zzkvVar;
            }
        }
        return null;
    }
}
