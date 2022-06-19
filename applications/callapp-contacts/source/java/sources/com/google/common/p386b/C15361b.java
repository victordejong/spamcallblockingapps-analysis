package com.google.common.p386b;

import com.google.common.base.C15391m;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.common.b.b */
/* loaded from: classes4-dex2jar.jar:com/google/common/b/b.class */
public final class C15361b extends AbstractC15363c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.b.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/b/b$a.class */
    public static final class C15362a extends AbstractList<Integer> implements Serializable, RandomAccess {

        /* renamed from: a */
        final int[] f55604a;

        /* renamed from: b */
        final int f55605b;

        /* renamed from: c */
        final int f55606c;

        C15362a(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        C15362a(int[] iArr, int i, int i2) {
            this.f55604a = iArr;
            this.f55605b = i;
            this.f55606c = i2;
        }

        /* renamed from: a */
        final int[] m8977a() {
            return Arrays.copyOfRange(this.f55604a, this.f55605b, this.f55606c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return (obj instanceof Integer) && C15361b.m8978a(this.f55604a, ((Integer) obj).intValue(), this.f55605b, this.f55606c) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C15362a)) {
                return super.equals(obj);
            }
            C15362a c15362a = (C15362a) obj;
            int size = size();
            if (c15362a.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.f55604a[this.f55605b + i] != c15362a.f55604a[c15362a.f55605b + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public final /* synthetic */ Object get(int i) {
            C15391m.m8949a(i, size());
            return Integer.valueOf(this.f55604a[this.f55605b + i]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            int i = 1;
            for (int i2 = this.f55605b; i2 < this.f55606c; i2++) {
                i = (i * 31) + this.f55604a[i2];
            }
            return i;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            int m8978a;
            if (!(obj instanceof Integer) || (m8978a = C15361b.m8978a(this.f55604a, ((Integer) obj).intValue(), this.f55605b, this.f55606c)) < 0) {
                return -1;
            }
            return m8978a - this.f55605b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                int[] iArr = this.f55604a;
                int intValue = ((Integer) obj).intValue();
                int i = this.f55605b;
                int i2 = this.f55606c - 1;
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
                if (i2 < 0) {
                    return -1;
                }
                return i2 - this.f55605b;
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final /* synthetic */ Object set(int i, Object obj) {
            C15391m.m8949a(i, size());
            int[] iArr = this.f55604a;
            int i2 = this.f55605b;
            int i3 = iArr[i2 + i];
            iArr[i2 + i] = ((Integer) C15391m.m8946a((Integer) obj)).intValue();
            return Integer.valueOf(i3);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f55606c - this.f55605b;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List<Integer> subList(int i, int i2) {
            C15391m.m8948a(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            int[] iArr = this.f55604a;
            int i3 = this.f55605b;
            return new C15362a(iArr, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            sb.append(this.f55604a[this.f55605b]);
            int i = this.f55605b;
            while (true) {
                i++;
                if (i >= this.f55606c) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append(this.f55604a[i]);
            }
        }
    }

    private C15361b() {
    }

    /* renamed from: a */
    public static int m8981a(int i, int i2) {
        C15391m.m8939a(i2 <= 1073741823, "min (%s) must be less than or equal to max (%s)", i2, 1073741823);
        return Math.min(Math.max(i, i2), 1073741823);
    }

    /* renamed from: a */
    public static int m8980a(long j) {
        int i = (int) j;
        C15391m.m8938a(((long) i) == j, "Out of range: %s", j);
        return i;
    }

    /* renamed from: a */
    static /* synthetic */ int m8978a(int[] iArr, int i, int i2, int i3) {
        while (i2 < i3) {
            if (iArr[i2] == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* renamed from: a */
    public static int[] m8979a(Collection<? extends Number> collection) {
        if (collection instanceof C15362a) {
            return ((C15362a) collection).m8977a();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = ((Number) C15391m.m8946a(array[i])).intValue();
        }
        return iArr;
    }
}
