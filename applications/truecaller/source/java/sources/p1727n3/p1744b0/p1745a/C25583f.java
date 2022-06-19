package p1727n3.p1744b0.p1745a;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b0.a.f */
/* loaded from: classes-dex2jar.jar:n3/b0/a/f.class */
public class C25583f {

    /* renamed from: a */
    public final AbstractC25585b f71606a;

    /* renamed from: b */
    public final C25584a f71607b = new C25584a();

    /* renamed from: c */
    public final List<View> f71608c = new ArrayList();

    /* renamed from: n3.b0.a.f$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/f$a.class */
    public static class C25584a {

        /* renamed from: a */
        public long f71609a = 0;

        /* renamed from: b */
        public C25584a f71610b;

        /* renamed from: a */
        public void m3189a(int i) {
            if (i < 64) {
                this.f71609a &= (1 << i) ^ (-1);
                return;
            }
            C25584a c25584a = this.f71610b;
            if (c25584a == null) {
                return;
            }
            c25584a.m3189a(i - 64);
        }

        /* renamed from: b */
        public int m3188b(int i) {
            C25584a c25584a = this.f71610b;
            if (c25584a == null) {
                return i >= 64 ? Long.bitCount(this.f71609a) : Long.bitCount(this.f71609a & ((1 << i) - 1));
            } else if (i < 64) {
                return Long.bitCount(this.f71609a & ((1 << i) - 1));
            } else {
                return Long.bitCount(this.f71609a) + c25584a.m3188b(i - 64);
            }
        }

        /* renamed from: c */
        public final void m3187c() {
            if (this.f71610b == null) {
                this.f71610b = new C25584a();
            }
        }

        /* renamed from: d */
        public boolean m3186d(int i) {
            if (i < 64) {
                return (this.f71609a & (1 << i)) != 0;
            }
            m3187c();
            return this.f71610b.m3186d(i - 64);
        }

        /* renamed from: e */
        public void m3185e(int i, boolean z) {
            if (i >= 64) {
                m3187c();
                this.f71610b.m3185e(i - 64, z);
                return;
            }
            long j = this.f71609a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f71609a = ((j & (j2 ^ (-1))) << 1) | (j & j2);
            if (z) {
                m3182h(i);
            } else {
                m3189a(i);
            }
            if (!z2 && this.f71610b == null) {
                return;
            }
            m3187c();
            this.f71610b.m3185e(0, z2);
        }

        /* renamed from: f */
        public boolean m3184f(int i) {
            if (i >= 64) {
                m3187c();
                return this.f71610b.m3184f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f71609a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (j ^ (-1));
            this.f71609a = j3;
            long j4 = j - 1;
            this.f71609a = (j3 & j4) | Long.rotateRight((j4 ^ (-1)) & j3, 1);
            C25584a c25584a = this.f71610b;
            if (c25584a != null) {
                if (c25584a.m3186d(0)) {
                    m3182h(63);
                }
                this.f71610b.m3184f(0);
            }
            return z;
        }

        /* renamed from: g */
        public void m3183g() {
            this.f71609a = 0L;
            C25584a c25584a = this.f71610b;
            if (c25584a != null) {
                c25584a.m3183g();
            }
        }

        /* renamed from: h */
        public void m3182h(int i) {
            if (i < 64) {
                this.f71609a |= 1 << i;
                return;
            }
            m3187c();
            this.f71610b.m3182h(i - 64);
        }

        public String toString() {
            String str;
            if (this.f71610b == null) {
                str = Long.toBinaryString(this.f71609a);
            } else {
                str = this.f71610b.toString() + "xx" + Long.toBinaryString(this.f71609a);
            }
            return str;
        }
    }

    /* renamed from: n3.b0.a.f$b */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/f$b.class */
    public interface AbstractC25585b {
    }

    public C25583f(AbstractC25585b abstractC25585b) {
        this.f71606a = abstractC25585b;
    }

    /* renamed from: a */
    public void m3202a(View view, int i, boolean z) {
        int m42751b = i < 0 ? ((RecyclerView.C0315e) this.f71606a).m42751b() : m3197f(i);
        this.f71607b.m3185e(m42751b, z);
        if (z) {
            m3194i(view);
        }
        RecyclerView.C0315e c0315e = (RecyclerView.C0315e) this.f71606a;
        RecyclerView.this.addView(view, m42751b);
        RecyclerView.this.dispatchChildAttached(view);
    }

    /* renamed from: b */
    public void m3201b(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int m42751b = i < 0 ? ((RecyclerView.C0315e) this.f71606a).m42751b() : m3197f(i);
        this.f71607b.m3185e(m42751b, z);
        if (z) {
            m3194i(view);
        }
        RecyclerView.C0315e c0315e = (RecyclerView.C0315e) this.f71606a;
        Objects.requireNonNull(c0315e);
        RecyclerView.AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(C22128a.m8656W1(RecyclerView.this, sb));
            }
            childViewHolderInt.clearTmpDetachFlag();
        }
        RecyclerView.this.attachViewToParent(view, m42751b, layoutParams);
    }

    /* renamed from: c */
    public void m3200c(int i) {
        RecyclerView.AbstractC0313c0 childViewHolderInt;
        int m3197f = m3197f(i);
        this.f71607b.m3184f(m3197f);
        RecyclerView.C0315e c0315e = (RecyclerView.C0315e) this.f71606a;
        View childAt = RecyclerView.this.getChildAt(m3197f);
        if (childAt != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt)) != null) {
            if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder();
                sb.append("called detach on an already detached child ");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(C22128a.m8656W1(RecyclerView.this, sb));
            }
            childViewHolderInt.addFlags(256);
        }
        RecyclerView.this.detachViewFromParent(m3197f);
    }

    /* renamed from: d */
    public View m3199d(int i) {
        return ((RecyclerView.C0315e) this.f71606a).m42752a(m3197f(i));
    }

    /* renamed from: e */
    public int m3198e() {
        return ((RecyclerView.C0315e) this.f71606a).m42751b() - this.f71608c.size();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r5.f71607b.m3186d(r8) == false) goto L19;
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
    public final int m3197f(int r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 >= 0) goto L6
            r0 = -1
            return r0
        L6:
            r0 = r5
            n3.b0.a.f$b r0 = r0.f71606a
            androidx.recyclerview.widget.RecyclerView$e r0 = (androidx.recyclerview.widget.RecyclerView.C0315e) r0
            int r0 = r0.m42751b()
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
            n3.b0.a.f$a r2 = r2.f71607b
            r3 = r8
            int r2 = r2.m3188b(r3)
            int r1 = r1 - r2
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L3e
        L2b:
            r0 = r5
            n3.b0.a.f$a r0 = r0.f71607b
            r1 = r8
            boolean r0 = r0.m3186d(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1744b0.p1745a.C25583f.m3197f(int):int");
    }

    /* renamed from: g */
    public View m3196g(int i) {
        return RecyclerView.this.getChildAt(i);
    }

    /* renamed from: h */
    public int m3195h() {
        return ((RecyclerView.C0315e) this.f71606a).m42751b();
    }

    /* renamed from: i */
    public final void m3194i(View view) {
        this.f71608c.add(view);
        RecyclerView.C0315e c0315e = (RecyclerView.C0315e) this.f71606a;
        Objects.requireNonNull(c0315e);
        RecyclerView.AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
        }
    }

    /* renamed from: j */
    public int m3193j(View view) {
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild != -1 && !this.f71607b.m3186d(indexOfChild)) {
            return indexOfChild - this.f71607b.m3188b(indexOfChild);
        }
        return -1;
    }

    /* renamed from: k */
    public boolean m3192k(View view) {
        return this.f71608c.contains(view);
    }

    /* renamed from: l */
    public void m3191l(int i) {
        int m3197f = m3197f(i);
        View m42752a = ((RecyclerView.C0315e) this.f71606a).m42752a(m3197f);
        if (m42752a == null) {
            return;
        }
        if (this.f71607b.m3184f(m3197f)) {
            m3190m(m42752a);
        }
        ((RecyclerView.C0315e) this.f71606a).m42750c(m3197f);
    }

    /* renamed from: m */
    public final boolean m3190m(View view) {
        if (this.f71608c.remove(view)) {
            RecyclerView.C0315e c0315e = (RecyclerView.C0315e) this.f71606a;
            Objects.requireNonNull(c0315e);
            RecyclerView.AbstractC0313c0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null) {
                return true;
            }
            childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            return true;
        }
        return false;
    }

    public String toString() {
        return this.f71607b.toString() + ", hidden list:" + this.f71608c.size();
    }
}
