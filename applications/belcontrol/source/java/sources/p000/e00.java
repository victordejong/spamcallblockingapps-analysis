package p000;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$b0;
import androidx.recyclerview.widget.RecyclerView$u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* renamed from: e00 */
/* loaded from: classes-dex2jar.jar:e00.class */
public final class e00 implements Runnable {

    /* renamed from: f */
    public static final ThreadLocal<e00> f6209f = new ThreadLocal<>();

    /* renamed from: g */
    public static Comparator<C1335c> f6210g = new C1334a();

    /* renamed from: b */
    public long f6212b;

    /* renamed from: c */
    public long f6213c;

    /* renamed from: a */
    public ArrayList<RecyclerView> f6211a = new ArrayList<>();

    /* renamed from: d */
    public ArrayList<C1335c> f6214d = new ArrayList<>();

    /* renamed from: e00$a */
    /* loaded from: classes-dex2jar.jar:e00$a.class */
    public static final class C1334a implements Comparator<C1335c> {
        /* renamed from: a */
        public int compare(C1335c c1335c, C1335c c1335c2) {
            RecyclerView recyclerView = c1335c.f6218d;
            if ((recyclerView == null) != (c1335c2.f6218d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z = c1335c.f6215a;
            if (z != c1335c2.f6215a) {
                int i = 1;
                if (z) {
                    i = -1;
                }
                return i;
            }
            int i2 = c1335c2.f6216b - c1335c.f6216b;
            if (i2 != 0) {
                return i2;
            }
            int i3 = c1335c.f6217c - c1335c2.f6217c;
            if (i3 == 0) {
                return 0;
            }
            return i3;
        }
    }

    /* renamed from: e00$c */
    /* loaded from: classes-dex2jar.jar:e00$c.class */
    public static class C1335c {

        /* renamed from: a */
        public boolean f6215a;

        /* renamed from: b */
        public int f6216b;

        /* renamed from: c */
        public int f6217c;

        /* renamed from: d */
        public RecyclerView f6218d;

        /* renamed from: e */
        public int f6219e;

        /* renamed from: a */
        public void m2300a() {
            this.f6215a = false;
            this.f6216b = 0;
            this.f6217c = 0;
            this.f6218d = null;
            this.f6219e = 0;
        }
    }

    /* renamed from: e */
    public static boolean m2307e(RecyclerView recyclerView, int i) {
        int m7451j = recyclerView.mChildHelper.m7451j();
        for (int i2 = 0; i2 < m7451j; i2++) {
            RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.m7452i(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public void m2311a(RecyclerView recyclerView) {
        this.f6211a.add(recyclerView);
    }

    /* renamed from: b */
    public final void m2310b() {
        int i;
        int i2;
        C1335c c1335c;
        int size = this.f6211a.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= size) {
                break;
            }
            RecyclerView recyclerView = this.f6211a.get(i3);
            int i5 = i;
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.c(recyclerView, false);
                i5 = i + recyclerView.mPrefetchRegistry.d;
            }
            i3++;
            i4 = i5;
        }
        this.f6214d.ensureCapacity(i);
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 >= size) {
                Collections.sort(this.f6214d, f6210g);
                return;
            }
            RecyclerView recyclerView2 = this.f6211a.get(i6);
            if (recyclerView2.getWindowVisibility() != 0) {
                i2 = i8;
            } else {
                b bVar = recyclerView2.mPrefetchRegistry;
                int abs = Math.abs(bVar.a) + Math.abs(bVar.b);
                int i9 = 0;
                while (true) {
                    i2 = i8;
                    if (i9 < bVar.d * 2) {
                        if (i8 >= this.f6214d.size()) {
                            c1335c = new C1335c();
                            this.f6214d.add(c1335c);
                        } else {
                            c1335c = this.f6214d.get(i8);
                        }
                        int[] iArr = bVar.c;
                        int i10 = iArr[i9 + 1];
                        c1335c.f6215a = i10 <= abs;
                        c1335c.f6216b = abs;
                        c1335c.f6217c = i10;
                        c1335c.f6218d = recyclerView2;
                        c1335c.f6219e = iArr[i9];
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
    public final void m2309c(C1335c c1335c, long j) {
        RecyclerView$b0 m2303i = m2303i(c1335c.f6218d, c1335c.f6219e, c1335c.f6215a ? (char) 65535 : j);
        if (m2303i == null || m2303i.mNestedRecyclerView == null || !m2303i.isBound() || m2303i.isInvalid()) {
            return;
        }
        m2304h(m2303i.mNestedRecyclerView.get(), j);
    }

    /* renamed from: d */
    public final void m2308d(long j) {
        for (int i = 0; i < this.f6214d.size(); i++) {
            C1335c c1335c = this.f6214d.get(i);
            if (c1335c.f6218d == null) {
                return;
            }
            m2309c(c1335c, j);
            c1335c.m2300a();
        }
    }

    /* renamed from: f */
    public void m2306f(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f6212b == 0) {
            this.f6212b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.e(i, i2);
    }

    /* renamed from: g */
    public void m2305g(long j) {
        m2310b();
        m2308d(j);
    }

    /* renamed from: h */
    public final void m2304h(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.m7451j() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        b bVar = recyclerView.mPrefetchRegistry;
        bVar.c(recyclerView, true);
        if (bVar.d == 0) {
            return;
        }
        try {
            w9.a("RV Nested Prefetch");
            recyclerView.mState.m6110f(recyclerView.mAdapter);
            for (int i = 0; i < bVar.d * 2; i += 2) {
                m2303i(recyclerView, bVar.c[i], j);
            }
        } finally {
            w9.b();
        }
    }

    /* renamed from: i */
    public final RecyclerView$b0 m2303i(RecyclerView recyclerView, int i, long j) {
        if (m2307e(recyclerView, i)) {
            return null;
        }
        RecyclerView$u recyclerView$u = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView$b0 m6152I = recyclerView$u.m6152I(i, false, j);
            if (m6152I != null) {
                if (!m6152I.isBound() || m6152I.isInvalid()) {
                    recyclerView$u.m6147a(m6152I, false);
                } else {
                    recyclerView$u.m6159B(m6152I.itemView);
                }
            }
            return m6152I;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    /* renamed from: j */
    public void m2302j(RecyclerView recyclerView) {
        this.f6211a.remove(recyclerView);
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
            w9.a("RV Prefetch");
            if (!this.f6211a.isEmpty()) {
                int size = this.f6211a.size();
                int i = 0;
                ?? r0 = 0;
                while (true) {
                    c = r0;
                    if (i >= size) {
                        break;
                    }
                    RecyclerView recyclerView = this.f6211a.get(i);
                    char c2 = c;
                    if (recyclerView.getWindowVisibility() == 0) {
                        c2 = Math.max(recyclerView.getDrawingTime(), (long) c);
                    }
                    i++;
                    r0 = c2;
                }
                if (c != 0) {
                    m2305g(TimeUnit.MILLISECONDS.toNanos(c) + this.f6213c);
                }
            }
        } finally {
            this.f6212b = 0L;
            w9.b();
        }
    }
}
