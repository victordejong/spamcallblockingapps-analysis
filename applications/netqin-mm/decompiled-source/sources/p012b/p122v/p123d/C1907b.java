package p012b.p122v.p123d;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: b.v.d.b */
/* loaded from: classes-dex2jar.jar:b/v/d/b.class */
public class C1907b {

    /* renamed from: a */
    public final AbstractC1909b f7512a;

    /* renamed from: b */
    public final C1908a f7513b = new C1908a();

    /* renamed from: c */
    public final List<View> f7514c = new ArrayList();

    /* renamed from: b.v.d.b$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/b$a.class */
    public static class C1908a {

        /* renamed from: a */
        public long f7515a = 0;

        /* renamed from: b */
        public C1908a f7516b;

        /* renamed from: a */
        public final void m31692a() {
            if (this.f7516b == null) {
                this.f7516b = new C1908a();
            }
        }

        /* renamed from: a */
        public void m31691a(int i) {
            if (i >= 64) {
                C1908a aVar = this.f7516b;
                if (aVar != null) {
                    aVar.m31691a(i - 64);
                    return;
                }
                return;
            }
            this.f7515a &= (1 << i) ^ (-1);
        }

        /* renamed from: a */
        public void m31690a(int i, boolean z) {
            if (i >= 64) {
                m31692a();
                this.f7516b.m31690a(i - 64, z);
                return;
            }
            boolean z2 = (this.f7515a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            long j2 = this.f7515a;
            this.f7515a = ((j2 & (j ^ (-1))) << 1) | (j2 & j);
            if (z) {
                m31685e(i);
            } else {
                m31691a(i);
            }
            if (z2 || this.f7516b != null) {
                m31692a();
                this.f7516b.m31690a(0, z2);
            }
        }

        /* renamed from: b */
        public int m31688b(int i) {
            C1908a aVar = this.f7516b;
            return aVar == null ? i >= 64 ? Long.bitCount(this.f7515a) : Long.bitCount(this.f7515a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f7515a & ((1 << i) - 1)) : aVar.m31688b(i - 64) + Long.bitCount(this.f7515a);
        }

        /* renamed from: b */
        public void m31689b() {
            this.f7515a = 0L;
            C1908a aVar = this.f7516b;
            if (aVar != null) {
                aVar.m31689b();
            }
        }

        /* renamed from: c */
        public boolean m31687c(int i) {
            if (i >= 64) {
                m31692a();
                return this.f7516b.m31687c(i - 64);
            }
            return (this.f7515a & (1 << i)) != 0;
        }

        /* renamed from: d */
        public boolean m31686d(int i) {
            if (i >= 64) {
                m31692a();
                return this.f7516b.m31686d(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.f7515a & j) != 0;
            long j2 = this.f7515a & (j ^ (-1));
            this.f7515a = j2;
            long j3 = j - 1;
            this.f7515a = (j2 & j3) | Long.rotateRight((j3 ^ (-1)) & j2, 1);
            C1908a aVar = this.f7516b;
            if (aVar != null) {
                if (aVar.m31687c(0)) {
                    m31685e(63);
                }
                this.f7516b.m31686d(0);
            }
            return z;
        }

        /* renamed from: e */
        public void m31685e(int i) {
            if (i >= 64) {
                m31692a();
                this.f7516b.m31685e(i - 64);
                return;
            }
            this.f7515a |= 1 << i;
        }

        public String toString() {
            String str;
            if (this.f7516b == null) {
                str = Long.toBinaryString(this.f7515a);
            } else {
                str = this.f7516b.toString() + "xx" + Long.toBinaryString(this.f7515a);
            }
            return str;
        }
    }

    /* renamed from: b.v.d.b$b */
    /* loaded from: classes-dex2jar.jar:b/v/d/b$b.class */
    public interface AbstractC1909b {
        /* renamed from: a */
        int mo31684a();

        /* renamed from: a */
        View mo31683a(int i);

        /* renamed from: a */
        void mo31682a(View view);

        /* renamed from: a */
        void mo31681a(View view, int i);

        /* renamed from: a */
        void mo31680a(View view, int i, ViewGroup.LayoutParams layoutParams);

        /* renamed from: b */
        int mo31677b(View view);

        /* renamed from: b */
        void mo31679b();

        /* renamed from: b */
        void mo31678b(int i);

        /* renamed from: c */
        RecyclerView.AbstractC0495b0 mo31675c(View view);

        /* renamed from: c */
        void mo31676c(int i);

        /* renamed from: d */
        void mo31674d(View view);
    }

    public C1907b(AbstractC1909b bVar) {
        this.f7512a = bVar;
    }

    /* renamed from: a */
    public int m31712a() {
        return this.f7512a.mo31684a() - this.f7514c.size();
    }

    /* renamed from: a */
    public void m31711a(int i) {
        int d = m31700d(i);
        this.f7513b.m31686d(d);
        this.f7512a.mo31678b(d);
    }

    /* renamed from: a */
    public void m31710a(View view) {
        int b = this.f7512a.mo31677b(view);
        if (b >= 0) {
            this.f7513b.m31685e(b);
            m31704b(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* renamed from: a */
    public void m31709a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int a = i < 0 ? this.f7512a.mo31684a() : m31700d(i);
        this.f7513b.m31690a(a, z);
        if (z) {
            m31704b(view);
        }
        this.f7512a.mo31680a(view, a, layoutParams);
    }

    /* renamed from: a */
    public void m31708a(View view, int i, boolean z) {
        int a = i < 0 ? this.f7512a.mo31684a() : m31700d(i);
        this.f7513b.m31690a(a, z);
        if (z) {
            m31704b(view);
        }
        this.f7512a.mo31681a(view, a);
    }

    /* renamed from: a */
    public void m31707a(View view, boolean z) {
        m31708a(view, -1, z);
    }

    /* renamed from: b */
    public int m31706b() {
        return this.f7512a.mo31684a();
    }

    /* renamed from: b */
    public View m31705b(int i) {
        int size = this.f7514c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f7514c.get(i2);
            RecyclerView.AbstractC0495b0 c = this.f7512a.mo31675c(view);
            if (!(c.getLayoutPosition() != i || c.isInvalid() || c.isRemoved())) {
                return view;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final void m31704b(View view) {
        this.f7514c.add(view);
        this.f7512a.mo31682a(view);
    }

    /* renamed from: c */
    public int m31701c(View view) {
        int b = this.f7512a.mo31677b(view);
        if (b != -1 && !this.f7513b.m31687c(b)) {
            return b - this.f7513b.m31688b(b);
        }
        return -1;
    }

    /* renamed from: c */
    public View m31702c(int i) {
        return this.f7512a.mo31683a(m31700d(i));
    }

    /* renamed from: c */
    public void m31703c() {
        this.f7513b.m31689b();
        for (int size = this.f7514c.size() - 1; size >= 0; size--) {
            this.f7512a.mo31674d(this.f7514c.get(size));
            this.f7514c.remove(size);
        }
        this.f7512a.mo31679b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f7513b.m31687c(r8) == false) goto L_0x003b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        return r8;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m31700d(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L_0x0006
            r0 = -1
            return r0
        L_0x0006:
            r0 = r5
            b.v.d.b$b r0 = r0.f7512a
            int r0 = r0.mo31684a()
            r7 = r0
            r0 = r6
            r8 = r0
        L_0x0012:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0045
            r0 = r6
            r1 = r8
            r2 = r5
            b.v.d.b$a r2 = r2.f7513b
            r3 = r8
            int r2 = r2.m31688b(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x003d
        L_0x002a:
            r0 = r5
            b.v.d.b$a r0 = r0.f7513b
            r1 = r8
            boolean r0 = r0.m31687c(r1)
            if (r0 == 0) goto L_0x003b
            int r8 = r8 + 1
            goto L_0x002a
        L_0x003b:
            r0 = r8
            return r0
        L_0x003d:
            r0 = r8
            r1 = r9
            int r0 = r0 + r1
            r8 = r0
            goto L_0x0012
        L_0x0045:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p122v.p123d.C1907b.m31700d(int):int");
    }

    /* renamed from: d */
    public boolean m31699d(View view) {
        return this.f7514c.contains(view);
    }

    /* renamed from: e */
    public View m31698e(int i) {
        return this.f7512a.mo31683a(i);
    }

    /* renamed from: e */
    public void m31697e(View view) {
        int b = this.f7512a.mo31677b(view);
        if (b >= 0) {
            if (this.f7513b.m31686d(b)) {
                m31693h(view);
            }
            this.f7512a.mo31676c(b);
        }
    }

    /* renamed from: f */
    public void m31696f(int i) {
        int d = m31700d(i);
        View a = this.f7512a.mo31683a(d);
        if (a != null) {
            if (this.f7513b.m31686d(d)) {
                m31693h(a);
            }
            this.f7512a.mo31676c(d);
        }
    }

    /* renamed from: f */
    public boolean m31695f(View view) {
        int b = this.f7512a.mo31677b(view);
        if (b == -1) {
            m31693h(view);
            return true;
        } else if (!this.f7513b.m31687c(b)) {
            return false;
        } else {
            this.f7513b.m31686d(b);
            m31693h(view);
            this.f7512a.mo31676c(b);
            return true;
        }
    }

    /* renamed from: g */
    public void m31694g(View view) {
        int b = this.f7512a.mo31677b(view);
        if (b < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.f7513b.m31687c(b)) {
            this.f7513b.m31691a(b);
            m31693h(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    /* renamed from: h */
    public final boolean m31693h(View view) {
        if (!this.f7514c.remove(view)) {
            return false;
        }
        this.f7512a.mo31674d(view);
        return true;
    }

    public String toString() {
        return this.f7513b.toString() + ", hidden list:" + this.f7514c.size();
    }
}
