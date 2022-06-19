package androidx.recyclerview.widget;

import androidx.core.p025os.C0590b;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.recyclerview.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e.class */
public final class RunnableC1006e implements Runnable {

    /* renamed from: a */
    static final ThreadLocal<RunnableC1006e> f3172a = new ThreadLocal<>();

    /* renamed from: e */
    static Comparator<C1009b> f3173e = new Comparator<C1009b>() { // from class: androidx.recyclerview.widget.e.1
        /* renamed from: a */
        public int compare(C1009b c1009b, C1009b c1009b2) {
            if ((c1009b.f3185d == null) != (c1009b2.f3185d == null)) {
                return c1009b.f3185d == null ? 1 : -1;
            } else if (c1009b.f3182a != c1009b2.f3182a) {
                int i = 1;
                if (c1009b.f3182a) {
                    i = -1;
                }
                return i;
            } else {
                int i2 = c1009b2.f3183b - c1009b.f3183b;
                if (i2 != 0) {
                    return i2;
                }
                int i3 = c1009b.f3184c - c1009b2.f3184c;
                if (i3 == 0) {
                    return 0;
                }
                return i3;
            }
        }
    };

    /* renamed from: c */
    long f3175c;

    /* renamed from: d */
    long f3176d;

    /* renamed from: b */
    ArrayList<RecyclerView> f3174b = new ArrayList<>();

    /* renamed from: f */
    private ArrayList<C1009b> f3177f = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$a.class */
    public static class C1008a implements RecyclerView.AbstractC0956i.AbstractC0959a {

        /* renamed from: a */
        int f3178a;

        /* renamed from: b */
        int f3179b;

        /* renamed from: c */
        int[] f3180c;

        /* renamed from: d */
        int f3181d;

        /* renamed from: a */
        public void m4606a() {
            int[] iArr = this.f3180c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f3181d = 0;
        }

        /* renamed from: a */
        void m4604a(int i, int i2) {
            this.f3178a = i;
            this.f3179b = i2;
        }

        /* renamed from: a */
        void m4603a(RecyclerView recyclerView, boolean z) {
            this.f3181d = 0;
            int[] iArr = this.f3180c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.AbstractC0956i abstractC0956i = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || abstractC0956i == null || !abstractC0956i.isItemPrefetchEnabled()) {
                return;
            }
            if (z) {
                if (!recyclerView.mAdapterHelper.m4704d()) {
                    abstractC0956i.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                abstractC0956i.collectAdjacentPrefetchPositions(this.f3178a, this.f3179b, recyclerView.mState, this);
            }
            if (this.f3181d <= abstractC0956i.mPrefetchMaxCountObserved) {
                return;
            }
            abstractC0956i.mPrefetchMaxCountObserved = this.f3181d;
            abstractC0956i.mPrefetchMaxObservedInInitialPrefetch = z;
            recyclerView.mRecycler.m4893b();
        }

        /* renamed from: a */
        public boolean m4605a(int i) {
            if (this.f3180c != null) {
                int i2 = this.f3181d;
                for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                    if (this.f3180c[i3] == i) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i.AbstractC0959a
        /* renamed from: b */
        public void mo4602b(int i, int i2) {
            if (i >= 0) {
                if (i2 < 0) {
                    throw new IllegalArgumentException("Pixel distance must be non-negative");
                }
                int i3 = this.f3181d * 2;
                int[] iArr = this.f3180c;
                if (iArr == null) {
                    this.f3180c = new int[4];
                    Arrays.fill(this.f3180c, -1);
                } else if (i3 >= iArr.length) {
                    this.f3180c = new int[i3 * 2];
                    System.arraycopy(iArr, 0, this.f3180c, 0, iArr.length);
                }
                int[] iArr2 = this.f3180c;
                iArr2[i3] = i;
                iArr2[i3 + 1] = i2;
                this.f3181d++;
                return;
            }
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
    }

    /* renamed from: androidx.recyclerview.widget.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$b.class */
    public static class C1009b {

        /* renamed from: a */
        public boolean f3182a;

        /* renamed from: b */
        public int f3183b;

        /* renamed from: c */
        public int f3184c;

        /* renamed from: d */
        public RecyclerView f3185d;

        /* renamed from: e */
        public int f3186e;

        C1009b() {
        }

        /* renamed from: a */
        public void m4601a() {
            this.f3182a = false;
            this.f3183b = 0;
            this.f3184c = 0;
            this.f3185d = null;
            this.f3186e = 0;
        }
    }

    /* renamed from: a */
    private RecyclerView.AbstractC0977w m4612a(RecyclerView recyclerView, int i, long j) {
        if (m4614a(recyclerView, i)) {
            return null;
        }
        RecyclerView.C0968p c0968p = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.AbstractC0977w m4903a = c0968p.m4903a(i, false, j);
            if (m4903a != null) {
                if (!m4903a.isBound() || m4903a.isInvalid()) {
                    c0968p.m4894a(m4903a, false);
                } else {
                    c0968p.m4901a(m4903a.itemView);
                }
            }
            return m4903a;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    /* renamed from: a */
    private void m4617a() {
        int i;
        C1009b c1009b;
        int size = this.f3174b.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= size) {
                break;
            }
            RecyclerView recyclerView = this.f3174b.get(i2);
            int i4 = i;
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.m4603a(recyclerView, false);
                i4 = i + recyclerView.mPrefetchRegistry.f3181d;
            }
            i2++;
            i3 = i4;
        }
        this.f3177f.ensureCapacity(i);
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            RecyclerView recyclerView2 = this.f3174b.get(i6);
            if (recyclerView2.getWindowVisibility() == 0) {
                C1008a c1008a = recyclerView2.mPrefetchRegistry;
                int abs = Math.abs(c1008a.f3178a) + Math.abs(c1008a.f3179b);
                for (int i7 = 0; i7 < c1008a.f3181d * 2; i7 += 2) {
                    if (i5 >= this.f3177f.size()) {
                        c1009b = new C1009b();
                        this.f3177f.add(c1009b);
                    } else {
                        c1009b = this.f3177f.get(i5);
                    }
                    int i8 = c1008a.f3180c[i7 + 1];
                    c1009b.f3182a = i8 <= abs;
                    c1009b.f3183b = abs;
                    c1009b.f3184c = i8;
                    c1009b.f3185d = recyclerView2;
                    c1009b.f3186e = c1008a.f3180c[i7];
                    i5++;
                }
            }
        }
        Collections.sort(this.f3177f, f3173e);
    }

    /* renamed from: a */
    private void m4611a(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.m4677c() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        C1008a c1008a = recyclerView.mPrefetchRegistry;
        c1008a.m4603a(recyclerView, true);
        if (c1008a.f3181d == 0) {
            return;
        }
        try {
            C0590b.m6068a("RV Nested Prefetch");
            recyclerView.mState.m4847a(recyclerView.mAdapter);
            for (int i = 0; i < c1008a.f3181d * 2; i += 2) {
                m4612a(recyclerView, c1008a.f3180c[i], j);
            }
        } finally {
            C0590b.m6069a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m4610a(C1009b c1009b, long j) {
        RecyclerView.AbstractC0977w m4612a = m4612a(c1009b.f3185d, c1009b.f3186e, (long) (c1009b.f3182a ? (char) 65535 : j));
        if (m4612a == null || m4612a.mNestedRecyclerView == null || !m4612a.isBound() || m4612a.isInvalid()) {
            return;
        }
        m4611a(m4612a.mNestedRecyclerView.get(), j);
    }

    /* renamed from: a */
    static boolean m4614a(RecyclerView recyclerView, int i) {
        int m4677c = recyclerView.mChildHelper.m4677c();
        for (int i2 = 0; i2 < m4677c; i2++) {
            RecyclerView.AbstractC0977w childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.m4674d(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m4609b(long j) {
        for (int i = 0; i < this.f3177f.size(); i++) {
            C1009b c1009b = this.f3177f.get(i);
            if (c1009b.f3185d == null) {
                return;
            }
            m4610a(c1009b, j);
            c1009b.m4601a();
        }
    }

    /* renamed from: a */
    void m4616a(long j) {
        m4617a();
        m4609b(j);
    }

    /* renamed from: a */
    public void m4615a(RecyclerView recyclerView) {
        this.f3174b.add(recyclerView);
    }

    /* renamed from: a */
    public void m4613a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f3175c == 0) {
            this.f3175c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.m4604a(i, i2);
    }

    /* renamed from: b */
    public void m4608b(RecyclerView recyclerView) {
        this.f3174b.remove(recyclerView);
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
            C0590b.m6068a("RV Prefetch");
            if (!this.f3174b.isEmpty()) {
                int size = this.f3174b.size();
                int i = 0;
                ?? r0 = 0;
                while (true) {
                    c = r0;
                    if (i >= size) {
                        break;
                    }
                    RecyclerView recyclerView = this.f3174b.get(i);
                    char c2 = c;
                    if (recyclerView.getWindowVisibility() == 0) {
                        c2 = Math.max(recyclerView.getDrawingTime(), (long) c);
                    }
                    i++;
                    r0 = c2;
                }
                if (c != 0) {
                    m4616a(TimeUnit.MILLISECONDS.toNanos(c) + this.f3176d);
                }
            }
        } finally {
            this.f3175c = 0L;
            C0590b.m6069a();
        }
    }
}
