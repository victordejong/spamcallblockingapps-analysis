package com.google.common.collect;

import com.google.common.base.C15391m;
import java.util.NoSuchElementException;
/* renamed from: com.google.common.collect.aw */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/aw.class */
public final class C15491aw<E> extends AbstractC15566z<E> {

    /* renamed from: a */
    final transient E f55767a;

    /* renamed from: b */
    private transient int f55768b;

    public C15491aw(E e) {
        this.f55767a = (E) C15391m.m8946a(e);
    }

    public C15491aw(E e, int i) {
        this.f55767a = e;
        this.f55768b = i;
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: a */
    public final int mo8667a(Object[] objArr, int i) {
        objArr[i] = this.f55767a;
        return i + 1;
    }

    @Override // com.google.common.collect.AbstractC15566z, com.google.common.collect.AbstractC15545t
    /* renamed from: a */
    public final AbstractC15493ay<E> iterator() {
        final E e = this.f55767a;
        return (AbstractC15493ay<E>) new AbstractC15493ay<T>() { // from class: com.google.common.collect.ab.1

            /* renamed from: a */
            boolean f55654a;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return !this.f55654a;
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
            @Override // java.util.Iterator
            public final T next() {
                if (!this.f55654a) {
                    this.f55654a = true;
                    return e;
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // com.google.common.collect.AbstractC15545t, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f55767a.equals(obj);
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: f */
    public final boolean mo8666f() {
        return false;
    }

    @Override // com.google.common.collect.AbstractC15566z
    /* renamed from: g */
    final boolean mo8655g() {
        return this.f55768b != 0;
    }

    @Override // com.google.common.collect.AbstractC15566z
    /* renamed from: h */
    final AbstractC15549v<E> mo8654h() {
        return AbstractC15549v.m8728a(this.f55767a);
    }

    @Override // com.google.common.collect.AbstractC15566z, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f55768b;
        int i2 = i;
        if (i == 0) {
            i2 = this.f55767a.hashCode();
            this.f55768b = i2;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f55767a.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }
}
