package p000;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView$b0;
import java.util.ArrayList;
import java.util.List;
/* renamed from: a00 */
/* loaded from: classes-dex2jar.jar:a00.class */
public class a00 {

    /* renamed from: a */
    public final AbstractC0004b f5a;

    /* renamed from: b */
    public final C0003a f6b = new C0003a();

    /* renamed from: c */
    public final List<View> f7c = new ArrayList();

    /* renamed from: a00$a */
    /* loaded from: classes-dex2jar.jar:a00$a.class */
    public static class C0003a {

        /* renamed from: a */
        public long f8a = 0;

        /* renamed from: b */
        public C0003a f9b;

        /* renamed from: a */
        public void m7440a(int i) {
            if (i < 64) {
                this.f8a &= (1 << i) ^ (-1);
                return;
            }
            C0003a c0003a = this.f9b;
            if (c0003a == null) {
                return;
            }
            c0003a.m7440a(i - 64);
        }

        /* renamed from: b */
        public int m7439b(int i) {
            C0003a c0003a = this.f9b;
            return c0003a == null ? i >= 64 ? Long.bitCount(this.f8a) : Long.bitCount(this.f8a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f8a & ((1 << i) - 1)) : c0003a.m7439b(i - 64) + Long.bitCount(this.f8a);
        }

        /* renamed from: c */
        public final void m7438c() {
            if (this.f9b == null) {
                this.f9b = new C0003a();
            }
        }

        /* renamed from: d */
        public boolean m7437d(int i) {
            if (i < 64) {
                return (this.f8a & (1 << i)) != 0;
            }
            m7438c();
            return this.f9b.m7437d(i - 64);
        }

        /* renamed from: e */
        public void m7436e(int i, boolean z) {
            if (i >= 64) {
                m7438c();
                this.f9b.m7436e(i - 64, z);
                return;
            }
            long j = this.f8a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f8a = ((j & (j2 ^ (-1))) << 1) | (j & j2);
            if (z) {
                m7433h(i);
            } else {
                m7440a(i);
            }
            if (!z2 && this.f9b == null) {
                return;
            }
            m7438c();
            this.f9b.m7436e(0, z2);
        }

        /* renamed from: f */
        public boolean m7435f(int i) {
            if (i >= 64) {
                m7438c();
                return this.f9b.m7435f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f8a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (j ^ (-1));
            this.f8a = j3;
            long j4 = j - 1;
            this.f8a = (j3 & j4) | Long.rotateRight((j4 ^ (-1)) & j3, 1);
            C0003a c0003a = this.f9b;
            if (c0003a != null) {
                if (c0003a.m7437d(0)) {
                    m7433h(63);
                }
                this.f9b.m7435f(0);
            }
            return z;
        }

        /* renamed from: g */
        public void m7434g() {
            this.f8a = 0L;
            C0003a c0003a = this.f9b;
            if (c0003a != null) {
                c0003a.m7434g();
            }
        }

        /* renamed from: h */
        public void m7433h(int i) {
            if (i < 64) {
                this.f8a |= 1 << i;
                return;
            }
            m7438c();
            this.f9b.m7433h(i - 64);
        }

        public String toString() {
            String str;
            if (this.f9b == null) {
                str = Long.toBinaryString(this.f8a);
            } else {
                str = this.f9b.toString() + "xx" + Long.toBinaryString(this.f8a);
            }
            return str;
        }
    }

    /* renamed from: a00$b */
    /* loaded from: classes-dex2jar.jar:a00$b.class */
    public interface AbstractC0004b {
        /* renamed from: a */
        View m7432a(int i);

        /* renamed from: b */
        void m7431b(View view);

        /* renamed from: c */
        int m7430c();

        /* renamed from: d */
        RecyclerView$b0 m7429d(View view);

        /* renamed from: e */
        void m7428e(int i);

        /* renamed from: f */
        void m7427f(View view, int i);

        /* renamed from: g */
        void m7426g();

        /* renamed from: h */
        int m7425h(View view);

        /* renamed from: i */
        void m7424i(View view);

        /* renamed from: j */
        void m7423j(int i);

        /* renamed from: k */
        void m7422k(View view, int i, ViewGroup.LayoutParams layoutParams);
    }

    public a00(AbstractC0004b abstractC0004b) {
        this.f5a = abstractC0004b;
    }

    /* renamed from: a */
    public void m7460a(View view, int i, boolean z) {
        int m7430c = i < 0 ? this.f5a.m7430c() : m7453h(i);
        this.f6b.m7436e(m7430c, z);
        if (z) {
            m7449l(view);
        }
        this.f5a.m7427f(view, m7430c);
    }

    /* renamed from: b */
    public void m7459b(View view, boolean z) {
        m7460a(view, -1, z);
    }

    /* renamed from: c */
    public void m7458c(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int m7430c = i < 0 ? this.f5a.m7430c() : m7453h(i);
        this.f6b.m7436e(m7430c, z);
        if (z) {
            m7449l(view);
        }
        this.f5a.m7422k(view, m7430c, layoutParams);
    }

    /* renamed from: d */
    public void m7457d(int i) {
        int m7453h = m7453h(i);
        this.f6b.m7435f(m7453h);
        this.f5a.m7428e(m7453h);
    }

    /* renamed from: e */
    public View m7456e(int i) {
        int size = this.f7c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f7c.get(i2);
            RecyclerView$b0 m7429d = this.f5a.m7429d(view);
            if (m7429d.getLayoutPosition() == i && !m7429d.isInvalid() && !m7429d.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    /* renamed from: f */
    public View m7455f(int i) {
        return this.f5a.m7432a(m7453h(i));
    }

    /* renamed from: g */
    public int m7454g() {
        return this.f5a.m7430c() - this.f7c.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f6b.m7437d(r8) == false) goto L19;
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
    public final int m7453h(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L6
            r0 = -1
            return r0
        L6:
            r0 = r5
            a00$b r0 = r0.f5a
            int r0 = r0.m7430c()
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
            a00$a r2 = r2.f6b
            r3 = r8
            int r2 = r2.m7439b(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L3d
        L2a:
            r0 = r5
            a00$a r0 = r0.f6b
            r1 = r8
            boolean r0 = r0.m7437d(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: p000.a00.m7453h(int):int");
    }

    /* renamed from: i */
    public View m7452i(int i) {
        return this.f5a.m7432a(i);
    }

    /* renamed from: j */
    public int m7451j() {
        return this.f5a.m7430c();
    }

    /* renamed from: k */
    public void m7450k(View view) {
        int m7425h = this.f5a.m7425h(view);
        if (m7425h >= 0) {
            this.f6b.m7433h(m7425h);
            m7449l(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* renamed from: l */
    public final void m7449l(View view) {
        this.f7c.add(view);
        this.f5a.m7431b(view);
    }

    /* renamed from: m */
    public int m7448m(View view) {
        int m7425h = this.f5a.m7425h(view);
        if (m7425h != -1 && !this.f6b.m7437d(m7425h)) {
            return m7425h - this.f6b.m7439b(m7425h);
        }
        return -1;
    }

    /* renamed from: n */
    public boolean m7447n(View view) {
        return this.f7c.contains(view);
    }

    /* renamed from: o */
    public void m7446o() {
        this.f6b.m7434g();
        for (int size = this.f7c.size() - 1; size >= 0; size--) {
            this.f5a.m7424i(this.f7c.get(size));
            this.f7c.remove(size);
        }
        this.f5a.m7426g();
    }

    /* renamed from: p */
    public void m7445p(View view) {
        int m7425h = this.f5a.m7425h(view);
        if (m7425h < 0) {
            return;
        }
        if (this.f6b.m7435f(m7425h)) {
            m7441t(view);
        }
        this.f5a.m7423j(m7425h);
    }

    /* renamed from: q */
    public void m7444q(int i) {
        int m7453h = m7453h(i);
        View m7432a = this.f5a.m7432a(m7453h);
        if (m7432a == null) {
            return;
        }
        if (this.f6b.m7435f(m7453h)) {
            m7441t(m7432a);
        }
        this.f5a.m7423j(m7453h);
    }

    /* renamed from: r */
    public boolean m7443r(View view) {
        int m7425h = this.f5a.m7425h(view);
        if (m7425h == -1) {
            m7441t(view);
            return true;
        } else if (!this.f6b.m7437d(m7425h)) {
            return false;
        } else {
            this.f6b.m7435f(m7425h);
            m7441t(view);
            this.f5a.m7423j(m7425h);
            return true;
        }
    }

    /* renamed from: s */
    public void m7442s(View view) {
        int m7425h = this.f5a.m7425h(view);
        if (m7425h < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.f6b.m7437d(m7425h)) {
            this.f6b.m7440a(m7425h);
            m7441t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    /* renamed from: t */
    public final boolean m7441t(View view) {
        if (this.f7c.remove(view)) {
            this.f5a.m7424i(view);
            return true;
        }
        return false;
    }

    public String toString() {
        return this.f6b.toString() + ", hidden list:" + this.f7c.size();
    }
}
