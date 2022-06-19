package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
import p120i0.C3062g;
/* renamed from: androidx.recyclerview.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n.class */
public final class RunnableC0636n implements Runnable {

    /* renamed from: e */
    public static final ThreadLocal<RunnableC0636n> f2505e = new ThreadLocal<>();

    /* renamed from: f */
    public static Comparator<C0639c> f2506f = new C0637a();

    /* renamed from: b */
    public long f2508b;

    /* renamed from: c */
    public long f2509c;

    /* renamed from: a */
    public ArrayList<RecyclerView> f2507a = new ArrayList<>();

    /* renamed from: d */
    public ArrayList<C0639c> f2510d = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$a.class */
    public static final class C0637a implements Comparator<C0639c> {
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
            if (r0 != false) goto L19;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compare(androidx.recyclerview.widget.RunnableC0636n.C0639c r4, androidx.recyclerview.widget.RunnableC0636n.C0639c r5) {
            /*
                r3 = this;
                r0 = r4
                androidx.recyclerview.widget.n$c r0 = (androidx.recyclerview.widget.RunnableC0636n.C0639c) r0
                r4 = r0
                r0 = r5
                androidx.recyclerview.widget.n$c r0 = (androidx.recyclerview.widget.RunnableC0636n.C0639c) r0
                r5 = r0
                r0 = r4
                androidx.recyclerview.widget.RecyclerView r0 = r0.f2518d
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = r6
                if (r0 != 0) goto L1f
                r0 = 1
                r9 = r0
                goto L22
            L1f:
                r0 = 0
                r9 = r0
            L22:
                r0 = r5
                androidx.recyclerview.widget.RecyclerView r0 = r0.f2518d
                if (r0 != 0) goto L2f
                r0 = 1
                r10 = r0
                goto L32
            L2f:
                r0 = 0
                r10 = r0
            L32:
                r0 = r9
                r1 = r10
                if (r0 == r1) goto L44
                r0 = r6
                if (r0 != 0) goto L5c
                r0 = r7
                r9 = r0
                goto L5f
            L44:
                r0 = r4
                boolean r0 = r0.f2515a
                r11 = r0
                r0 = r11
                r1 = r5
                boolean r1 = r1.f2515a
                if (r0 == r1) goto L62
                r0 = r7
                r9 = r0
                r0 = r11
                if (r0 == 0) goto L5f
            L5c:
                r0 = -1
                r9 = r0
            L5f:
                goto L8d
            L62:
                r0 = r5
                int r0 = r0.f2516b
                r1 = r4
                int r1 = r1.f2516b
                int r0 = r0 - r1
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L75
                goto L8d
            L75:
                r0 = r4
                int r0 = r0.f2517c
                r1 = r5
                int r1 = r1.f2517c
                int r0 = r0 - r1
                r10 = r0
                r0 = r8
                r9 = r0
                r0 = r10
                if (r0 == 0) goto L8d
                r0 = r10
                r9 = r0
            L8d:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RunnableC0636n.C0637a.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    @SuppressLint({"VisibleForTests"})
    /* renamed from: androidx.recyclerview.widget.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$b.class */
    public static class C0638b implements RecyclerView.AbstractC0573m.AbstractC0576c {

        /* renamed from: a */
        public int f2511a;

        /* renamed from: b */
        public int f2512b;

        /* renamed from: c */
        public int[] f2513c;

        /* renamed from: d */
        public int f2514d;

        /* renamed from: a */
        public void m7557a(int i, int i2) {
            if (i >= 0) {
                if (i2 < 0) {
                    throw new IllegalArgumentException("Pixel distance must be non-negative");
                }
                int i3 = this.f2514d * 2;
                int[] iArr = this.f2513c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.f2513c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i3 >= iArr.length) {
                    int[] iArr3 = new int[i3 * 2];
                    this.f2513c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.f2513c;
                iArr4[i3] = i;
                iArr4[i3 + 1] = i2;
                this.f2514d++;
                return;
            }
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }

        /* renamed from: b */
        public void m7556b(RecyclerView recyclerView, boolean z) {
            this.f2514d = 0;
            int[] iArr = this.f2513c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.AbstractC0573m abstractC0573m = recyclerView.f2197m;
            if (recyclerView.f2195l == null || abstractC0573m == null || !abstractC0573m.f2263i) {
                return;
            }
            if (z) {
                if (!recyclerView.f2179d.m7642g()) {
                    abstractC0573m.mo7788j(recyclerView.f2195l.mo705a(), this);
                }
            } else if (!recyclerView.m7905M()) {
                abstractC0573m.mo7696i(this.f2511a, this.f2512b, recyclerView.f2186g0, this);
            }
            int i = this.f2514d;
            if (i <= abstractC0573m.f2264j) {
                return;
            }
            abstractC0573m.f2264j = i;
            abstractC0573m.f2265k = z;
            recyclerView.f2175b.m7756l();
        }

        /* renamed from: c */
        public boolean m7555c(int i) {
            if (this.f2513c != null) {
                int i2 = this.f2514d;
                for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                    if (this.f2513c[i3] == i) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.n$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$c.class */
    public static class C0639c {

        /* renamed from: a */
        public boolean f2515a;

        /* renamed from: b */
        public int f2516b;

        /* renamed from: c */
        public int f2517c;

        /* renamed from: d */
        public RecyclerView f2518d;

        /* renamed from: e */
        public int f2519e;
    }

    /* renamed from: a */
    public void m7560a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f2508b == 0) {
            this.f2508b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        C0638b c0638b = recyclerView.f2184f0;
        c0638b.f2511a = i;
        c0638b.f2512b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public void m7559b(long j) {
        int i;
        C0639c c0639c;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        int i2;
        C0639c c0639c2;
        int size = this.f2507a.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= size) {
                break;
            }
            RecyclerView recyclerView3 = this.f2507a.get(i3);
            int i5 = i;
            if (recyclerView3.getWindowVisibility() == 0) {
                recyclerView3.f2184f0.m7556b(recyclerView3, false);
                i5 = i + recyclerView3.f2184f0.f2514d;
            }
            i3++;
            i4 = i5;
        }
        this.f2510d.ensureCapacity(i);
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 >= size) {
                break;
            }
            RecyclerView recyclerView4 = this.f2507a.get(i6);
            if (recyclerView4.getWindowVisibility() != 0) {
                i2 = i8;
            } else {
                C0638b c0638b = recyclerView4.f2184f0;
                int abs = Math.abs(c0638b.f2512b) + Math.abs(c0638b.f2511a);
                int i9 = 0;
                while (true) {
                    i2 = i8;
                    if (i9 < c0638b.f2514d * 2) {
                        if (i8 >= this.f2510d.size()) {
                            c0639c2 = new C0639c();
                            this.f2510d.add(c0639c2);
                        } else {
                            c0639c2 = this.f2510d.get(i8);
                        }
                        int[] iArr = c0638b.f2513c;
                        int i10 = iArr[i9 + 1];
                        c0639c2.f2515a = i10 <= abs;
                        c0639c2.f2516b = abs;
                        c0639c2.f2517c = i10;
                        c0639c2.f2518d = recyclerView4;
                        c0639c2.f2519e = iArr[i9];
                        i8++;
                        i9 += 2;
                    }
                }
            }
            i6++;
            i7 = i2;
        }
        Collections.sort(this.f2510d, f2506f);
        for (int i11 = 0; i11 < this.f2510d.size() && (recyclerView = (c0639c = this.f2510d.get(i11)).f2518d) != null; i11++) {
            RecyclerView.AbstractC0558a0 m7558c = m7558c(recyclerView, c0639c.f2519e, c0639c.f2515a ? (char) 65535 : j);
            if (m7558c != null && m7558c.f2225b != null && m7558c.m7845j() && !m7558c.m7844k() && (recyclerView2 = m7558c.f2225b.get()) != null) {
                if (recyclerView2.f2152B && recyclerView2.f2181e.m7610h() != 0) {
                    recyclerView2.m7892Z();
                }
                C0638b c0638b2 = recyclerView2.f2184f0;
                c0638b2.m7556b(recyclerView2, true);
                if (c0638b2.f2514d != 0) {
                    try {
                        int i12 = C3062g.f10396a;
                        Trace.beginSection("RV Nested Prefetch");
                        RecyclerView.C0592x c0592x = recyclerView2.f2186g0;
                        RecyclerView.AbstractC0562e abstractC0562e = recyclerView2.f2195l;
                        c0592x.f2314d = 1;
                        c0592x.f2315e = abstractC0562e.mo705a();
                        c0592x.f2317g = false;
                        c0592x.f2318h = false;
                        c0592x.f2319i = false;
                        for (int i13 = 0; i13 < c0638b2.f2514d * 2; i13 += 2) {
                            m7558c(recyclerView2, c0638b2.f2513c[i13], j);
                        }
                        Trace.endSection();
                    } catch (Throwable th) {
                        int i14 = C3062g.f10396a;
                        Trace.endSection();
                        throw th;
                    }
                } else {
                    continue;
                }
            }
            c0639c.f2515a = false;
            c0639c.f2516b = 0;
            c0639c.f2517c = 0;
            c0639c.f2518d = null;
            c0639c.f2519e = 0;
        }
    }

    /* renamed from: c */
    public final RecyclerView.AbstractC0558a0 m7558c(RecyclerView recyclerView, int i, long j) {
        boolean z;
        int m7610h = recyclerView.f2181e.m7610h();
        int i2 = 0;
        while (true) {
            if (i2 >= m7610h) {
                z = false;
                break;
            }
            RecyclerView.AbstractC0558a0 m7907K = RecyclerView.m7907K(recyclerView.f2181e.m7611g(i2));
            if (m7907K.f2226c == i && !m7907K.m7844k()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return null;
        }
        RecyclerView.C0584s c0584s = recyclerView.f2175b;
        try {
            recyclerView.m7899S();
            RecyclerView.AbstractC0558a0 m7758j = c0584s.m7758j(i, false, j);
            if (m7758j != null) {
                if (!m7758j.m7845j() || m7758j.m7844k()) {
                    c0584s.m7767a(m7758j, false);
                } else {
                    c0584s.m7761g(m7758j.f2224a);
                }
            }
            return m7758j;
        } finally {
            recyclerView.m7898T(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    @Override // java.lang.Runnable
    public void run() {
        char c;
        try {
            int i = C3062g.f10396a;
            Trace.beginSection("RV Prefetch");
            if (this.f2507a.isEmpty()) {
                this.f2508b = 0L;
                Trace.endSection();
                return;
            }
            int size = this.f2507a.size();
            int i2 = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i2 >= size) {
                    break;
                }
                RecyclerView recyclerView = this.f2507a.get(i2);
                char c2 = c;
                if (recyclerView.getWindowVisibility() == 0) {
                    c2 = Math.max(recyclerView.getDrawingTime(), (long) c);
                }
                i2++;
                r0 = c2;
            }
            if (c == 0) {
                this.f2508b = 0L;
                Trace.endSection();
                return;
            }
            m7559b(TimeUnit.MILLISECONDS.toNanos(c) + this.f2509c);
            this.f2508b = 0L;
            Trace.endSection();
        } catch (Throwable th) {
            this.f2508b = 0L;
            int i3 = C3062g.f10396a;
            Trace.endSection();
            throw th;
        }
    }
}
