package androidx.recyclerview.widget;

import d.h.i.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.recyclerview.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e.class */
final class RunnableC0424e implements Runnable {

    /* renamed from: f */
    static final ThreadLocal<RunnableC0424e> f2381f = new ThreadLocal<>();

    /* renamed from: g */
    static Comparator<C0426c> f2382g = new C0425a();

    /* renamed from: c */
    long f2384c;

    /* renamed from: d */
    long f2385d;

    /* renamed from: b */
    ArrayList<RecyclerView> f2383b = new ArrayList<>();

    /* renamed from: e */
    private ArrayList<C0426c> f2386e = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$a.class */
    class C0425a implements Comparator<C0426c> {
        C0425a() {
        }

        /* renamed from: a */
        public int compare(C0426c c0426c, C0426c c0426c2) {
            RecyclerView recyclerView = c0426c.f2390d;
            if ((recyclerView == null) != (c0426c2.f2390d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z = c0426c.f2387a;
            if (z != c0426c2.f2387a) {
                int i = 1;
                if (z) {
                    i = -1;
                }
                return i;
            }
            int i2 = c0426c2.f2388b - c0426c.f2388b;
            if (i2 != 0) {
                return i2;
            }
            int i3 = c0426c.f2389c - c0426c2.f2389c;
            if (i3 == 0) {
                return 0;
            }
            return i3;
        }
    }

    /* renamed from: androidx.recyclerview.widget.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$c.class */
    public static class C0426c {

        /* renamed from: a */
        public boolean f2387a;

        /* renamed from: b */
        public int f2388b;

        /* renamed from: c */
        public int f2389c;

        /* renamed from: d */
        public RecyclerView f2390d;

        /* renamed from: e */
        public int f2391e;

        C0426c() {
        }

        /* renamed from: a */
        public void m12391a() {
            this.f2387a = false;
            this.f2388b = 0;
            this.f2389c = 0;
            this.f2390d = null;
            this.f2391e = 0;
        }
    }

    RunnableC0424e() {
    }

    /* renamed from: b */
    private void m12401b() {
        int i;
        int i2;
        C0426c c0426c;
        int size = this.f2383b.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= size) {
                break;
            }
            RecyclerView recyclerView = this.f2383b.get(i3);
            int i5 = i;
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.h0.c(recyclerView, false);
                i5 = i + recyclerView.h0.d;
            }
            i3++;
            i4 = i5;
        }
        this.f2386e.ensureCapacity(i);
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 >= size) {
                Collections.sort(this.f2386e, f2382g);
                return;
            }
            RecyclerView recyclerView2 = this.f2383b.get(i6);
            if (recyclerView2.getWindowVisibility() != 0) {
                i2 = i8;
            } else {
                b bVar = recyclerView2.h0;
                int abs = Math.abs(bVar.a) + Math.abs(bVar.b);
                int i9 = 0;
                while (true) {
                    i2 = i8;
                    if (i9 < bVar.d * 2) {
                        if (i8 >= this.f2386e.size()) {
                            c0426c = new C0426c();
                            this.f2386e.add(c0426c);
                        } else {
                            c0426c = this.f2386e.get(i8);
                        }
                        int[] iArr = bVar.c;
                        int i10 = iArr[i9 + 1];
                        c0426c.f2387a = i10 <= abs;
                        c0426c.f2388b = abs;
                        c0426c.f2389c = i10;
                        c0426c.f2390d = recyclerView2;
                        c0426c.f2391e = iArr[i9];
                        i8++;
                        i9 += 2;
                    }
                }
            }
            i6++;
            i7 = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private void m12400c(C0426c c0426c, long j) {
        RecyclerView$a0 m12394i = m12394i(c0426c.f2390d, c0426c.f2391e, c0426c.f2387a ? (char) 65535 : j);
        if (m12394i == null || m12394i.f2196b == null || !m12394i.m12783s() || m12394i.m12782t()) {
            return;
        }
        m12395h(m12394i.f2196b.get(), j);
    }

    /* renamed from: d */
    private void m12399d(long j) {
        for (int i = 0; i < this.f2386e.size(); i++) {
            C0426c c0426c = this.f2386e.get(i);
            if (c0426c.f2390d == null) {
                return;
            }
            m12400c(c0426c, j);
            c0426c.m12391a();
        }
    }

    /* renamed from: e */
    static boolean m12398e(RecyclerView recyclerView, int i) {
        int m12432j = recyclerView.f.m12432j();
        for (int i2 = 0; i2 < m12432j; i2++) {
            RecyclerView$a0 g0 = RecyclerView.g0(recyclerView.f.m12433i(i2));
            if (g0.f2197c == i && !g0.m12782t()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    private void m12395h(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.E && recyclerView.f.m12432j() != 0) {
            recyclerView.V0();
        }
        b bVar = recyclerView.h0;
        bVar.c(recyclerView, true);
        if (bVar.d == 0) {
            return;
        }
        try {
            b.a("RV Nested Prefetch");
            recyclerView.i0.m12507f(recyclerView.l);
            for (int i = 0; i < bVar.d * 2; i += 2) {
                m12394i(recyclerView, bVar.c[i], j);
            }
        } finally {
            b.b();
        }
    }

    /* renamed from: i */
    private RecyclerView$a0 m12394i(RecyclerView recyclerView, int i, long j) {
        if (m12398e(recyclerView, i)) {
            return null;
        }
        RecyclerView$t recyclerView$t = recyclerView.c;
        try {
            recyclerView.H0();
            RecyclerView$a0 m12568I = recyclerView$t.m12568I(i, false, j);
            if (m12568I != null) {
                if (!m12568I.m12783s() || m12568I.m12782t()) {
                    recyclerView$t.m12563a(m12568I, false);
                } else {
                    recyclerView$t.m12575B(m12568I.f2195a);
                }
            }
            return m12568I;
        } finally {
            recyclerView.J0(false);
        }
    }

    /* renamed from: a */
    public void m12402a(RecyclerView recyclerView) {
        this.f2383b.add(recyclerView);
    }

    /* renamed from: f */
    public void m12397f(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f2384c == 0) {
            this.f2384c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.h0.e(i, i2);
    }

    /* renamed from: g */
    void m12396g(long j) {
        m12401b();
        m12399d(j);
    }

    /* renamed from: j */
    public void m12393j(RecyclerView recyclerView) {
        this.f2383b.remove(recyclerView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // java.lang.Runnable
    public void run() {
        char c;
        try {
            b.a("RV Prefetch");
            if (!this.f2383b.isEmpty()) {
                int size = this.f2383b.size();
                int i = 0;
                ?? r0 = 0;
                while (true) {
                    c = r0;
                    if (i >= size) {
                        break;
                    }
                    RecyclerView recyclerView = this.f2383b.get(i);
                    char c2 = c;
                    if (recyclerView.getWindowVisibility() == 0) {
                        c2 = Math.max(recyclerView.getDrawingTime(), (long) c);
                    }
                    i++;
                    r0 = c2;
                }
                if (c != 0) {
                    m12396g(TimeUnit.MILLISECONDS.toNanos(c) + this.f2385d);
                    this.f2384c = 0L;
                    b.b();
                    return;
                }
            }
            this.f2384c = 0L;
            b.b();
        } catch (Throwable th) {
            this.f2384c = 0L;
            b.b();
            throw th;
        }
    }
}
