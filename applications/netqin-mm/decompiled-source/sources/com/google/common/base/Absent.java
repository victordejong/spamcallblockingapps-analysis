package com.google.common.base;

import java.util.Collections;
import java.util.Set;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Absent.class */
public final class Absent<T> extends Optional<T> {
    public static final Absent<Object> INSTANCE = new Absent<>();
    public static final long serialVersionUID = 0;

    private Object readResolve() {
        return INSTANCE;
    }

    public static <T> Optional<T> withType() {
        return INSTANCE;
    }

    @Override // com.google.common.base.Optional
    public Set<T> asSet() {
        return Collections.emptySet();
    }

    @Override // com.google.common.base.Optional
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return 2040732332;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.base.Optional
    /* renamed from: or */
    public Optional<T> mo8563or(Optional<? extends T> optional) {
        C4933n.m24795a(optional);
        return optional;
    }

    @Override // com.google.common.base.Optional
    /* renamed from: or */
    public T mo8564or(AbstractC4941s<? extends T> sVar) {
        T t = (T) sVar.get();
        C4933n.m24794a(t, "use Optional.orNull() instead of a Supplier that returns null");
        return t;
    }

    @Override // com.google.common.base.Optional
    /* renamed from: or */
    public T mo8562or(T t) {
        C4933n.m24794a(t, "use Optional.orNull() instead of Optional.or(null)");
        return t;
    }

    @Override // com.google.common.base.Optional
    public T orNull() {
        return null;
    }

    @Override // com.google.common.base.Optional
    public String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.common.base.Optional
    public <V> Optional<V> transform(AbstractC4920g<? super T, V> gVar) {
        C4933n.m24795a(gVar);
        return Optional.absent();
    }
}
