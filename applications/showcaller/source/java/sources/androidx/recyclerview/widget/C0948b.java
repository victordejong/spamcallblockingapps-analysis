package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b.class */
public class C0948b {

    /* renamed from: a */
    final AbstractC0950b f4244a;

    /* renamed from: b */
    final C0949a f4245b = new C0949a();

    /* renamed from: c */
    final List<View> f4246c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$a.class */
    public static class C0949a {

        /* renamed from: a */
        long f4247a = 0;

        /* renamed from: b */
        C0949a f4248b;

        C0949a() {
        }

        /* renamed from: c */
        private void m31496c() {
            if (this.f4248b == null) {
                this.f4248b = new C0949a();
            }
        }

        /* renamed from: a */
        void m31498a(int i) {
            if (i < 64) {
                this.f4247a &= (1 << i) ^ (-1);
                return;
            }
            C0949a c0949a = this.f4248b;
            if (c0949a == null) {
                return;
            }
            c0949a.m31498a(i - 64);
        }

        /* renamed from: b */
        int m31497b(int i) {
            C0949a c0949a = this.f4248b;
            return c0949a == null ? i >= 64 ? Long.bitCount(this.f4247a) : Long.bitCount(this.f4247a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f4247a & ((1 << i) - 1)) : c0949a.m31497b(i - 64) + Long.bitCount(this.f4247a);
        }

        /* renamed from: d */
        boolean m31495d(int i) {
            if (i < 64) {
                return (this.f4247a & (1 << i)) != 0;
            }
            m31496c();
            return this.f4248b.m31495d(i - 64);
        }

        /* renamed from: e */
        void m31494e(int i, boolean z) {
            if (i >= 64) {
                m31496c();
                this.f4248b.m31494e(i - 64, z);
                return;
            }
            long j = this.f4247a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f4247a = ((j & (j2 ^ (-1))) << 1) | (j & j2);
            if (z) {
                m31491h(i);
            } else {
                m31498a(i);
            }
            if (!z2 && this.f4248b == null) {
                return;
            }
            m31496c();
            this.f4248b.m31494e(0, z2);
        }

        /* renamed from: f */
        boolean m31493f(int i) {
            if (i >= 64) {
                m31496c();
                return this.f4248b.m31493f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f4247a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (j ^ (-1));
            this.f4247a = j3;
            long j4 = j - 1;
            this.f4247a = (j3 & j4) | Long.rotateRight((j4 ^ (-1)) & j3, 1);
            C0949a c0949a = this.f4248b;
            if (c0949a != null) {
                if (c0949a.m31495d(0)) {
                    m31491h(63);
                }
                this.f4248b.m31493f(0);
            }
            return z;
        }

        /* renamed from: g */
        void m31492g() {
            this.f4247a = 0L;
            C0949a c0949a = this.f4248b;
            if (c0949a != null) {
                c0949a.m31492g();
            }
        }

        /* renamed from: h */
        void m31491h(int i) {
            if (i < 64) {
                this.f4247a |= 1 << i;
                return;
            }
            m31496c();
            this.f4248b.m31491h(i - 64);
        }

        public String toString() {
            String str;
            if (this.f4248b == null) {
                str = Long.toBinaryString(this.f4247a);
            } else {
                str = this.f4248b.toString() + "xx" + Long.toBinaryString(this.f4247a);
            }
            return str;
        }
    }

    /* renamed from: androidx.recyclerview.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$b.class */
    public interface AbstractC0950b {
        /* renamed from: a */
        View mo31490a(int i);

        /* renamed from: b */
        void mo31489b(View view);

        /* renamed from: c */
        int mo31488c();

        /* renamed from: d */
        void mo31487d();

        /* renamed from: e */
        int mo31486e(View view);

        /* renamed from: f */
        RecyclerView.AbstractC0905b0 mo31485f(View view);

        /* renamed from: g */
        void mo31484g(int i);

        /* renamed from: h */
        void mo31483h(View view);

        /* renamed from: i */
        void mo31482i(View view, int i);

        /* renamed from: j */
        void mo31481j(int i);

        /* renamed from: k */
        void mo31480k(View view, int i, ViewGroup.LayoutParams layoutParams);
    }

    public C0948b(AbstractC0950b abstractC0950b) {
        this.f4244a = abstractC0950b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f4245b.m31495d(r8) == false) goto L19;
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
    private int m31511h(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L6
            r0 = -1
            return r0
        L6:
            r0 = r5
            androidx.recyclerview.widget.b$b r0 = r0.f4244a
            int r0 = r0.mo31488c()
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
            androidx.recyclerview.widget.b$a r2 = r2.f4245b
            r3 = r8
            int r2 = r2.m31497b(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L3d
        L2a:
            r0 = r5
            androidx.recyclerview.widget.b$a r0 = r0.f4245b
            r1 = r8
            boolean r0 = r0.m31495d(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0948b.m31511h(int):int");
    }

    /* renamed from: l */
    private void m31507l(View view) {
        this.f4246c.add(view);
        this.f4244a.mo31489b(view);
    }

    /* renamed from: t */
    private boolean m31499t(View view) {
        if (this.f4246c.remove(view)) {
            this.f4244a.mo31483h(view);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public void m31518a(View view, int i, boolean z) {
        int mo31488c = i < 0 ? this.f4244a.mo31488c() : m31511h(i);
        this.f4245b.m31494e(mo31488c, z);
        if (z) {
            m31507l(view);
        }
        this.f4244a.mo31482i(view, mo31488c);
    }

    /* renamed from: b */
    public void m31517b(View view, boolean z) {
        m31518a(view, -1, z);
    }

    /* renamed from: c */
    public void m31516c(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int mo31488c = i < 0 ? this.f4244a.mo31488c() : m31511h(i);
        this.f4245b.m31494e(mo31488c, z);
        if (z) {
            m31507l(view);
        }
        this.f4244a.mo31480k(view, mo31488c, layoutParams);
    }

    /* renamed from: d */
    public void m31515d(int i) {
        int m31511h = m31511h(i);
        this.f4245b.m31493f(m31511h);
        this.f4244a.mo31484g(m31511h);
    }

    /* renamed from: e */
    public View m31514e(int i) {
        int size = this.f4246c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f4246c.get(i2);
            RecyclerView.AbstractC0905b0 mo31485f = this.f4244a.mo31485f(view);
            if (mo31485f.m31919m() == i && !mo31485f.m31912t() && !mo31485f.m31910v()) {
                return view;
            }
        }
        return null;
    }

    /* renamed from: f */
    public View m31513f(int i) {
        return this.f4244a.mo31490a(m31511h(i));
    }

    /* renamed from: g */
    public int m31512g() {
        return this.f4244a.mo31488c() - this.f4246c.size();
    }

    /* renamed from: i */
    public View m31510i(int i) {
        return this.f4244a.mo31490a(i);
    }

    /* renamed from: j */
    public int m31509j() {
        return this.f4244a.mo31488c();
    }

    /* renamed from: k */
    public void m31508k(View view) {
        int mo31486e = this.f4244a.mo31486e(view);
        if (mo31486e >= 0) {
            this.f4245b.m31491h(mo31486e);
            m31507l(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* renamed from: m */
    public int m31506m(View view) {
        int mo31486e = this.f4244a.mo31486e(view);
        if (mo31486e != -1 && !this.f4245b.m31495d(mo31486e)) {
            return mo31486e - this.f4245b.m31497b(mo31486e);
        }
        return -1;
    }

    /* renamed from: n */
    public boolean m31505n(View view) {
        return this.f4246c.contains(view);
    }

    /* renamed from: o */
    public void m31504o() {
        this.f4245b.m31492g();
        for (int size = this.f4246c.size() - 1; size >= 0; size--) {
            this.f4244a.mo31483h(this.f4246c.get(size));
            this.f4246c.remove(size);
        }
        this.f4244a.mo31487d();
    }

    /* renamed from: p */
    public void m31503p(View view) {
        int mo31486e = this.f4244a.mo31486e(view);
        if (mo31486e < 0) {
            return;
        }
        if (this.f4245b.m31493f(mo31486e)) {
            m31499t(view);
        }
        this.f4244a.mo31481j(mo31486e);
    }

    /* renamed from: q */
    public void m31502q(int i) {
        int m31511h = m31511h(i);
        View mo31490a = this.f4244a.mo31490a(m31511h);
        if (mo31490a == null) {
            return;
        }
        if (this.f4245b.m31493f(m31511h)) {
            m31499t(mo31490a);
        }
        this.f4244a.mo31481j(m31511h);
    }

    /* renamed from: r */
    public boolean m31501r(View view) {
        int mo31486e = this.f4244a.mo31486e(view);
        if (mo31486e == -1) {
            m31499t(view);
            return true;
        } else if (!this.f4245b.m31495d(mo31486e)) {
            return false;
        } else {
            this.f4245b.m31493f(mo31486e);
            m31499t(view);
            this.f4244a.mo31481j(mo31486e);
            return true;
        }
    }

    /* renamed from: s */
    public void m31500s(View view) {
        int mo31486e = this.f4244a.mo31486e(view);
        if (mo31486e < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.f4245b.m31495d(mo31486e)) {
            this.f4245b.m31498a(mo31486e);
            m31499t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f4245b.toString() + ", hidden list:" + this.f4246c.size();
    }
}
