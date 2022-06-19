package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b.class */
public class C0961b {

    /* renamed from: a */
    final AbstractC0963b f3269a;

    /* renamed from: b */
    final C0962a f3270b = new C0962a();

    /* renamed from: c */
    final List<View> f3271c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$a.class */
    public static class C0962a {

        /* renamed from: a */
        long f3272a = 0;

        /* renamed from: b */
        C0962a f3273b;

        C0962a() {
        }

        /* renamed from: b */
        private void m18570b() {
            if (this.f3273b == null) {
                this.f3273b = new C0962a();
            }
        }

        /* renamed from: a */
        void m18573a() {
            this.f3272a = 0L;
            if (this.f3273b != null) {
                this.f3273b.m18573a();
            }
        }

        /* renamed from: a */
        void m18572a(int i) {
            if (i < 64) {
                this.f3272a |= 1 << i;
                return;
            }
            m18570b();
            this.f3273b.m18572a(i - 64);
        }

        /* renamed from: a */
        void m18571a(int i, boolean z) {
            if (i >= 64) {
                m18570b();
                this.f3273b.m18571a(i - 64, z);
                return;
            }
            boolean z2 = (this.f3272a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            this.f3272a = (((j ^ (-1)) & this.f3272a) << 1) | (this.f3272a & j);
            if (z) {
                m18572a(i);
            } else {
                m18569b(i);
            }
            if (!z2 && this.f3273b == null) {
                return;
            }
            m18570b();
            this.f3273b.m18571a(0, z2);
        }

        /* renamed from: b */
        void m18569b(int i) {
            if (i < 64) {
                this.f3272a &= (1 << i) ^ (-1);
            } else if (this.f3273b == null) {
            } else {
                this.f3273b.m18569b(i - 64);
            }
        }

        /* renamed from: c */
        boolean m18568c(int i) {
            boolean z;
            if (i >= 64) {
                m18570b();
                z = this.f3273b.m18568c(i - 64);
            } else {
                z = (this.f3272a & (1 << i)) != 0;
            }
            return z;
        }

        /* renamed from: d */
        boolean m18567d(int i) {
            boolean z;
            if (i >= 64) {
                m18570b();
                z = this.f3273b.m18567d(i - 64);
            } else {
                long j = 1 << i;
                boolean z2 = (this.f3272a & j) != 0;
                this.f3272a &= j ^ (-1);
                long j2 = j - 1;
                this.f3272a = Long.rotateRight((j2 ^ (-1)) & this.f3272a, 1) | (this.f3272a & j2);
                z = z2;
                if (this.f3273b != null) {
                    if (this.f3273b.m18568c(0)) {
                        m18572a(63);
                    }
                    this.f3273b.m18567d(0);
                    z = z2;
                }
            }
            return z;
        }

        /* renamed from: e */
        int m18566e(int i) {
            return this.f3273b == null ? i >= 64 ? Long.bitCount(this.f3272a) : Long.bitCount(this.f3272a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f3272a & ((1 << i) - 1)) : this.f3273b.m18566e(i - 64) + Long.bitCount(this.f3272a);
        }

        public String toString() {
            return this.f3273b == null ? Long.toBinaryString(this.f3272a) : this.f3273b.toString() + "xx" + Long.toBinaryString(this.f3272a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$b.class */
    public interface AbstractC0963b {
        /* renamed from: a */
        int mo18565a();

        /* renamed from: a */
        int mo18563a(View view);

        /* renamed from: a */
        void mo18564a(int i);

        /* renamed from: a */
        void mo18562a(View view, int i);

        /* renamed from: a */
        void mo18561a(View view, int i, ViewGroup.LayoutParams layoutParams);

        /* renamed from: b */
        View mo18559b(int i);

        /* renamed from: b */
        RecyclerView.AbstractC0948x mo18558b(View view);

        /* renamed from: b */
        void mo18560b();

        /* renamed from: c */
        void mo18557c(int i);

        /* renamed from: c */
        void mo18556c(View view);

        /* renamed from: d */
        void mo18555d(View view);
    }

    public C0961b(AbstractC0963b abstractC0963b) {
        this.f3269a = abstractC0963b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
        r6 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        if (r5.f3270b.m18568c(r8) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
        r8 = r8 + 1;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m18577f(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L8
            r0 = -1
            r6 = r0
        L6:
            r0 = r6
            return r0
        L8:
            r0 = r5
            androidx.recyclerview.widget.b$b r0 = r0.f3269a
            int r0 = r0.mo18565a()
            r7 = r0
            r0 = r6
            r8 = r0
        L14:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L47
            r0 = r6
            r1 = r8
            r2 = r5
            androidx.recyclerview.widget.b$a r2 = r2.f3270b
            r3 = r8
            int r2 = r2.m18566e(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L3f
        L2c:
            r0 = r8
            r6 = r0
            r0 = r5
            androidx.recyclerview.widget.b$a r0 = r0.f3270b
            r1 = r8
            boolean r0 = r0.m18568c(r1)
            if (r0 == 0) goto L6
            int r8 = r8 + 1
            goto L2c
        L3f:
            r0 = r8
            r1 = r9
            int r0 = r0 + r1
            r8 = r0
            goto L14
        L47:
            r0 = -1
            r6 = r0
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0961b.m18577f(int):int");
    }

    /* renamed from: g */
    private void m18575g(View view) {
        this.f3271c.add(view);
        this.f3269a.mo18556c(view);
    }

    /* renamed from: h */
    private boolean m18574h(View view) {
        boolean z;
        if (this.f3271c.remove(view)) {
            this.f3269a.mo18555d(view);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public void m18593a() {
        this.f3270b.m18573a();
        for (int size = this.f3271c.size() - 1; size >= 0; size--) {
            this.f3269a.mo18555d(this.f3271c.get(size));
            this.f3271c.remove(size);
        }
        this.f3269a.mo18560b();
    }

    /* renamed from: a */
    public void m18592a(int i) {
        int m18577f = m18577f(i);
        View mo18559b = this.f3269a.mo18559b(m18577f);
        if (mo18559b == null) {
            return;
        }
        if (this.f3270b.m18567d(m18577f)) {
            m18574h(mo18559b);
        }
        this.f3269a.mo18564a(m18577f);
    }

    /* renamed from: a */
    public void m18591a(View view) {
        int mo18563a = this.f3269a.mo18563a(view);
        if (mo18563a < 0) {
            return;
        }
        if (this.f3270b.m18567d(mo18563a)) {
            m18574h(view);
        }
        this.f3269a.mo18564a(mo18563a);
    }

    /* renamed from: a */
    public void m18590a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int mo18565a = i < 0 ? this.f3269a.mo18565a() : m18577f(i);
        this.f3270b.m18571a(mo18565a, z);
        if (z) {
            m18575g(view);
        }
        this.f3269a.mo18561a(view, mo18565a, layoutParams);
    }

    /* renamed from: a */
    public void m18589a(View view, int i, boolean z) {
        int mo18565a = i < 0 ? this.f3269a.mo18565a() : m18577f(i);
        this.f3270b.m18571a(mo18565a, z);
        if (z) {
            m18575g(view);
        }
        this.f3269a.mo18562a(view, mo18565a);
    }

    /* renamed from: a */
    public void m18588a(View view, boolean z) {
        m18589a(view, -1, z);
    }

    /* renamed from: b */
    public int m18587b() {
        return this.f3269a.mo18565a() - this.f3271c.size();
    }

    /* renamed from: b */
    public int m18585b(View view) {
        int i = -1;
        int mo18563a = this.f3269a.mo18563a(view);
        if (mo18563a != -1 && !this.f3270b.m18568c(mo18563a)) {
            i = mo18563a - this.f3270b.m18566e(mo18563a);
        }
        return i;
    }

    /* renamed from: b */
    public View m18586b(int i) {
        return this.f3269a.mo18559b(m18577f(i));
    }

    /* renamed from: c */
    public int m18584c() {
        return this.f3269a.mo18565a();
    }

    /* renamed from: c */
    public View m18583c(int i) {
        View view;
        int size = this.f3271c.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                view = null;
                break;
            }
            view = this.f3271c.get(i2);
            RecyclerView.AbstractC0948x mo18558b = this.f3269a.mo18558b(view);
            if (mo18558b.m18794d() == i && !mo18558b.m18784n() && !mo18558b.m18781q()) {
                break;
            }
            i2++;
        }
        return view;
    }

    /* renamed from: c */
    public boolean m18582c(View view) {
        return this.f3271c.contains(view);
    }

    /* renamed from: d */
    public View m18581d(int i) {
        return this.f3269a.mo18559b(i);
    }

    /* renamed from: d */
    public void m18580d(View view) {
        int mo18563a = this.f3269a.mo18563a(view);
        if (mo18563a < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        this.f3270b.m18572a(mo18563a);
        m18575g(view);
    }

    /* renamed from: e */
    public void m18579e(int i) {
        int m18577f = m18577f(i);
        this.f3270b.m18567d(m18577f);
        this.f3269a.mo18557c(m18577f);
    }

    /* renamed from: e */
    public void m18578e(View view) {
        int mo18563a = this.f3269a.mo18563a(view);
        if (mo18563a < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (!this.f3270b.m18568c(mo18563a)) {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        this.f3270b.m18569b(mo18563a);
        m18574h(view);
    }

    /* renamed from: f */
    public boolean m18576f(View view) {
        boolean z = true;
        int mo18563a = this.f3269a.mo18563a(view);
        if (mo18563a == -1) {
            if (m18574h(view)) {
            }
        } else if (this.f3270b.m18568c(mo18563a)) {
            this.f3270b.m18567d(mo18563a);
            if (!m18574h(view)) {
            }
            this.f3269a.mo18564a(mo18563a);
        } else {
            z = false;
        }
        return z;
    }

    public String toString() {
        return this.f3270b.toString() + ", hidden list:" + this.f3271c.size();
    }
}
