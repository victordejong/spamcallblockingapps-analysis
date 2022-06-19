package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzw.class */
public final class zzw {
    private final SparseBooleanArray zza;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzw)) {
            return false;
        }
        zzw zzwVar = (zzw) obj;
        if (zzfn.zza >= 24) {
            return this.zza.equals(zzwVar.zza);
        }
        if (this.zza.size() != zzwVar.zza.size()) {
            return false;
        }
        for (int i = 0; i < this.zza.size(); i++) {
            if (zza(i) != zzwVar.zza(i)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (zzfn.zza < 24) {
            int size = this.zza.size();
            for (int i = 0; i < this.zza.size(); i++) {
                size = (size * 31) + zza(i);
            }
            return size;
        }
        return this.zza.hashCode();
    }

    public final int zza(int i) {
        zzdy.zza(i, 0, this.zza.size());
        return this.zza.keyAt(i);
    }

    public final int zzb() {
        return this.zza.size();
    }
}
