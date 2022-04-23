package com.google.common.collect;

import com.google.common.base.Function;
import java.util.Comparator;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/an.class */
public abstract class an<T> implements Comparator<T> {
    public static <T> an<T> a(Comparator<T> comparator) {
        return comparator instanceof an ? (an) comparator : new m(comparator);
    }

    public static <C extends Comparable> an<C> b() {
        return al.f32006a;
    }

    public <S extends T> an<S> a() {
        return new as(this);
    }

    public final <F> an<F> a(Function<F, ? extends T> function) {
        return new h(function, this);
    }

    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);
}
