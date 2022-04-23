package com.google.common.collect;

import com.google.common.base.m;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/aw.class */
public final class aw<E> extends z<E> {

    /* renamed from: a  reason: collision with root package name */
    final transient E f32039a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f32040b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(E e) {
        this.f32039a = (E) m.a(e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(E e, int i) {
        this.f32039a = e;
        this.f32040b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t
    public final int a(Object[] objArr, int i) {
        objArr[i] = this.f32039a;
        return i + 1;
    }

    @Override // com.google.common.collect.z, com.google.common.collect.t
    /* renamed from: a */
    public final ay<E> iterator() {
        final E e = this.f32039a;
        return (ay<E>) new ay<T>() { // from class: com.google.common.collect.ab.1

            /* renamed from: a */
            boolean f31950a;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return !this.f31950a;
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
            @Override // java.util.Iterator
            public final T next() {
                if (!this.f31950a) {
                    this.f31950a = true;
                    return e;
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // com.google.common.collect.t, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f32039a.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t
    public final boolean f() {
        return false;
    }

    @Override // com.google.common.collect.z
    final boolean g() {
        return this.f32040b != 0;
    }

    @Override // com.google.common.collect.z
    final v<E> h() {
        return v.a(this.f32039a);
    }

    @Override // com.google.common.collect.z, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f32040b;
        int i2 = i;
        if (i == 0) {
            i2 = this.f32039a.hashCode();
            this.f32040b = i2;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.f32039a.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }
}
