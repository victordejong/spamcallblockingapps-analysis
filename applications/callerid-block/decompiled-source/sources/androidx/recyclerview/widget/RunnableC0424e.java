package androidx.recyclerview.widget;

import d.h.i.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
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
        public int compare(C0426c cVar, C0426c cVar2) {
            RecyclerView recyclerView = cVar.f2390d;
            int i = 1;
            int i2 = 1;
            if ((recyclerView == null) != (cVar2.f2390d == null)) {
                if (recyclerView != null) {
                    i2 = -1;
                }
                return i2;
            }
            boolean z = cVar.f2387a;
            if (z != cVar2.f2387a) {
                if (z) {
                    i = -1;
                }
                return i;
            }
            int i3 = cVar2.f2388b - cVar.f2388b;
            if (i3 != 0) {
                return i3;
            }
            int i4 = cVar.f2389c - cVar2.f2389c;
            if (i4 != 0) {
                return i4;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        C0426c cVar;
        int size = this.f2383b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f2383b.get(i2);
            i = i;
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.h0.c(recyclerView, false);
                i += recyclerView.h0.d;
            }
        }
        this.f2386e.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f2383b.get(i4);
            if (recyclerView2.getWindowVisibility() != 0) {
                i3 = i3;
            } else {
                b bVar = recyclerView2.h0;
                int abs = Math.abs(bVar.a) + Math.abs(bVar.b);
                int i5 = 0;
                while (true) {
                    i3 = i3;
                    if (i5 < bVar.d * 2) {
                        if (i3 >= this.f2386e.size()) {
                            cVar = new C0426c();
                            this.f2386e.add(cVar);
                        } else {
                            cVar = this.f2386e.get(i3);
                        }
                        int[] iArr = bVar.c;
                        int i6 = iArr[i5 + 1];
                        cVar.f2387a = i6 <= abs;
                        cVar.f2388b = abs;
                        cVar.f2389c = i6;
                        cVar.f2390d = recyclerView2;
                        cVar.f2391e = iArr[i5];
                        i3++;
                        i5 += 2;
                    }
                }
            }
        }
        Collections.sort(this.f2386e, f2382g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* renamed from: c */
    private void m12400c(C0426c cVar, long j) {
        RecyclerView$a0 i = m12394i(cVar.f2390d, cVar.f2391e, cVar.f2387a ? 9223372036854775807 : j);
        if (i != null && i.f2196b != null && i.m12783s() && !i.m12782t()) {
            m12395h(i.f2196b.get(), j);
        }
    }

    /* renamed from: d */
    private void m12399d(long j) {
        for (int i = 0; i < this.f2386e.size(); i++) {
            C0426c cVar = this.f2386e.get(i);
            if (cVar.f2390d != null) {
                m12400c(cVar, j);
                cVar.m12391a();
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    static boolean m12398e(RecyclerView recyclerView, int i) {
        int j = recyclerView.f.m12432j();
        for (int i2 = 0; i2 < j; i2++) {
            RecyclerView$a0 g0 = RecyclerView.g0(recyclerView.f.m12433i(i2));
            if (g0.f2197c == i && !g0.m12782t()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    private void m12395h(RecyclerView recyclerView, long j) {
        if (recyclerView != null) {
            if (recyclerView.E && recyclerView.f.m12432j() != 0) {
                recyclerView.V0();
            }
            b bVar = recyclerView.h0;
            bVar.c(recyclerView, true);
            if (bVar.d != 0) {
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
            RecyclerView$a0 I = recyclerView$t.m12568I(i, false, j);
            if (I != null) {
                if (!I.m12783s() || I.m12782t()) {
                    recyclerView$t.m12563a(I, false);
                } else {
                    recyclerView$t.m12575B(I.f2195a);
                }
            }
            return I;
        } finally {
            recyclerView.J0(false);
        }
    }

    /* renamed from: a */
    public void m12402a(RecyclerView recyclerView) {
        this.f2383b.add(recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.concurrent.TimeUnit] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r6 = this;
            java.lang.String r0 = "RV Prefetch"
            d.h.i.b.a(r0)     // Catch: all -> 0x007f
            r0 = r6
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f2383b     // Catch: all -> 0x007f
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x007f
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001a
        L_0x0011:
            r0 = r6
            r1 = 0
            r0.f2384c = r1
            d.h.i.b.b()
            return
        L_0x001a:
            r0 = r6
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f2383b     // Catch: all -> 0x007f
            int r0 = r0.size()     // Catch: all -> 0x007f
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0027:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x005b
            r0 = r6
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f2383b     // Catch: all -> 0x007f
            r1 = r9
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x007f
            androidx.recyclerview.widget.RecyclerView r0 = (androidx.recyclerview.widget.RecyclerView) r0     // Catch: all -> 0x007f
            r12 = r0
            r0 = r10
            r13 = r0
            r0 = r12
            int r0 = r0.getWindowVisibility()     // Catch: all -> 0x007f
            if (r0 != 0) goto L_0x0051
            r0 = r12
            long r0 = r0.getDrawingTime()     // Catch: all -> 0x007f
            r1 = r10
            long r0 = java.lang.Math.max(r0, r1)     // Catch: all -> 0x007f
            r13 = r0
        L_0x0051:
            int r9 = r9 + 1
            r0 = r13
            r10 = r0
            goto L_0x0027
        L_0x005b:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0065
            goto L_0x0011
        L_0x0065:
            r0 = r6
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: all -> 0x007f
            r2 = r10
            long r1 = r1.toNanos(r2)     // Catch: all -> 0x007f
            r2 = r6
            long r2 = r2.f2385d     // Catch: all -> 0x007f
            long r1 = r1 + r2
            r0.m12396g(r1)     // Catch: all -> 0x007f
            r0 = r6
            r1 = 0
            r0.f2384c = r1
            d.h.i.b.b()
            return
        L_0x007f:
            r12 = move-exception
            r0 = r6
            r1 = 0
            r0.f2384c = r1
            d.h.i.b.b()
            goto L_0x008f
        L_0x008c:
            r0 = r12
            throw r0
        L_0x008f:
            goto L_0x008c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RunnableC0424e.run():void");
    }
}
