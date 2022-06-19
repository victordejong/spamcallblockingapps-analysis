package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b.class */
public class C0987b {

    /* renamed from: a */
    final AbstractC0989b f3080a;

    /* renamed from: b */
    final C0988a f3081b = new C0988a();

    /* renamed from: c */
    final List<View> f3082c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$a.class */
    public static class C0988a {

        /* renamed from: a */
        long f3083a = 0;

        /* renamed from: b */
        C0988a f3084b;

        C0988a() {
        }

        /* renamed from: b */
        private void m4663b() {
            if (this.f3084b == null) {
                this.f3084b = new C0988a();
            }
        }

        /* renamed from: a */
        void m4666a() {
            this.f3083a = 0L;
            C0988a c0988a = this.f3084b;
            if (c0988a != null) {
                c0988a.m4666a();
            }
        }

        /* renamed from: a */
        void m4665a(int i) {
            if (i < 64) {
                this.f3083a |= 1 << i;
                return;
            }
            m4663b();
            this.f3084b.m4665a(i - 64);
        }

        /* renamed from: a */
        void m4664a(int i, boolean z) {
            if (i >= 64) {
                m4663b();
                this.f3084b.m4664a(i - 64, z);
                return;
            }
            boolean z2 = (this.f3083a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            long j2 = this.f3083a;
            this.f3083a = ((j2 & (j ^ (-1))) << 1) | (j2 & j);
            if (z) {
                m4665a(i);
            } else {
                m4662b(i);
            }
            if (!z2 && this.f3084b == null) {
                return;
            }
            m4663b();
            this.f3084b.m4664a(0, z2);
        }

        /* renamed from: b */
        void m4662b(int i) {
            if (i < 64) {
                this.f3083a &= (1 << i) ^ (-1);
                return;
            }
            C0988a c0988a = this.f3084b;
            if (c0988a == null) {
                return;
            }
            c0988a.m4662b(i - 64);
        }

        /* renamed from: c */
        boolean m4661c(int i) {
            if (i < 64) {
                return (this.f3083a & (1 << i)) != 0;
            }
            m4663b();
            return this.f3084b.m4661c(i - 64);
        }

        /* renamed from: d */
        boolean m4660d(int i) {
            if (i >= 64) {
                m4663b();
                return this.f3084b.m4660d(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.f3083a & j) != 0;
            this.f3083a &= j ^ (-1);
            long j2 = j - 1;
            long j3 = this.f3083a;
            this.f3083a = Long.rotateRight(j3 & (j2 ^ (-1)), 1) | (j3 & j2);
            C0988a c0988a = this.f3084b;
            if (c0988a != null) {
                if (c0988a.m4661c(0)) {
                    m4665a(63);
                }
                this.f3084b.m4660d(0);
            }
            return z;
        }

        /* renamed from: e */
        int m4659e(int i) {
            C0988a c0988a = this.f3084b;
            return c0988a == null ? i >= 64 ? Long.bitCount(this.f3083a) : Long.bitCount(this.f3083a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f3083a & ((1 << i) - 1)) : c0988a.m4659e(i - 64) + Long.bitCount(this.f3083a);
        }

        public String toString() {
            String str;
            if (this.f3084b == null) {
                str = Long.toBinaryString(this.f3083a);
            } else {
                str = this.f3084b.toString() + "xx" + Long.toBinaryString(this.f3083a);
            }
            return str;
        }
    }

    /* renamed from: androidx.recyclerview.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$b.class */
    public interface AbstractC0989b {
        /* renamed from: a */
        int mo4658a();

        /* renamed from: a */
        int mo4656a(View view);

        /* renamed from: a */
        void mo4657a(int i);

        /* renamed from: a */
        void mo4655a(View view, int i);

        /* renamed from: a */
        void mo4654a(View view, int i, ViewGroup.LayoutParams layoutParams);

        /* renamed from: b */
        View mo4652b(int i);

        /* renamed from: b */
        RecyclerView.AbstractC0977w mo4651b(View view);

        /* renamed from: b */
        void mo4653b();

        /* renamed from: c */
        void mo4650c(int i);

        /* renamed from: c */
        void mo4649c(View view);

        /* renamed from: d */
        void mo4648d(View view);
    }

    public C0987b(AbstractC0989b abstractC0989b) {
        this.f3080a = abstractC0989b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f3081b.m4661c(r8) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        return r8;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m4670f(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L6
            r0 = -1
            return r0
        L6:
            r0 = r5
            androidx.recyclerview.widget.b$b r0 = r0.f3080a
            int r0 = r0.mo4658a()
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
            androidx.recyclerview.widget.b$a r2 = r2.f3081b
            r3 = r8
            int r2 = r2.m4659e(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L3d
        L2a:
            r0 = r5
            androidx.recyclerview.widget.b$a r0 = r0.f3081b
            r1 = r8
            boolean r0 = r0.m4661c(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0987b.m4670f(int):int");
    }

    /* renamed from: g */
    private void m4668g(View view) {
        this.f3082c.add(view);
        this.f3080a.mo4649c(view);
    }

    /* renamed from: h */
    private boolean m4667h(View view) {
        if (this.f3082c.remove(view)) {
            this.f3080a.mo4648d(view);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public void m4686a() {
        this.f3081b.m4666a();
        for (int size = this.f3082c.size() - 1; size >= 0; size--) {
            this.f3080a.mo4648d(this.f3082c.get(size));
            this.f3082c.remove(size);
        }
        this.f3080a.mo4653b();
    }

    /* renamed from: a */
    public void m4685a(int i) {
        int m4670f = m4670f(i);
        View mo4652b = this.f3080a.mo4652b(m4670f);
        if (mo4652b == null) {
            return;
        }
        if (this.f3081b.m4660d(m4670f)) {
            m4667h(mo4652b);
        }
        this.f3080a.mo4657a(m4670f);
    }

    /* renamed from: a */
    public void m4684a(View view) {
        int mo4656a = this.f3080a.mo4656a(view);
        if (mo4656a < 0) {
            return;
        }
        if (this.f3081b.m4660d(mo4656a)) {
            m4667h(view);
        }
        this.f3080a.mo4657a(mo4656a);
    }

    /* renamed from: a */
    public void m4683a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int mo4658a = i < 0 ? this.f3080a.mo4658a() : m4670f(i);
        this.f3081b.m4664a(mo4658a, z);
        if (z) {
            m4668g(view);
        }
        this.f3080a.mo4654a(view, mo4658a, layoutParams);
    }

    /* renamed from: a */
    public void m4682a(View view, int i, boolean z) {
        int mo4658a = i < 0 ? this.f3080a.mo4658a() : m4670f(i);
        this.f3081b.m4664a(mo4658a, z);
        if (z) {
            m4668g(view);
        }
        this.f3080a.mo4655a(view, mo4658a);
    }

    /* renamed from: a */
    public void m4681a(View view, boolean z) {
        m4682a(view, -1, z);
    }

    /* renamed from: b */
    public int m4680b() {
        return this.f3080a.mo4658a() - this.f3082c.size();
    }

    /* renamed from: b */
    public int m4678b(View view) {
        int mo4656a = this.f3080a.mo4656a(view);
        if (mo4656a != -1 && !this.f3081b.m4661c(mo4656a)) {
            return mo4656a - this.f3081b.m4659e(mo4656a);
        }
        return -1;
    }

    /* renamed from: b */
    public View m4679b(int i) {
        return this.f3080a.mo4652b(m4670f(i));
    }

    /* renamed from: c */
    public int m4677c() {
        return this.f3080a.mo4658a();
    }

    /* renamed from: c */
    public View m4676c(int i) {
        int size = this.f3082c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f3082c.get(i2);
            RecyclerView.AbstractC0977w mo4651b = this.f3080a.mo4651b(view);
            if (mo4651b.getLayoutPosition() == i && !mo4651b.isInvalid() && !mo4651b.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    /* renamed from: c */
    public boolean m4675c(View view) {
        return this.f3082c.contains(view);
    }

    /* renamed from: d */
    public View m4674d(int i) {
        return this.f3080a.mo4652b(i);
    }

    /* renamed from: d */
    public void m4673d(View view) {
        int mo4656a = this.f3080a.mo4656a(view);
        if (mo4656a >= 0) {
            this.f3081b.m4665a(mo4656a);
            m4668g(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* renamed from: e */
    public void m4672e(int i) {
        int m4670f = m4670f(i);
        this.f3081b.m4660d(m4670f);
        this.f3080a.mo4650c(m4670f);
    }

    /* renamed from: e */
    public void m4671e(View view) {
        int mo4656a = this.f3080a.mo4656a(view);
        if (mo4656a < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.f3081b.m4661c(mo4656a)) {
            this.f3081b.m4662b(mo4656a);
            m4667h(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    /* renamed from: f */
    public boolean m4669f(View view) {
        int mo4656a = this.f3080a.mo4656a(view);
        if (mo4656a == -1) {
            m4667h(view);
            return true;
        } else if (!this.f3081b.m4661c(mo4656a)) {
            return false;
        } else {
            this.f3081b.m4660d(mo4656a);
            m4667h(view);
            this.f3080a.mo4657a(mo4656a);
            return true;
        }
    }

    public String toString() {
        return this.f3081b.toString() + ", hidden list:" + this.f3082c.size();
    }
}
