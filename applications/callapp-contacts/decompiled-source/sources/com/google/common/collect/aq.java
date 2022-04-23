package com.google.common.collect;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/aq.class */
public final class aq<E> extends z<E> {

    /* renamed from: a  reason: collision with root package name */
    static final aq<Object> f32023a = new aq<>(new Object[0], 0, null, 0, 0);

    /* renamed from: b  reason: collision with root package name */
    final transient Object[] f32024b;

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f32025c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f32026d;
    private final transient int e;
    private final transient int f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f32024b = objArr;
        this.f32025c = objArr2;
        this.f32026d = i2;
        this.e = i;
        this.f = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t
    public final int a(Object[] objArr, int i) {
        System.arraycopy(this.f32024b, 0, objArr, i, this.f);
        return i + this.f;
    }

    @Override // com.google.common.collect.z, com.google.common.collect.t
    /* renamed from: a */
    public final ay<E> iterator() {
        return e().listIterator(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t
    public final Object[] b() {
        return this.f32024b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t
    public final int c() {
        return 0;
    }

    @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Object[] objArr = this.f32025c;
        if (obj == null || objArr == null) {
            return false;
        }
        int a2 = s.a(obj);
        while (true) {
            int i = a2 & this.f32026d;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a2 = i + 1;
        }
    }

    @Override // com.google.common.collect.t
    final int d() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t
    public final boolean f() {
        return false;
    }

    @Override // com.google.common.collect.z
    final boolean g() {
        return true;
    }

    @Override // com.google.common.collect.z
    final v<E> h() {
        return v.b(this.f32024b, this.f);
    }

    @Override // com.google.common.collect.z, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f;
    }
}
