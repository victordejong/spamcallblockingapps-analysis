package com.google.common.primitives;

import com.google.common.base.Converter;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/Shorts.class */
public final class Shorts {

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/Shorts$LexicographicalComparator.class */
    public enum LexicographicalComparator implements Comparator<short[]> {
        INSTANCE;

        public int compare(short[] sArr, short[] sArr2) {
            int min = Math.min(sArr.length, sArr2.length);
            for (int i = 0; i < min; i++) {
                int a = Shorts.m7795a(sArr[i], sArr2[i]);
                if (a != 0) {
                    return a;
                }
            }
            return sArr.length - sArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Shorts.lexicographicalComparator()";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/Shorts$ShortArrayAsList.class */
    public static class ShortArrayAsList extends AbstractList<Short> implements RandomAccess, Serializable {
        public static final long serialVersionUID = 0;
        public final short[] array;
        public final int end;
        public final int start;

        public ShortArrayAsList(short[] sArr) {
            this(sArr, 0, sArr.length);
        }

        public ShortArrayAsList(short[] sArr, int i, int i2) {
            this.array = sArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Short) && Shorts.m7792c(this.array, ((Short) obj).shortValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ShortArrayAsList)) {
                return super.equals(obj);
            }
            ShortArrayAsList shortArrayAsList = (ShortArrayAsList) obj;
            int size = size();
            if (shortArrayAsList.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.array[this.start + i] != shortArrayAsList.array[shortArrayAsList.start + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Short get(int i) {
            C4933n.m24798a(i, size());
            return Short.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i = 1;
            for (int i2 = this.start; i2 < this.end; i2++) {
                short s = this.array[i2];
                Shorts.m7796a(s);
                i = (i * 31) + s;
            }
            return i;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int c;
            if (!(obj instanceof Short) || (c = Shorts.m7792c(this.array, ((Short) obj).shortValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return c - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int d;
            if (!(obj instanceof Short) || (d = Shorts.m7791d(this.array, ((Short) obj).shortValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return d - this.start;
        }

        public Short set(int i, Short sh) {
            C4933n.m24798a(i, size());
            short[] sArr = this.array;
            int i2 = this.start;
            short s = sArr[i2 + i];
            C4933n.m24795a(sh);
            sArr[i2 + i] = sh.shortValue();
            return Short.valueOf(s);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Short> subList(int i, int i2) {
            C4933n.m24778b(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            short[] sArr = this.array;
            int i3 = this.start;
            return new ShortArrayAsList(sArr, i + i3, i3 + i2);
        }

        public short[] toShortArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 6);
            sb.append('[');
            sb.append((int) this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i < this.end) {
                    sb.append(", ");
                    sb.append((int) this.array[i]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/Shorts$ShortConverter.class */
    public static final class ShortConverter extends Converter<String, Short> implements Serializable {
        public static final ShortConverter INSTANCE = new ShortConverter();
        public static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        public String doBackward(Short sh) {
            return sh.toString();
        }

        public Short doForward(String str) {
            return Short.decode(str);
        }

        public String toString() {
            return "Shorts.stringConverter()";
        }
    }

    /* renamed from: a */
    public static int m7796a(short s) {
        return s;
    }

    /* renamed from: a */
    public static int m7795a(short s, short s2) {
        return s - s2;
    }

    /* renamed from: c */
    public static int m7792c(short[] sArr, short s, int i, int i2) {
        while (i < i2) {
            if (sArr[i] == s) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: d */
    public static int m7791d(short[] sArr, short s, int i, int i2) {
        while (true) {
            i2--;
            if (i2 < i) {
                return -1;
            }
            if (sArr[i2] == s) {
                return i2;
            }
        }
    }
}
