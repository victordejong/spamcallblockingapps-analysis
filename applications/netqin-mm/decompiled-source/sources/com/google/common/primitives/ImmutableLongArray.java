package com.google.common.primitives;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/ImmutableLongArray.class */
public final class ImmutableLongArray implements Serializable {
    public static final ImmutableLongArray EMPTY = new ImmutableLongArray(new long[0]);
    public final long[] array;
    public final int end;
    public final transient int start;

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/ImmutableLongArray$AsList.class */
    public static class AsList extends AbstractList<Long> implements RandomAccess, Serializable {
        public final ImmutableLongArray parent;

        public AsList(ImmutableLongArray immutableLongArray) {
            this.parent = immutableLongArray;
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
                if (!(obj2 instanceof Long) || this.parent.array[i] != ((Long) obj2).longValue()) {
                    return false;
                }
                i++;
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Long get(int i) {
            return Long.valueOf(this.parent.get(i));
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.parent.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            return obj instanceof Long ? this.parent.indexOf(((Long) obj).longValue()) : -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            return obj instanceof Long ? this.parent.lastIndexOf(((Long) obj).longValue()) : -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parent.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i, int i2) {
            return this.parent.subArray(i, i2).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.parent.toString();
        }
    }

    /* renamed from: com.google.common.primitives.ImmutableLongArray$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/ImmutableLongArray$b.class */
    public static final class C7713b {

        /* renamed from: a */
        public long[] f30880a;

        /* renamed from: b */
        public int f30881b = 0;

        public C7713b(int i) {
            this.f30880a = new long[i];
        }

        /* renamed from: a */
        public static int m7819a(int i, int i2) {
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
        public C7713b m7818a(long j) {
            m7820a(1);
            long[] jArr = this.f30880a;
            int i = this.f30881b;
            jArr[i] = j;
            this.f30881b = i + 1;
            return this;
        }

        /* renamed from: a */
        public C7713b m7817a(Iterable<Long> iterable) {
            if (iterable instanceof Collection) {
                m7816a((Collection) iterable);
                return this;
            }
            for (Long l : iterable) {
                m7818a(l.longValue());
            }
            return this;
        }

        /* renamed from: a */
        public C7713b m7816a(Collection<Long> collection) {
            m7820a(collection.size());
            for (Long l : collection) {
                long[] jArr = this.f30880a;
                int i = this.f30881b;
                this.f30881b = i + 1;
                jArr[i] = l.longValue();
            }
            return this;
        }

        /* renamed from: a */
        public ImmutableLongArray m7821a() {
            return this.f30881b == 0 ? ImmutableLongArray.EMPTY : new ImmutableLongArray(this.f30880a, 0, this.f30881b);
        }

        /* renamed from: a */
        public final void m7820a(int i) {
            int i2 = this.f30881b + i;
            long[] jArr = this.f30880a;
            if (i2 > jArr.length) {
                long[] jArr2 = new long[m7819a(jArr.length, i2)];
                System.arraycopy(this.f30880a, 0, jArr2, 0, this.f30881b);
                this.f30880a = jArr2;
            }
        }
    }

    public ImmutableLongArray(long[] jArr) {
        this(jArr, 0, jArr.length);
    }

    public ImmutableLongArray(long[] jArr, int i, int i2) {
        this.array = jArr;
        this.start = i;
        this.end = i2;
    }

    public static C7713b builder() {
        return new C7713b(10);
    }

    public static C7713b builder(int i) {
        C4933n.m24787a(i >= 0, "Invalid initialCapacity: %s", i);
        return new C7713b(i);
    }

    public static ImmutableLongArray copyOf(Iterable<Long> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection<Long>) iterable);
        }
        C7713b builder = builder();
        builder.m7817a(iterable);
        return builder.m7821a();
    }

    public static ImmutableLongArray copyOf(Collection<Long> collection) {
        return collection.isEmpty() ? EMPTY : new ImmutableLongArray(Longs.m7801a(collection));
    }

    public static ImmutableLongArray copyOf(long[] jArr) {
        return jArr.length == 0 ? EMPTY : new ImmutableLongArray(Arrays.copyOf(jArr, jArr.length));
    }

    private boolean isPartialView() {
        return this.start > 0 || this.end < this.array.length;
    }

    /* renamed from: of */
    public static ImmutableLongArray m7829of() {
        return EMPTY;
    }

    /* renamed from: of */
    public static ImmutableLongArray m7828of(long j) {
        return new ImmutableLongArray(new long[]{j});
    }

    /* renamed from: of */
    public static ImmutableLongArray m7827of(long j, long j2) {
        return new ImmutableLongArray(new long[]{j, j2});
    }

    /* renamed from: of */
    public static ImmutableLongArray m7826of(long j, long j2, long j3) {
        return new ImmutableLongArray(new long[]{j, j2, j3});
    }

    /* renamed from: of */
    public static ImmutableLongArray m7825of(long j, long j2, long j3, long j4) {
        return new ImmutableLongArray(new long[]{j, j2, j3, j4});
    }

    /* renamed from: of */
    public static ImmutableLongArray m7824of(long j, long j2, long j3, long j4, long j5) {
        return new ImmutableLongArray(new long[]{j, j2, j3, j4, j5});
    }

    /* renamed from: of */
    public static ImmutableLongArray m7823of(long j, long j2, long j3, long j4, long j5, long j6) {
        return new ImmutableLongArray(new long[]{j, j2, j3, j4, j5, j6});
    }

    /* renamed from: of */
    public static ImmutableLongArray m7822of(long j, long... jArr) {
        C4933n.m24790a(jArr.length <= 2147483646, "the total number of elements must fit in an int");
        long[] jArr2 = new long[jArr.length + 1];
        jArr2[0] = j;
        System.arraycopy(jArr, 0, jArr2, 1, jArr.length);
        return new ImmutableLongArray(jArr2);
    }

    public List<Long> asList() {
        return new AsList();
    }

    public boolean contains(long j) {
        return indexOf(j) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableLongArray)) {
            return false;
        }
        ImmutableLongArray immutableLongArray = (ImmutableLongArray) obj;
        if (length() != immutableLongArray.length()) {
            return false;
        }
        for (int i = 0; i < length(); i++) {
            if (get(i) != immutableLongArray.get(i)) {
                return false;
            }
        }
        return true;
    }

    public long get(int i) {
        C4933n.m24798a(i, length());
        return this.array[this.start + i];
    }

    public int hashCode() {
        int i = 1;
        for (int i2 = this.start; i2 < this.end; i2++) {
            i = (i * 31) + Longs.m7803a(this.array[i2]);
        }
        return i;
    }

    public int indexOf(long j) {
        for (int i = this.start; i < this.end; i++) {
            if (this.array[i] == j) {
                return i - this.start;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.start;
    }

    public int lastIndexOf(long j) {
        int i = this.end - 1;
        while (true) {
            int i2 = this.start;
            if (i < i2) {
                return -1;
            }
            if (this.array[i] == j) {
                return i - i2;
            }
            i--;
        }
    }

    public int length() {
        return this.end - this.start;
    }

    public Object readResolve() {
        return isEmpty() ? EMPTY : this;
    }

    public ImmutableLongArray subArray(int i, int i2) {
        ImmutableLongArray immutableLongArray;
        C4933n.m24778b(i, i2, length());
        if (i == i2) {
            immutableLongArray = EMPTY;
        } else {
            long[] jArr = this.array;
            int i3 = this.start;
            immutableLongArray = new ImmutableLongArray(jArr, i + i3, i3 + i2);
        }
        return immutableLongArray;
    }

    public long[] toArray() {
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

    public ImmutableLongArray trimmed() {
        return isPartialView() ? new ImmutableLongArray(toArray()) : this;
    }

    public Object writeReplace() {
        return trimmed();
    }
}
