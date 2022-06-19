package com.google.common.collect;

import com.google.common.base.C15391m;
import com.google.common.base.Function;
import java.io.Serializable;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.common.collect.h */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/h.class */
public final class C15523h<F, T> extends AbstractC15470an<F> implements Serializable {

    /* renamed from: a */
    final Function<F, ? extends T> f55816a;

    /* renamed from: b */
    final AbstractC15470an<T> f55817b;

    public C15523h(Function<F, ? extends T> function, AbstractC15470an<T> abstractC15470an) {
        this.f55816a = (Function) C15391m.m8946a(function);
        this.f55817b = (AbstractC15470an) C15391m.m8946a(abstractC15470an);
    }

    @Override // com.google.common.collect.AbstractC15470an, java.util.Comparator
    public final int compare(F f, F f2) {
        return this.f55817b.compare(this.f55816a.apply(f), this.f55816a.apply(f2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C15523h)) {
            return false;
        }
        C15523h c15523h = (C15523h) obj;
        return this.f55816a.equals(c15523h.f55816a) && this.f55817b.equals(c15523h.f55817b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f55816a, this.f55817b});
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f55817b);
        String valueOf2 = String.valueOf(this.f55816a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 13 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append(".onResultOf(");
        sb.append(valueOf2);
        sb.append(")");
        return sb.toString();
    }
}
