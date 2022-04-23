package com.google.common.collect;

import com.google.common.base.m;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/z.class */
public abstract class z<E> extends t<E> implements Set<E> {

    /* renamed from: a  reason: collision with root package name */
    private transient v<E> f32145a;

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/z$a.class */
    static final class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Object[] f32146a;

        a(Object[] objArr) {
            this.f32146a = objArr;
        }

        final Object readResolve() {
            return z.a(this.f32146a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                int i2 = highestOneBit << 1;
                if (i2 * 0.7d >= max) {
                    return i2;
                }
                highestOneBit = i2;
            }
        } else {
            if (max >= 1073741824) {
                z = false;
            }
            m.a(z, "collection too large");
            return 1073741824;
        }
    }

    private static <E> z<E> a(int i, Object... objArr) {
        while (i != 0) {
            if (i == 1) {
                return a(objArr[0]);
            }
            int a2 = a(i);
            Object[] objArr2 = new Object[a2];
            int i2 = a2 - 1;
            int i3 = 0;
            i = 0;
            for (int i4 = 0; i4 < i; i4++) {
                Object a3 = am.a(objArr[i4], i4);
                int hashCode = a3.hashCode();
                int a4 = s.a(hashCode);
                while (true) {
                    int i5 = a4 & i2;
                    Object obj = objArr2[i5];
                    if (obj == null) {
                        objArr[i] = a3;
                        objArr2[i5] = a3;
                        i3 += hashCode;
                        i++;
                        break;
                    }
                    i3 = i3;
                    i = i;
                    if (!obj.equals(a3)) {
                        a4++;
                    }
                }
            }
            Arrays.fill(objArr, i, i, (Object) null);
            if (i == 1) {
                return new aw(objArr[0], i3);
            }
            if (a(i) >= a2 / 2) {
                Object[] objArr3 = objArr;
                if (a(i, objArr.length)) {
                    objArr3 = Arrays.copyOf(objArr, i);
                }
                return new aq(objArr3, i3, objArr2, i2, i);
            }
        }
        return aq.f32023a;
    }

    private static <E> z<E> a(E e) {
        return new aw(e);
    }

    public static <E> z<E> a(E e, E e2) {
        return a(2, e, e2);
    }

    public static <E> z<E> a(E e, E e2, E e3) {
        return a(3, e, e2, e3);
    }

    public static <E> z<E> a(Collection<? extends E> collection) {
        if ((collection instanceof z) && !(collection instanceof SortedSet)) {
            z<E> zVar = (z) collection;
            if (!zVar.f()) {
                return zVar;
            }
        }
        Object[] array = collection.toArray();
        return a(array.length, array);
    }

    public static <E> z<E> a(E[] eArr) {
        int length = eArr.length;
        return length != 0 ? length != 1 ? a(eArr.length, (Object[]) eArr.clone()) : a(eArr[0]) : aq.f32023a;
    }

    private static boolean a(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // com.google.common.collect.t
    /* renamed from: a */
    public abstract ay<E> iterator();

    @Override // com.google.common.collect.t
    public v<E> e() {
        v<E> vVar = this.f32145a;
        v<E> vVar2 = vVar;
        if (vVar == null) {
            vVar2 = h();
            this.f32145a = vVar2;
        }
        return vVar2;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z) || !g() || !((z) obj).g() || hashCode() == obj.hashCode()) {
            return av.a(this, obj);
        }
        return false;
    }

    boolean g() {
        return false;
    }

    v<E> h() {
        return v.b(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return av.a(this);
    }

    @Override // com.google.common.collect.t
    Object writeReplace() {
        return new a(toArray());
    }
}
