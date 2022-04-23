package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyv.class */
public abstract class cyv<E> {
    /* JADX WARN: Multi-variable type inference failed */
    public cyv<E> a(Iterable<? extends E> iterable) {
        Iterator<? extends E> it2 = iterable.iterator();
        while (it2.hasNext()) {
            a((cyv<E>) it2.next());
        }
        return this;
    }

    public abstract cyv<E> a(E e);

    /* JADX WARN: Multi-variable type inference failed */
    public cyv<E> a(Iterator<? extends E> it2) {
        while (it2.hasNext()) {
            a((cyv<E>) it2.next());
        }
        return this;
    }
}
