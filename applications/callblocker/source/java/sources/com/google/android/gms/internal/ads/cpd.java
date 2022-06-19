package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpd.class */
public abstract class cpd<E> {
    /* renamed from: a */
    public cpd<E> mo10889a(Iterable<? extends E> iterable) {
        for (E e : iterable) {
            mo10886b(e);
        }
        return this;
    }

    /* renamed from: a */
    public cpd<E> mo10887a(Iterator<? extends E> it) {
        while (it.hasNext()) {
            mo10886b(it.next());
        }
        return this;
    }

    /* renamed from: b */
    public abstract cpd<E> mo10886b(E e);
}
