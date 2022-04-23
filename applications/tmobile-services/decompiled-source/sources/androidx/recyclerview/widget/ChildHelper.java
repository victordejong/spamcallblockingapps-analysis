package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ChildHelper.class */
public class ChildHelper {

    /* renamed from: a */
    final Callback f4444a;

    /* renamed from: b */
    final Bucket f4445b = new Bucket();

    /* renamed from: c */
    final List<View> f4446c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ChildHelper$Bucket.class */
    public static class Bucket {

        /* renamed from: a */
        long f4447a = 0;

        /* renamed from: b */
        Bucket f4448b;

        Bucket() {
        }

        /* renamed from: c */
        private void m17821c() {
            if (this.f4448b == null) {
                this.f4448b = new Bucket();
            }
        }

        /* renamed from: a */
        void m17823a(int i) {
            if (i >= 64) {
                Bucket bucket = this.f4448b;
                if (bucket != null) {
                    bucket.m17823a(i - 64);
                    return;
                }
                return;
            }
            this.f4447a &= (1 << i) ^ (-1);
        }

        /* renamed from: b */
        int m17822b(int i) {
            Bucket bucket = this.f4448b;
            return bucket == null ? i >= 64 ? Long.bitCount(this.f4447a) : Long.bitCount(this.f4447a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.f4447a & ((1 << i) - 1)) : bucket.m17822b(i - 64) + Long.bitCount(this.f4447a);
        }

        /* renamed from: d */
        boolean m17820d(int i) {
            if (i >= 64) {
                m17821c();
                return this.f4448b.m17820d(i - 64);
            }
            return (this.f4447a & (1 << i)) != 0;
        }

        /* renamed from: e */
        void m17819e(int i, boolean z) {
            if (i >= 64) {
                m17821c();
                this.f4448b.m17819e(i - 64, z);
                return;
            }
            boolean z2 = (this.f4447a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            long j2 = this.f4447a;
            this.f4447a = ((j2 & (j ^ (-1))) << 1) | (j2 & j);
            if (z) {
                m17816h(i);
            } else {
                m17823a(i);
            }
            if (z2 || this.f4448b != null) {
                m17821c();
                this.f4448b.m17819e(0, z2);
            }
        }

        /* renamed from: f */
        boolean m17818f(int i) {
            if (i >= 64) {
                m17821c();
                return this.f4448b.m17818f(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.f4447a & j) != 0;
            long j2 = this.f4447a & (j ^ (-1));
            this.f4447a = j2;
            long j3 = j - 1;
            this.f4447a = (j2 & j3) | Long.rotateRight((j3 ^ (-1)) & j2, 1);
            Bucket bucket = this.f4448b;
            if (bucket != null) {
                if (bucket.m17820d(0)) {
                    m17816h(63);
                }
                this.f4448b.m17818f(0);
            }
            return z;
        }

        /* renamed from: g */
        void m17817g() {
            this.f4447a = 0L;
            Bucket bucket = this.f4448b;
            if (bucket != null) {
                bucket.m17817g();
            }
        }

        /* renamed from: h */
        void m17816h(int i) {
            if (i >= 64) {
                m17821c();
                this.f4448b.m17816h(i - 64);
                return;
            }
            this.f4447a |= 1 << i;
        }

        public String toString() {
            String str;
            if (this.f4448b == null) {
                str = Long.toBinaryString(this.f4447a);
            } else {
                str = this.f4448b.toString() + "xx" + Long.toBinaryString(this.f4447a);
            }
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ChildHelper$Callback.class */
    public interface Callback {
        /* renamed from: a */
        View mo17519a(int i);

        /* renamed from: b */
        void mo17518b(View view);

        /* renamed from: c */
        int mo17517c();

        /* renamed from: d */
        void mo17516d();

        /* renamed from: e */
        int mo17515e(View view);

        /* renamed from: f */
        RecyclerView.ViewHolder mo17514f(View view);

        /* renamed from: g */
        void mo17513g(int i);

        /* renamed from: h */
        void mo17512h(View view);

        /* renamed from: i */
        void mo17511i(View view, int i);

        /* renamed from: j */
        void mo17510j(int i);

        /* renamed from: k */
        void mo17509k(View view, int i, ViewGroup.LayoutParams layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChildHelper(Callback callback) {
        this.f4444a = callback;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.f4445b.m17820d(r8) == false) goto L_0x003b;
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
    private int m17836h(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L_0x0006
            r0 = -1
            return r0
        L_0x0006:
            r0 = r5
            androidx.recyclerview.widget.ChildHelper$Callback r0 = r0.f4444a
            int r0 = r0.mo17517c()
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
            androidx.recyclerview.widget.ChildHelper$Bucket r2 = r2.f4445b
            r3 = r8
            int r2 = r2.m17822b(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x003d
        L_0x002a:
            r0 = r5
            androidx.recyclerview.widget.ChildHelper$Bucket r0 = r0.f4445b
            r1 = r8
            boolean r0 = r0.m17820d(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ChildHelper.m17836h(int):int");
    }

    /* renamed from: l */
    private void m17832l(View view) {
        this.f4446c.add(view);
        this.f4444a.mo17518b(view);
    }

    /* renamed from: t */
    private boolean m17824t(View view) {
        if (!this.f4446c.remove(view)) {
            return false;
        }
        this.f4444a.mo17512h(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m17843a(View view, int i, boolean z) {
        int c = i < 0 ? this.f4444a.mo17517c() : m17836h(i);
        this.f4445b.m17819e(c, z);
        if (z) {
            m17832l(view);
        }
        this.f4444a.mo17511i(view, c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m17842b(View view, boolean z) {
        m17843a(view, -1, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m17841c(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int c = i < 0 ? this.f4444a.mo17517c() : m17836h(i);
        this.f4445b.m17819e(c, z);
        if (z) {
            m17832l(view);
        }
        this.f4444a.mo17509k(view, c, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m17840d(int i) {
        int h = m17836h(i);
        this.f4445b.m17818f(h);
        this.f4444a.mo17513g(h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public View m17839e(int i) {
        int size = this.f4446c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f4446c.get(i2);
            RecyclerView.ViewHolder f = this.f4444a.mo17514f(view);
            if (!(f.getLayoutPosition() != i || f.isInvalid() || f.isRemoved())) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public View m17838f(int i) {
        return this.f4444a.mo17519a(m17836h(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public int m17837g() {
        return this.f4444a.mo17517c() - this.f4446c.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public View m17835i(int i) {
        return this.f4444a.mo17519a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public int m17834j() {
        return this.f4444a.mo17517c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public void m17833k(View view) {
        int e = this.f4444a.mo17515e(view);
        if (e >= 0) {
            this.f4445b.m17816h(e);
            m17832l(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public int m17831m(View view) {
        int e = this.f4444a.mo17515e(view);
        if (e != -1 && !this.f4445b.m17820d(e)) {
            return e - this.f4445b.m17822b(e);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public boolean m17830n(View view) {
        return this.f4446c.contains(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m17829o() {
        this.f4445b.m17817g();
        for (int size = this.f4446c.size() - 1; size >= 0; size--) {
            this.f4444a.mo17512h(this.f4446c.get(size));
            this.f4446c.remove(size);
        }
        this.f4444a.mo17516d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m17828p(View view) {
        int e = this.f4444a.mo17515e(view);
        if (e >= 0) {
            if (this.f4445b.m17818f(e)) {
                m17824t(view);
            }
            this.f4444a.mo17510j(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m17827q(int i) {
        int h = m17836h(i);
        View a = this.f4444a.mo17519a(h);
        if (a != null) {
            if (this.f4445b.m17818f(h)) {
                m17824t(a);
            }
            this.f4444a.mo17510j(h);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public boolean m17826r(View view) {
        int e = this.f4444a.mo17515e(view);
        if (e == -1) {
            m17824t(view);
            return true;
        } else if (!this.f4445b.m17820d(e)) {
            return false;
        } else {
            this.f4445b.m17818f(e);
            m17824t(view);
            this.f4444a.mo17510j(e);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m17825s(View view) {
        int e = this.f4444a.mo17515e(view);
        if (e < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.f4445b.m17820d(e)) {
            this.f4445b.m17823a(e);
            m17824t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f4445b.toString() + ", hidden list:" + this.f4446c.size();
    }
}
