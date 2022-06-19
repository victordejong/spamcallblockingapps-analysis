package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b.class */
public class C0421b {

    /* renamed from: a */
    final AbstractC0423b f2333a;

    /* renamed from: b */
    final C0422a f2334b = new C0422a();

    /* renamed from: c */
    final List<View> f2335c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$a.class */
    public static class C0422a {

        /* renamed from: a */
        long f2336a = 0;

        /* renamed from: b */
        C0422a f2337b;

        C0422a() {
        }

        /* renamed from: c */
        private void m12419c() {
            if (this.f2337b == null) {
                this.f2337b = new C0422a();
            }
        }

        /* renamed from: a */
        void m12421a(int i) {
            if (i < 64) {
                this.f2336a &= (1 << i) ^ (-1);
                return;
            }
            C0422a c0422a = this.f2337b;
            if (c0422a == null) {
                return;
            }
            c0422a.m12421a(i - 64);
        }

        /* renamed from: b */
        int m12420b(int i) {
            C0422a c0422a = this.f2337b;
            return c0422a == null ? i >= 64 ? Long.bitCount(this.f2336a) : Long.bitCount(this.f2336a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f2336a & ((1 << i) - 1)) : c0422a.m12420b(i - 64) + Long.bitCount(this.f2336a);
        }

        /* renamed from: d */
        boolean m12418d(int i) {
            if (i < 64) {
                return (this.f2336a & (1 << i)) != 0;
            }
            m12419c();
            return this.f2337b.m12418d(i - 64);
        }

        /* renamed from: e */
        void m12417e(int i, boolean z) {
            if (i >= 64) {
                m12419c();
                this.f2337b.m12417e(i - 64, z);
                return;
            }
            long j = this.f2336a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f2336a = ((j & (j2 ^ (-1))) << 1) | (j & j2);
            if (z) {
                m12414h(i);
            } else {
                m12421a(i);
            }
            if (!z2 && this.f2337b == null) {
                return;
            }
            m12419c();
            this.f2337b.m12417e(0, z2);
        }

        /* renamed from: f */
        boolean m12416f(int i) {
            if (i >= 64) {
                m12419c();
                return this.f2337b.m12416f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f2336a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (j ^ (-1));
            this.f2336a = j3;
            long j4 = j - 1;
            this.f2336a = (j3 & j4) | Long.rotateRight((j4 ^ (-1)) & j3, 1);
            C0422a c0422a = this.f2337b;
            if (c0422a != null) {
                if (c0422a.m12418d(0)) {
                    m12414h(63);
                }
                this.f2337b.m12416f(0);
            }
            return z;
        }

        /* renamed from: g */
        void m12415g() {
            this.f2336a = 0L;
            C0422a c0422a = this.f2337b;
            if (c0422a != null) {
                c0422a.m12415g();
            }
        }

        /* renamed from: h */
        void m12414h(int i) {
            if (i < 64) {
                this.f2336a |= 1 << i;
                return;
            }
            m12419c();
            this.f2337b.m12414h(i - 64);
        }

        public String toString() {
            String str;
            if (this.f2337b == null) {
                str = Long.toBinaryString(this.f2336a);
            } else {
                str = this.f2337b.toString() + "xx" + Long.toBinaryString(this.f2336a);
            }
            return str;
        }
    }

    /* renamed from: androidx.recyclerview.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$b.class */
    public interface AbstractC0423b {
        /* renamed from: a */
        View m12413a(int i);

        /* renamed from: b */
        void m12412b(View view);

        /* renamed from: c */
        RecyclerView$a0 m12411c(View view);

        /* renamed from: d */
        void m12410d(int i);

        /* renamed from: e */
        void m12409e(View view);

        /* renamed from: f */
        void m12408f(View view, int i);

        /* renamed from: g */
        int m12407g();

        /* renamed from: h */
        void m12406h(int i);

        /* renamed from: i */
        void m12405i();

        /* renamed from: j */
        void m12404j(View view, int i, ViewGroup.LayoutParams layoutParams);

        /* renamed from: k */
        int m12403k(View view);
    }

    C0421b(AbstractC0423b abstractC0423b) {
        this.f2333a = abstractC0423b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f2334b.m12418d(r8) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        return r8;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m12434h(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L6
            r0 = -1
            return r0
        L6:
            r0 = r5
            androidx.recyclerview.widget.b$b r0 = r0.f2333a
            int r0 = r0.m12407g()
            r7 = r0
            r0 = r6
            r8 = r0
        L12:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L45
            r0 = r6
            r1 = r8
            r2 = r5
            androidx.recyclerview.widget.b$a r2 = r2.f2334b
            r3 = r8
            int r2 = r2.m12420b(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L3d
        L2a:
            r0 = r5
            androidx.recyclerview.widget.b$a r0 = r0.f2334b
            r1 = r8
            boolean r0 = r0.m12418d(r1)
            if (r0 == 0) goto L3b
            int r8 = r8 + 1
            goto L2a
        L3b:
            r0 = r8
            return r0
        L3d:
            r0 = r8
            r1 = r9
            int r0 = r0 + r1
            r8 = r0
            goto L12
        L45:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0421b.m12434h(int):int");
    }

    /* renamed from: l */
    private void m12430l(View view) {
        this.f2335c.add(view);
        this.f2333a.m12412b(view);
    }

    /* renamed from: t */
    private boolean m12422t(View view) {
        if (this.f2335c.remove(view)) {
            this.f2333a.m12409e(view);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public void m12441a(View view, int i, boolean z) {
        int m12407g = i < 0 ? this.f2333a.m12407g() : m12434h(i);
        this.f2334b.m12417e(m12407g, z);
        if (z) {
            m12430l(view);
        }
        this.f2333a.m12408f(view, m12407g);
    }

    /* renamed from: b */
    void m12440b(View view, boolean z) {
        m12441a(view, -1, z);
    }

    /* renamed from: c */
    public void m12439c(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int m12407g = i < 0 ? this.f2333a.m12407g() : m12434h(i);
        this.f2334b.m12417e(m12407g, z);
        if (z) {
            m12430l(view);
        }
        this.f2333a.m12404j(view, m12407g, layoutParams);
    }

    /* renamed from: d */
    public void m12438d(int i) {
        int m12434h = m12434h(i);
        this.f2334b.m12416f(m12434h);
        this.f2333a.m12410d(m12434h);
    }

    /* renamed from: e */
    public View m12437e(int i) {
        int size = this.f2335c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f2335c.get(i2);
            RecyclerView$a0 m12411c = this.f2333a.m12411c(view);
            if (m12411c.m12789m() == i && !m12411c.m12782t() && !m12411c.m12780v()) {
                return view;
            }
        }
        return null;
    }

    /* renamed from: f */
    public View m12436f(int i) {
        return this.f2333a.m12413a(m12434h(i));
    }

    /* renamed from: g */
    public int m12435g() {
        return this.f2333a.m12407g() - this.f2335c.size();
    }

    /* renamed from: i */
    public View m12433i(int i) {
        return this.f2333a.m12413a(i);
    }

    /* renamed from: j */
    public int m12432j() {
        return this.f2333a.m12407g();
    }

    /* renamed from: k */
    void m12431k(View view) {
        int m12403k = this.f2333a.m12403k(view);
        if (m12403k >= 0) {
            this.f2334b.m12414h(m12403k);
            m12430l(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* renamed from: m */
    public int m12429m(View view) {
        int m12403k = this.f2333a.m12403k(view);
        if (m12403k != -1 && !this.f2334b.m12418d(m12403k)) {
            return m12403k - this.f2334b.m12420b(m12403k);
        }
        return -1;
    }

    /* renamed from: n */
    public boolean m12428n(View view) {
        return this.f2335c.contains(view);
    }

    /* renamed from: o */
    void m12427o() {
        this.f2334b.m12415g();
        for (int size = this.f2335c.size() - 1; size >= 0; size--) {
            this.f2333a.m12409e(this.f2335c.get(size));
            this.f2335c.remove(size);
        }
        this.f2333a.m12405i();
    }

    /* renamed from: p */
    public void m12426p(View view) {
        int m12403k = this.f2333a.m12403k(view);
        if (m12403k < 0) {
            return;
        }
        if (this.f2334b.m12416f(m12403k)) {
            m12422t(view);
        }
        this.f2333a.m12406h(m12403k);
    }

    /* renamed from: q */
    public void m12425q(int i) {
        int m12434h = m12434h(i);
        View m12413a = this.f2333a.m12413a(m12434h);
        if (m12413a == null) {
            return;
        }
        if (this.f2334b.m12416f(m12434h)) {
            m12422t(m12413a);
        }
        this.f2333a.m12406h(m12434h);
    }

    /* renamed from: r */
    boolean m12424r(View view) {
        int m12403k = this.f2333a.m12403k(view);
        if (m12403k == -1) {
            m12422t(view);
            return true;
        } else if (!this.f2334b.m12418d(m12403k)) {
            return false;
        } else {
            this.f2334b.m12416f(m12403k);
            m12422t(view);
            this.f2333a.m12406h(m12403k);
            return true;
        }
    }

    /* renamed from: s */
    public void m12423s(View view) {
        int m12403k = this.f2333a.m12403k(view);
        if (m12403k < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.f2334b.m12418d(m12403k)) {
            this.f2334b.m12421a(m12403k);
            m12422t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f2334b.toString() + ", hidden list:" + this.f2335c.size();
    }
}
