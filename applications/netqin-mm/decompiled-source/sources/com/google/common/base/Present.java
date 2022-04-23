package com.google.common.base;

import java.util.Collections;
import java.util.Set;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Present.class */
public final class Present<T> extends Optional<T> {
    public static final long serialVersionUID = 0;
    public final T reference;

    public Present(T t) {
        this.reference = t;
    }

    @Override // com.google.common.base.Optional
    public Set<T> asSet() {
        return Collections.singleton(this.reference);
    }

    @Override // com.google.common.base.Optional
    public boolean equals(Object obj) {
        if (obj instanceof Present) {
            return this.reference.equals(((Present) obj).reference);
        }
        return false;
    }

    @Override // com.google.common.base.Optional
    public T get() {
        return this.reference;
    }

    @Override // com.google.common.base.Optional
    public int hashCode() {
        return this.reference.hashCode() + 1502476572;
    }

    @Override // com.google.common.base.Optional
    public boolean isPresent() {
        return true;
    }

    @Override // com.google.common.base.Optional
    /* renamed from: or */
    public Optional<T> mo8563or(Optional<? extends T> optional) {
        C4933n.m24795a(optional);
        return this;
    }

    @Override // com.google.common.base.Optional
    /* renamed from: or */
    public T mo8564or(AbstractC4941s<? extends T> sVar) {
        C4933n.m24795a(sVar);
        return this.reference;
    }

    @Override // com.google.common.base.Optional
    /* renamed from: or */
    public T mo8562or(T t) {
        C4933n.m24794a(t, "use Optional.orNull() instead of Optional.or(null)");
        return this.reference;
    }

    @Override // com.google.common.base.Optional
    public T orNull() {
        return this.reference;
    }

    @Override // com.google.common.base.Optional
    public String toString() {
        return "Optional.of(" + this.reference + ")";
    }

    @Override // com.google.common.base.Optional
    public <V> Optional<V> transform(AbstractC4920g<? super T, V> gVar) {
        V apply = gVar.apply((T) this.reference);
        C4933n.m24794a(apply, "the Function passed to Optional.transform() must not return null.");
        return new Present(apply);
    }
}
