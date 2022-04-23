package com.google.common.b;

import com.google.common.base.m;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes4-dex2jar.jar:com/google/common/b/b.class */
public final class b extends c {

    /* loaded from: classes4-dex2jar.jar:com/google/common/b/b$a.class */
    static final class a extends AbstractList<Integer> implements Serializable, RandomAccess {

        /* renamed from: a  reason: collision with root package name */
        final int[] f31905a;

        /* renamed from: b  reason: collision with root package name */
        final int f31906b;

        /* renamed from: c  reason: collision with root package name */
        final int f31907c;

        a(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        a(int[] iArr, int i, int i2) {
            this.f31905a = iArr;
            this.f31906b = i;
            this.f31907c = i2;
        }

        final int[] a() {
            return Arrays.copyOfRange(this.f31905a, this.f31906b, this.f31907c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return (obj instanceof Integer) && b.a(this.f31905a, ((Integer) obj).intValue(), this.f31906b, this.f31907c) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return super.equals(obj);
            }
            a aVar = (a) obj;
            int size = size();
            if (aVar.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.f31905a[this.f31906b + i] != aVar.f31905a[aVar.f31906b + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public final /* synthetic */ Object get(int i) {
            m.a(i, size());
            return Integer.valueOf(this.f31905a[this.f31906b + i]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            int i = 1;
            for (int i2 = this.f31906b; i2 < this.f31907c; i2++) {
                i = (i * 31) + this.f31905a[i2];
            }
            return i;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            int a2;
            if (!(obj instanceof Integer) || (a2 = b.a(this.f31905a, ((Integer) obj).intValue(), this.f31906b, this.f31907c)) < 0) {
                return -1;
            }
            return a2 - this.f31906b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            if (!(obj instanceof Integer)) {
                return -1;
            }
            int[] iArr = this.f31905a;
            int intValue = ((Integer) obj).intValue();
            int i = this.f31906b;
            int i2 = this.f31907c - 1;
            while (true) {
                if (i2 < i) {
                    i2 = -1;
                    break;
                } else if (iArr[i2] == intValue) {
                    break;
                } else {
                    i2--;
                }
            }
            if (i2 >= 0) {
                return i2 - this.f31906b;
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final /* synthetic */ Object set(int i, Object obj) {
            m.a(i, size());
            int[] iArr = this.f31905a;
            int i2 = this.f31906b;
            int i3 = iArr[i2 + i];
            iArr[i2 + i] = ((Integer) m.a((Integer) obj)).intValue();
            return Integer.valueOf(i3);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f31907c - this.f31906b;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List<Integer> subList(int i, int i2) {
            m.a(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            int[] iArr = this.f31905a;
            int i3 = this.f31906b;
            return new a(iArr, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            sb.append(this.f31905a[this.f31906b]);
            int i = this.f31906b;
            while (true) {
                i++;
                if (i < this.f31907c) {
                    sb.append(", ");
                    sb.append(this.f31905a[i]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }
    }

    private b() {
    }

    public static int a(int i, int i2) {
        m.a(i2 <= 1073741823, "min (%s) must be less than or equal to max (%s)", i2, 1073741823);
        return Math.min(Math.max(i, i2), 1073741823);
    }

    public static int a(long j) {
        int i = (int) j;
        m.a(((long) i) == j, "Out of range: %s", j);
        return i;
    }

    static /* synthetic */ int a(int[] iArr, int i, int i2, int i3) {
        while (i2 < i3) {
            if (iArr[i2] == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int[] a(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).a();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = ((Number) m.a(array[i])).intValue();
        }
        return iArr;
    }
}
