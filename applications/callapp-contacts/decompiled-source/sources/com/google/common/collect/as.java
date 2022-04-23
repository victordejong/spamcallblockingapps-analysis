package com.google.common.collect;

import com.google.common.base.m;
import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/as.class */
public final class as<T> extends an<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final an<? super T> f32028a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(an<? super T> anVar) {
        this.f32028a = (an) m.a(anVar);
    }

    @Override // com.google.common.collect.an
    public final <S extends T> an<S> a() {
        return (an<? super T>) this.f32028a;
    }

    @Override // com.google.common.collect.an, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.f32028a.compare(t2, t);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof as) {
            return this.f32028a.equals(((as) obj).f32028a);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f32028a.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f32028a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 10);
        sb.append(valueOf);
        sb.append(".reverse()");
        return sb.toString();
    }
}
