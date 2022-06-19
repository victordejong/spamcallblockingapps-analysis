package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpk.class */
public abstract class cpk<E> extends cpb<E> implements Set<E> {
    @NullableDecl

    /* renamed from: a */
    private transient cpc<E> f13501a;

    /* renamed from: a */
    public static int m10885a(int i) {
        int i2;
        int max = Math.max(i, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            while (true) {
                int i3 = highestOneBit << 1;
                i2 = i3;
                if (i3 * 0.7d >= max) {
                    break;
                }
                highestOneBit = i3;
            }
        } else {
            cor.m10933a(max < 1073741824, "collection too large");
            i2 = 1073741824;
        }
        return i2;
    }

    /* renamed from: a */
    public static <E> cpk<E> m10882a(E e) {
        return new cpv(e);
    }

    @SafeVarargs
    /* renamed from: a */
    public static <E> cpk<E> m10881a(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        cor.m10933a(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 6];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return m10878b(objArr.length, objArr);
    }

    /* renamed from: b */
    public static <E> cpj<E> m10880b(int i) {
        cow.m10919a(i, "expectedSize");
        return new cpj<>(i);
    }

    /* renamed from: b */
    public static <E> cpk<E> m10878b(int i, Object... objArr) {
        cpt m10882a;
        int i2;
        int i3;
        while (true) {
            int i4 = i;
            switch (i4) {
                case 0:
                    m10882a = cpt.f13518a;
                    break;
                case 1:
                    m10882a = m10882a(objArr[0]);
                    break;
                default:
                    int m10885a = m10885a(i4);
                    Object[] objArr2 = new Object[m10885a];
                    int i5 = m10885a - 1;
                    int i6 = 0;
                    i = 0;
                    int i7 = 0;
                    while (i6 < i4) {
                        Object m10876a = cpo.m10876a(objArr[i6], i6);
                        int hashCode = m10876a.hashCode();
                        int m10917a = coy.m10917a(hashCode);
                        while (true) {
                            int i8 = m10917a & i5;
                            Object obj = objArr2[i8];
                            if (obj == null) {
                                objArr[i] = m10876a;
                                objArr2[i8] = m10876a;
                                i2 = i7 + hashCode;
                                i3 = i + 1;
                            } else {
                                i2 = i7;
                                i3 = i;
                                if (!obj.equals(m10876a)) {
                                    m10917a++;
                                }
                            }
                        }
                        i6++;
                        i7 = i2;
                        i = i3;
                    }
                    Arrays.fill(objArr, i, i4, (Object) null);
                    if (i != 1) {
                        if (m10885a(i) >= m10885a / 2) {
                            if (m10879b(i, objArr.length)) {
                                objArr = Arrays.copyOf(objArr, i);
                            }
                            m10882a = new cpt(objArr, i7, objArr2, i5, i);
                            break;
                        }
                    } else {
                        m10882a = new cpv(objArr[0], i7);
                        break;
                    }
                    break;
            }
        }
        return m10882a;
    }

    /* renamed from: b */
    public static boolean m10879b(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: e */
    public cpc<E> mo10868e() {
        cpc<E> cpcVar = this.f13501a;
        cpc<E> cpcVar2 = cpcVar;
        if (cpcVar == null) {
            cpcVar2 = mo10860h();
            this.f13501a = cpcVar2;
        }
        return cpcVar2;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        return obj == this ? true : (!(obj instanceof cpk) || !mo10861g() || !((cpk) obj).mo10861g() || hashCode() == obj.hashCode()) ? cpw.m10858a(this, obj) : false;
    }

    /* renamed from: g */
    boolean mo10861g() {
        return false;
    }

    /* renamed from: h */
    cpc<E> mo10860h() {
        return cpc.m10896b(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return cpw.m10859a(this);
    }

    @Override // com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }
}
