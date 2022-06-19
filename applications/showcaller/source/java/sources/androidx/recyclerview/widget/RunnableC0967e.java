package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.core.p008os.C0632i;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.recyclerview.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e.class */
public final class RunnableC0967e implements Runnable {

    /* renamed from: d */
    static final ThreadLocal<RunnableC0967e> f4336d = new ThreadLocal<>();

    /* renamed from: e */
    static Comparator<C0970c> f4337e = new C0968a();

    /* renamed from: g */
    long f4339g;

    /* renamed from: h */
    long f4340h;

    /* renamed from: f */
    ArrayList<RecyclerView> f4338f = new ArrayList<>();

    /* renamed from: i */
    private ArrayList<C0970c> f4341i = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$a.class */
    class C0968a implements Comparator<C0970c> {
        C0968a() {
        }

        /* renamed from: a */
        public int compare(C0970c c0970c, C0970c c0970c2) {
            RecyclerView recyclerView = c0970c.f4349d;
            if ((recyclerView == null) != (c0970c2.f4349d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z = c0970c.f4346a;
            if (z != c0970c2.f4346a) {
                int i = 1;
                if (z) {
                    i = -1;
                }
                return i;
            }
            int i2 = c0970c2.f4347b - c0970c.f4347b;
            if (i2 != 0) {
                return i2;
            }
            int i3 = c0970c.f4348c - c0970c2.f4348c;
            if (i3 == 0) {
                return 0;
            }
            return i3;
        }
    }

    @SuppressLint({"VisibleForTests"})
    /* renamed from: androidx.recyclerview.widget.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$b.class */
    public static class C0969b implements RecyclerView.AbstractC0921o.AbstractC0924c {

        /* renamed from: a */
        int f4342a;

        /* renamed from: b */
        int f4343b;

        /* renamed from: c */
        int[] f4344c;

        /* renamed from: d */
        int f4345d;

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o.AbstractC0924c
        /* renamed from: a */
        public void mo31429a(int i, int i2) {
            if (i >= 0) {
                if (i2 < 0) {
                    throw new IllegalArgumentException("Pixel distance must be non-negative");
                }
                int i3 = this.f4345d * 2;
                int[] iArr = this.f4344c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.f4344c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i3 >= iArr.length) {
                    int[] iArr3 = new int[i3 * 2];
                    this.f4344c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.f4344c;
                iArr4[i3] = i;
                iArr4[i3 + 1] = i2;
                this.f4345d++;
                return;
            }
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }

        /* renamed from: b */
        public void m31428b() {
            int[] iArr = this.f4344c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f4345d = 0;
        }

        /* renamed from: c */
        void m31427c(RecyclerView recyclerView, boolean z) {
            this.f4345d = 0;
            int[] iArr = this.f4344c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.AbstractC0921o abstractC0921o = recyclerView.f4044y;
            if (recyclerView.f4042x == null || abstractC0921o == null || !abstractC0921o.m31789u0()) {
                return;
            }
            if (z) {
                if (!recyclerView.f4026p.m31537p()) {
                    abstractC0921o.mo31798p(recyclerView.f4042x.mo4501d(), this);
                }
            } else if (!recyclerView.m32011m0()) {
                abstractC0921o.mo31625o(this.f4342a, this.f4343b, recyclerView.f4037u0, this);
            }
            int i = this.f4345d;
            if (i <= abstractC0921o.f4116m) {
                return;
            }
            abstractC0921o.f4116m = i;
            abstractC0921o.f4117n = z;
            recyclerView.f4022n.m31754K();
        }

        /* renamed from: d */
        public boolean m31426d(int i) {
            if (this.f4344c != null) {
                int i2 = this.f4345d;
                for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                    if (this.f4344c[i3] == i) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        /* renamed from: e */
        void m31425e(int i, int i2) {
            this.f4342a = i;
            this.f4343b = i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$c.class */
    public static class C0970c {

        /* renamed from: a */
        public boolean f4346a;

        /* renamed from: b */
        public int f4347b;

        /* renamed from: c */
        public int f4348c;

        /* renamed from: d */
        public RecyclerView f4349d;

        /* renamed from: e */
        public int f4350e;

        C0970c() {
        }

        /* renamed from: a */
        public void m31424a() {
            this.f4346a = false;
            this.f4347b = 0;
            this.f4348c = 0;
            this.f4349d = null;
            this.f4350e = 0;
        }
    }

    /* renamed from: b */
    private void m31439b() {
        int i;
        int i2;
        C0970c c0970c;
        int size = this.f4338f.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= size) {
                break;
            }
            RecyclerView recyclerView = this.f4338f.get(i3);
            int i5 = i;
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.f4035t0.m31427c(recyclerView, false);
                i5 = i + recyclerView.f4035t0.f4345d;
            }
            i3++;
            i4 = i5;
        }
        this.f4341i.ensureCapacity(i);
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 >= size) {
                Collections.sort(this.f4341i, f4337e);
                return;
            }
            RecyclerView recyclerView2 = this.f4338f.get(i6);
            if (recyclerView2.getWindowVisibility() != 0) {
                i2 = i8;
            } else {
                C0969b c0969b = recyclerView2.f4035t0;
                int abs = Math.abs(c0969b.f4342a) + Math.abs(c0969b.f4343b);
                int i9 = 0;
                while (true) {
                    i2 = i8;
                    if (i9 < c0969b.f4345d * 2) {
                        if (i8 >= this.f4341i.size()) {
                            c0970c = new C0970c();
                            this.f4341i.add(c0970c);
                        } else {
                            c0970c = this.f4341i.get(i8);
                        }
                        int[] iArr = c0969b.f4344c;
                        int i10 = iArr[i9 + 1];
                        c0970c.f4346a = i10 <= abs;
                        c0970c.f4347b = abs;
                        c0970c.f4348c = i10;
                        c0970c.f4349d = recyclerView2;
                        c0970c.f4350e = iArr[i9];
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
    private void m31438c(C0970c c0970c, long j) {
        RecyclerView.AbstractC0905b0 m31432i = m31432i(c0970c.f4349d, c0970c.f4350e, c0970c.f4346a ? (char) 65535 : j);
        if (m31432i == null || m31432i.f4071c == null || !m31432i.m31913s() || m31432i.m31912t()) {
            return;
        }
        m31433h(m31432i.f4071c.get(), j);
    }

    /* renamed from: d */
    private void m31437d(long j) {
        for (int i = 0; i < this.f4341i.size(); i++) {
            C0970c c0970c = this.f4341i.get(i);
            if (c0970c.f4349d == null) {
                return;
            }
            m31438c(c0970c, j);
            c0970c.m31424a();
        }
    }

    /* renamed from: e */
    static boolean m31436e(RecyclerView recyclerView, int i) {
        int m31509j = recyclerView.f4028q.m31509j();
        for (int i2 = 0; i2 < m31509j; i2++) {
            RecyclerView.AbstractC0905b0 m32029g0 = RecyclerView.m32029g0(recyclerView.f4028q.m31510i(i2));
            if (m32029g0.f4072d == i && !m32029g0.m31912t()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    private void m31433h(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.f4001Q && recyclerView.f4028q.m31509j() != 0) {
            recyclerView.m32056V0();
        }
        C0969b c0969b = recyclerView.f4035t0;
        c0969b.m31427c(recyclerView, true);
        if (c0969b.f4345d == 0) {
            return;
        }
        try {
            C0632i.m33186a("RV Nested Prefetch");
            recyclerView.f4037u0.m31699f(recyclerView.f4042x);
            for (int i = 0; i < c0969b.f4345d * 2; i += 2) {
                m31432i(recyclerView, c0969b.f4344c[i], j);
            }
        } finally {
            C0632i.m33185b();
        }
    }

    /* renamed from: i */
    private RecyclerView.AbstractC0905b0 m31432i(RecyclerView recyclerView, int i, long j) {
        if (m31436e(recyclerView, i)) {
            return null;
        }
        RecyclerView.C0932u c0932u = recyclerView.f4022n;
        try {
            recyclerView.m32082H0();
            RecyclerView.AbstractC0905b0 m31756I = c0932u.m31756I(i, false, j);
            if (m31756I != null) {
                if (!m31756I.m31913s() || m31756I.m31912t()) {
                    c0932u.m31751a(m31756I, false);
                } else {
                    c0932u.m31763B(m31756I.f4070b);
                }
            }
            return m31756I;
        } finally {
            recyclerView.m32078J0(false);
        }
    }

    /* renamed from: a */
    public void m31440a(RecyclerView recyclerView) {
        this.f4338f.add(recyclerView);
    }

    /* renamed from: f */
    public void m31435f(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f4339g == 0) {
            this.f4339g = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.f4035t0.m31425e(i, i2);
    }

    /* renamed from: g */
    void m31434g(long j) {
        m31439b();
        m31437d(j);
    }

    /* renamed from: j */
    public void m31431j(RecyclerView recyclerView) {
        this.f4338f.remove(recyclerView);
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
            C0632i.m33186a("RV Prefetch");
            if (!this.f4338f.isEmpty()) {
                int size = this.f4338f.size();
                int i = 0;
                ?? r0 = 0;
                while (true) {
                    c = r0;
                    if (i >= size) {
                        break;
                    }
                    RecyclerView recyclerView = this.f4338f.get(i);
                    char c2 = c;
                    if (recyclerView.getWindowVisibility() == 0) {
                        c2 = Math.max(recyclerView.getDrawingTime(), (long) c);
                    }
                    i++;
                    r0 = c2;
                }
                if (c != 0) {
                    m31434g(TimeUnit.MILLISECONDS.toNanos(c) + this.f4340h);
                }
            }
        } finally {
            this.f4339g = 0L;
            C0632i.m33185b();
        }
    }
}
