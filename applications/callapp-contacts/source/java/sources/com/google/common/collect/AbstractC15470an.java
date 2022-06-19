package com.google.common.collect;

import com.google.common.base.Function;
import java.util.Comparator;
/* renamed from: com.google.common.collect.an */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/an.class */
public abstract class AbstractC15470an<T> implements Comparator<T> {
    /* renamed from: a */
    public static <T> AbstractC15470an<T> m8834a(Comparator<T> comparator) {
        return comparator instanceof AbstractC15470an ? (AbstractC15470an) comparator : new C15536m(comparator);
    }

    /* renamed from: b */
    public static <C extends Comparable> AbstractC15470an<C> m8833b() {
        return C15468al.f55731a;
    }

    /* renamed from: a */
    public <S extends T> AbstractC15470an<S> mo8827a() {
        return new C15479as(this);
    }

    /* renamed from: a */
    public final <F> AbstractC15470an<F> m8835a(Function<F, ? extends T> function) {
        return new C15523h(function, this);
    }

    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);
}
