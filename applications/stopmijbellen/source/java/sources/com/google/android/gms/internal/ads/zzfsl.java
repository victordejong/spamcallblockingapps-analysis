package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsl.class */
class zzfsl<E> extends zzfsm<E> {
    public Object[] zza;
    public int zzb = 0;
    public boolean zzc;

    public zzfsl(int i) {
        this.zza = new Object[i];
    }

    private final void zze(int i) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length < i) {
            this.zza = Arrays.copyOf(objArr, zzfsm.zzd(length, i));
            this.zzc = false;
        } else if (!this.zzc) {
        } else {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
    }

    public final zzfsl<E> zza(E e) {
        Objects.requireNonNull(e);
        zze(this.zzb + 1);
        Object[] objArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        objArr[i] = e;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfsm
    public /* bridge */ /* synthetic */ zzfsm zzb(Object obj) {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzfsm<E> zzc(Iterable<? extends E> iterable) {
        zze(iterable.size() + this.zzb);
        if (iterable instanceof zzfsn) {
            this.zzb = ((zzfsn) iterable).zza(this.zza, this.zzb);
            return this;
        }
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            zzb(it2.next());
        }
        return this;
    }
}
