package p012b.p122v.p123d;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import p012b.p042i.p050l.C0921f;
/* renamed from: b.v.d.e */
/* loaded from: classes-dex2jar.jar:b/v/d/e.class */
public final class RunnableC1926e implements Runnable {

    /* renamed from: e */
    public static final ThreadLocal<RunnableC1926e> f7604e = new ThreadLocal<>();

    /* renamed from: f */
    public static Comparator<C1929c> f7605f = new C1927a();

    /* renamed from: b */
    public long f7607b;

    /* renamed from: c */
    public long f7608c;

    /* renamed from: a */
    public ArrayList<RecyclerView> f7606a = new ArrayList<>();

    /* renamed from: d */
    public ArrayList<C1929c> f7609d = new ArrayList<>();

    /* renamed from: b.v.d.e$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/e$a.class */
    public static final class C1927a implements Comparator<C1929c> {
        /* renamed from: a */
        public int compare(C1929c cVar, C1929c cVar2) {
            int i = 1;
            int i2 = 1;
            if ((cVar.f7617d == null) != (cVar2.f7617d == null)) {
                if (cVar.f7617d != null) {
                    i2 = -1;
                }
                return i2;
            }
            boolean z = cVar.f7614a;
            if (z != cVar2.f7614a) {
                if (z) {
                    i = -1;
                }
                return i;
            }
            int i3 = cVar2.f7615b - cVar.f7615b;
            if (i3 != 0) {
                return i3;
            }
            int i4 = cVar.f7616c - cVar2.f7616c;
            if (i4 != 0) {
                return i4;
            }
            return 0;
        }
    }

    /* renamed from: b.v.d.e$b */
    /* loaded from: classes-dex2jar.jar:b/v/d/e$b.class */
    public static class C1928b implements RecyclerView.AbstractC0511o.AbstractC0514c {

        /* renamed from: a */
        public int f7610a;

        /* renamed from: b */
        public int f7611b;

        /* renamed from: c */
        public int[] f7612c;

        /* renamed from: d */
        public int f7613d;

        /* renamed from: a */
        public void m31622a() {
            int[] iArr = this.f7612c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f7613d = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0511o.AbstractC0514c
        /* renamed from: a */
        public void mo31620a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            } else if (i2 >= 0) {
                int i3 = this.f7613d * 2;
                int[] iArr = this.f7612c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.f7612c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i3 >= iArr.length) {
                    int[] iArr3 = new int[i3 * 2];
                    this.f7612c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.f7612c;
                iArr4[i3] = i;
                iArr4[i3 + 1] = i2;
                this.f7613d++;
            } else {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
        }

        /* renamed from: a */
        public void m31619a(RecyclerView recyclerView, boolean z) {
            this.f7613d = 0;
            int[] iArr = this.f7612c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.AbstractC0511o oVar = recyclerView.f2543m;
            if (recyclerView.f2541l != null && oVar != null && oVar.m37269v()) {
                if (z) {
                    if (!recyclerView.f2525d.m31734c()) {
                        oVar.mo37356a(recyclerView.f2541l.getItemCount(), this);
                    }
                } else if (!recyclerView.m37418p()) {
                    oVar.mo37179a(this.f7610a, this.f7611b, recyclerView.f2534h0, this);
                }
                int i = this.f7613d;
                if (i > oVar.f2607m) {
                    oVar.f2607m = i;
                    oVar.f2608n = z;
                    recyclerView.f2521b.m37211j();
                }
            }
        }

        /* renamed from: a */
        public boolean m31621a(int i) {
            if (this.f7612c == null) {
                return false;
            }
            int i2 = this.f7613d;
            for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                if (this.f7612c[i3] == i) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public void m31618b(int i, int i2) {
            this.f7610a = i;
            this.f7611b = i2;
        }
    }

    /* renamed from: b.v.d.e$c */
    /* loaded from: classes-dex2jar.jar:b/v/d/e$c.class */
    public static class C1929c {

        /* renamed from: a */
        public boolean f7614a;

        /* renamed from: b */
        public int f7615b;

        /* renamed from: c */
        public int f7616c;

        /* renamed from: d */
        public RecyclerView f7617d;

        /* renamed from: e */
        public int f7618e;

        /* renamed from: a */
        public void m31617a() {
            this.f7614a = false;
            this.f7615b = 0;
            this.f7616c = 0;
            this.f7617d = null;
            this.f7618e = 0;
        }
    }

    /* renamed from: a */
    public static boolean m31630a(RecyclerView recyclerView, int i) {
        int b = recyclerView.f2527e.m31706b();
        for (int i2 = 0; i2 < b; i2++) {
            RecyclerView.AbstractC0495b0 l = RecyclerView.m37422l(recyclerView.f2527e.m31698e(i2));
            if (l.mPosition == i && !l.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final RecyclerView.AbstractC0495b0 m31628a(RecyclerView recyclerView, int i, long j) {
        if (m31630a(recyclerView, i)) {
            return null;
        }
        RecyclerView.C0522u uVar = recyclerView.f2521b;
        try {
            recyclerView.m37408z();
            RecyclerView.AbstractC0495b0 a = uVar.m37244a(i, false, j);
            if (a != null) {
                if (!a.isBound() || a.isInvalid()) {
                    uVar.m37238a(a, false);
                } else {
                    uVar.m37230b(a.itemView);
                }
            }
            return a;
        } finally {
            recyclerView.m37473a(false);
        }
    }

    /* renamed from: a */
    public final void m31633a() {
        C1929c cVar;
        int size = this.f7606a.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f7606a.get(i2);
            i = i;
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.f2532g0.m31619a(recyclerView, false);
                i += recyclerView.f2532g0.f7613d;
            }
        }
        this.f7609d.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f7606a.get(i4);
            if (recyclerView2.getWindowVisibility() != 0) {
                i3 = i3;
            } else {
                C1928b bVar = recyclerView2.f2532g0;
                int abs = Math.abs(bVar.f7610a) + Math.abs(bVar.f7611b);
                int i5 = 0;
                while (true) {
                    i3 = i3;
                    if (i5 < bVar.f7613d * 2) {
                        if (i3 >= this.f7609d.size()) {
                            cVar = new C1929c();
                            this.f7609d.add(cVar);
                        } else {
                            cVar = this.f7609d.get(i3);
                        }
                        int i6 = bVar.f7612c[i5 + 1];
                        cVar.f7614a = i6 <= abs;
                        cVar.f7615b = abs;
                        cVar.f7616c = i6;
                        cVar.f7617d = recyclerView2;
                        cVar.f7618e = bVar.f7612c[i5];
                        i3++;
                        i5 += 2;
                    }
                }
            }
        }
        Collections.sort(this.f7609d, f7605f);
    }

    /* renamed from: a */
    public final void m31632a(long j) {
        for (int i = 0; i < this.f7609d.size(); i++) {
            C1929c cVar = this.f7609d.get(i);
            if (cVar.f7617d != null) {
                m31626a(cVar, j);
                cVar.m31617a();
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public void m31631a(RecyclerView recyclerView) {
        this.f7606a.add(recyclerView);
    }

    /* renamed from: a */
    public void m31629a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f7607b == 0) {
            this.f7607b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.f2532g0.m31618b(i, i2);
    }

    /* renamed from: a */
    public final void m31627a(RecyclerView recyclerView, long j) {
        if (recyclerView != null) {
            if (recyclerView.f2499D && recyclerView.f2527e.m31706b() != 0) {
                recyclerView.m37523G();
            }
            C1928b bVar = recyclerView.f2532g0;
            bVar.m31619a(recyclerView, true);
            if (bVar.f7613d != 0) {
                try {
                    C0921f.m35495a("RV Nested Prefetch");
                    recyclerView.f2534h0.m37199a(recyclerView.f2541l);
                    for (int i = 0; i < bVar.f7613d * 2; i += 2) {
                        m31628a(recyclerView, bVar.f7612c[i], j);
                    }
                } finally {
                    C0921f.m35496a();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* renamed from: a */
    public final void m31626a(C1929c cVar, long j) {
        RecyclerView.AbstractC0495b0 a = m31628a(cVar.f7617d, cVar.f7618e, cVar.f7614a ? 9223372036854775807 : j);
        if (a != null && a.mNestedRecyclerView != null && a.isBound() && !a.isInvalid()) {
            m31627a(a.mNestedRecyclerView.get(), j);
        }
    }

    /* renamed from: b */
    public void m31625b(long j) {
        m31633a();
        m31632a(j);
    }

    /* renamed from: b */
    public void m31624b(RecyclerView recyclerView) {
        this.f7606a.remove(recyclerView);
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
            p012b.p042i.p050l.C0921f.m35495a(r0)     // Catch: all -> 0x007f
            r0 = r6
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f7606a     // Catch: all -> 0x007f
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x007f
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001a
        L_0x0011:
            r0 = r6
            r1 = 0
            r0.f7607b = r1
            p012b.p042i.p050l.C0921f.m35496a()
            return
        L_0x001a:
            r0 = r6
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f7606a     // Catch: all -> 0x007f
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
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView> r0 = r0.f7606a     // Catch: all -> 0x007f
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
            long r2 = r2.f7608c     // Catch: all -> 0x007f
            long r1 = r1 + r2
            r0.m31625b(r1)     // Catch: all -> 0x007f
            r0 = r6
            r1 = 0
            r0.f7607b = r1
            p012b.p042i.p050l.C0921f.m35496a()
            return
        L_0x007f:
            r12 = move-exception
            r0 = r6
            r1 = 0
            r0.f7607b = r1
            p012b.p042i.p050l.C0921f.m35496a()
            goto L_0x008f
        L_0x008c:
            r0 = r12
            throw r0
        L_0x008f:
            goto L_0x008c
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p122v.p123d.RunnableC1926e.run():void");
    }
}
