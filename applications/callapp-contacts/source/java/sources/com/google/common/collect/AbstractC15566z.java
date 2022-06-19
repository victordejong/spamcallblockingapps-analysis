package com.google.common.collect;

import com.google.common.base.C15391m;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;
/* renamed from: com.google.common.collect.z */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/z.class */
public abstract class AbstractC15566z<E> extends AbstractC15545t<E> implements Set<E> {

    /* renamed from: a */
    private transient AbstractC15549v<E> f55885a;

    /* renamed from: com.google.common.collect.z$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/z$a.class */
    static final class C15567a implements Serializable {

        /* renamed from: a */
        final Object[] f55886a;

        C15567a(Object[] objArr) {
            this.f55886a = objArr;
        }

        final Object readResolve() {
            return AbstractC15566z.m8657a(this.f55886a);
        }
    }

    /* renamed from: a */
    public static int m8664a(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max >= 751619276) {
            if (max >= 1073741824) {
                z = false;
            }
            C15391m.m8942a(z, "collection too large");
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
    private static <E> AbstractC15566z<E> m8662a(int i, Object... objArr) {
        int i2;
        int i3;
        while (true) {
            int i4 = i;
            if (i4 != 0) {
                if (i4 == 1) {
                    return m8661a(objArr[0]);
                }
                int m8664a = m8664a(i4);
                Object[] objArr2 = new Object[m8664a];
                int i5 = m8664a - 1;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                while (true) {
                    i = i8;
                    if (i6 >= i4) {
                        break;
                    }
                    Object m8837a = C15469am.m8837a(objArr[i6], i6);
                    int hashCode = m8837a.hashCode();
                    int m8732a = C15544s.m8732a(hashCode);
                    while (true) {
                        int i9 = m8732a & i5;
                        Object obj = objArr2[i9];
                        if (obj == null) {
                            objArr[i] = m8837a;
                            objArr2[i9] = m8837a;
                            i2 = i7 + hashCode;
                            i3 = i + 1;
                            break;
                        }
                        i2 = i7;
                        i3 = i;
                        if (!obj.equals(m8837a)) {
                            m8732a++;
                        }
                    }
                    i6++;
                    i7 = i2;
                    i8 = i3;
                }
                Arrays.fill(objArr, i, i4, (Object) null);
                if (i == 1) {
                    return new C15491aw(objArr[0], i7);
                }
                if (m8664a(i) >= m8664a / 2) {
                    Object[] objArr3 = objArr;
                    if (m8663a(i, objArr.length)) {
                        objArr3 = Arrays.copyOf(objArr, i);
                    }
                    return new C15477aq(objArr3, i7, objArr2, i5, i);
                }
            } else {
                return C15477aq.f55749a;
            }
        }
    }

    /* renamed from: a */
    private static <E> AbstractC15566z<E> m8661a(E e) {
        return new C15491aw(e);
    }

    /* renamed from: a */
    public static <E> AbstractC15566z<E> m8660a(E e, E e2) {
        return m8662a(2, e, e2);
    }

    /* renamed from: a */
    public static <E> AbstractC15566z<E> m8659a(E e, E e2, E e3) {
        return m8662a(3, e, e2, e3);
    }

    /* renamed from: a */
    public static <E> AbstractC15566z<E> m8658a(Collection<? extends E> collection) {
        if ((collection instanceof AbstractC15566z) && !(collection instanceof SortedSet)) {
            AbstractC15566z<E> abstractC15566z = (AbstractC15566z) collection;
            if (!abstractC15566z.mo8666f()) {
                return abstractC15566z;
            }
        }
        Object[] array = collection.toArray();
        return m8662a(array.length, array);
    }

    /* renamed from: a */
    public static <E> AbstractC15566z<E> m8657a(E[] eArr) {
        int length = eArr.length;
        return length != 0 ? length != 1 ? m8662a(eArr.length, (Object[]) eArr.clone()) : m8661a(eArr[0]) : C15477aq.f55749a;
    }

    /* renamed from: a */
    private static boolean m8663a(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: a */
    public abstract AbstractC15493ay<E> iterator();

    @Override // com.google.common.collect.AbstractC15545t
    /* renamed from: e */
    public AbstractC15549v<E> mo8656e() {
        AbstractC15549v<E> abstractC15549v = this.f55885a;
        AbstractC15549v<E> abstractC15549v2 = abstractC15549v;
        if (abstractC15549v == null) {
            abstractC15549v2 = mo8654h();
            this.f55885a = abstractC15549v2;
        }
        return abstractC15549v2;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof AbstractC15566z) && mo8655g() && ((AbstractC15566z) obj).mo8655g() && hashCode() != obj.hashCode()) {
            return false;
        }
        return C15484av.m8823a(this, obj);
    }

    /* renamed from: g */
    boolean mo8655g() {
        return false;
    }

    /* renamed from: h */
    AbstractC15549v<E> mo8654h() {
        return AbstractC15549v.m8722b(toArray());
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return C15484av.m8824a(this);
    }

    @Override // com.google.common.collect.AbstractC15545t
    Object writeReplace() {
        return new C15567a(toArray());
    }
}
