package com.google.a.b;

import com.google.a.a.d;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/a/b/t.class */
final class t extends v<Comparable> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final t f3725a = new t();

    private t() {
    }

    @Override // com.google.a.b.v
    public final <S extends Comparable> v<S> a() {
        return y.f3735a;
    }

    @Override // com.google.a.b.v, java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        d.a(comparable);
        d.a(comparable2);
        return comparable == comparable2 ? 0 : comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
