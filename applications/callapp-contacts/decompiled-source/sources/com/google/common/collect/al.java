package com.google.common.collect;

import com.google.common.base.m;
import java.io.Serializable;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/al.class */
final class al extends an<Comparable> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final al f32006a = new al();

    private al() {
    }

    private Object readResolve() {
        return f32006a;
    }

    @Override // com.google.common.collect.an
    public final <S extends Comparable> an<S> a() {
        return ar.f32027a;
    }

    @Override // com.google.common.collect.an, java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        m.a(comparable);
        m.a(comparable2);
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
