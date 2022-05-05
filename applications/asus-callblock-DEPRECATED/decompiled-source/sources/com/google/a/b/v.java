package com.google.a.b;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/a/b/v.class */
public abstract class v<T> implements Comparator<T> {
    public static <C extends Comparable> v<C> b() {
        return t.f3725a;
    }

    public <S extends T> v<S> a() {
        return new z(this);
    }

    @Override // java.util.Comparator
    public abstract int compare(T t, T t2);
}
