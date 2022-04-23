package com.google.common.collect;

import com.google.common.base.m;
import java.io.Serializable;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ar.class */
final class ar extends an<Comparable> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final ar f32027a = new ar();

    private ar() {
    }

    private Object readResolve() {
        return f32027a;
    }

    @Override // com.google.common.collect.an
    public final <S extends Comparable> an<S> a() {
        return al.f32006a;
    }

    @Override // com.google.common.collect.an, java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        m.a(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
