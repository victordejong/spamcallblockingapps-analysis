package com.google.common.collect;
/* renamed from: com.google.common.collect.aq */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/aq.class */
public final class C15477aq<E> extends AbstractC15566z<E> {

    /* renamed from: a */
    static final C15477aq<Object> f55749a = new C15477aq<>(new Object[0], 0, null, 0, 0);

    /* renamed from: b */
    final transient Object[] f55750b;

    /* renamed from: c */
    final transient Object[] f55751c;

    /* renamed from: d */
    private final transient int f55752d;

    /* renamed from: e */
    private final transient int f55753e;

    /* renamed from: f */
    private final transient int f55754f;

    public C15477aq(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f55750b = objArr;
        this.f55751c = objArr2;
        this.f55752d = i2;
        this.f55753e = i;
        this.f55754f = i3;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: a */
    public final int mo8667a(Object[] objArr, int i) {
        System.arraycopy(this.f55750b, 0, objArr, i, this.f55754f);
        return i + this.f55754f;
    }

    @Override // com.google.common.collect.AbstractC15566z, com.google.common.collect.AbstractC15545t
    /* renamed from: a */
    public final AbstractC15493ay<E> iterator() {
        return mo8656e().listIterator(0);
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: b */
    public final Object[] mo8712b() {
        return this.f55750b;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: c */
    public final int mo8711c() {
        return 0;
    }

    @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Object[] objArr = this.f55751c;
        if (obj == null || objArr == null) {
            return false;
        }
        int m8731a = C15544s.m8731a(obj);
        while (true) {
            int i = m8731a & this.f55752d;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            m8731a = i + 1;
        }
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: d */
    final int mo8710d() {
        return this.f55754f;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: f */
    public final boolean mo8666f() {
        return false;
    }

    @Override // com.google.common.collect.AbstractC15566z
    /* renamed from: g */
    final boolean mo8655g() {
        return true;
    }

    @Override // com.google.common.collect.AbstractC15566z
    /* renamed from: h */
    final AbstractC15549v<E> mo8654h() {
        return AbstractC15549v.m8721b(this.f55750b, this.f55754f);
    }

    @Override // com.google.common.collect.AbstractC15566z, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f55753e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f55754f;
    }
}
