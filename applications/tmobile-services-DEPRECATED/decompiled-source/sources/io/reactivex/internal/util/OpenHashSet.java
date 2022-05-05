package io.reactivex.internal.util;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/OpenHashSet.class */
public final class OpenHashSet<T> {

    /* renamed from: a */
    final float f19430a;

    /* renamed from: b */
    int f19431b;

    /* renamed from: c */
    int f19432c;

    /* renamed from: d */
    int f19433d;

    /* renamed from: e */
    T[] f19434e;

    public OpenHashSet() {
        this(16, 0.75f);
    }

    public OpenHashSet(int i) {
        this(i, 0.75f);
    }

    public OpenHashSet(int i, float f) {
        this.f19430a = f;
        int a = Pow2.m3413a(i);
        this.f19431b = a - 1;
        this.f19433d = (int) (f * a);
        this.f19434e = (T[]) new Object[a];
    }

    /* renamed from: c */
    static int m3418c(int i) {
        int i2 = i * (-1640531527);
        return i2 ^ (i2 >>> 16);
    }

    /* renamed from: a */
    public boolean m3420a(T t) {
        T t2;
        T[] tArr = this.f19434e;
        int i = this.f19431b;
        int c = m3418c(t.hashCode()) & i;
        T t3 = tArr[c];
        int i2 = c;
        if (t3 != null) {
            if (t3.equals(t)) {
                return false;
            }
            do {
                c = (c + 1) & i;
                t2 = tArr[c];
                if (t2 == null) {
                    i2 = c;
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[i2] = t;
        int i3 = this.f19432c + 1;
        this.f19432c = i3;
        if (i3 < this.f19433d) {
            return true;
        }
        m3417d();
        return true;
    }

    /* renamed from: b */
    public Object[] m3419b() {
        return this.f19434e;
    }

    /* renamed from: d */
    void m3417d() {
        int i;
        T[] tArr = this.f19434e;
        int length = tArr.length;
        int i2 = length << 1;
        int i3 = i2 - 1;
        T[] tArr2 = (T[]) new Object[i2];
        for (int i4 = this.f19432c; i4 != 0; i4--) {
            do {
                length--;
            } while (tArr[length] == null);
            int c = m3418c(tArr[length].hashCode()) & i3;
            int i5 = c;
            if (tArr2[c] != null) {
                int i6 = c;
                do {
                    i = (i6 + 1) & i3;
                    i6 = i;
                } while (tArr2[i] != null);
                i5 = i;
            }
            tArr2[i5] = tArr[length];
        }
        this.f19431b = i3;
        this.f19433d = (int) (i2 * this.f19430a);
        this.f19434e = tArr2;
    }

    /* renamed from: e */
    public boolean m3416e(T t) {
        int i;
        T t2;
        T[] tArr = this.f19434e;
        int i2 = this.f19431b;
        int c = m3418c(t.hashCode()) & i2;
        T t3 = tArr[c];
        if (t3 == null) {
            return false;
        }
        int i3 = c;
        if (t3.equals(t)) {
            return m3415f(c, tArr, i2);
        }
        do {
            i = (i3 + 1) & i2;
            t2 = tArr[i];
            if (t2 == null) {
                return false;
            }
            i3 = i;
        } while (!t2.equals(t));
        return m3415f(i, tArr, i2);
    }

    /* renamed from: f */
    boolean m3415f(int i, T[] tArr, int i2) {
        int i3;
        T t;
        this.f19432c--;
        while (true) {
            int i4 = i + 1;
            while (true) {
                i3 = i4 & i2;
                t = tArr[i3];
                if (t == null) {
                    tArr[i] = null;
                    return true;
                }
                int c = m3418c(t.hashCode()) & i2;
                if (i > i3) {
                    if (i >= c && c > i3) {
                        break;
                    }
                    i4 = i3 + 1;
                } else if (i < c && c <= i3) {
                    i4 = i3 + 1;
                }
            }
            tArr[i] = t;
            i = i3;
        }
    }

    /* renamed from: g */
    public int m3414g() {
        return this.f19432c;
    }
}
