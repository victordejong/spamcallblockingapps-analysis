package com.google.common.collect;

import com.google.common.base.C15391m;
import java.io.Serializable;
/* renamed from: com.google.common.collect.ar */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ar.class */
final class C15478ar extends AbstractC15470an<Comparable> implements Serializable {

    /* renamed from: a */
    static final C15478ar f55755a = new C15478ar();

    private C15478ar() {
    }

    private Object readResolve() {
        return f55755a;
    }

    @Override // com.google.common.collect.AbstractC15470an
    /* renamed from: a */
    public final <S extends Comparable> AbstractC15470an<S> mo8827a() {
        return C15468al.f55731a;
    }

    @Override // com.google.common.collect.AbstractC15470an, java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        C15391m.m8946a(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
