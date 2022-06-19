package androidx.recyclerview.widget;

import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
import p1727n3.p1807k.p1816e.C26516h;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GapWorker.class */
public final class GapWorker implements Runnable {

    /* renamed from: e */
    public static final ThreadLocal<GapWorker> f1247e = new ThreadLocal<>();

    /* renamed from: f */
    public static Comparator<C0302c> f1248f = new C0300a();

    /* renamed from: b */
    public long f1250b;

    /* renamed from: c */
    public long f1251c;

    /* renamed from: a */
    public ArrayList<RecyclerView> f1249a = new ArrayList<>();

    /* renamed from: d */
    public ArrayList<C0302c> f1252d = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.GapWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GapWorker$a.class */
    public class C0300a implements Comparator<C0302c> {
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
            if (r0 == null) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
            r8 = 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
            r8 = -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
            if (r0 != false) goto L15;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compare(androidx.recyclerview.widget.GapWorker.C0302c r4, androidx.recyclerview.widget.GapWorker.C0302c r5) {
            /*
                r3 = this;
                r0 = r4
                androidx.recyclerview.widget.GapWorker$c r0 = (androidx.recyclerview.widget.GapWorker.C0302c) r0
                r4 = r0
                r0 = r5
                androidx.recyclerview.widget.GapWorker$c r0 = (androidx.recyclerview.widget.GapWorker.C0302c) r0
                r5 = r0
                r0 = r4
                androidx.recyclerview.widget.RecyclerView r0 = r0.f1260d
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 != 0) goto L1c
                r0 = 1
                r8 = r0
                goto L1f
            L1c:
                r0 = 0
                r8 = r0
            L1f:
                r0 = r5
                androidx.recyclerview.widget.RecyclerView r0 = r0.f1260d
                if (r0 != 0) goto L2c
                r0 = 1
                r9 = r0
                goto L2f
            L2c:
                r0 = 0
                r9 = r0
            L2f:
                r0 = r8
                r1 = r9
                if (r0 == r1) goto L46
                r0 = r6
                if (r0 != 0) goto L40
            L3a:
                r0 = 1
                r8 = r0
                goto L88
            L40:
                r0 = -1
                r8 = r0
                goto L88
            L46:
                r0 = r4
                boolean r0 = r0.f1257a
                r10 = r0
                r0 = r10
                r1 = r5
                boolean r1 = r1.f1257a
                if (r0 == r1) goto L5d
                r0 = r10
                if (r0 == 0) goto L3a
                goto L40
            L5d:
                r0 = r5
                int r0 = r0.f1258b
                r1 = r4
                int r1 = r1.f1258b
                int r0 = r0 - r1
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L70
                goto L88
            L70:
                r0 = r4
                int r0 = r0.f1259c
                r1 = r5
                int r1 = r1.f1259c
                int r0 = r0 - r1
                r9 = r0
                r0 = r7
                r8 = r0
                r0 = r9
                if (r0 == 0) goto L88
                r0 = r9
                r8 = r0
            L88:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GapWorker.C0300a.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    /* renamed from: androidx.recyclerview.widget.GapWorker$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GapWorker$b.class */
    public static class C0301b implements RecyclerView.AbstractC0329o.AbstractC0332c {

        /* renamed from: a */
        public int f1253a;

        /* renamed from: b */
        public int f1254b;

        /* renamed from: c */
        public int[] f1255c;

        /* renamed from: d */
        public int f1256d;

        /* renamed from: a */
        public void m42766a(int i, int i2) {
            if (i >= 0) {
                if (i2 < 0) {
                    throw new IllegalArgumentException("Pixel distance must be non-negative");
                }
                int i3 = this.f1256d * 2;
                int[] iArr = this.f1255c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.f1255c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i3 >= iArr.length) {
                    int[] iArr3 = new int[i3 * 2];
                    this.f1255c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.f1255c;
                iArr4[i3] = i;
                iArr4[i3 + 1] = i2;
                this.f1256d++;
                return;
            }
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }

        /* renamed from: b */
        public void m42765b(RecyclerView recyclerView, boolean z) {
            this.f1256d = 0;
            int[] iArr = this.f1255c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.AbstractC0329o abstractC0329o = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || abstractC0329o == null || !abstractC0329o.isItemPrefetchEnabled()) {
                return;
            }
            if (z) {
                if (!recyclerView.mAdapterHelper.m3231g()) {
                    abstractC0329o.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                abstractC0329o.collectAdjacentPrefetchPositions(this.f1253a, this.f1254b, recyclerView.mState, this);
            }
            int i = this.f1256d;
            if (i <= abstractC0329o.mPrefetchMaxCountObserved) {
                return;
            }
            abstractC0329o.mPrefetchMaxCountObserved = i;
            abstractC0329o.mPrefetchMaxObservedInInitialPrefetch = z;
            recyclerView.mRecycler.m42717n();
        }

        /* renamed from: c */
        public boolean m42764c(int i) {
            if (this.f1255c != null) {
                int i2 = this.f1256d;
                for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                    if (this.f1255c[i3] == i) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GapWorker$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GapWorker$c.class */
    public static class C0302c {

        /* renamed from: a */
        public boolean f1257a;

        /* renamed from: b */
        public int f1258b;

        /* renamed from: c */
        public int f1259c;

        /* renamed from: d */
        public RecyclerView f1260d;

        /* renamed from: e */
        public int f1261e;
    }

    /* renamed from: a */
    public void m42769a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f1250b == 0) {
            this.f1250b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        C0301b c0301b = recyclerView.mPrefetchRegistry;
        c0301b.f1253a = i;
        c0301b.f1254b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public void m42768b(long j) {
        int i;
        C0302c c0302c;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        int i2;
        C0302c c0302c2;
        int size = this.f1249a.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= size) {
                break;
            }
            RecyclerView recyclerView3 = this.f1249a.get(i3);
            int i5 = i;
            if (recyclerView3.getWindowVisibility() == 0) {
                recyclerView3.mPrefetchRegistry.m42765b(recyclerView3, false);
                i5 = i + recyclerView3.mPrefetchRegistry.f1256d;
            }
            i3++;
            i4 = i5;
        }
        this.f1252d.ensureCapacity(i);
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 >= size) {
                break;
            }
            RecyclerView recyclerView4 = this.f1249a.get(i6);
            if (recyclerView4.getWindowVisibility() != 0) {
                i2 = i8;
            } else {
                C0301b c0301b = recyclerView4.mPrefetchRegistry;
                int abs = Math.abs(c0301b.f1254b) + Math.abs(c0301b.f1253a);
                int i9 = 0;
                while (true) {
                    i2 = i8;
                    if (i9 < c0301b.f1256d * 2) {
                        if (i8 >= this.f1252d.size()) {
                            c0302c2 = new C0302c();
                            this.f1252d.add(c0302c2);
                        } else {
                            c0302c2 = this.f1252d.get(i8);
                        }
                        int[] iArr = c0301b.f1255c;
                        int i10 = iArr[i9 + 1];
                        c0302c2.f1257a = i10 <= abs;
                        c0302c2.f1258b = abs;
                        c0302c2.f1259c = i10;
                        c0302c2.f1260d = recyclerView4;
                        c0302c2.f1261e = iArr[i9];
                        i8++;
                        i9 += 2;
                    }
                }
            }
            i6++;
            i7 = i2;
        }
        Collections.sort(this.f1252d, f1248f);
        for (int i11 = 0; i11 < this.f1252d.size() && (recyclerView = (c0302c = this.f1252d.get(i11)).f1260d) != null; i11++) {
            RecyclerView.AbstractC0313c0 m42767c = m42767c(recyclerView, c0302c.f1261e, c0302c.f1257a ? (char) 65535 : j);
            if (m42767c != null && m42767c.mNestedRecyclerView != null && m42767c.isBound() && !m42767c.isInvalid() && (recyclerView2 = m42767c.mNestedRecyclerView.get()) != null) {
                if (recyclerView2.mDataSetHasChangedAfterLayout && recyclerView2.mChildHelper.m3195h() != 0) {
                    recyclerView2.removeAndRecycleViews();
                }
                C0301b c0301b2 = recyclerView2.mPrefetchRegistry;
                c0301b2.m42765b(recyclerView2, true);
                if (c0301b2.f1256d != 0) {
                    try {
                        Method method = C26516h.f74306b;
                        Trace.beginSection(RecyclerView.TRACE_NESTED_PREFETCH_TAG);
                        RecyclerView.C0347z c0347z = recyclerView2.mState;
                        RecyclerView.AbstractC0317g abstractC0317g = recyclerView2.mAdapter;
                        c0347z.f1351d = 1;
                        c0347z.f1352e = abstractC0317g.getItemCount();
                        c0347z.f1354g = false;
                        c0347z.f1355h = false;
                        c0347z.f1356i = false;
                        for (int i12 = 0; i12 < c0301b2.f1256d * 2; i12 += 2) {
                            m42767c(recyclerView2, c0301b2.f1255c[i12], j);
                        }
                        Trace.endSection();
                    } catch (Throwable th) {
                        Method method2 = C26516h.f74306b;
                        Trace.endSection();
                        throw th;
                    }
                } else {
                    continue;
                }
            }
            c0302c.f1257a = false;
            c0302c.f1258b = 0;
            c0302c.f1259c = 0;
            c0302c.f1260d = null;
            c0302c.f1261e = 0;
        }
    }

    /* renamed from: c */
    public final RecyclerView.AbstractC0313c0 m42767c(RecyclerView recyclerView, int i, long j) {
        boolean z;
        int m3195h = recyclerView.mChildHelper.m3195h();
        int i2 = 0;
        while (true) {
            if (i2 >= m3195h) {
                z = false;
                break;
            }
            RecyclerView.AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.m3196g(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return null;
        }
        RecyclerView.C0341v c0341v = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.AbstractC0313c0 m42719l = c0341v.m42719l(i, false, j);
            if (m42719l != null) {
                if (!m42719l.isBound() || m42719l.isInvalid()) {
                    c0341v.m42730a(m42719l, false);
                } else {
                    c0341v.m42722i(m42719l.itemView);
                }
            }
            return m42719l;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
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
            Method method = C26516h.f74306b;
            Trace.beginSection(RecyclerView.TRACE_PREFETCH_TAG);
            if (this.f1249a.isEmpty()) {
                this.f1250b = 0L;
                Trace.endSection();
                return;
            }
            int size = this.f1249a.size();
            int i = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i >= size) {
                    break;
                }
                RecyclerView recyclerView = this.f1249a.get(i);
                char c2 = c;
                if (recyclerView.getWindowVisibility() == 0) {
                    c2 = Math.max(recyclerView.getDrawingTime(), (long) c);
                }
                i++;
                r0 = c2;
            }
            if (c == 0) {
                this.f1250b = 0L;
                Trace.endSection();
                return;
            }
            m42768b(TimeUnit.MILLISECONDS.toNanos(c) + this.f1251c);
            this.f1250b = 0L;
            Trace.endSection();
        } catch (Throwable th) {
            this.f1250b = 0L;
            Method method2 = C26516h.f74306b;
            Trace.endSection();
            throw th;
        }
    }
}
