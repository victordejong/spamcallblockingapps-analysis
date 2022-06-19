package com.google.common.collect;

import com.google.common.base.C15391m;
import java.io.Serializable;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.common.collect.m */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/m.class */
public final class C15536m<T> extends AbstractC15470an<T> implements Serializable {

    /* renamed from: a */
    final Comparator<T> f55841a;

    public C15536m(Comparator<T> comparator) {
        this.f55841a = (Comparator) C15391m.m8946a(comparator);
    }

    @Override // com.google.common.collect.AbstractC15470an, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.f55841a.compare(t, t2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C15536m)) {
            return false;
        }
        return this.f55841a.equals(((C15536m) obj).f55841a);
    }

    public final int hashCode() {
        return this.f55841a.hashCode();
    }

    public final String toString() {
        return this.f55841a.toString();
    }
}
