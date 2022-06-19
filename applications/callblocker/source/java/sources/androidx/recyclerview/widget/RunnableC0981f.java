package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.core.p028os.C0612a;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.recyclerview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f.class */
public final class RunnableC0981f implements Runnable {

    /* renamed from: a */
    static final ThreadLocal<RunnableC0981f> f3365a = new ThreadLocal<>();

    /* renamed from: e */
    static Comparator<C0984b> f3366e = new Comparator<C0984b>() { // from class: androidx.recyclerview.widget.f.1
        /* renamed from: a */
        public int compare(C0984b c0984b, C0984b c0984b2) {
            int i;
            if ((c0984b.f3378d == null) != (c0984b2.f3378d == null)) {
                i = c0984b.f3378d == null ? 1 : -1;
            } else if (c0984b.f3375a != c0984b2.f3375a) {
                i = c0984b.f3375a ? -1 : 1;
            } else {
                int i2 = c0984b2.f3376b - c0984b.f3376b;
                i = i2;
                if (i2 == 0) {
                    int i3 = c0984b.f3377c - c0984b2.f3377c;
                    i = i3;
                    if (i3 == 0) {
                        i = 0;
                    }
                }
            }
            return i;
        }
    };

    /* renamed from: c */
    long f3368c;

    /* renamed from: d */
    long f3369d;

    /* renamed from: b */
    ArrayList<RecyclerView> f3367b = new ArrayList<>();

    /* renamed from: f */
    private ArrayList<C0984b> f3370f = new ArrayList<>();

    @SuppressLint({"VisibleForTests"})
    /* renamed from: androidx.recyclerview.widget.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f$a.class */
    public static class C0983a implements RecyclerView.AbstractC0925i.AbstractC0928a {

        /* renamed from: a */
        int f3371a;

        /* renamed from: b */
        int f3372b;

        /* renamed from: c */
        int[] f3373c;

        /* renamed from: d */
        int f3374d;

        /* renamed from: a */
        public void m18502a() {
            if (this.f3373c != null) {
                Arrays.fill(this.f3373c, -1);
            }
            this.f3374d = 0;
        }

        /* renamed from: a */
        void m18500a(int i, int i2) {
            this.f3371a = i;
            this.f3372b = i2;
        }

        /* renamed from: a */
        void m18499a(RecyclerView recyclerView, boolean z) {
            this.f3374d = 0;
            if (this.f3373c != null) {
                Arrays.fill(this.f3373c, -1);
            }
            RecyclerView.AbstractC0925i abstractC0925i = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || abstractC0925i == null || !abstractC0925i.m18917r()) {
                return;
            }
            if (z) {
                if (!recyclerView.mAdapterHelper.m18610d()) {
                    abstractC0925i.mo18993a(recyclerView.mAdapter.mo959a(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                abstractC0925i.mo18765a(this.f3371a, this.f3372b, recyclerView.mState, this);
            }
            if (this.f3374d <= abstractC0925i.f3114x) {
                return;
            }
            abstractC0925i.f3114x = this.f3374d;
            abstractC0925i.f3115y = z;
            recyclerView.mRecycler.m18875b();
        }

        /* renamed from: a */
        public boolean m18501a(int i) {
            boolean z = false;
            if (this.f3373c != null) {
                int i2 = this.f3374d;
                int i3 = 0;
                while (true) {
                    z = false;
                    if (i3 >= i2 * 2) {
                        break;
                    } else if (this.f3373c[i3] == i) {
                        z = true;
                        break;
                    } else {
                        i3 += 2;
                    }
                }
            }
            return z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i.AbstractC0928a
        /* renamed from: b */
        public void mo18498b(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.f3374d * 2;
            if (this.f3373c == null) {
                this.f3373c = new int[4];
                Arrays.fill(this.f3373c, -1);
            } else if (i3 >= this.f3373c.length) {
                int[] iArr = this.f3373c;
                this.f3373c = new int[i3 * 2];
                System.arraycopy(iArr, 0, this.f3373c, 0, iArr.length);
            }
            this.f3373c[i3] = i;
            this.f3373c[i3 + 1] = i2;
            this.f3374d++;
        }
    }

    /* renamed from: androidx.recyclerview.widget.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f$b.class */
    public static class C0984b {

        /* renamed from: a */
        public boolean f3375a;

        /* renamed from: b */
        public int f3376b;

        /* renamed from: c */
        public int f3377c;

        /* renamed from: d */
        public RecyclerView f3378d;

        /* renamed from: e */
        public int f3379e;

        C0984b() {
        }

        /* renamed from: a */
        public void m18497a() {
            this.f3375a = false;
            this.f3376b = 0;
            this.f3377c = 0;
            this.f3378d = null;
            this.f3379e = 0;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private RecyclerView.AbstractC0948x m18508a(RecyclerView recyclerView, int i, long j) {
        RecyclerView.AbstractC0948x abstractC0948x;
        if (m18510a(recyclerView, i)) {
            abstractC0948x = null;
        } else {
            RecyclerView.C0937p c0937p = recyclerView.mRecycler;
            try {
                recyclerView.onEnterLayoutOrScroll();
                RecyclerView.AbstractC0948x m18885a = c0937p.m18885a(i, false, j);
                if (m18885a != null) {
                    if (!m18885a.m18782p() || m18885a.m18784n()) {
                        c0937p.m18876a(m18885a, false);
                    } else {
                        c0937p.m18883a(m18885a.f3183a);
                    }
                }
                recyclerView.onExitLayoutOrScroll(false);
                abstractC0948x = m18885a;
            } catch (Throwable th) {
                recyclerView.onExitLayoutOrScroll(false);
                throw th;
            }
        }
        return abstractC0948x;
    }

    /* renamed from: a */
    private void m18513a() {
        C0984b c0984b;
        int size = this.f3367b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f3367b.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.m18499a(recyclerView, false);
                i = recyclerView.mPrefetchRegistry.f3374d + i;
            }
        }
        this.f3370f.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f3367b.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                C0983a c0983a = recyclerView2.mPrefetchRegistry;
                int abs = Math.abs(c0983a.f3371a) + Math.abs(c0983a.f3372b);
                for (int i5 = 0; i5 < c0983a.f3374d * 2; i5 += 2) {
                    if (i3 >= this.f3370f.size()) {
                        c0984b = new C0984b();
                        this.f3370f.add(c0984b);
                    } else {
                        c0984b = this.f3370f.get(i3);
                    }
                    int i6 = c0983a.f3373c[i5 + 1];
                    c0984b.f3375a = i6 <= abs;
                    c0984b.f3376b = abs;
                    c0984b.f3377c = i6;
                    c0984b.f3378d = recyclerView2;
                    c0984b.f3379e = c0983a.f3373c[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.f3370f, f3366e);
    }

    /* renamed from: a */
    private void m18507a(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.m18584c() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        C0983a c0983a = recyclerView.mPrefetchRegistry;
        c0983a.m18499a(recyclerView, true);
        if (c0983a.f3374d == 0) {
            return;
        }
        try {
            C0612a.m20241a("RV Nested Prefetch");
            recyclerView.mState.m18822a(recyclerView.mAdapter);
            for (int i = 0; i < c0983a.f3374d * 2; i += 2) {
                m18508a(recyclerView, c0983a.f3373c[i], j);
            }
        } finally {
            C0612a.m20242a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private void m18506a(C0984b c0984b, long j) {
        RecyclerView.AbstractC0948x m18508a = m18508a(c0984b.f3378d, c0984b.f3379e, (long) (c0984b.f3375a ? (char) 65535 : j));
        if (m18508a == null || m18508a.f3184b == null || !m18508a.m18782p() || m18508a.m18784n()) {
            return;
        }
        m18507a(m18508a.f3184b.get(), j);
    }

    /* renamed from: a */
    static boolean m18510a(RecyclerView recyclerView, int i) {
        boolean z;
        int m18584c = recyclerView.mChildHelper.m18584c();
        int i2 = 0;
        while (true) {
            z = false;
            if (i2 >= m18584c) {
                break;
            }
            RecyclerView.AbstractC0948x childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.m18581d(i2));
            if (childViewHolderInt.f3185c == i && !childViewHolderInt.m18784n()) {
                z = true;
                break;
            }
            i2++;
        }
        return z;
    }

    /* renamed from: b */
    private void m18505b(long j) {
        for (int i = 0; i < this.f3370f.size(); i++) {
            C0984b c0984b = this.f3370f.get(i);
            if (c0984b.f3378d == null) {
                return;
            }
            m18506a(c0984b, j);
            c0984b.m18497a();
        }
    }

    /* renamed from: a */
    void m18512a(long j) {
        m18513a();
        m18505b(j);
    }

    /* renamed from: a */
    public void m18511a(RecyclerView recyclerView) {
        this.f3367b.add(recyclerView);
    }

    /* renamed from: a */
    public void m18509a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f3368c == 0) {
            this.f3368c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.m18500a(i, i2);
    }

    /* renamed from: b */
    public void m18504b(RecyclerView recyclerView) {
        this.f3367b.remove(recyclerView);
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // java.lang.Runnable
    public void run() {
        try {
            C0612a.m20241a("RV Prefetch");
            if (this.f3367b.isEmpty()) {
                return;
            }
            int size = this.f3367b.size();
            char c = 0;
            for (int i = 0; i < size; i++) {
                RecyclerView recyclerView = this.f3367b.get(i);
                if (recyclerView.getWindowVisibility() == 0) {
                    c = Math.max(recyclerView.getDrawingTime(), (long) c);
                }
            }
            if (c == 0) {
                return;
            }
            m18512a(TimeUnit.MILLISECONDS.toNanos(c) + this.f3369d);
        } finally {
            this.f3368c = 0L;
            C0612a.m20242a();
        }
    }
}
