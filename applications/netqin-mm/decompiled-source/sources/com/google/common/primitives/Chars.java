package com.google.common.primitives;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/Chars.class */
public final class Chars {

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/Chars$CharArrayAsList.class */
    public static class CharArrayAsList extends AbstractList<Character> implements RandomAccess, Serializable {
        public static final long serialVersionUID = 0;
        public final char[] array;
        public final int end;
        public final int start;

        public CharArrayAsList(char[] cArr) {
            this(cArr, 0, cArr.length);
        }

        public CharArrayAsList(char[] cArr, int i, int i2) {
            this.array = cArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Character) && Chars.m7872c(this.array, ((Character) obj).charValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CharArrayAsList)) {
                return super.equals(obj);
            }
            CharArrayAsList charArrayAsList = (CharArrayAsList) obj;
            int size = size();
            if (charArrayAsList.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.array[this.start + i] != charArrayAsList.array[charArrayAsList.start + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Character get(int i) {
            C4933n.m24798a(i, size());
            return Character.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i = 1;
            for (int i2 = this.start; i2 < this.end; i2++) {
                char c = this.array[i2];
                Chars.m7876a(c);
                i = (i * 31) + c;
            }
            return i;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int c;
            if (!(obj instanceof Character) || (c = Chars.m7872c(this.array, ((Character) obj).charValue(), this.start, this.end)) < 0) {
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
            if (!(obj instanceof Character) || (d = Chars.m7871d(this.array, ((Character) obj).charValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return d - this.start;
        }

        public Character set(int i, Character ch) {
            C4933n.m24798a(i, size());
            char[] cArr = this.array;
            int i2 = this.start;
            char c = cArr[i2 + i];
            C4933n.m24795a(ch);
            cArr[i2 + i] = ch.charValue();
            return Character.valueOf(c);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Character> subList(int i, int i2) {
            C4933n.m24778b(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            char[] cArr = this.array;
            int i3 = this.start;
            return new CharArrayAsList(cArr, i + i3, i3 + i2);
        }

        public char[] toCharArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 3);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/Chars$LexicographicalComparator.class */
    public enum LexicographicalComparator implements Comparator<char[]> {
        INSTANCE;

        public int compare(char[] cArr, char[] cArr2) {
            int min = Math.min(cArr.length, cArr2.length);
            for (int i = 0; i < min; i++) {
                int a = Chars.m7875a(cArr[i], cArr2[i]);
                if (a != 0) {
                    return a;
                }
            }
            return cArr.length - cArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Chars.lexicographicalComparator()";
        }
    }

    /* renamed from: a */
    public static int m7876a(char c) {
        return c;
    }

    /* renamed from: a */
    public static int m7875a(char c, char c2) {
        return c - c2;
    }

    /* renamed from: c */
    public static int m7872c(char[] cArr, char c, int i, int i2) {
        while (i < i2) {
            if (cArr[i] == c) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: d */
    public static int m7871d(char[] cArr, char c, int i, int i2) {
        while (true) {
            i2--;
            if (i2 < i) {
                return -1;
            }
            if (cArr[i2] == c) {
                return i2;
            }
        }
    }
}
