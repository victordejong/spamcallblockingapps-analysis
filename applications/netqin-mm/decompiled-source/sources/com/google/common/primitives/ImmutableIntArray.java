package com.google.common.primitives;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/ImmutableIntArray.class */
public final class ImmutableIntArray implements Serializable {
    public static final ImmutableIntArray EMPTY = new ImmutableIntArray(new int[0]);
    public final int[] array;
    public final int end;
    public final transient int start;

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/ImmutableIntArray$AsList.class */
    public static class AsList extends AbstractList<Integer> implements RandomAccess, Serializable {
        public final ImmutableIntArray parent;

        public AsList(ImmutableIntArray immutableIntArray) {
            this.parent = immutableIntArray;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj instanceof AsList) {
                return this.parent.equals(((AsList) obj).parent);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i = this.parent.start;
            for (Object obj2 : list) {
                if (!(obj2 instanceof Integer) || this.parent.array[i] != ((Integer) obj2).intValue()) {
                    return false;
                }
                i++;
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer get(int i) {
            return Integer.valueOf(this.parent.get(i));
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.parent.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            return obj instanceof Integer ? this.parent.indexOf(((Integer) obj).intValue()) : -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            return obj instanceof Integer ? this.parent.lastIndexOf(((Integer) obj).intValue()) : -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parent.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i, int i2) {
            return this.parent.subArray(i, i2).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.parent.toString();
        }
    }

    /* renamed from: com.google.common.primitives.ImmutableIntArray$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/ImmutableIntArray$b.class */
    public static final class C7711b {

        /* renamed from: a */
        public int[] f30878a;

        /* renamed from: b */
        public int f30879b = 0;

        public C7711b(int i) {
            this.f30878a = new int[i];
        }

        /* renamed from: a */
        public static int m7833a(int i, int i2) {
            if (i2 >= 0) {
                int i3 = i + (i >> 1) + 1;
                int i4 = i3;
                if (i3 < i2) {
                    i4 = Integer.highestOneBit(i2 - 1) << 1;
                }
                int i5 = i4;
                if (i4 < 0) {
                    i5 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                }
                return i5;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }

        /* renamed from: a */
        public C7711b m7834a(int i) {
            m7830b(1);
            int[] iArr = this.f30878a;
            int i2 = this.f30879b;
            iArr[i2] = i;
            this.f30879b = i2 + 1;
            return this;
        }

        /* renamed from: a */
        public C7711b m7832a(Iterable<Integer> iterable) {
            if (iterable instanceof Collection) {
                m7831a((Collection) iterable);
                return this;
            }
            for (Integer num : iterable) {
                m7834a(num.intValue());
            }
            return this;
        }

        /* renamed from: a */
        public C7711b m7831a(Collection<Integer> collection) {
            m7830b(collection.size());
            for (Integer num : collection) {
                int[] iArr = this.f30878a;
                int i = this.f30879b;
                this.f30879b = i + 1;
                iArr[i] = num.intValue();
            }
            return this;
        }

        /* renamed from: a */
        public ImmutableIntArray m7835a() {
            return this.f30879b == 0 ? ImmutableIntArray.EMPTY : new ImmutableIntArray(this.f30878a, 0, this.f30879b);
        }

        /* renamed from: b */
        public final void m7830b(int i) {
            int i2 = this.f30879b + i;
            int[] iArr = this.f30878a;
            if (i2 > iArr.length) {
                int[] iArr2 = new int[m7833a(iArr.length, i2)];
                System.arraycopy(this.f30878a, 0, iArr2, 0, this.f30879b);
                this.f30878a = iArr2;
            }
        }
    }

    public ImmutableIntArray(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    public ImmutableIntArray(int[] iArr, int i, int i2) {
        this.array = iArr;
        this.start = i;
        this.end = i2;
    }

    public static C7711b builder() {
        return new C7711b(10);
    }

    public static C7711b builder(int i) {
        C4933n.m24787a(i >= 0, "Invalid initialCapacity: %s", i);
        return new C7711b(i);
    }

    public static ImmutableIntArray copyOf(Iterable<Integer> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Integer>) iterable);
        }
        C7711b builder = builder();
        builder.m7832a(iterable);
        return builder.m7835a();
    }

    public static ImmutableIntArray copyOf(Collection<Integer> collection) {
        return collection.isEmpty() ? EMPTY : new ImmutableIntArray(Ints.m7811a(collection));
    }

    public static ImmutableIntArray copyOf(int[] iArr) {
        return iArr.length == 0 ? EMPTY : new ImmutableIntArray(Arrays.copyOf(iArr, iArr.length));
    }

    private boolean isPartialView() {
        return this.start > 0 || this.end < this.array.length;
    }

    /* renamed from: of */
    public static ImmutableIntArray m7843of() {
        return EMPTY;
    }

    /* renamed from: of */
    public static ImmutableIntArray m7842of(int i) {
        return new ImmutableIntArray(new int[]{i});
    }

    /* renamed from: of */
    public static ImmutableIntArray m7841of(int i, int i2) {
        return new ImmutableIntArray(new int[]{i, i2});
    }

    /* renamed from: of */
    public static ImmutableIntArray m7840of(int i, int i2, int i3) {
        return new ImmutableIntArray(new int[]{i, i2, i3});
    }

    /* renamed from: of */
    public static ImmutableIntArray m7839of(int i, int i2, int i3, int i4) {
        return new ImmutableIntArray(new int[]{i, i2, i3, i4});
    }

    /* renamed from: of */
    public static ImmutableIntArray m7838of(int i, int i2, int i3, int i4, int i5) {
        return new ImmutableIntArray(new int[]{i, i2, i3, i4, i5});
    }

    /* renamed from: of */
    public static ImmutableIntArray m7837of(int i, int i2, int i3, int i4, int i5, int i6) {
        return new ImmutableIntArray(new int[]{i, i2, i3, i4, i5, i6});
    }

    /* renamed from: of */
    public static ImmutableIntArray m7836of(int i, int... iArr) {
        C4933n.m24790a(iArr.length <= 2147483646, "the total number of elements must fit in an int");
        int[] iArr2 = new int[iArr.length + 1];
        iArr2[0] = i;
        System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
        return new ImmutableIntArray(iArr2);
    }

    public List<Integer> asList() {
        return new AsList();
    }

    public boolean contains(int i) {
        return indexOf(i) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableIntArray)) {
            return false;
        }
        ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
        if (length() != immutableIntArray.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (get(i) != immutableIntArray.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int get(int i) {
        C4933n.m24798a(i, length());
        return this.array[this.start + i];
    }

    public int hashCode() {
        int i = 1;
        for (int i2 = this.start; i2 < this.end; i2++) {
            int i3 = this.array[i2];
            Ints.m7814a(i3);
            i = (i * 31) + i3;
        }
        return i;
    }

    public int indexOf(int i) {
        for (int i2 = this.start; i2 < this.end; i2++) {
            if (this.array[i2] == i) {
                return i2 - this.start;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.start;
    }

    public int lastIndexOf(int i) {
        int i2 = this.end - 1;
        while (true) {
            int i3 = this.start;
            if (i2 < i3) {
                return -1;
            }
            if (this.array[i2] == i) {
                return i2 - i3;
            }
            i2--;
        }
    }

    public int length() {
        return this.end - this.start;
    }

    public Object readResolve() {
        return isEmpty() ? EMPTY : this;
    }

    public ImmutableIntArray subArray(int i, int i2) {
        ImmutableIntArray immutableIntArray;
        C4933n.m24778b(i, i2, length());
        if (i == i2) {
            immutableIntArray = EMPTY;
        } else {
            int[] iArr = this.array;
            int i3 = this.start;
            immutableIntArray = new ImmutableIntArray(iArr, i + i3, i3 + i2);
        }
        return immutableIntArray;
    }

    public int[] toArray() {
        return Arrays.copyOfRange(this.array, this.start, this.end);
    }

    public String toString() {
        if (isEmpty()) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(length() * 5);
        sb.append('[');
        sb.append(this.array[this.start]);
        int i = this.start;
        while (true) {
            i++;
            if (i < this.end) {
                sb.append(", ");
                sb.append(this.array[i]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }

    public ImmutableIntArray trimmed() {
        return isPartialView() ? new ImmutableIntArray(toArray()) : this;
    }

    public Object writeReplace() {
        return trimmed();
    }
}
