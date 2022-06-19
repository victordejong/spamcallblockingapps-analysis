package p000;

import androidx.recyclerview.widget.RecyclerView$g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
/* renamed from: c00 */
/* loaded from: classes-dex2jar.jar:c00.class */
public class c00 {

    /* renamed from: a */
    public static final Comparator<C0276f> f2082a = new C0271a();

    /* renamed from: c00$a */
    /* loaded from: classes-dex2jar.jar:c00$a.class */
    public static final class C0271a implements Comparator<C0276f> {
        /* renamed from: a */
        public int compare(C0276f c0276f, C0276f c0276f2) {
            int i = c0276f.f2097a - c0276f2.f2097a;
            int i2 = i;
            if (i == 0) {
                i2 = c0276f.f2098b - c0276f2.f2098b;
            }
            return i2;
        }
    }

    /* renamed from: c00$b */
    /* loaded from: classes-dex2jar.jar:c00$b.class */
    public static abstract class AbstractC0272b {
        /* renamed from: a */
        public abstract boolean m5505a(int i, int i2);

        /* renamed from: b */
        public abstract boolean m5504b(int i, int i2);

        /* renamed from: c */
        public Object m5503c(int i, int i2) {
            return null;
        }

        /* renamed from: d */
        public abstract int m5502d();

        /* renamed from: e */
        public abstract int m5501e();
    }

    /* renamed from: c00$c */
    /* loaded from: classes-dex2jar.jar:c00$c.class */
    public static class C0273c {

        /* renamed from: a */
        public final List<C0276f> f2083a;

        /* renamed from: b */
        public final int[] f2084b;

        /* renamed from: c */
        public final int[] f2085c;

        /* renamed from: d */
        public final AbstractC0272b f2086d;

        /* renamed from: e */
        public final int f2087e;

        /* renamed from: f */
        public final int f2088f;

        /* renamed from: g */
        public final boolean f2089g;

        public C0273c(AbstractC0272b abstractC0272b, List<C0276f> list, int[] iArr, int[] iArr2, boolean z) {
            this.f2083a = list;
            this.f2084b = iArr;
            this.f2085c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f2086d = abstractC0272b;
            this.f2087e = abstractC0272b.m5501e();
            this.f2088f = abstractC0272b.m5502d();
            this.f2089g = z;
            m5500a();
            m5493h();
        }

        /* renamed from: j */
        public static C0274d m5491j(List<C0274d> list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                C0274d c0274d = list.get(size);
                if (c0274d.f2090a == i && c0274d.f2092c == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).f2091b += z ? 1 : -1;
                        size++;
                    }
                    return c0274d;
                }
                size--;
            }
            return null;
        }

        /* renamed from: a */
        public final void m5500a() {
            C0276f c0276f = this.f2083a.isEmpty() ? null : this.f2083a.get(0);
            if (c0276f != null && c0276f.f2097a == 0 && c0276f.f2098b == 0) {
                return;
            }
            C0276f c0276f2 = new C0276f();
            c0276f2.f2097a = 0;
            c0276f2.f2098b = 0;
            c0276f2.f2100d = false;
            c0276f2.f2099c = 0;
            c0276f2.f2101e = false;
            this.f2083a.add(0, c0276f2);
        }

        /* renamed from: b */
        public final void m5499b(List<C0274d> list, h00 h00Var, int i, int i2, int i3) {
            if (!this.f2089g) {
                h00Var.a(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 < 0) {
                    return;
                }
                int[] iArr = this.f2085c;
                int i4 = i3 + i2;
                int i5 = iArr[i4] & 31;
                if (i5 == 0) {
                    h00Var.a(i, 1);
                    for (C0274d c0274d : list) {
                        c0274d.f2091b++;
                    }
                } else if (i5 == 4 || i5 == 8) {
                    int i6 = iArr[i4] >> 5;
                    h00Var.d(m5491j(list, i6, true).f2091b, i);
                    if (i5 == 4) {
                        h00Var.c(i, 1, this.f2086d.m5503c(i6, i4));
                    }
                } else if (i5 != 16) {
                    throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                } else {
                    list.add(new C0274d(i4, i, false));
                }
            }
        }

        /* renamed from: c */
        public final void m5498c(List<C0274d> list, h00 h00Var, int i, int i2, int i3) {
            if (!this.f2089g) {
                h00Var.b(i, i2);
                return;
            }
            while (true) {
                i2--;
                if (i2 < 0) {
                    return;
                }
                int[] iArr = this.f2084b;
                int i4 = i3 + i2;
                int i5 = iArr[i4] & 31;
                if (i5 == 0) {
                    h00Var.b(i + i2, 1);
                    for (C0274d c0274d : list) {
                        c0274d.f2091b--;
                    }
                } else if (i5 == 4 || i5 == 8) {
                    int i6 = iArr[i4] >> 5;
                    C0274d m5491j = m5491j(list, i6, false);
                    h00Var.d(i + i2, m5491j.f2091b - 1);
                    if (i5 == 4) {
                        h00Var.c(m5491j.f2091b - 1, 1, this.f2086d.m5503c(i4, i6));
                    }
                } else if (i5 != 16) {
                    throw new IllegalStateException("unknown flag for pos " + i4 + " " + Long.toBinaryString(i5));
                } else {
                    list.add(new C0274d(i4, i + i2, true));
                }
            }
        }

        /* renamed from: d */
        public void m5497d(h00 h00Var) {
            h00 zzVar = h00Var instanceof zz ? (zz) h00Var : new zz(h00Var);
            ArrayList arrayList = new ArrayList();
            int i = this.f2087e;
            int i2 = this.f2088f;
            int size = this.f2083a.size();
            while (true) {
                size--;
                if (size < 0) {
                    zzVar.e();
                    return;
                }
                C0276f c0276f = this.f2083a.get(size);
                int i3 = c0276f.f2099c;
                int i4 = c0276f.f2097a + i3;
                int i5 = c0276f.f2098b + i3;
                if (i4 < i) {
                    m5498c(arrayList, zzVar, i4, i - i4, i4);
                }
                if (i5 < i2) {
                    m5499b(arrayList, zzVar, i4, i2 - i5, i5);
                }
                for (int i6 = i3 - 1; i6 >= 0; i6--) {
                    int[] iArr = this.f2084b;
                    int i7 = c0276f.f2097a;
                    if ((iArr[i7 + i6] & 31) == 2) {
                        zzVar.c(i7 + i6, 1, this.f2086d.m5503c(i7 + i6, c0276f.f2098b + i6));
                    }
                }
                i = c0276f.f2097a;
                i2 = c0276f.f2098b;
            }
        }

        /* renamed from: e */
        public void m5496e(RecyclerView$g recyclerView$g) {
            m5497d(new yz(recyclerView$g));
        }

        /* renamed from: f */
        public final void m5495f(int i, int i2, int i3) {
            if (this.f2084b[i - 1] != 0) {
                return;
            }
            m5494g(i, i2, i3, false);
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00f6, code lost:
            continue;
         */
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m5494g(int r6, int r7, int r8, boolean r9) {
            /*
                Method dump skipped, instructions count: 267
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.c00.C0273c.m5494g(int, int, int, boolean):boolean");
        }

        /* renamed from: h */
        public final void m5493h() {
            int i;
            int i2 = this.f2087e;
            int i3 = this.f2088f;
            for (int size = this.f2083a.size() - 1; size >= 0; size--) {
                C0276f c0276f = this.f2083a.get(size);
                int i4 = c0276f.f2097a;
                int i5 = c0276f.f2099c;
                int i6 = c0276f.f2098b;
                if (this.f2089g) {
                    while (true) {
                        if (i2 > i4 + i5) {
                            m5495f(i2, i3, size);
                            i2--;
                        }
                    }
                    for (i = i3; i > i6 + i5; i--) {
                        m5492i(i2, i, size);
                    }
                }
                for (int i7 = 0; i7 < c0276f.f2099c; i7++) {
                    int i8 = c0276f.f2097a + i7;
                    int i9 = c0276f.f2098b + i7;
                    int i10 = this.f2086d.m5505a(i8, i9) ? 1 : 2;
                    this.f2084b[i8] = (i9 << 5) | i10;
                    this.f2085c[i9] = (i8 << 5) | i10;
                }
                i2 = c0276f.f2097a;
                i3 = c0276f.f2098b;
            }
        }

        /* renamed from: i */
        public final void m5492i(int i, int i2, int i3) {
            if (this.f2085c[i2 - 1] != 0) {
                return;
            }
            m5494g(i, i2, i3, true);
        }
    }

    /* renamed from: c00$d */
    /* loaded from: classes-dex2jar.jar:c00$d.class */
    public static class C0274d {

        /* renamed from: a */
        public int f2090a;

        /* renamed from: b */
        public int f2091b;

        /* renamed from: c */
        public boolean f2092c;

        public C0274d(int i, int i2, boolean z) {
            this.f2090a = i;
            this.f2091b = i2;
            this.f2092c = z;
        }
    }

    /* renamed from: c00$e */
    /* loaded from: classes-dex2jar.jar:c00$e.class */
    public static class C0275e {

        /* renamed from: a */
        public int f2093a;

        /* renamed from: b */
        public int f2094b;

        /* renamed from: c */
        public int f2095c;

        /* renamed from: d */
        public int f2096d;

        public C0275e() {
        }

        public C0275e(int i, int i2, int i3, int i4) {
            this.f2093a = i;
            this.f2094b = i2;
            this.f2095c = i3;
            this.f2096d = i4;
        }
    }

    /* renamed from: c00$f */
    /* loaded from: classes-dex2jar.jar:c00$f.class */
    public static class C0276f {

        /* renamed from: a */
        public int f2097a;

        /* renamed from: b */
        public int f2098b;

        /* renamed from: c */
        public int f2099c;

        /* renamed from: d */
        public boolean f2100d;

        /* renamed from: e */
        public boolean f2101e;
    }

    /* renamed from: a */
    public static C0273c m5509a(AbstractC0272b abstractC0272b) {
        return m5508b(abstractC0272b, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01a3  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p000.c00.C0273c m5508b(p000.c00.AbstractC0272b r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.c00.m5508b(c00$b, boolean):c00$c");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a1, code lost:
        if (r10[r0 - 1] < r10[r0 + 1]) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01a6, code lost:
        if (r11[r0 - 1] < r11[r0 + 1]) goto L53;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p000.c00.C0276f m5507c(p000.c00.AbstractC0272b r5, int r6, int r7, int r8, int r9, int[] r10, int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.c00.m5507c(c00$b, int, int, int, int, int[], int[], int):c00$f");
    }
}
