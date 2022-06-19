package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfoc.class */
public class zzfoc<E> extends zzfod<E> {
    public Object[] zza;
    public int zzb = 0;
    public boolean zzc;

    public zzfoc(int i) {
        this.zza = new Object[i];
    }

    private final void zze(int i) {
        Object[] objArr = this.zza;
        int length = objArr.length;
        if (length < i) {
            this.zza = Arrays.copyOf(objArr, zzfod.zzd(length, i));
            this.zzc = false;
        } else if (!this.zzc) {
        } else {
            this.zza = (Object[]) objArr.clone();
            this.zzc = false;
        }
    }

    public final zzfoc<E> zza(E e) {
        Objects.requireNonNull(e);
        zze(this.zzb + 1);
        Object[] objArr = this.zza;
        int i = this.zzb;
        this.zzb = i + 1;
        objArr[i] = e;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzfod<E> zzb(Iterable<? extends E> iterable) {
        zze(iterable.size() + this.zzb);
        if (iterable instanceof zzfoe) {
            this.zzb = ((zzfoe) iterable).zzg(this.zza, this.zzb);
            return this;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzc(it.next());
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfod
    public /* bridge */ /* synthetic */ zzfod zzc(Object obj) {
        throw null;
    }
}
