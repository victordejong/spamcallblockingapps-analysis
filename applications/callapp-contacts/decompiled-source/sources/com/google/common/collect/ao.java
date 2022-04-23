package com.google.common.collect;

import com.google.common.base.m;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ao.class */
final class ao<E> extends v<E> {

    /* renamed from: a  reason: collision with root package name */
    static final v<Object> f32007a = new ao(new Object[0], 0);

    /* renamed from: b  reason: collision with root package name */
    final transient Object[] f32008b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f32009c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(Object[] objArr, int i) {
        this.f32008b = objArr;
        this.f32009c = i;
    }

    @Override // com.google.common.collect.v, com.google.common.collect.t
    final int a(Object[] objArr, int i) {
        System.arraycopy(this.f32008b, 0, objArr, i, this.f32009c);
        return i + this.f32009c;
    }

    @Override // com.google.common.collect.t
    final Object[] b() {
        return this.f32008b;
    }

    @Override // com.google.common.collect.t
    final int c() {
        return 0;
    }

    @Override // com.google.common.collect.t
    final int d() {
        return this.f32009c;
    }

    @Override // com.google.common.collect.t
    final boolean f() {
        return false;
    }

    @Override // java.util.List
    public final E get(int i) {
        m.a(i, this.f32009c);
        return (E) this.f32008b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f32009c;
    }
}
