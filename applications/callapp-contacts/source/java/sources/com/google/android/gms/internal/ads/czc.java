package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czc.class */
public abstract class czc<E> extends cyt<E> implements Set<E> {

    /* renamed from: a */
    private transient cyz<E> f46785a;

    /* renamed from: a */
    public static int m17028a(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max >= 751619276) {
            if (max >= 1073741824) {
                z = false;
            }
            cyg.m17057a(z, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        while (true) {
            int i2 = highestOneBit << 1;
            if (i2 * 0.7d >= max) {
                return i2;
            }
            highestOneBit = i2;
        }
    }

    /* renamed from: a */
    public static <E> czc<E> m17025a(E e) {
        return new czt(e);
    }

    @SafeVarargs
    /* renamed from: a */
    public static <E> czc<E> m17024a(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        cyg.m17057a(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return m17021b(length, objArr);
    }

    /* renamed from: b */
    public static <E> czc<E> m17021b(int i, Object... objArr) {
        int i2;
        int i3;
        while (true) {
            int i4 = i;
            if (i4 != 0) {
                if (i4 == 1) {
                    return m17025a(objArr[0]);
                }
                int m17028a = m17028a(i4);
                Object[] objArr2 = new Object[m17028a];
                int i5 = m17028a - 1;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                while (true) {
                    i = i8;
                    if (i6 >= i4) {
                        break;
                    }
                    Object m17012a = czi.m17012a(objArr[i6], i6);
                    int hashCode = m17012a.hashCode();
                    int m17039a = cyu.m17039a(hashCode);
                    while (true) {
                        int i9 = m17039a & i5;
                        Object obj = objArr2[i9];
                        if (obj == null) {
                            objArr[i] = m17012a;
                            objArr2[i9] = m17012a;
                            i2 = i7 + hashCode;
                            i3 = i + 1;
                            break;
                        }
                        i2 = i7;
                        i3 = i;
                        if (!obj.equals(m17012a)) {
                            m17039a++;
                        }
                    }
                    i6++;
                    i7 = i2;
                    i8 = i3;
                }
                Arrays.fill(objArr, i, i4, (Object) null);
                if (i == 1) {
                    return new czt(objArr[0], i7);
                }
                if (m17028a(i) >= m17028a / 2) {
                    Object[] objArr3 = objArr;
                    if (m17022b(i, objArr.length)) {
                        objArr3 = Arrays.copyOf(objArr, i);
                    }
                    return new czr(objArr3, i7, objArr2, i5, i);
                }
            } else {
                return czr.f46814a;
            }
        }
    }

    /* renamed from: b */
    public static <E> czf<E> m17023b(int i) {
        cys.m17041a(i, "expectedSize");
        return new czf<>(i);
    }

    /* renamed from: b */
    public static boolean m17022b(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: e */
    public cyz<E> mo17004e() {
        cyz<E> cyzVar = this.f46785a;
        cyz<E> cyzVar2 = cyzVar;
        if (cyzVar == null) {
            cyzVar2 = mo16993h();
            this.f46785a = cyzVar2;
        }
        return cyzVar2;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof czc) && mo16994g() && ((czc) obj).mo16994g() && hashCode() != obj.hashCode()) {
            return false;
        }
        return czq.m17002a(this, obj);
    }

    /* renamed from: g */
    boolean mo16994g() {
        return false;
    }

    /* renamed from: h */
    cyz<E> mo16993h() {
        return cyz.m17033b(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return czq.m17003a(this);
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }
}
