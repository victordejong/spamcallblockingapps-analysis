package com.google.a.b;

import com.google.a.a.d;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/a/b/z.class */
final class z<T> extends v<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final v<? super T> f3736a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(v<? super T> vVar) {
        this.f3736a = (v) d.a(vVar);
    }

    @Override // com.google.a.b.v
    public final <S extends T> v<S> a() {
        return (v<? super T>) this.f3736a;
    }

    @Override // com.google.a.b.v, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.f3736a.compare(t2, t);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        return obj == this ? true : obj instanceof z ? this.f3736a.equals(((z) obj).f3736a) : false;
    }

    public final int hashCode() {
        return -this.f3736a.hashCode();
    }

    public final String toString() {
        return this.f3736a + ".reverse()";
    }
}
