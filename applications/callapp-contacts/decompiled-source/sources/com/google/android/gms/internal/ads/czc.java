package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czc.class */
public abstract class czc<E> extends cyt<E> implements Set<E> {

    /* renamed from: a  reason: collision with root package name */
    private transient cyz<E> f26590a;

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
            cyg.a(z, "collection too large");
            return 1073741824;
        }
    }

    public static <E> czc<E> a(E e) {
        return new czt(e);
    }

    @SafeVarargs
    public static <E> czc<E> a(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        cyg.a(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return b(length, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> czc<E> b(int i, Object... objArr) {
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
                Object a3 = czi.a(objArr[i4], i4);
                int hashCode = a3.hashCode();
                int a4 = cyu.a(hashCode);
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
                return new czt(objArr[0], i3);
            }
            if (a(i) >= a2 / 2) {
                Object[] objArr3 = objArr;
                if (b(i, objArr.length)) {
                    objArr3 = Arrays.copyOf(objArr, i);
                }
                return new czr(objArr3, i3, objArr2, i2, i);
            }
        }
        return czr.f26618a;
    }

    public static <E> czf<E> b(int i) {
        cys.a(i, "expectedSize");
        return new czf<>(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // com.google.android.gms.internal.ads.cyt
    public cyz<E> e() {
        cyz<E> cyzVar = this.f26590a;
        cyz<E> cyzVar2 = cyzVar;
        if (cyzVar == null) {
            cyzVar2 = h();
            this.f26590a = cyzVar2;
        }
        return cyzVar2;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof czc) || !g() || !((czc) obj).g() || hashCode() == obj.hashCode()) {
            return czq.a(this, obj);
        }
        return false;
    }

    boolean g() {
        return false;
    }

    cyz<E> h() {
        return cyz.b(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return czq.a(this);
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }
}
