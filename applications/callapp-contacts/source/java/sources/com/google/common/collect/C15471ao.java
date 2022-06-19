package com.google.common.collect;

import com.google.common.base.C15391m;
/* renamed from: com.google.common.collect.ao */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ao.class */
public final class C15471ao<E> extends AbstractC15549v<E> {

    /* renamed from: a */
    static final AbstractC15549v<Object> f55732a = new C15471ao(new Object[0], 0);

    /* renamed from: b */
    final transient Object[] f55733b;

    /* renamed from: c */
    private final transient int f55734c;

    public C15471ao(Object[] objArr, int i) {
        this.f55733b = objArr;
        this.f55734c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractC15549v, com.google.common.collect.AbstractC15545t
    /* renamed from: a */
    public final int mo8667a(Object[] objArr, int i) {
        System.arraycopy(this.f55733b, 0, objArr, i, this.f55734c);
        return i + this.f55734c;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: b */
    public final Object[] mo8712b() {
        return this.f55733b;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: c */
    public final int mo8711c() {
        return 0;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: d */
    final int mo8710d() {
        return this.f55734c;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: f */
    public final boolean mo8666f() {
        return false;
    }

    @Override // java.util.List
    public final E get(int i) {
        C15391m.m8949a(i, this.f55734c);
        return (E) this.f55733b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f55734c;
    }
}
