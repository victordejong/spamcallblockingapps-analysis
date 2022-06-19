package com.google.android.gms.internal.mlkit_translate;

import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzo.class */
public class zzo<E> extends zzn<E> {
    public Object[] zza = new Object[4];
    public int zzb = 0;
    public boolean zzc;

    public zzo(int i) {
        zzj.zza(4, "initialCapacity");
    }

    private final void zza(int i) {
        Object[] objArr = this.zza;
        if (objArr.length < i) {
            this.zza = Arrays.copyOf(objArr, zzn.zza(objArr.length, i));
            this.zzc = false;
        } else if (!this.zzc) {
        } else {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzn
    public zzn<E> zza(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            zza(collection.size() + this.zzb);
            if (collection instanceof zzl) {
                this.zzb = ((zzl) collection).zza(this.zza, this.zzb);
                return this;
            }
        }
        super.zza((Iterable) iterable);
        return this;
    }

    /* renamed from: zzb */
    public zzo<E> zza(E e) {
        zzi.zza(e);
        zza(this.zzb + 1);
        Object[] objArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        objArr[i] = e;
        return this;
    }
}
