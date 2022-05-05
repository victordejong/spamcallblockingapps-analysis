package com.google.a.b;

import com.google.a.a.d;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/a/b/ad.class */
final class ad<E> extends o<E> {

    /* renamed from: a  reason: collision with root package name */
    final transient E f3683a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f3684b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(E e) {
        this.f3683a = (E) d.a(e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.a.b.k
    public final boolean a() {
        return false;
    }

    @Override // com.google.a.b.o, com.google.a.b.k
    public final ae<E> b() {
        return q.a(this.f3683a);
    }

    @Override // com.google.a.b.o
    final boolean c() {
        return this.f3684b != 0;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.f3683a.equals(obj);
    }

    @Override // com.google.a.b.o, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (obj instanceof Set) {
                Set set = (Set) obj;
                if (set.size() != 1 || !this.f3683a.equals(set.iterator().next())) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.google.a.b.o, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f3684b;
        int i2 = i;
        if (i == 0) {
            i2 = this.f3683a.hashCode();
            this.f3684b = i2;
        }
        return i2;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // com.google.a.b.o, com.google.a.b.k, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return q.a(this.f3683a);
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return new Object[]{this.f3683a};
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.a.b.k, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        if (tArr.length == 0) {
            tArr2 = (T[]) u.a(tArr, 1);
        } else {
            tArr2 = tArr;
            if (tArr.length > 1) {
                tArr[1] = null;
                tArr2 = tArr;
            }
        }
        tArr2[0] = this.f3683a;
        return tArr2;
    }

    @Override // com.google.a.b.k
    public final String toString() {
        String obj = this.f3683a.toString();
        return new StringBuilder(obj.length() + 2).append('[').append(obj).append(']').toString();
    }
}
