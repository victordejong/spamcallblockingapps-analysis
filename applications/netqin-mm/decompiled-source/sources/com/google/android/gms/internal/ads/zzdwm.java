package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwm.class */
public abstract class zzdwm<E> {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public zzdwm<E> mo13078a(Iterable<? extends E> iterable) {
        Iterator<? extends E> it = iterable.iterator();
        while (it.hasNext()) {
            mo13077a((zzdwm<E>) it.next());
        }
        return this;
    }

    /* renamed from: a */
    public abstract zzdwm<E> mo13077a(E e);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public zzdwm<E> mo13080a(Iterator<? extends E> it) {
        while (it.hasNext()) {
            mo13077a((zzdwm<E>) it.next());
        }
        return this;
    }
}
