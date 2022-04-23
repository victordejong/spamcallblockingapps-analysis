package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/m.class */
public final class m<T> extends an<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final Comparator<T> f32101a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Comparator<T> comparator) {
        this.f32101a = (Comparator) com.google.common.base.m.a(comparator);
    }

    @Override // com.google.common.collect.an, java.util.Comparator
    public final int compare(T t, T t2) {
        return this.f32101a.compare(t, t2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            return this.f32101a.equals(((m) obj).f32101a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f32101a.hashCode();
    }

    public final String toString() {
        return this.f32101a.toString();
    }
}
