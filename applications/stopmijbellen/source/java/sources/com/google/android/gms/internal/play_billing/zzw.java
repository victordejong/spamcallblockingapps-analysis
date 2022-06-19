package com.google.android.gms.internal.play_billing;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzw.class */
public final class zzw {
    public Object[] zza = new Object[8];
    public int zzb = 0;
    public zzv zzc;

    public final zzw zza(Object obj, Object obj2) {
        int i = this.zzb + 1;
        int i2 = i + i;
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (i2 > length) {
            int i3 = length + (length >> 1) + 1;
            int i4 = i3;
            if (i3 < i2) {
                int highestOneBit = Integer.highestOneBit(i2 - 1);
                i4 = highestOneBit + highestOneBit;
            }
            int i5 = i4;
            if (i4 < 0) {
                i5 = Integer.MAX_VALUE;
            }
            this.zza = Arrays.copyOf(objArr, i5);
        }
        zzp.zza(obj, obj2);
        Object[] objArr2 = this.zza;
        int i6 = this.zzb;
        int i7 = i6 + i6;
        objArr2[i7] = obj;
        objArr2[i7 + 1] = obj2;
        this.zzb = i6 + 1;
        return this;
    }

    public final zzx zzb() {
        zzv zzvVar = this.zzc;
        if (zzvVar == null) {
            zzaf zzf = zzaf.zzf(this.zzb, this.zza, this);
            zzv zzvVar2 = this.zzc;
            if (zzvVar2 != null) {
                throw zzvVar2.zza();
            }
            return zzf;
        }
        throw zzvVar.zza();
    }
}
