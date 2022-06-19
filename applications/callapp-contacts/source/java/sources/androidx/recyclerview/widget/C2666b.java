package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b.class */
public final class C2666b {

    /* renamed from: a */
    final AbstractC2668b f10170a;

    /* renamed from: b */
    final C2667a f10171b = new C2667a();

    /* renamed from: c */
    final List<View> f10172c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$a.class */
    public static final class C2667a {

        /* renamed from: a */
        long f10173a = 0;

        /* renamed from: b */
        C2667a f10174b;

        C2667a() {
        }

        /* renamed from: a */
        private void m40135a() {
            if (this.f10174b == null) {
                this.f10174b = new C2667a();
            }
        }

        /* renamed from: a */
        public final void m40134a(int i) {
            C2667a c2667a = this;
            while (i >= 64) {
                c2667a.m40135a();
                c2667a = c2667a.f10174b;
                i -= 64;
            }
            c2667a.f10173a |= 1 << i;
        }

        /* renamed from: a */
        final void m40133a(int i, boolean z) {
            C2667a c2667a = this;
            boolean z2 = z;
            while (true) {
                if (i >= 64) {
                    c2667a.m40135a();
                    c2667a = c2667a.f10174b;
                    i -= 64;
                } else {
                    long j = c2667a.f10173a;
                    boolean z3 = (Long.MIN_VALUE & j) != 0;
                    long j2 = (1 << i) - 1;
                    c2667a.f10173a = ((j & (j2 ^ (-1))) << 1) | (j & j2);
                    if (z2) {
                        c2667a.m40134a(i);
                    } else {
                        c2667a.m40132b(i);
                    }
                    if (!z3 && c2667a.f10174b == null) {
                        return;
                    }
                    c2667a.m40135a();
                    c2667a = c2667a.f10174b;
                    i = 0;
                    z2 = z3;
                }
            }
        }

        /* renamed from: b */
        public final void m40132b(int i) {
            C2667a c2667a = this;
            while (i >= 64) {
                c2667a = c2667a.f10174b;
                if (c2667a == null) {
                    return;
                }
                i -= 64;
            }
            c2667a.f10173a &= (1 << i) ^ (-1);
        }

        /* renamed from: c */
        public final boolean m40131c(int i) {
            C2667a c2667a = this;
            while (i >= 64) {
                c2667a.m40135a();
                c2667a = c2667a.f10174b;
                i -= 64;
            }
            return (c2667a.f10173a & (1 << i)) != 0;
        }

        /* renamed from: d */
        public final boolean m40130d(int i) {
            C2667a c2667a = this;
            while (i >= 64) {
                c2667a.m40135a();
                c2667a = c2667a.f10174b;
                i -= 64;
            }
            long j = 1 << i;
            long j2 = c2667a.f10173a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (j ^ (-1));
            c2667a.f10173a = j3;
            long j4 = j - 1;
            c2667a.f10173a = (j3 & j4) | Long.rotateRight((j4 ^ (-1)) & j3, 1);
            C2667a c2667a2 = c2667a.f10174b;
            if (c2667a2 != null) {
                if (c2667a2.m40131c(0)) {
                    c2667a.m40134a(63);
                }
                c2667a.f10174b.m40130d(0);
            }
            return z;
        }

        /* renamed from: e */
        final int m40129e(int i) {
            C2667a c2667a = this.f10174b;
            return c2667a == null ? i >= 64 ? Long.bitCount(this.f10173a) : Long.bitCount(this.f10173a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f10173a & ((1 << i) - 1)) : c2667a.m40129e(i - 64) + Long.bitCount(this.f10173a);
        }

        public final String toString() {
            if (this.f10174b == null) {
                return Long.toBinaryString(this.f10173a);
            }
            return this.f10174b.toString() + "xx" + Long.toBinaryString(this.f10173a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/b$b.class */
    public interface AbstractC2668b {
        /* renamed from: a */
        int mo40128a();

        /* renamed from: a */
        int mo40126a(View view);

        /* renamed from: a */
        void mo40127a(int i);

        /* renamed from: a */
        void mo40125a(View view, int i);

        /* renamed from: a */
        void mo40124a(View view, int i, ViewGroup.LayoutParams layoutParams);

        /* renamed from: b */
        View mo40122b(int i);

        /* renamed from: b */
        RecyclerView.AbstractC2657v mo40121b(View view);

        /* renamed from: b */
        void mo40123b();

        /* renamed from: c */
        void mo40120c(int i);

        /* renamed from: c */
        void mo40119c(View view);

        /* renamed from: d */
        void mo40118d(View view);
    }

    public C2666b(AbstractC2668b abstractC2668b) {
        this.f10170a = abstractC2668b;
    }

    /* renamed from: a */
    public final int m40147a() {
        return this.f10170a.mo40128a() - this.f10172c.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f10171b.m40131c(r8) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        return r8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m40146a(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L6
            r0 = -1
            return r0
        L6:
            r0 = r5
            androidx.recyclerview.widget.b$b r0 = r0.f10170a
            int r0 = r0.mo40128a()
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
            androidx.recyclerview.widget.b$a r2 = r2.f10171b
            r3 = r8
            int r2 = r2.m40129e(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L3d
        L2a:
            r0 = r5
            androidx.recyclerview.widget.b$a r0 = r0.f10171b
            r1 = r8
            boolean r0 = r0.m40131c(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C2666b.m40146a(int):int");
    }

    /* renamed from: a */
    public final void m40145a(View view) {
        this.f10172c.add(view);
        this.f10170a.mo40119c(view);
    }

    /* renamed from: a */
    public final void m40144a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int mo40128a = i < 0 ? this.f10170a.mo40128a() : m40146a(i);
        this.f10171b.m40133a(mo40128a, z);
        if (z) {
            m40145a(view);
        }
        this.f10170a.mo40124a(view, mo40128a, layoutParams);
    }

    /* renamed from: a */
    public final void m40143a(View view, int i, boolean z) {
        int mo40128a = i < 0 ? this.f10170a.mo40128a() : m40146a(i);
        this.f10171b.m40133a(mo40128a, z);
        if (z) {
            m40145a(view);
        }
        this.f10170a.mo40125a(view, mo40128a);
    }

    /* renamed from: b */
    public final int m40142b() {
        return this.f10170a.mo40128a();
    }

    /* renamed from: b */
    public final View m40141b(int i) {
        return this.f10170a.mo40122b(m40146a(i));
    }

    /* renamed from: b */
    public final boolean m40140b(View view) {
        if (this.f10172c.remove(view)) {
            this.f10170a.mo40118d(view);
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public final int m40138c(View view) {
        int mo40126a = this.f10170a.mo40126a(view);
        if (mo40126a != -1 && !this.f10171b.m40131c(mo40126a)) {
            return mo40126a - this.f10171b.m40129e(mo40126a);
        }
        return -1;
    }

    /* renamed from: c */
    public final View m40139c(int i) {
        return this.f10170a.mo40122b(i);
    }

    /* renamed from: d */
    public final void m40137d(int i) {
        int m40146a = m40146a(i);
        this.f10171b.m40130d(m40146a);
        this.f10170a.mo40120c(m40146a);
    }

    /* renamed from: d */
    public final boolean m40136d(View view) {
        return this.f10172c.contains(view);
    }

    public final String toString() {
        return this.f10171b.toString() + ", hidden list:" + this.f10172c.size();
    }
}
