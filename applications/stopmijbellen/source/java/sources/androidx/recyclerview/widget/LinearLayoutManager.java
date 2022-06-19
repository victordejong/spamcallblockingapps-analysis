package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RunnableC0636n;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager.class */
public class LinearLayoutManager extends RecyclerView.AbstractC0573m implements RecyclerView.AbstractC0589w.AbstractC0591b {

    /* renamed from: A */
    public final C0552a f2106A;

    /* renamed from: B */
    public final C0553b f2107B;

    /* renamed from: C */
    public int f2108C;

    /* renamed from: D */
    public int[] f2109D;

    /* renamed from: p */
    public int f2110p;

    /* renamed from: q */
    public C0554c f2111q;

    /* renamed from: r */
    public AbstractC0646t f2112r;

    /* renamed from: s */
    public boolean f2113s;

    /* renamed from: t */
    public boolean f2114t;

    /* renamed from: u */
    public boolean f2115u;

    /* renamed from: v */
    public boolean f2116v;

    /* renamed from: w */
    public boolean f2117w;

    /* renamed from: x */
    public int f2118x;

    /* renamed from: y */
    public int f2119y;

    /* renamed from: z */
    public C0555d f2120z;

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
    public static class C0552a {

        /* renamed from: a */
        public AbstractC0646t f2121a;

        /* renamed from: b */
        public int f2122b;

        /* renamed from: c */
        public int f2123c;

        /* renamed from: d */
        public boolean f2124d;

        /* renamed from: e */
        public boolean f2125e;

        public C0552a() {
            m7922d();
        }

        /* renamed from: a */
        public void m7925a() {
            this.f2123c = this.f2124d ? this.f2121a.mo7547g() : this.f2121a.mo7543k();
        }

        /* renamed from: b */
        public void m7924b(View view, int i) {
            if (this.f2124d) {
                this.f2123c = this.f2121a.m7541m() + this.f2121a.mo7552b(view);
            } else {
                this.f2123c = this.f2121a.mo7549e(view);
            }
            this.f2122b = i;
        }

        /* renamed from: c */
        public void m7923c(View view, int i) {
            int m7541m = this.f2121a.m7541m();
            if (m7541m >= 0) {
                m7924b(view, i);
                return;
            }
            this.f2122b = i;
            if (this.f2124d) {
                int mo7547g = (this.f2121a.mo7547g() - m7541m) - this.f2121a.mo7552b(view);
                this.f2123c = this.f2121a.mo7547g() - mo7547g;
                if (mo7547g <= 0) {
                    return;
                }
                int mo7551c = this.f2121a.mo7551c(view);
                int i2 = this.f2123c;
                int mo7543k = this.f2121a.mo7543k();
                int min = (i2 - mo7551c) - (Math.min(this.f2121a.mo7549e(view) - mo7543k, 0) + mo7543k);
                if (min >= 0) {
                    return;
                }
                this.f2123c = Math.min(mo7547g, -min) + this.f2123c;
                return;
            }
            int mo7549e = this.f2121a.mo7549e(view);
            int mo7543k2 = mo7549e - this.f2121a.mo7543k();
            this.f2123c = mo7549e;
            if (mo7543k2 <= 0) {
                return;
            }
            int mo7551c2 = this.f2121a.mo7551c(view);
            int mo7547g2 = (this.f2121a.mo7547g() - Math.min(0, (this.f2121a.mo7547g() - m7541m) - this.f2121a.mo7552b(view))) - (mo7551c2 + mo7549e);
            if (mo7547g2 >= 0) {
                return;
            }
            this.f2123c -= Math.min(mo7543k2, -mo7547g2);
        }

        /* renamed from: d */
        public void m7922d() {
            this.f2122b = -1;
            this.f2123c = Integer.MIN_VALUE;
            this.f2124d = false;
            this.f2125e = false;
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("AnchorInfo{mPosition=");
            m8752j.append(this.f2122b);
            m8752j.append(", mCoordinate=");
            m8752j.append(this.f2123c);
            m8752j.append(", mLayoutFromEnd=");
            m8752j.append(this.f2124d);
            m8752j.append(", mValid=");
            m8752j.append(this.f2125e);
            m8752j.append('}');
            return m8752j.toString();
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$b.class */
    public static class C0553b {

        /* renamed from: a */
        public int f2126a;

        /* renamed from: b */
        public boolean f2127b;

        /* renamed from: c */
        public boolean f2128c;

        /* renamed from: d */
        public boolean f2129d;
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
    public static class C0554c {

        /* renamed from: b */
        public int f2131b;

        /* renamed from: c */
        public int f2132c;

        /* renamed from: d */
        public int f2133d;

        /* renamed from: e */
        public int f2134e;

        /* renamed from: f */
        public int f2135f;

        /* renamed from: g */
        public int f2136g;

        /* renamed from: j */
        public int f2139j;

        /* renamed from: l */
        public boolean f2141l;

        /* renamed from: a */
        public boolean f2130a = true;

        /* renamed from: h */
        public int f2137h = 0;

        /* renamed from: i */
        public int f2138i = 0;

        /* renamed from: k */
        public List<RecyclerView.AbstractC0558a0> f2140k = null;

        /* renamed from: a */
        public void m7921a(View view) {
            View view2;
            int size = this.f2140k.size();
            View view3 = null;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.f2140k.get(i2).f2224a;
                RecyclerView.C0578n c0578n = (RecyclerView.C0578n) view4.getLayoutParams();
                View view5 = view3;
                int i3 = i;
                if (view4 != view) {
                    if (c0578n.m7770c()) {
                        view5 = view3;
                        i3 = i;
                    } else {
                        int m7772a = (c0578n.m7772a() - this.f2133d) * this.f2134e;
                        if (m7772a < 0) {
                            view5 = view3;
                            i3 = i;
                        } else {
                            view5 = view3;
                            i3 = i;
                            if (m7772a >= i) {
                                continue;
                            } else if (m7772a == 0) {
                                view2 = view4;
                                break;
                            } else {
                                i3 = m7772a;
                                view5 = view4;
                            }
                        }
                    }
                }
                i2++;
                view3 = view5;
                i = i3;
            }
            if (view2 == null) {
                this.f2133d = -1;
            } else {
                this.f2133d = ((RecyclerView.C0578n) view2.getLayoutParams()).m7772a();
            }
        }

        /* renamed from: b */
        public boolean m7920b(RecyclerView.C0592x c0592x) {
            int i = this.f2133d;
            return i >= 0 && i < c0592x.m7744b();
        }

        /* renamed from: c */
        public View m7919c(RecyclerView.C0584s c0584s) {
            View view;
            List<RecyclerView.AbstractC0558a0> list = this.f2140k;
            int i = 0;
            if (list == null) {
                View view2 = c0584s.m7758j(this.f2133d, false, Long.MAX_VALUE).f2224a;
                this.f2133d += this.f2134e;
                return view2;
            }
            int size = list.size();
            while (true) {
                if (i >= size) {
                    view = null;
                    break;
                }
                view = this.f2140k.get(i).f2224a;
                RecyclerView.C0578n c0578n = (RecyclerView.C0578n) view.getLayoutParams();
                if (!c0578n.m7770c() && this.f2133d == c0578n.m7772a()) {
                    m7921a(view);
                    break;
                }
                i++;
            }
            return view;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$d.class */
    public static class C0555d implements Parcelable {
        public static final Parcelable.Creator<C0555d> CREATOR = new C0556a();

        /* renamed from: a */
        public int f2142a;

        /* renamed from: b */
        public int f2143b;

        /* renamed from: c */
        public boolean f2144c;

        /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$d$a.class */
        public static final class C0556a implements Parcelable.Creator<C0555d> {
            @Override // android.os.Parcelable.Creator
            public C0555d createFromParcel(Parcel parcel) {
                return new C0555d(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public C0555d[] newArray(int i) {
                return new C0555d[i];
            }
        }

        public C0555d() {
        }

        public C0555d(Parcel parcel) {
            this.f2142a = parcel.readInt();
            this.f2143b = parcel.readInt();
            this.f2144c = parcel.readInt() != 1 ? false : true;
        }

        public C0555d(C0555d c0555d) {
            this.f2142a = c0555d.f2142a;
            this.f2143b = c0555d.f2143b;
            this.f2144c = c0555d.f2144c;
        }

        /* renamed from: a */
        public boolean m7918a() {
            return this.f2142a >= 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2142a);
            parcel.writeInt(this.f2143b);
            parcel.writeInt(this.f2144c ? 1 : 0);
        }
    }

    public LinearLayoutManager(int i, boolean z) {
        this.f2110p = 1;
        this.f2114t = false;
        this.f2115u = false;
        this.f2116v = false;
        this.f2117w = true;
        this.f2118x = -1;
        this.f2119y = Integer.MIN_VALUE;
        this.f2120z = null;
        this.f2106A = new C0552a();
        this.f2107B = new C0553b();
        this.f2108C = 2;
        this.f2109D = new int[2];
        m7930m1(i);
        mo7710d(null);
        if (z == this.f2114t) {
            return;
        }
        this.f2114t = z;
        m7778u0();
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f2110p = 1;
        this.f2114t = false;
        this.f2115u = false;
        this.f2116v = false;
        this.f2117w = true;
        this.f2118x = -1;
        this.f2119y = Integer.MIN_VALUE;
        this.f2120z = null;
        this.f2106A = new C0552a();
        this.f2107B = new C0553b();
        this.f2108C = 2;
        this.f2109D = new int[2];
        RecyclerView.AbstractC0573m.C0577d m7796R = RecyclerView.AbstractC0573m.m7796R(context, attributeSet, i, i2);
        m7930m1(m7796R.f2272a);
        boolean z = m7796R.f2274c;
        mo7710d(null);
        if (z != this.f2114t) {
            this.f2114t = z;
            m7778u0();
        }
        mo7929n1(m7796R.f2275d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004a, code lost:
        if (r4 != false) goto L19;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: E0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo7811E0() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f2267m
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L50
            r0 = r3
            int r0 = r0.f2266l
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L50
            r0 = r3
            int r0 = r0.m7776x()
            r6 = r0
            r0 = 0
            r4 = r0
        L1d:
            r0 = r4
            r1 = r6
            if (r0 >= r1) goto L47
            r0 = r3
            r1 = r4
            android.view.View r0 = r0.m7777w(r1)
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            r7 = r0
            r0 = r7
            int r0 = r0.width
            if (r0 >= 0) goto L41
            r0 = r7
            int r0 = r0.height
            if (r0 >= 0) goto L41
            r0 = 1
            r4 = r0
            goto L49
        L41:
            int r4 = r4 + 1
            goto L1d
        L47:
            r0 = 0
            r4 = r0
        L49:
            r0 = r4
            if (r0 == 0) goto L50
            goto L52
        L50:
            r0 = 0
            r5 = r0
        L52:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.mo7811E0():boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: G0 */
    public void mo4591G0(RecyclerView recyclerView, RecyclerView.C0592x c0592x, int i) {
        C0641p c0641p = new C0641p(recyclerView.getContext());
        c0641p.f2296a = i;
        m7806H0(c0641p);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: I0 */
    public boolean mo7739I0() {
        return this.f2120z == null && this.f2113s == this.f2116v;
    }

    /* renamed from: J0 */
    public void mo4620J0(RecyclerView.C0592x c0592x, int[] iArr) {
        int i;
        int i2;
        int mo7542l = c0592x.f2311a != -1 ? this.f2112r.mo7542l() : 0;
        if (this.f2111q.f2135f == -1) {
            i2 = 0;
            i = mo7542l;
        } else {
            i = 0;
            i2 = mo7542l;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    /* renamed from: K0 */
    public void mo7958K0(RecyclerView.C0592x c0592x, C0554c c0554c, RecyclerView.AbstractC0573m.AbstractC0576c abstractC0576c) {
        int i = c0554c.f2133d;
        if (i < 0 || i >= c0592x.m7744b()) {
            return;
        }
        ((RunnableC0636n.C0638b) abstractC0576c).m7557a(i, Math.max(0, c0554c.f2136g));
    }

    /* renamed from: L0 */
    public final int m7957L0(RecyclerView.C0592x c0592x) {
        if (m7776x() == 0) {
            return 0;
        }
        m7953P0();
        return C0653z.m7521a(c0592x, this.f2112r, m7949T0(!this.f2117w, true), m7950S0(!this.f2117w, true), this, this.f2117w);
    }

    /* renamed from: M0 */
    public final int m7956M0(RecyclerView.C0592x c0592x) {
        if (m7776x() == 0) {
            return 0;
        }
        m7953P0();
        return C0653z.m7520b(c0592x, this.f2112r, m7949T0(!this.f2117w, true), m7950S0(!this.f2117w, true), this, this.f2117w, this.f2115u);
    }

    /* renamed from: N0 */
    public final int m7955N0(RecyclerView.C0592x c0592x) {
        if (m7776x() == 0) {
            return 0;
        }
        m7953P0();
        return C0653z.m7519c(c0592x, this.f2112r, m7949T0(!this.f2117w, true), m7950S0(!this.f2117w, true), this, this.f2117w);
    }

    /* renamed from: O0 */
    public int m7954O0(int i) {
        int i2 = -1;
        if (i == 1) {
            return (this.f2110p != 1 && m7938e1()) ? 1 : -1;
        } else if (i == 2) {
            return (this.f2110p != 1 && m7938e1()) ? -1 : 1;
        } else if (i == 17) {
            if (this.f2110p != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.f2110p != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            return this.f2110p == 0 ? 1 : Integer.MIN_VALUE;
        } else if (i != 130) {
            return Integer.MIN_VALUE;
        } else {
            return this.f2110p == 1 ? 1 : Integer.MIN_VALUE;
        }
    }

    /* renamed from: P0 */
    public void m7953P0() {
        if (this.f2111q == null) {
            this.f2111q = new C0554c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00aa, code lost:
        if (r9.f2317g == false) goto L23;
     */
    /* renamed from: Q0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m7952Q0(androidx.recyclerview.widget.RecyclerView.C0584s r7, androidx.recyclerview.widget.LinearLayoutManager.C0554c r8, androidx.recyclerview.widget.RecyclerView.C0592x r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.m7952Q0(androidx.recyclerview.widget.RecyclerView$s, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.RecyclerView$x, boolean):int");
    }

    /* renamed from: R0 */
    public final View m7951R0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        return mo7943Z0(c0584s, c0592x, 0, m7776x(), c0592x.m7744b());
    }

    /* renamed from: S0 */
    public View m7950S0(boolean z, boolean z2) {
        return this.f2115u ? m7944Y0(0, m7776x(), z, z2) : m7944Y0(m7776x() - 1, -1, z, z2);
    }

    /* renamed from: T0 */
    public View m7949T0(boolean z, boolean z2) {
        return this.f2115u ? m7944Y0(m7776x() - 1, -1, z, z2) : m7944Y0(0, m7776x(), z, z2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: U */
    public boolean mo7726U() {
        return true;
    }

    /* renamed from: U0 */
    public int m7948U0() {
        View m7944Y0 = m7944Y0(0, m7776x(), false, true);
        return m7944Y0 == null ? -1 : m7797Q(m7944Y0);
    }

    /* renamed from: V0 */
    public final View m7947V0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        return mo7943Z0(c0584s, c0592x, m7776x() - 1, -1, c0592x.m7744b());
    }

    /* renamed from: W0 */
    public int m7946W0() {
        int i = -1;
        View m7944Y0 = m7944Y0(m7776x() - 1, -1, false, true);
        if (m7944Y0 != null) {
            i = m7797Q(m7944Y0);
        }
        return i;
    }

    /* renamed from: X0 */
    public View m7945X0(int i, int i2) {
        int i3;
        int i4;
        m7953P0();
        if (!(i2 > i ? true : i2 < i ? true : false)) {
            return m7777w(i);
        }
        if (this.f2112r.mo7549e(m7777w(i)) < this.f2112r.mo7543k()) {
            i4 = 16644;
            i3 = 16388;
        } else {
            i4 = 4161;
            i3 = 4097;
        }
        return this.f2110p == 0 ? this.f2257c.m7597a(i, i2, i4, i3) : this.f2258d.m7597a(i, i2, i4, i3);
    }

    /* renamed from: Y0 */
    public View m7944Y0(int i, int i2, boolean z, boolean z2) {
        m7953P0();
        int i3 = 320;
        int i4 = z ? 24579 : 320;
        if (!z2) {
            i3 = 0;
        }
        return this.f2110p == 0 ? this.f2257c.m7597a(i, i2, i4, i3) : this.f2258d.m7597a(i, i2, i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: Z */
    public void mo7718Z(RecyclerView recyclerView, RecyclerView.C0584s c0584s) {
    }

    /* renamed from: Z0 */
    public View mo7943Z0(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, int i, int i2, int i3) {
        m7953P0();
        int mo7543k = this.f2112r.mo7543k();
        int mo7547g = this.f2112r.mo7547g();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (true) {
            View view3 = view2;
            if (i == i2) {
                if (view != null) {
                    view3 = view;
                }
                return view3;
            }
            View m7777w = m7777w(i);
            int m7797Q = m7797Q(m7777w);
            View view4 = view;
            View view5 = view3;
            if (m7797Q >= 0) {
                view4 = view;
                view5 = view3;
                if (m7797Q >= i3) {
                    continue;
                } else if (((RecyclerView.C0578n) m7777w.getLayoutParams()).m7770c()) {
                    view4 = view;
                    view5 = view3;
                    if (view3 == null) {
                        view5 = m7777w;
                        view4 = view;
                    }
                } else if (this.f2112r.mo7549e(m7777w) < mo7547g && this.f2112r.mo7552b(m7777w) >= mo7543k) {
                    return m7777w;
                } else {
                    view4 = view;
                    view5 = view3;
                    if (view == null) {
                        view4 = m7777w;
                        view5 = view3;
                    }
                }
            }
            i += i4;
            view = view4;
            view2 = view5;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0589w.AbstractC0591b
    /* renamed from: a */
    public PointF mo7716a(int i) {
        if (m7776x() == 0) {
            return null;
        }
        boolean z = false;
        if (i < m7797Q(m7777w(0))) {
            z = true;
        }
        int i2 = 1;
        if (z != this.f2115u) {
            i2 = -1;
        }
        return this.f2110p == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: a0 */
    public View mo7715a0(View view, int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        int m7954O0;
        m7932k1();
        if (m7776x() == 0 || (m7954O0 = m7954O0(i)) == Integer.MIN_VALUE) {
            return null;
        }
        m7953P0();
        m7928o1(m7954O0, (int) (this.f2112r.mo7542l() * 0.33333334f), false, c0592x);
        C0554c c0554c = this.f2111q;
        c0554c.f2136g = Integer.MIN_VALUE;
        c0554c.f2130a = false;
        m7952Q0(c0584s, c0554c, c0592x, true);
        View m7945X0 = m7954O0 == -1 ? this.f2115u ? m7945X0(m7776x() - 1, -1) : m7945X0(0, m7776x()) : this.f2115u ? m7945X0(0, m7776x()) : m7945X0(m7776x() - 1, -1);
        View m7939d1 = m7954O0 == -1 ? m7939d1() : m7940c1();
        if (!m7939d1.hasFocusable()) {
            return m7945X0;
        }
        if (m7945X0 != null) {
            return m7939d1;
        }
        return null;
    }

    /* renamed from: a1 */
    public final int m7942a1(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, boolean z) {
        int mo7547g;
        int mo7547g2 = this.f2112r.mo7547g() - i;
        if (mo7547g2 > 0) {
            int i2 = -m7931l1(-mo7547g2, c0584s, c0592x);
            if (!z || (mo7547g = this.f2112r.mo7547g() - (i + i2)) <= 0) {
                return i2;
            }
            this.f2112r.mo7538p(mo7547g);
            return mo7547g + i2;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: b0 */
    public void mo7713b0(AccessibilityEvent accessibilityEvent) {
        super.mo7713b0(accessibilityEvent);
        if (m7776x() > 0) {
            accessibilityEvent.setFromIndex(m7948U0());
            accessibilityEvent.setToIndex(m7946W0());
        }
    }

    /* renamed from: b1 */
    public final int m7941b1(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, boolean z) {
        int mo7543k = i - this.f2112r.mo7543k();
        if (mo7543k > 0) {
            int i2 = -m7931l1(mo7543k, c0584s, c0592x);
            int i3 = i2;
            if (z) {
                int mo7543k2 = (i + i2) - this.f2112r.mo7543k();
                i3 = i2;
                if (mo7543k2 > 0) {
                    this.f2112r.mo7538p(-mo7543k2);
                    i3 = i2 - mo7543k2;
                }
            }
            return i3;
        }
        return 0;
    }

    /* renamed from: c1 */
    public final View m7940c1() {
        return m7777w(this.f2115u ? 0 : m7776x() - 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: d */
    public void mo7710d(String str) {
        RecyclerView recyclerView;
        if (this.f2120z != null || (recyclerView = this.f2256b) == null) {
            return;
        }
        recyclerView.m7876i(str);
    }

    /* renamed from: d1 */
    public final View m7939d1() {
        return m7777w(this.f2115u ? m7776x() - 1 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: e */
    public boolean mo7707e() {
        return this.f2110p == 0;
    }

    /* renamed from: e1 */
    public boolean m7938e1() {
        boolean z = true;
        if (m7804J() != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: f */
    public boolean mo7704f() {
        boolean z = true;
        if (this.f2110p != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f1 */
    public void mo7937f1(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, C0554c c0554c, C0553b c0553b) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View m7919c = c0554c.m7919c(c0584s);
        if (m7919c == null) {
            c0553b.f2127b = true;
            return;
        }
        RecyclerView.C0578n c0578n = (RecyclerView.C0578n) m7919c.getLayoutParams();
        if (c0554c.f2140k == null) {
            if (this.f2115u == (c0554c.f2135f == -1)) {
                m7791c(m7919c, -1, false);
            } else {
                m7791c(m7919c, 0, false);
            }
        } else {
            if (this.f2115u == (c0554c.f2135f == -1)) {
                m7791c(m7919c, -1, true);
            } else {
                m7791c(m7919c, 0, true);
            }
        }
        RecyclerView.C0578n c0578n2 = (RecyclerView.C0578n) m7919c.getLayoutParams();
        Rect m7906L = this.f2256b.m7906L(m7919c);
        int i6 = m7906L.left;
        int i7 = m7906L.right;
        int i8 = m7906L.top;
        int i9 = m7906L.bottom;
        int m7775y = RecyclerView.AbstractC0573m.m7775y(this.f2268n, this.f2266l, m7799O() + m7800N() + ((ViewGroup.MarginLayoutParams) c0578n2).leftMargin + ((ViewGroup.MarginLayoutParams) c0578n2).rightMargin + i6 + i7 + 0, ((ViewGroup.MarginLayoutParams) c0578n2).width, mo7707e());
        int m7775y2 = RecyclerView.AbstractC0573m.m7775y(this.f2269o, this.f2267m, m7801M() + m7798P() + ((ViewGroup.MarginLayoutParams) c0578n2).topMargin + ((ViewGroup.MarginLayoutParams) c0578n2).bottomMargin + i8 + i9 + 0, ((ViewGroup.MarginLayoutParams) c0578n2).height, mo7704f());
        if (m7813D0(m7919c, m7775y, m7775y2, c0578n2)) {
            m7919c.measure(m7775y, m7775y2);
        }
        c0553b.f2126a = this.f2112r.mo7551c(m7919c);
        if (this.f2110p == 1) {
            if (m7938e1()) {
                i5 = this.f2268n - m7799O();
                i2 = i5 - this.f2112r.mo7550d(m7919c);
            } else {
                i2 = m7800N();
                i5 = this.f2112r.mo7550d(m7919c) + i2;
            }
            if (c0554c.f2135f == -1) {
                int i10 = c0554c.f2131b;
                i = i10;
                i3 = i5;
                i4 = i10 - c0553b.f2126a;
            } else {
                int i11 = c0554c.f2131b;
                int i12 = i5;
                i4 = i11;
                i3 = i12;
                i = c0553b.f2126a + i11;
            }
        } else {
            int m7798P = m7798P();
            int mo7550d = this.f2112r.mo7550d(m7919c) + m7798P;
            if (c0554c.f2135f == -1) {
                int i13 = c0554c.f2131b;
                i3 = i13;
                i = mo7550d;
                i2 = i13 - c0553b.f2126a;
                i4 = m7798P;
            } else {
                int i14 = c0554c.f2131b;
                i3 = c0553b.f2126a + i14;
                i = mo7550d;
                i4 = m7798P;
                i2 = i14;
            }
        }
        m7793W(m7919c, i2, i4, i3, i);
        if (c0578n.m7770c() || c0578n.m7771b()) {
            c0553b.f2128c = true;
        }
        c0553b.f2129d = m7919c.hasFocusable();
    }

    /* renamed from: g1 */
    public void mo7936g1(RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x, C0552a c0552a, int i) {
    }

    /* renamed from: h1 */
    public final void m7935h1(RecyclerView.C0584s c0584s, C0554c c0554c) {
        if (!c0554c.f2130a || c0554c.f2141l) {
            return;
        }
        int i = c0554c.f2136g;
        int i2 = c0554c.f2138i;
        if (c0554c.f2135f == -1) {
            int m7776x = m7776x();
            if (i < 0) {
                return;
            }
            int mo7548f = (this.f2112r.mo7548f() - i) + i2;
            if (this.f2115u) {
                for (int i3 = 0; i3 < m7776x; i3++) {
                    View m7777w = m7777w(i3);
                    if (this.f2112r.mo7549e(m7777w) < mo7548f || this.f2112r.mo7539o(m7777w) < mo7548f) {
                        m7934i1(c0584s, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = m7776x - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View m7777w2 = m7777w(i5);
                if (this.f2112r.mo7549e(m7777w2) < mo7548f || this.f2112r.mo7539o(m7777w2) < mo7548f) {
                    m7934i1(c0584s, i4, i5);
                    return;
                }
            }
        } else if (i >= 0) {
            int i6 = i - i2;
            int m7776x2 = m7776x();
            if (!this.f2115u) {
                for (int i7 = 0; i7 < m7776x2; i7++) {
                    View m7777w3 = m7777w(i7);
                    if (this.f2112r.mo7552b(m7777w3) > i6 || this.f2112r.mo7540n(m7777w3) > i6) {
                        m7934i1(c0584s, 0, i7);
                        return;
                    }
                }
                return;
            }
            int i8 = m7776x2 - 1;
            for (int i9 = i8; i9 >= 0; i9--) {
                View m7777w4 = m7777w(i9);
                if (this.f2112r.mo7552b(m7777w4) > i6 || this.f2112r.mo7540n(m7777w4) > i6) {
                    m7934i1(c0584s, i8, i9);
                    return;
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: i */
    public void mo7696i(int i, int i2, RecyclerView.C0592x c0592x, RecyclerView.AbstractC0573m.AbstractC0576c abstractC0576c) {
        if (this.f2110p != 0) {
            i = i2;
        }
        if (m7776x() == 0 || i == 0) {
            return;
        }
        m7953P0();
        m7928o1(i > 0 ? 1 : -1, Math.abs(i), true, c0592x);
        mo7958K0(c0592x, this.f2111q, abstractC0576c);
    }

    /* renamed from: i1 */
    public final void m7934i1(RecyclerView.C0584s c0584s, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            for (int i3 = i; i3 > i2; i3--) {
                m7782r0(i3, c0584s);
            }
            return;
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            m7782r0(i2, c0584s);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: j */
    public void mo7788j(int i, RecyclerView.AbstractC0573m.AbstractC0576c abstractC0576c) {
        int i2;
        boolean z;
        C0555d c0555d = this.f2120z;
        int i3 = -1;
        if (c0555d == null || !c0555d.m7918a()) {
            m7932k1();
            boolean z2 = this.f2115u;
            int i4 = this.f2118x;
            i2 = i4;
            z = z2;
            if (i4 == -1) {
                if (z2) {
                    i2 = i - 1;
                    z = z2;
                } else {
                    i2 = 0;
                    z = z2;
                }
            }
        } else {
            C0555d c0555d2 = this.f2120z;
            z = c0555d2.f2144c;
            i2 = c0555d2.f2142a;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.f2108C && i2 >= 0 && i2 < i; i5++) {
            ((RunnableC0636n.C0638b) abstractC0576c).m7557a(i2, 0);
            i2 += i3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x028d  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: j0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo7693j0(androidx.recyclerview.widget.RecyclerView.C0584s r7, androidx.recyclerview.widget.RecyclerView.C0592x r8) {
        /*
            Method dump skipped, instructions count: 2179
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.mo7693j0(androidx.recyclerview.widget.RecyclerView$s, androidx.recyclerview.widget.RecyclerView$x):void");
    }

    /* renamed from: j1 */
    public boolean m7933j1() {
        return this.f2112r.mo7545i() == 0 && this.f2112r.mo7548f() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: k */
    public int mo7691k(RecyclerView.C0592x c0592x) {
        return m7957L0(c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: k0 */
    public void mo7690k0(RecyclerView.C0592x c0592x) {
        this.f2120z = null;
        this.f2118x = -1;
        this.f2119y = Integer.MIN_VALUE;
        this.f2106A.m7922d();
    }

    /* renamed from: k1 */
    public final void m7932k1() {
        if (this.f2110p == 1 || !m7938e1()) {
            this.f2115u = this.f2114t;
        } else {
            this.f2115u = !this.f2114t;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: l */
    public int mo7688l(RecyclerView.C0592x c0592x) {
        return m7956M0(c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: l0 */
    public void mo7687l0(Parcelable parcelable) {
        if (parcelable instanceof C0555d) {
            this.f2120z = (C0555d) parcelable;
            m7778u0();
        }
    }

    /* renamed from: l1 */
    public int m7931l1(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        if (m7776x() == 0 || i == 0) {
            return 0;
        }
        m7953P0();
        this.f2111q.f2130a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        m7928o1(i2, abs, true, c0592x);
        C0554c c0554c = this.f2111q;
        int m7952Q0 = m7952Q0(c0584s, c0554c, c0592x, false) + c0554c.f2136g;
        if (m7952Q0 < 0) {
            return 0;
        }
        if (abs > m7952Q0) {
            i = i2 * m7952Q0;
        }
        this.f2112r.mo7538p(-i);
        this.f2111q.f2139j = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: m */
    public int mo7685m(RecyclerView.C0592x c0592x) {
        return m7955N0(c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: m0 */
    public Parcelable mo7684m0() {
        C0555d c0555d = this.f2120z;
        if (c0555d != null) {
            return new C0555d(c0555d);
        }
        C0555d c0555d2 = new C0555d();
        if (m7776x() > 0) {
            m7953P0();
            boolean z = this.f2113s ^ this.f2115u;
            c0555d2.f2144c = z;
            if (z) {
                View m7940c1 = m7940c1();
                c0555d2.f2143b = this.f2112r.mo7547g() - this.f2112r.mo7552b(m7940c1);
                c0555d2.f2142a = m7797Q(m7940c1);
            } else {
                View m7939d1 = m7939d1();
                c0555d2.f2142a = m7797Q(m7939d1);
                c0555d2.f2143b = this.f2112r.mo7549e(m7939d1) - this.f2112r.mo7543k();
            }
        } else {
            c0555d2.f2142a = -1;
        }
        return c0555d2;
    }

    /* renamed from: m1 */
    public void m7930m1(int i) {
        if (i == 0 || i == 1) {
            mo7710d(null);
            if (i == this.f2110p && this.f2112r != null) {
                return;
            }
            AbstractC0646t m7553a = AbstractC0646t.m7553a(this, i);
            this.f2112r = m7553a;
            this.f2106A.f2121a = m7553a;
            this.f2110p = i;
            m7778u0();
            return;
        }
        throw new IllegalArgumentException(C0033h.m8886k("invalid orientation:", i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: n */
    public int mo7682n(RecyclerView.C0592x c0592x) {
        return m7957L0(c0592x);
    }

    /* renamed from: n1 */
    public void mo7929n1(boolean z) {
        mo7710d(null);
        if (this.f2116v == z) {
            return;
        }
        this.f2116v = z;
        m7778u0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: o */
    public int mo7679o(RecyclerView.C0592x c0592x) {
        return m7956M0(c0592x);
    }

    /* renamed from: o1 */
    public final void m7928o1(int i, int i2, boolean z, RecyclerView.C0592x c0592x) {
        int i3;
        this.f2111q.f2141l = m7933j1();
        this.f2111q.f2135f = i;
        int[] iArr = this.f2109D;
        boolean z2 = false;
        iArr[0] = 0;
        iArr[1] = 0;
        mo4620J0(c0592x, iArr);
        int max = Math.max(0, this.f2109D[0]);
        int max2 = Math.max(0, this.f2109D[1]);
        if (i == 1) {
            z2 = true;
        }
        C0554c c0554c = this.f2111q;
        int i4 = z2 ? max2 : max;
        c0554c.f2137h = i4;
        if (!z2) {
            max = max2;
        }
        c0554c.f2138i = max;
        if (z2) {
            c0554c.f2137h = this.f2112r.mo7546h() + i4;
            View m7940c1 = m7940c1();
            C0554c c0554c2 = this.f2111q;
            int i5 = 1;
            if (this.f2115u) {
                i5 = -1;
            }
            c0554c2.f2134e = i5;
            int m7797Q = m7797Q(m7940c1);
            C0554c c0554c3 = this.f2111q;
            c0554c2.f2133d = m7797Q + c0554c3.f2134e;
            c0554c3.f2131b = this.f2112r.mo7552b(m7940c1);
            i3 = this.f2112r.mo7552b(m7940c1) - this.f2112r.mo7547g();
        } else {
            View m7939d1 = m7939d1();
            C0554c c0554c4 = this.f2111q;
            c0554c4.f2137h = this.f2112r.mo7543k() + c0554c4.f2137h;
            C0554c c0554c5 = this.f2111q;
            c0554c5.f2134e = this.f2115u ? 1 : -1;
            int m7797Q2 = m7797Q(m7939d1);
            C0554c c0554c6 = this.f2111q;
            c0554c5.f2133d = m7797Q2 + c0554c6.f2134e;
            c0554c6.f2131b = this.f2112r.mo7549e(m7939d1);
            i3 = (-this.f2112r.mo7549e(m7939d1)) + this.f2112r.mo7543k();
        }
        C0554c c0554c7 = this.f2111q;
        c0554c7.f2132c = i2;
        if (z) {
            c0554c7.f2132c = i2 - i3;
        }
        c0554c7.f2136g = i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: p */
    public int mo7678p(RecyclerView.C0592x c0592x) {
        return m7955N0(c0592x);
    }

    /* renamed from: p1 */
    public final void m7927p1(int i, int i2) {
        this.f2111q.f2132c = this.f2112r.mo7547g() - i2;
        C0554c c0554c = this.f2111q;
        c0554c.f2134e = this.f2115u ? -1 : 1;
        c0554c.f2133d = i;
        c0554c.f2135f = 1;
        c0554c.f2131b = i2;
        c0554c.f2136g = Integer.MIN_VALUE;
    }

    /* renamed from: q1 */
    public final void m7926q1(int i, int i2) {
        this.f2111q.f2132c = i2 - this.f2112r.mo7543k();
        C0554c c0554c = this.f2111q;
        c0554c.f2133d = i;
        c0554c.f2134e = this.f2115u ? 1 : -1;
        c0554c.f2135f = -1;
        c0554c.f2131b = i2;
        c0554c.f2136g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: s */
    public View mo7781s(int i) {
        int m7776x = m7776x();
        if (m7776x == 0) {
            return null;
        }
        int m7797Q = i - m7797Q(m7777w(0));
        if (m7797Q >= 0 && m7797Q < m7776x) {
            View m7777w = m7777w(m7797Q);
            if (m7797Q(m7777w) == i) {
                return m7777w;
            }
        }
        return super.mo7781s(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: t */
    public RecyclerView.C0578n mo7677t() {
        return new RecyclerView.C0578n(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: v0 */
    public int mo7674v0(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        if (this.f2110p == 1) {
            return 0;
        }
        return m7931l1(i, c0584s, c0592x);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: w0 */
    public void mo7673w0(int i) {
        this.f2118x = i;
        this.f2119y = Integer.MIN_VALUE;
        C0555d c0555d = this.f2120z;
        if (c0555d != null) {
            c0555d.f2142a = -1;
        }
        m7778u0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0573m
    /* renamed from: x0 */
    public int mo7672x0(int i, RecyclerView.C0584s c0584s, RecyclerView.C0592x c0592x) {
        if (this.f2110p == 0) {
            return 0;
        }
        return m7931l1(i, c0584s, c0592x);
    }
}
