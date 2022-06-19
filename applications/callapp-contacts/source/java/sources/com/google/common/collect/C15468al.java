package com.google.common.collect;

import com.google.common.base.C15391m;
import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.common.collect.al */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/al.class */
public final class C15468al extends AbstractC15470an<Comparable> implements Serializable {

    /* renamed from: a */
    static final C15468al f55731a = new C15468al();

    private C15468al() {
    }

    private Object readResolve() {
        return f55731a;
    }

    @Override // com.google.common.collect.AbstractC15470an
    /* renamed from: a */
    public final <S extends Comparable> AbstractC15470an<S> mo8827a() {
        return C15478ar.f55755a;
    }

    @Override // com.google.common.collect.AbstractC15470an, java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        C15391m.m8946a(comparable);
        C15391m.m8946a(comparable2);
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
