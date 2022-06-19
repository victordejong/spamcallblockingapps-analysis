package com.google.android.gms.internal.mlkit_translate;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzt.class */
public final class zzt<K, V> {
    private Object[] zza;
    private int zzb;
    private boolean zzc;

    public zzt() {
        this(4);
    }

    private zzt(int i) {
        this.zza = new Object[8];
        this.zzb = 0;
        this.zzc = false;
    }

    public final zzt<K, V> zza(K k, V v) {
        int i = (this.zzb + 1) << 1;
        Object[] objArr = this.zza;
        if (i > objArr.length) {
            this.zza = Arrays.copyOf(objArr, zzn.zza(objArr.length, i));
            this.zzc = false;
        }
        zzj.zza(k, v);
        Object[] objArr2 = this.zza;
        int i2 = this.zzb;
        objArr2[i2 * 2] = k;
        objArr2[(i2 * 2) + 1] = v;
        this.zzb = i2 + 1;
        return this;
    }

    public final zzu<K, V> zza() {
        this.zzc = true;
        return zzz.zza(this.zzb, this.zza);
    }
}
