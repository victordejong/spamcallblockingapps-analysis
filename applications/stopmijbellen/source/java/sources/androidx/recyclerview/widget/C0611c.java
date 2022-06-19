package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.recyclerview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c.class */
public class C0611c {

    /* renamed from: a */
    public final AbstractC0613b f2400a;

    /* renamed from: b */
    public final C0612a f2401b = new C0612a();

    /* renamed from: c */
    public final List<View> f2402c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$a.class */
    public static class C0612a {

        /* renamed from: a */
        public long f2403a = 0;

        /* renamed from: b */
        public C0612a f2404b;

        /* renamed from: a */
        public void m7605a(int i) {
            if (i < 64) {
                this.f2403a &= (1 << i) ^ (-1);
                return;
            }
            C0612a c0612a = this.f2404b;
            if (c0612a == null) {
                return;
            }
            c0612a.m7605a(i - 64);
        }

        /* renamed from: b */
        public int m7604b(int i) {
            C0612a c0612a = this.f2404b;
            if (c0612a == null) {
                return i >= 64 ? Long.bitCount(this.f2403a) : Long.bitCount(this.f2403a & ((1 << i) - 1));
            } else if (i < 64) {
                return Long.bitCount(this.f2403a & ((1 << i) - 1));
            } else {
                return Long.bitCount(this.f2403a) + c0612a.m7604b(i - 64);
            }
        }

        /* renamed from: c */
        public final void m7603c() {
            if (this.f2404b == null) {
                this.f2404b = new C0612a();
            }
        }

        /* renamed from: d */
        public boolean m7602d(int i) {
            if (i < 64) {
                return (this.f2403a & (1 << i)) != 0;
            }
            m7603c();
            return this.f2404b.m7602d(i - 64);
        }

        /* renamed from: e */
        public void m7601e(int i, boolean z) {
            if (i >= 64) {
                m7603c();
                this.f2404b.m7601e(i - 64, z);
                return;
            }
            long j = this.f2403a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f2403a = ((j & (j2 ^ (-1))) << 1) | (j & j2);
            if (z) {
                m7598h(i);
            } else {
                m7605a(i);
            }
            if (!z2 && this.f2404b == null) {
                return;
            }
            m7603c();
            this.f2404b.m7601e(0, z2);
        }

        /* renamed from: f */
        public boolean m7600f(int i) {
            if (i >= 64) {
                m7603c();
                return this.f2404b.m7600f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f2403a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (j ^ (-1));
            this.f2403a = j3;
            long j4 = j - 1;
            this.f2403a = (j3 & j4) | Long.rotateRight((j4 ^ (-1)) & j3, 1);
            C0612a c0612a = this.f2404b;
            if (c0612a != null) {
                if (c0612a.m7602d(0)) {
                    m7598h(63);
                }
                this.f2404b.m7600f(0);
            }
            return z;
        }

        /* renamed from: g */
        public void m7599g() {
            this.f2403a = 0L;
            C0612a c0612a = this.f2404b;
            if (c0612a != null) {
                c0612a.m7599g();
            }
        }

        /* renamed from: h */
        public void m7598h(int i) {
            if (i < 64) {
                this.f2403a |= 1 << i;
                return;
            }
            m7603c();
            this.f2404b.m7598h(i - 64);
        }

        public String toString() {
            String str;
            if (this.f2404b == null) {
                str = Long.toBinaryString(this.f2403a);
            } else {
                str = this.f2404b.toString() + "xx" + Long.toBinaryString(this.f2403a);
            }
            return str;
        }
    }

    /* renamed from: androidx.recyclerview.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$b.class */
    public interface AbstractC0613b {
    }

    public C0611c(AbstractC0613b abstractC0613b) {
        this.f2400a = abstractC0613b;
    }

    /* renamed from: a */
    public void m7617a(View view, int i, boolean z) {
        int m7529b = i < 0 ? ((C0649w) this.f2400a).m7529b() : m7612f(i);
        this.f2401b.m7601e(m7529b, z);
        if (z) {
            m7609i(view);
        }
        C0649w c0649w = (C0649w) this.f2400a;
        c0649w.f2544a.addView(view, m7529b);
        Objects.requireNonNull(c0649w.f2544a);
        RecyclerView.m7907K(view);
    }

    /* renamed from: b */
    public void m7616b(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int m7529b = i < 0 ? ((C0649w) this.f2400a).m7529b() : m7612f(i);
        this.f2401b.m7601e(m7529b, z);
        if (z) {
            m7609i(view);
        }
        C0649w c0649w = (C0649w) this.f2400a;
        Objects.requireNonNull(c0649w);
        RecyclerView.AbstractC0558a0 m7907K = RecyclerView.m7907K(view);
        if (m7907K != null) {
            if (!m7907K.m7840o() && !m7907K.m7834u()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Called attach on a child which is not detached: ");
                sb.append(m7907K);
                throw new IllegalArgumentException(C0608b.m7627h(c0649w.f2544a, sb));
            }
            m7907K.f2233j &= -257;
        }
        c0649w.f2544a.attachViewToParent(view, m7529b, layoutParams);
    }

    /* renamed from: c */
    public void m7615c(int i) {
        RecyclerView.AbstractC0558a0 m7907K;
        int m7612f = m7612f(i);
        this.f2401b.m7600f(m7612f);
        C0649w c0649w = (C0649w) this.f2400a;
        View childAt = c0649w.f2544a.getChildAt(m7612f);
        if (childAt != null && (m7907K = RecyclerView.m7907K(childAt)) != null) {
            if (m7907K.m7840o() && !m7907K.m7834u()) {
                StringBuilder sb = new StringBuilder();
                sb.append("called detach on an already detached child ");
                sb.append(m7907K);
                throw new IllegalArgumentException(C0608b.m7627h(c0649w.f2544a, sb));
            }
            m7907K.m7853b(256);
        }
        c0649w.f2544a.detachViewFromParent(m7612f);
    }

    /* renamed from: d */
    public View m7614d(int i) {
        return ((C0649w) this.f2400a).m7530a(m7612f(i));
    }

    /* renamed from: e */
    public int m7613e() {
        return ((C0649w) this.f2400a).m7529b() - this.f2402c.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r5.f2401b.m7602d(r8) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
        return r8;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m7612f(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L6
            r0 = -1
            return r0
        L6:
            r0 = r5
            androidx.recyclerview.widget.c$b r0 = r0.f2400a
            androidx.recyclerview.widget.w r0 = (androidx.recyclerview.widget.C0649w) r0
            int r0 = r0.m7529b()
            r7 = r0
            r0 = r6
            r8 = r0
        L13:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L46
            r0 = r6
            r1 = r8
            r2 = r5
            androidx.recyclerview.widget.c$a r2 = r2.f2401b
            r3 = r8
            int r2 = r2.m7604b(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L3e
        L2b:
            r0 = r5
            androidx.recyclerview.widget.c$a r0 = r0.f2401b
            r1 = r8
            boolean r0 = r0.m7602d(r1)
            if (r0 == 0) goto L3c
            int r8 = r8 + 1
            goto L2b
        L3c:
            r0 = r8
            return r0
        L3e:
            r0 = r8
            r1 = r9
            int r0 = r0 + r1
            r8 = r0
            goto L13
        L46:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0611c.m7612f(int):int");
    }

    /* renamed from: g */
    public View m7611g(int i) {
        return ((C0649w) this.f2400a).f2544a.getChildAt(i);
    }

    /* renamed from: h */
    public int m7610h() {
        return ((C0649w) this.f2400a).m7529b();
    }

    /* renamed from: i */
    public final void m7609i(View view) {
        this.f2402c.add(view);
        C0649w c0649w = (C0649w) this.f2400a;
        Objects.requireNonNull(c0649w);
        RecyclerView.AbstractC0558a0 m7907K = RecyclerView.m7907K(view);
        if (m7907K != null) {
            RecyclerView recyclerView = c0649w.f2544a;
            int i = m7907K.f2240q;
            if (i != -1) {
                m7907K.f2239p = i;
            } else {
                View view2 = m7907K.f2224a;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                m7907K.f2239p = C3589v.C3593d.m2091c(view2);
            }
            recyclerView.m7881f0(m7907K, 4);
        }
    }

    /* renamed from: j */
    public int m7608j(View view) {
        int indexOfChild = ((C0649w) this.f2400a).f2544a.indexOfChild(view);
        if (indexOfChild != -1 && !this.f2401b.m7602d(indexOfChild)) {
            return indexOfChild - this.f2401b.m7604b(indexOfChild);
        }
        return -1;
    }

    /* renamed from: k */
    public boolean m7607k(View view) {
        return this.f2402c.contains(view);
    }

    /* renamed from: l */
    public final boolean m7606l(View view) {
        if (this.f2402c.remove(view)) {
            C0649w c0649w = (C0649w) this.f2400a;
            Objects.requireNonNull(c0649w);
            RecyclerView.AbstractC0558a0 m7907K = RecyclerView.m7907K(view);
            if (m7907K == null) {
                return true;
            }
            c0649w.f2544a.m7881f0(m7907K, m7907K.f2239p);
            m7907K.f2239p = 0;
            return true;
        }
        return false;
    }

    public String toString() {
        return this.f2401b.toString() + ", hidden list:" + this.f2402c.size();
    }
}
