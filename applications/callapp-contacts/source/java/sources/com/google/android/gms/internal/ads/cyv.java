package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyv.class */
public abstract class cyv<E> {
    /* renamed from: a */
    public cyv<E> mo17017a(Iterable<? extends E> iterable) {
        for (E e : iterable) {
            mo17016a((cyv<E>) e);
        }
        return this;
    }

    /* renamed from: a */
    public abstract cyv<E> mo17016a(E e);

    /* renamed from: a */
    public cyv<E> mo17015a(Iterator<? extends E> it2) {
        while (it2.hasNext()) {
            mo17016a((cyv<E>) it2.next());
        }
        return this;
    }
}
