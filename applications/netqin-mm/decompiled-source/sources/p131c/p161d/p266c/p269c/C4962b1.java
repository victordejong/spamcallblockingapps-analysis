package p131c.p161d.p266c.p269c;

import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p272f.C5058c;
/* renamed from: c.d.c.c.b1 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/b1.class */
public final class C4962b1<T> {

    /* renamed from: a */
    public final int f17592a;

    /* renamed from: b */
    public final Comparator<? super T> f17593b;

    /* renamed from: c */
    public final T[] f17594c;

    /* renamed from: d */
    public int f17595d;

    /* renamed from: e */
    public T f17596e;

    public C4962b1(Comparator<? super T> comparator, int i) {
        C4933n.m24794a(comparator, "comparator");
        this.f17593b = comparator;
        this.f17592a = i;
        C4933n.m24787a(i >= 0, "k must be nonnegative, was %s", i);
        this.f17594c = (T[]) new Object[i * 2];
        this.f17595d = 0;
        this.f17596e = null;
    }

    /* renamed from: a */
    public static <T> C4962b1<T> m24734a(int i, Comparator<? super T> comparator) {
        return new C4962b1<>(comparator, i);
    }

    /* renamed from: a */
    public final int m24735a(int i, int i2, int i3) {
        T[] tArr = this.f17594c;
        T t = tArr[i3];
        tArr[i3] = tArr[i2];
        int i4 = i;
        for (int i5 = i; i5 < i2; i5++) {
            i4 = i4;
            if (this.f17593b.compare((Object) this.f17594c[i5], t) < 0) {
                m24736a(i4, i5);
                i4++;
            }
        }
        T[] tArr2 = this.f17594c;
        tArr2[i2] = tArr2[i4];
        tArr2[i4] = t;
        return i4;
    }

    /* renamed from: a */
    public List<T> m24737a() {
        Arrays.sort(this.f17594c, 0, this.f17595d, this.f17593b);
        int i = this.f17595d;
        int i2 = this.f17592a;
        if (i > i2) {
            T[] tArr = this.f17594c;
            Arrays.fill(tArr, i2, tArr.length, (Object) null);
            int i3 = this.f17592a;
            this.f17595d = i3;
            this.f17596e = this.f17594c[i3 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(this.f17594c, this.f17595d)));
    }

    /* renamed from: a */
    public final void m24736a(int i, int i2) {
        T[] tArr = this.f17594c;
        T t = tArr[i];
        tArr[i] = tArr[i2];
        tArr[i2] = t;
    }

    /* renamed from: a */
    public void m24733a(T t) {
        int i = this.f17592a;
        if (i != 0) {
            int i2 = this.f17595d;
            if (i2 == 0) {
                this.f17594c[0] = t;
                this.f17596e = t;
                this.f17595d = 1;
            } else if (i2 < i) {
                T[] tArr = this.f17594c;
                this.f17595d = i2 + 1;
                tArr[i2] = t;
                if (this.f17593b.compare(t, (T) this.f17596e) > 0) {
                    this.f17596e = t;
                }
            } else if (this.f17593b.compare(t, (T) this.f17596e) < 0) {
                T[] tArr2 = this.f17594c;
                int i3 = this.f17595d;
                int i4 = i3 + 1;
                this.f17595d = i4;
                tArr2[i3] = t;
                if (i4 == this.f17592a * 2) {
                    m24731b();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m24732a(Iterator<? extends T> it) {
        while (it.hasNext()) {
            m24733a((C4962b1<T>) it.next());
        }
    }

    /* renamed from: b */
    public final void m24731b() {
        int i;
        int i2;
        int i3;
        int i4 = (this.f17592a * 2) - 1;
        int a = C5058c.m24586a(i4 + 0, RoundingMode.CEILING);
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i = i7;
            if (i5 >= i4) {
                break;
            }
            int a2 = m24735a(i5, i4, ((i5 + i4) + 1) >>> 1);
            int i8 = this.f17592a;
            if (a2 <= i8) {
                i = i7;
                if (a2 >= i8) {
                    break;
                }
                i2 = Math.max(a2, i5 + 1);
                i = a2;
                i3 = i4;
            } else {
                i3 = a2 - 1;
                i2 = i5;
                i = i7;
            }
            int i9 = i6 + 1;
            i4 = i3;
            i5 = i2;
            i6 = i9;
            i7 = i;
            if (i9 >= a * 3) {
                Arrays.sort(this.f17594c, i2, i3, this.f17593b);
                break;
            }
        }
        this.f17595d = this.f17592a;
        this.f17596e = this.f17594c[i];
        while (true) {
            i++;
            if (i >= this.f17592a) {
                return;
            }
            if (this.f17593b.compare((Object) this.f17594c[i], (T) this.f17596e) > 0) {
                this.f17596e = this.f17594c[i];
            }
        }
    }
}
