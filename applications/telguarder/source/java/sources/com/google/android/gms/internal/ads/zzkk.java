package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkk.class */
public final class zzkk {
    public final int zzaph = 1;
    public final byte[] zzapi;

    public zzkk(int i, byte[] bArr) {
        this.zzapi = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzkk zzkkVar = (zzkk) obj;
        return this.zzaph == zzkkVar.zzaph && Arrays.equals(this.zzapi, zzkkVar.zzapi);
    }

    public final int hashCode() {
        return (this.zzaph * 31) + Arrays.hashCode(this.zzapi);
    }
}
