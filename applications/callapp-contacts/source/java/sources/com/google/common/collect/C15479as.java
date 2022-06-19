package com.google.common.collect;

import com.google.common.base.C15391m;
import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.common.collect.as */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/as.class */
public final class C15479as<T> extends AbstractC15470an<T> implements Serializable {

    /* renamed from: a */
    final AbstractC15470an<? super T> f55756a;

    public C15479as(AbstractC15470an<? super T> abstractC15470an) {
        this.f55756a = (AbstractC15470an) C15391m.m8946a(abstractC15470an);
    }

    @Override // com.google.common.collect.AbstractC15470an
    /* renamed from: a */
    public final <S extends T> AbstractC15470an<S> mo8827a() {
        return (AbstractC15470an<? super T>) this.f55756a;
    }

    @Override // com.google.common.collect.AbstractC15470an, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.f55756a.compare(t2, t);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C15479as)) {
            return false;
        }
        return this.f55756a.equals(((C15479as) obj).f55756a);
    }

    public final int hashCode() {
        return -this.f55756a.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f55756a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 10);
        sb.append(valueOf);
        sb.append(".reverse()");
        return sb.toString();
    }
}
