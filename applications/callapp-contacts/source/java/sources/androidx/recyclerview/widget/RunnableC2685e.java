package androidx.recyclerview.widget;

import androidx.core.p037os.C0863g;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.recyclerview.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e.class */
public final class RunnableC2685e implements Runnable {

    /* renamed from: a */
    static final ThreadLocal<RunnableC2685e> f10262a = new ThreadLocal<>();

    /* renamed from: e */
    static Comparator<C2688b> f10263e = new Comparator<C2688b>() { // from class: androidx.recyclerview.widget.e.1
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(C2688b c2688b, C2688b c2688b2) {
            C2688b c2688b3 = c2688b;
            C2688b c2688b4 = c2688b2;
            if ((c2688b3.f10275d == null) != (c2688b4.f10275d == null)) {
                return c2688b3.f10275d == null ? 1 : -1;
            } else if (c2688b3.f10272a != c2688b4.f10272a) {
                return c2688b3.f10272a ? -1 : 1;
            } else {
                int i = c2688b4.f10273b - c2688b3.f10273b;
                if (i != 0) {
                    return i;
                }
                int i2 = c2688b3.f10274c - c2688b4.f10274c;
                if (i2 == 0) {
                    return 0;
                }
                return i2;
            }
        }
    };

    /* renamed from: c */
    long f10265c;

    /* renamed from: d */
    long f10266d;

    /* renamed from: b */
    ArrayList<RecyclerView> f10264b = new ArrayList<>();

    /* renamed from: f */
    private ArrayList<C2688b> f10267f = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$a.class */
    public static final class C2687a implements RecyclerView.AbstractC2637i.AbstractC2640a {

        /* renamed from: a */
        int f10268a;

        /* renamed from: b */
        int f10269b;

        /* renamed from: c */
        int[] f10270c;

        /* renamed from: d */
        int f10271d;

        /* renamed from: a */
        public final void m40094a() {
            int[] iArr = this.f10270c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f10271d = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i.AbstractC2640a
        /* renamed from: a */
        public final void mo40092a(int i, int i2) {
            if (i >= 0) {
                if (i2 < 0) {
                    throw new IllegalArgumentException("Pixel distance must be non-negative");
                }
                int i3 = this.f10271d * 2;
                int[] iArr = this.f10270c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.f10270c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i3 >= iArr.length) {
                    int[] iArr3 = new int[i3 * 2];
                    this.f10270c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.f10270c;
                iArr4[i3] = i;
                iArr4[i3 + 1] = i2;
                this.f10271d++;
                return;
            }
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }

        /* renamed from: a */
        final void m40091a(RecyclerView recyclerView, boolean z) {
            this.f10271d = 0;
            int[] iArr = this.f10270c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.AbstractC2637i abstractC2637i = recyclerView.f9982o;
            if (recyclerView.f9981n == null || abstractC2637i == null || !abstractC2637i.isItemPrefetchEnabled()) {
                return;
            }
            if (z) {
                if (!recyclerView.f9974g.m40159d()) {
                    abstractC2637i.mo40392a(recyclerView.f9981n.getItemCount(), this);
                }
            } else if (!recyclerView.m40434h()) {
                abstractC2637i.mo40278a(this.f10268a, this.f10269b, recyclerView.f9925I, this);
            }
            if (this.f10271d <= abstractC2637i.f10034x) {
                return;
            }
            abstractC2637i.f10034x = this.f10271d;
            abstractC2637i.f10035y = z;
            recyclerView.f9972e.m40328b();
        }

        /* renamed from: a */
        public final boolean m40093a(int i) {
            if (this.f10270c != null) {
                int i2 = this.f10271d;
                for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                    if (this.f10270c[i3] == i) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$b.class */
    public static final class C2688b {

        /* renamed from: a */
        public boolean f10272a;

        /* renamed from: b */
        public int f10273b;

        /* renamed from: c */
        public int f10274c;

        /* renamed from: d */
        public RecyclerView f10275d;

        /* renamed from: e */
        public int f10276e;

        C2688b() {
        }
    }

    /* renamed from: a */
    private static RecyclerView.AbstractC2657v m40095a(RecyclerView recyclerView, int i, long j) {
        boolean z;
        int m40142b = recyclerView.f9975h.m40142b();
        int i2 = 0;
        while (true) {
            if (i2 >= m40142b) {
                z = false;
                break;
            }
            RecyclerView.AbstractC2657v m40453c = RecyclerView.m40453c(recyclerView.f9975h.m40139c(i2));
            if (m40453c.f10098b == i && !m40453c.isInvalid()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return null;
        }
        RecyclerView.C2648o c2648o = recyclerView.f9972e;
        try {
            recyclerView.m40440f();
            RecyclerView.AbstractC2657v m40335a = c2648o.m40335a(i, false, j);
            if (m40335a != null) {
                if (!m40335a.isBound() || m40335a.isInvalid()) {
                    c2648o.m40329a(m40335a, false);
                } else {
                    c2648o.m40333a(m40335a.itemView);
                }
            }
            return m40335a;
        } finally {
            recyclerView.m40457b(false);
        }
    }

    /* renamed from: a */
    public final void m40096a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f10265c == 0) {
            this.f10265c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        C2687a c2687a = recyclerView.f9924H;
        c2687a.f10268a = i;
        c2687a.f10269b = i2;
    }

    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        int i;
        RecyclerView recyclerView;
        C2688b c2688b;
        try {
            C0863g.m44289a("RV Prefetch");
        } catch (Throwable th2) {
            th = th2;
        }
        if (!this.f10264b.isEmpty()) {
            int size = this.f10264b.size();
            char c = 0;
            int i2 = 0;
            while (i2 < size) {
                RecyclerView recyclerView2 = this.f10264b.get(i2);
                char c2 = c;
                if (recyclerView2.getWindowVisibility() == 0) {
                    c2 = Math.max(recyclerView2.getDrawingTime(), (long) c);
                }
                i2++;
                c = c2;
            }
            if (c != 0) {
                ?? nanos = TimeUnit.MILLISECONDS.toNanos(c) + this.f10266d;
                int size2 = this.f10264b.size();
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    i = i4;
                    if (i3 >= size2) {
                        break;
                    }
                    RecyclerView recyclerView3 = this.f10264b.get(i3);
                    int i5 = i;
                    if (recyclerView3.getWindowVisibility() == 0) {
                        recyclerView3.f9924H.m40091a(recyclerView3, false);
                        i5 = i + recyclerView3.f9924H.f10271d;
                    }
                    i3++;
                    i4 = i5;
                }
                this.f10267f.ensureCapacity(i);
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    int i8 = i7;
                    if (i6 >= size2) {
                        break;
                    }
                    RecyclerView recyclerView4 = this.f10264b.get(i6);
                    int i9 = i8;
                    if (recyclerView4.getWindowVisibility() == 0) {
                        C2687a c2687a = recyclerView4.f9924H;
                        int abs = Math.abs(c2687a.f10268a) + Math.abs(c2687a.f10269b);
                        int i10 = 0;
                        while (true) {
                            i9 = i8;
                            if (i10 < c2687a.f10271d * 2) {
                                if (i8 >= this.f10267f.size()) {
                                    c2688b = new C2688b();
                                    this.f10267f.add(c2688b);
                                } else {
                                    c2688b = this.f10267f.get(i8);
                                }
                                int i11 = c2687a.f10270c[i10 + 1];
                                try {
                                    c2688b.f10272a = i11 <= abs;
                                    c2688b.f10273b = abs;
                                    c2688b.f10274c = i11;
                                    c2688b.f10275d = recyclerView4;
                                    c2688b.f10276e = c2687a.f10270c[i10];
                                    i8++;
                                    i10 += 2;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                        }
                    }
                    i6++;
                    i7 = i9;
                    th = th3;
                    this.f10265c = 0L;
                    C0863g.m44290a();
                    throw th;
                }
                Collections.sort(this.f10267f, f10263e);
                for (int i12 = 0; i12 < this.f10267f.size(); i12++) {
                    C2688b c2688b2 = this.f10267f.get(i12);
                    if (c2688b2.f10275d == null) {
                        break;
                    }
                    RecyclerView.AbstractC2657v m40095a = m40095a(c2688b2.f10275d, c2688b2.f10276e, (long) (c2688b2.f10272a ? (char) 65535 : nanos));
                    if (m40095a != null && m40095a.f10100c_ != null && m40095a.isBound() && !m40095a.isInvalid() && (recyclerView = m40095a.f10100c_.get()) != null) {
                        if (recyclerView.f9919C && recyclerView.f9975h.m40142b() != 0) {
                            recyclerView.m40465b();
                        }
                        C2687a c2687a2 = recyclerView.f9924H;
                        c2687a2.m40091a(recyclerView, true);
                        if (c2687a2.f10271d != 0) {
                            C0863g.m44289a("RV Nested Prefetch");
                            RecyclerView.C2654s c2654s = recyclerView.f9925I;
                            RecyclerView.AbstractC2626a abstractC2626a = recyclerView.f9981n;
                            c2654s.f10076d = 1;
                            c2654s.f10077e = abstractC2626a.getItemCount();
                            c2654s.f10079g = false;
                            c2654s.f10080h = false;
                            c2654s.f10081i = false;
                            for (int i13 = 0; i13 < c2687a2.f10271d * 2; i13 += 2) {
                                m40095a(recyclerView, c2687a2.f10270c[i13], (long) nanos);
                            }
                            C0863g.m44290a();
                        }
                    }
                    c2688b2.f10272a = false;
                    c2688b2.f10273b = 0;
                    c2688b2.f10274c = 0;
                    c2688b2.f10275d = null;
                    c2688b2.f10276e = 0;
                }
            }
        }
        this.f10265c = 0L;
        C0863g.m44290a();
    }
}
