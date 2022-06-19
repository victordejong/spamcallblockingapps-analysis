package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsd.class */
public final class zzsd {
    final long value;
    final int zzbuc;
    final String zzbum;

    public zzsd(long j, String str, int i) {
        this.value = j;
        this.zzbum = str;
        this.zzbuc = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzsd)) {
            return false;
        }
        zzsd zzsdVar = (zzsd) obj;
        return zzsdVar.value == this.value && zzsdVar.zzbuc == this.zzbuc;
    }

    public final int hashCode() {
        return (int) this.value;
    }
}
