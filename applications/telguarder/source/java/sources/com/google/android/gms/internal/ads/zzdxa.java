package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxa.class */
public abstract class zzdxa<E> {
    public zzdxa<E> zza(Iterator<? extends E> it) {
        while (it.hasNext()) {
            zzaa(it.next());
        }
        return this;
    }

    public abstract zzdxa<E> zzaa(E e);

    public zzdxa<E> zzg(Iterable<? extends E> iterable) {
        for (E e : iterable) {
            zzaa(e);
        }
        return this;
    }
}
