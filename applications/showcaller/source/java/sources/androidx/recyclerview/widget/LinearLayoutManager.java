package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager.class */
public class LinearLayoutManager extends RecyclerView.AbstractC0921o implements RecyclerView.AbstractC0935x.AbstractC0937b {

    /* renamed from: A */
    int f3921A;

    /* renamed from: B */
    int f3922B;

    /* renamed from: C */
    private boolean f3923C;

    /* renamed from: D */
    SavedState f3924D;

    /* renamed from: E */
    final C0898a f3925E;

    /* renamed from: F */
    private final C0899b f3926F;

    /* renamed from: G */
    private int f3927G;

    /* renamed from: H */
    private int[] f3928H;

    /* renamed from: s */
    int f3929s;

    /* renamed from: t */
    private C0900c f3930t;

    /* renamed from: u */
    AbstractC0975i f3931u;

    /* renamed from: v */
    private boolean f3932v;

    /* renamed from: w */
    private boolean f3933w;

    /* renamed from: x */
    boolean f3934x;

    /* renamed from: y */
    private boolean f3935y;

    /* renamed from: z */
    private boolean f3936z;

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0897a();

        /* renamed from: d */
        int f3937d;

        /* renamed from: e */
        int f3938e;

        /* renamed from: f */
        boolean f3939f;

        /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState$a.class */
        class C0897a implements Parcelable.Creator<SavedState> {
            C0897a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f3937d = parcel.readInt();
            this.f3938e = parcel.readInt();
            this.f3939f = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.f3937d = savedState.f3937d;
            this.f3938e = savedState.f3938e;
            this.f3939f = savedState.f3939f;
        }

        /* renamed from: a */
        boolean m32113a() {
            return this.f3937d >= 0;
        }

        /* renamed from: b */
        void m32112b() {
            this.f3937d = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f3937d);
            parcel.writeInt(this.f3938e);
            parcel.writeInt(this.f3939f ? 1 : 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
    public static class C0898a {

        /* renamed from: a */
        AbstractC0975i f3940a;

        /* renamed from: b */
        int f3941b;

        /* renamed from: c */
        int f3942c;

        /* renamed from: d */
        boolean f3943d;

        /* renamed from: e */
        boolean f3944e;

        C0898a() {
            m32105e();
        }

        /* renamed from: a */
        void m32109a() {
            this.f3942c = this.f3943d ? this.f3940a.mo31391i() : this.f3940a.mo31387m();
        }

        /* renamed from: b */
        public void m32108b(View view, int i) {
            if (this.f3943d) {
                this.f3942c = this.f3940a.mo31396d(view) + this.f3940a.m31398o();
            } else {
                this.f3942c = this.f3940a.mo31393g(view);
            }
            this.f3941b = i;
        }

        /* renamed from: c */
        public void m32107c(View view, int i) {
            int m31398o = this.f3940a.m31398o();
            if (m31398o >= 0) {
                m32108b(view, i);
                return;
            }
            this.f3941b = i;
            if (this.f3943d) {
                int mo31391i = (this.f3940a.mo31391i() - m31398o) - this.f3940a.mo31396d(view);
                this.f3942c = this.f3940a.mo31391i() - mo31391i;
                if (mo31391i <= 0) {
                    return;
                }
                int mo31395e = this.f3940a.mo31395e(view);
                int i2 = this.f3942c;
                int mo31387m = this.f3940a.mo31387m();
                int min = (i2 - mo31395e) - (mo31387m + Math.min(this.f3940a.mo31393g(view) - mo31387m, 0));
                if (min >= 0) {
                    return;
                }
                this.f3942c += Math.min(mo31391i, -min);
                return;
            }
            int mo31393g = this.f3940a.mo31393g(view);
            int mo31387m2 = mo31393g - this.f3940a.mo31387m();
            this.f3942c = mo31393g;
            if (mo31387m2 <= 0) {
                return;
            }
            int mo31395e2 = this.f3940a.mo31395e(view);
            int mo31391i2 = (this.f3940a.mo31391i() - Math.min(0, (this.f3940a.mo31391i() - m31398o) - this.f3940a.mo31396d(view))) - (mo31393g + mo31395e2);
            if (mo31391i2 >= 0) {
                return;
            }
            this.f3942c -= Math.min(mo31387m2, -mo31391i2);
        }

        /* renamed from: d */
        boolean m32106d(View view, RecyclerView.C0938y c0938y) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.m31955c() && layoutParams.m31957a() >= 0 && layoutParams.m31957a() < c0938y.m31703b();
        }

        /* renamed from: e */
        void m32105e() {
            this.f3941b = -1;
            this.f3942c = Integer.MIN_VALUE;
            this.f3943d = false;
            this.f3944e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f3941b + ", mCoordinate=" + this.f3942c + ", mLayoutFromEnd=" + this.f3943d + ", mValid=" + this.f3944e + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$b.class */
    public static class C0899b {

        /* renamed from: a */
        public int f3945a;

        /* renamed from: b */
        public boolean f3946b;

        /* renamed from: c */
        public boolean f3947c;

        /* renamed from: d */
        public boolean f3948d;

        protected C0899b() {
        }

        /* renamed from: a */
        void m32104a() {
            this.f3945a = 0;
            this.f3946b = false;
            this.f3947c = false;
            this.f3948d = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
    public static class C0900c {

        /* renamed from: b */
        int f3950b;

        /* renamed from: c */
        int f3951c;

        /* renamed from: d */
        int f3952d;

        /* renamed from: e */
        int f3953e;

        /* renamed from: f */
        int f3954f;

        /* renamed from: g */
        int f3955g;

        /* renamed from: k */
        int f3959k;

        /* renamed from: m */
        boolean f3961m;

        /* renamed from: a */
        boolean f3949a = true;

        /* renamed from: h */
        int f3956h = 0;

        /* renamed from: i */
        int f3957i = 0;

        /* renamed from: j */
        boolean f3958j = false;

        /* renamed from: l */
        List<RecyclerView.AbstractC0905b0> f3960l = null;

        C0900c() {
        }

        /* renamed from: e */
        private View m32099e() {
            int size = this.f3960l.size();
            for (int i = 0; i < size; i++) {
                View view = this.f3960l.get(i).f4070b;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.m31955c() && this.f3952d == layoutParams.m31957a()) {
                    m32102b(view);
                    return view;
                }
            }
            return null;
        }

        /* renamed from: a */
        public void m32103a() {
            m32102b(null);
        }

        /* renamed from: b */
        public void m32102b(View view) {
            View m32098f = m32098f(view);
            if (m32098f == null) {
                this.f3952d = -1;
            } else {
                this.f3952d = ((RecyclerView.LayoutParams) m32098f.getLayoutParams()).m31957a();
            }
        }

        /* renamed from: c */
        public boolean m32101c(RecyclerView.C0938y c0938y) {
            int i = this.f3952d;
            return i >= 0 && i < c0938y.m31703b();
        }

        /* renamed from: d */
        public View m32100d(RecyclerView.C0932u c0932u) {
            if (this.f3960l != null) {
                return m32099e();
            }
            View m31737o = c0932u.m31737o(this.f3952d);
            this.f3952d += this.f3953e;
            return m31737o;
        }

        /* renamed from: f */
        public View m32098f(View view) {
            View view2;
            int size = this.f3960l.size();
            View view3 = null;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.f3960l.get(i2).f4070b;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view4.getLayoutParams();
                View view5 = view3;
                int i3 = i;
                if (view4 != view) {
                    if (layoutParams.m31955c()) {
                        view5 = view3;
                        i3 = i;
                    } else {
                        int m31957a = (layoutParams.m31957a() - this.f3952d) * this.f3953e;
                        if (m31957a < 0) {
                            view5 = view3;
                            i3 = i;
                        } else {
                            view5 = view3;
                            i3 = i;
                            if (m31957a >= i) {
                                continue;
                            } else if (m31957a == 0) {
                                view2 = view4;
                                break;
                            } else {
                                i3 = m31957a;
                                view5 = view4;
                            }
                        }
                    }
                }
                i2++;
                view3 = view5;
                i = i3;
            }
            return view2;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.f3929s = 1;
        this.f3933w = false;
        this.f3934x = false;
        this.f3935y = false;
        this.f3936z = true;
        this.f3921A = -1;
        this.f3922B = Integer.MIN_VALUE;
        this.f3924D = null;
        this.f3925E = new C0898a();
        this.f3926F = new C0899b();
        this.f3927G = 2;
        this.f3928H = new int[2];
        m32114z2(i);
        m32162A2(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f3929s = 1;
        this.f3933w = false;
        this.f3934x = false;
        this.f3935y = false;
        this.f3936z = true;
        this.f3921A = -1;
        this.f3922B = Integer.MIN_VALUE;
        this.f3924D = null;
        this.f3925E = new C0898a();
        this.f3926F = new C0899b();
        this.f3927G = 2;
        this.f3928H = new int[2];
        RecyclerView.AbstractC0921o.C0925d m31814i0 = RecyclerView.AbstractC0921o.m31814i0(context, attributeSet, i, i2);
        m32114z2(m31814i0.f4124a);
        m32162A2(m31814i0.f4126c);
        mo32160C2(m31814i0.f4127d);
    }

    /* renamed from: D2 */
    private boolean m32159D2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, C0898a c0898a) {
        View mo32133g2;
        if (m31858J() == 0) {
            return false;
        }
        View m31839V = m31839V();
        if (m31839V != null && c0898a.m32106d(m31839V, c0938y)) {
            c0898a.m32107c(m31839V, m31816h0(m31839V));
            return true;
        }
        boolean z = this.f3932v;
        boolean z2 = this.f3935y;
        if (z != z2 || (mo32133g2 = mo32133g2(c0932u, c0938y, c0898a.f3943d, z2)) == null) {
            return false;
        }
        c0898a.m32108b(mo32133g2, m31816h0(mo32133g2));
        if (c0938y.m31700e() || !mo31676M1()) {
            return true;
        }
        int mo31393g = this.f3931u.mo31393g(mo32133g2);
        int mo31396d = this.f3931u.mo31396d(mo32133g2);
        int mo31387m = this.f3931u.mo31387m();
        int mo31391i = this.f3931u.mo31391i();
        boolean z3 = mo31396d <= mo31387m && mo31393g < mo31387m;
        boolean z4 = false;
        if (mo31393g >= mo31391i) {
            z4 = false;
            if (mo31396d > mo31391i) {
                z4 = true;
            }
        }
        if (!z3 && !z4) {
            return true;
        }
        int i = mo31387m;
        if (c0898a.f3943d) {
            i = mo31391i;
        }
        c0898a.f3942c = i;
        return true;
    }

    /* renamed from: E2 */
    private boolean m32158E2(RecyclerView.C0938y c0938y, C0898a c0898a) {
        int i;
        boolean z = false;
        if (c0938y.m31700e() || (i = this.f3921A) == -1) {
            return false;
        }
        if (i < 0 || i >= c0938y.m31703b()) {
            this.f3921A = -1;
            this.f3922B = Integer.MIN_VALUE;
            return false;
        }
        c0898a.f3941b = this.f3921A;
        SavedState savedState = this.f3924D;
        if (savedState != null && savedState.m32113a()) {
            boolean z2 = this.f3924D.f3939f;
            c0898a.f3943d = z2;
            if (z2) {
                c0898a.f3942c = this.f3931u.mo31391i() - this.f3924D.f3938e;
                return true;
            }
            c0898a.f3942c = this.f3931u.mo31387m() + this.f3924D.f3938e;
            return true;
        } else if (this.f3922B != Integer.MIN_VALUE) {
            boolean z3 = this.f3934x;
            c0898a.f3943d = z3;
            if (z3) {
                c0898a.f3942c = this.f3931u.mo31391i() - this.f3922B;
                return true;
            }
            c0898a.f3942c = this.f3931u.mo31387m() + this.f3922B;
            return true;
        } else {
            View mo31870C = mo31870C(this.f3921A);
            if (mo31870C == null) {
                if (m31858J() > 0) {
                    if ((this.f3921A < m31816h0(m31860I(0))) == this.f3934x) {
                        z = true;
                    }
                    c0898a.f3943d = z;
                }
                c0898a.m32109a();
                return true;
            } else if (this.f3931u.mo31395e(mo31870C) > this.f3931u.mo31386n()) {
                c0898a.m32109a();
                return true;
            } else if (this.f3931u.mo31393g(mo31870C) - this.f3931u.mo31387m() < 0) {
                c0898a.f3942c = this.f3931u.mo31387m();
                c0898a.f3943d = false;
                return true;
            } else if (this.f3931u.mo31391i() - this.f3931u.mo31396d(mo31870C) >= 0) {
                c0898a.f3942c = c0898a.f3943d ? this.f3931u.mo31396d(mo31870C) + this.f3931u.m31398o() : this.f3931u.mo31393g(mo31870C);
                return true;
            } else {
                c0898a.f3942c = this.f3931u.mo31391i();
                c0898a.f3943d = true;
                return true;
            }
        }
    }

    /* renamed from: F2 */
    private void m32157F2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, C0898a c0898a) {
        if (!m32158E2(c0938y, c0898a) && !m32159D2(c0932u, c0938y, c0898a)) {
            c0898a.m32109a();
            c0898a.f3941b = this.f3935y ? c0938y.m31703b() - 1 : 0;
        }
    }

    /* renamed from: G2 */
    private void m32156G2(int i, int i2, boolean z, RecyclerView.C0938y c0938y) {
        int i3;
        this.f3930t.f3961m = m32117w2();
        this.f3930t.f3954f = i;
        int[] iArr = this.f3928H;
        boolean z2 = false;
        iArr[0] = 0;
        iArr[1] = 0;
        mo4987N1(c0938y, iArr);
        int max = Math.max(0, this.f3928H[0]);
        int max2 = Math.max(0, this.f3928H[1]);
        if (i == 1) {
            z2 = true;
        }
        C0900c c0900c = this.f3930t;
        int i4 = z2 ? max2 : max;
        c0900c.f3956h = i4;
        if (!z2) {
            max = max2;
        }
        c0900c.f3957i = max;
        if (z2) {
            c0900c.f3956h = i4 + this.f3931u.mo31390j();
            View m32130j2 = m32130j2();
            C0900c c0900c2 = this.f3930t;
            int i5 = 1;
            if (this.f3934x) {
                i5 = -1;
            }
            c0900c2.f3953e = i5;
            int m31816h0 = m31816h0(m32130j2);
            C0900c c0900c3 = this.f3930t;
            c0900c2.f3952d = m31816h0 + c0900c3.f3953e;
            c0900c3.f3950b = this.f3931u.mo31396d(m32130j2);
            i3 = this.f3931u.mo31396d(m32130j2) - this.f3931u.mo31391i();
        } else {
            View m32129k2 = m32129k2();
            this.f3930t.f3956h += this.f3931u.mo31387m();
            C0900c c0900c4 = this.f3930t;
            c0900c4.f3953e = this.f3934x ? 1 : -1;
            int m31816h02 = m31816h0(m32129k2);
            C0900c c0900c5 = this.f3930t;
            c0900c4.f3952d = m31816h02 + c0900c5.f3953e;
            c0900c5.f3950b = this.f3931u.mo31393g(m32129k2);
            i3 = (-this.f3931u.mo31393g(m32129k2)) + this.f3931u.mo31387m();
        }
        C0900c c0900c6 = this.f3930t;
        c0900c6.f3951c = i2;
        if (z) {
            c0900c6.f3951c = i2 - i3;
        }
        c0900c6.f3955g = i3;
    }

    /* renamed from: H2 */
    private void m32155H2(int i, int i2) {
        this.f3930t.f3951c = this.f3931u.mo31391i() - i2;
        C0900c c0900c = this.f3930t;
        c0900c.f3953e = this.f3934x ? -1 : 1;
        c0900c.f3952d = i;
        c0900c.f3954f = 1;
        c0900c.f3950b = i2;
        c0900c.f3955g = Integer.MIN_VALUE;
    }

    /* renamed from: I2 */
    private void m32154I2(C0898a c0898a) {
        m32155H2(c0898a.f3941b, c0898a.f3942c);
    }

    /* renamed from: J2 */
    private void m32153J2(int i, int i2) {
        this.f3930t.f3951c = i2 - this.f3931u.mo31387m();
        C0900c c0900c = this.f3930t;
        c0900c.f3952d = i;
        c0900c.f3953e = this.f3934x ? 1 : -1;
        c0900c.f3954f = -1;
        c0900c.f3950b = i2;
        c0900c.f3955g = Integer.MIN_VALUE;
    }

    /* renamed from: K2 */
    private void m32152K2(C0898a c0898a) {
        m32153J2(c0898a.f3941b, c0898a.f3942c);
    }

    /* renamed from: P1 */
    private int m32150P1(RecyclerView.C0938y c0938y) {
        if (m31858J() == 0) {
            return 0;
        }
        m32145U1();
        return C0982l.m31369a(c0938y, this.f3931u, m32141Y1(!this.f3936z, true), m32142X1(!this.f3936z, true), this, this.f3936z);
    }

    /* renamed from: Q1 */
    private int m32149Q1(RecyclerView.C0938y c0938y) {
        if (m31858J() == 0) {
            return 0;
        }
        m32145U1();
        return C0982l.m31368b(c0938y, this.f3931u, m32141Y1(!this.f3936z, true), m32142X1(!this.f3936z, true), this, this.f3936z, this.f3934x);
    }

    /* renamed from: R1 */
    private int m32148R1(RecyclerView.C0938y c0938y) {
        if (m31858J() == 0) {
            return 0;
        }
        m32145U1();
        return C0982l.m31367c(c0938y, this.f3931u, m32141Y1(!this.f3936z, true), m32142X1(!this.f3936z, true), this, this.f3936z);
    }

    /* renamed from: W1 */
    private View m32143W1() {
        return m32137c2(0, m31858J());
    }

    /* renamed from: a2 */
    private View m32139a2() {
        return m32137c2(m31858J() - 1, -1);
    }

    /* renamed from: e2 */
    private View m32135e2() {
        return this.f3934x ? m32143W1() : m32139a2();
    }

    /* renamed from: f2 */
    private View m32134f2() {
        return this.f3934x ? m32139a2() : m32143W1();
    }

    /* renamed from: h2 */
    private int m32132h2(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, boolean z) {
        int mo31391i;
        int mo31391i2 = this.f3931u.mo31391i() - i;
        if (mo31391i2 > 0) {
            int i2 = -m32115y2(-mo31391i2, c0932u, c0938y);
            if (!z || (mo31391i = this.f3931u.mo31391i() - (i + i2)) <= 0) {
                return i2;
            }
            this.f3931u.mo31383r(mo31391i);
            return mo31391i + i2;
        }
        return 0;
    }

    /* renamed from: i2 */
    private int m32131i2(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, boolean z) {
        int mo31387m = i - this.f3931u.mo31387m();
        if (mo31387m > 0) {
            int i2 = -m32115y2(mo31387m, c0932u, c0938y);
            int i3 = i2;
            if (z) {
                int mo31387m2 = (i + i2) - this.f3931u.mo31387m();
                i3 = i2;
                if (mo31387m2 > 0) {
                    this.f3931u.mo31383r(-mo31387m2);
                    i3 = i2 - mo31387m2;
                }
            }
            return i3;
        }
        return 0;
    }

    /* renamed from: j2 */
    private View m32130j2() {
        return m31860I(this.f3934x ? 0 : m31858J() - 1);
    }

    /* renamed from: k2 */
    private View m32129k2() {
        return m31860I(this.f3934x ? m31858J() - 1 : 0);
    }

    /* renamed from: q2 */
    private void m32123q2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, int i, int i2) {
        if (!c0938y.m31698g() || m31858J() == 0 || c0938y.m31700e() || !mo31676M1()) {
            return;
        }
        List<RecyclerView.AbstractC0905b0> m31741k = c0932u.m31741k();
        int size = m31741k.size();
        int m31816h0 = m31816h0(m31860I(0));
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView.AbstractC0905b0 abstractC0905b0 = m31741k.get(i5);
            if (!abstractC0905b0.m31910v()) {
                boolean z = true;
                if ((abstractC0905b0.m31919m() < m31816h0) != this.f3934x) {
                    z = true;
                }
                if (z) {
                    i3 += this.f3931u.mo31395e(abstractC0905b0.f4070b);
                } else {
                    i4 += this.f3931u.mo31395e(abstractC0905b0.f4070b);
                }
            }
        }
        this.f3930t.f3960l = m31741k;
        if (i3 > 0) {
            m32153J2(m31816h0(m32129k2()), i);
            C0900c c0900c = this.f3930t;
            c0900c.f3956h = i3;
            c0900c.f3951c = 0;
            c0900c.m32103a();
            m32144V1(c0932u, this.f3930t, c0938y, false);
        }
        if (i4 > 0) {
            m32155H2(m31816h0(m32130j2()), i2);
            C0900c c0900c2 = this.f3930t;
            c0900c2.f3956h = i4;
            c0900c2.f3951c = 0;
            c0900c2.m32103a();
            m32144V1(c0932u, this.f3930t, c0938y, false);
        }
        this.f3930t.f3960l = null;
    }

    /* renamed from: s2 */
    private void m32121s2(RecyclerView.C0932u c0932u, C0900c c0900c) {
        if (!c0900c.f3949a || c0900c.f3961m) {
            return;
        }
        int i = c0900c.f3955g;
        int i2 = c0900c.f3957i;
        if (c0900c.f3954f == -1) {
            m32119u2(c0932u, i, i2);
        } else {
            m32118v2(c0932u, i, i2);
        }
    }

    /* renamed from: t2 */
    private void m32120t2(RecyclerView.C0932u c0932u, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            for (int i3 = i; i3 > i2; i3--) {
                m31801n1(i3, c0932u);
            }
            return;
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            m31801n1(i2, c0932u);
        }
    }

    /* renamed from: u2 */
    private void m32119u2(RecyclerView.C0932u c0932u, int i, int i2) {
        int m31858J = m31858J();
        if (i < 0) {
            return;
        }
        int mo31392h = (this.f3931u.mo31392h() - i) + i2;
        if (this.f3934x) {
            for (int i3 = 0; i3 < m31858J; i3++) {
                View m31860I = m31860I(i3);
                if (this.f3931u.mo31393g(m31860I) < mo31392h || this.f3931u.mo31384q(m31860I) < mo31392h) {
                    m32120t2(c0932u, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = m31858J - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View m31860I2 = m31860I(i5);
            if (this.f3931u.mo31393g(m31860I2) < mo31392h || this.f3931u.mo31384q(m31860I2) < mo31392h) {
                m32120t2(c0932u, i4, i5);
                return;
            }
        }
    }

    /* renamed from: v2 */
    private void m32118v2(RecyclerView.C0932u c0932u, int i, int i2) {
        if (i < 0) {
            return;
        }
        int i3 = i - i2;
        int m31858J = m31858J();
        if (!this.f3934x) {
            for (int i4 = 0; i4 < m31858J; i4++) {
                View m31860I = m31860I(i4);
                if (this.f3931u.mo31396d(m31860I) > i3 || this.f3931u.mo31385p(m31860I) > i3) {
                    m32120t2(c0932u, 0, i4);
                    return;
                }
            }
            return;
        }
        int i5 = m31858J - 1;
        for (int i6 = i5; i6 >= 0; i6--) {
            View m31860I2 = m31860I(i6);
            if (this.f3931u.mo31396d(m31860I2) > i3 || this.f3931u.mo31385p(m31860I2) > i3) {
                m32120t2(c0932u, i5, i6);
                return;
            }
        }
    }

    /* renamed from: x2 */
    private void m32116x2() {
        if (this.f3929s == 1 || !m32126n2()) {
            this.f3934x = this.f3933w;
        } else {
            this.f3934x = !this.f3933w;
        }
    }

    /* renamed from: A2 */
    public void m32162A2(boolean z) {
        mo31636g(null);
        if (z == this.f3933w) {
            return;
        }
        this.f3933w = z;
        m31790t1();
    }

    /* renamed from: B2 */
    public void m32161B2(boolean z) {
        this.f3936z = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: C */
    public View mo31870C(int i) {
        int m31858J = m31858J();
        if (m31858J == 0) {
            return null;
        }
        int m31816h0 = i - m31816h0(m31860I(0));
        if (m31816h0 >= 0 && m31816h0 < m31858J) {
            View m31860I = m31860I(m31816h0);
            if (m31816h0(m31860I) == i) {
                return m31860I;
            }
        }
        return super.mo31870C(i);
    }

    /* renamed from: C2 */
    public void mo32160C2(boolean z) {
        mo31636g(null);
        if (this.f3935y == z) {
            return;
        }
        this.f3935y = z;
        m31790t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: D */
    public RecyclerView.LayoutParams mo27390D() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: H1 */
    boolean mo31861H1() {
        return (m31836X() == 1073741824 || m31797p0() == 1073741824 || !m31795q0()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: I0 */
    public void mo31683I0(RecyclerView recyclerView, RecyclerView.C0932u c0932u) {
        super.mo31683I0(recyclerView, c0932u);
        if (this.f3923C) {
            m31808k1(c0932u);
            c0932u.m31749c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: J0 */
    public View mo31681J0(View view, int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        int m32147S1;
        m32116x2();
        if (m31858J() == 0 || (m32147S1 = m32147S1(i)) == Integer.MIN_VALUE) {
            return null;
        }
        m32145U1();
        m32156G2(m32147S1, (int) (this.f3931u.mo31386n() * 0.33333334f), false, c0938y);
        C0900c c0900c = this.f3930t;
        c0900c.f3955g = Integer.MIN_VALUE;
        c0900c.f3949a = false;
        m32144V1(c0932u, c0900c, c0938y, true);
        View m32134f2 = m32147S1 == -1 ? m32134f2() : m32135e2();
        View m32129k2 = m32147S1 == -1 ? m32129k2() : m32130j2();
        if (!m32129k2.hasFocusable()) {
            return m32134f2;
        }
        if (m32134f2 != null) {
            return m32129k2;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: J1 */
    public void mo4860J1(RecyclerView recyclerView, RecyclerView.C0938y c0938y, int i) {
        C0972g c0972g = new C0972g(recyclerView.getContext());
        c0972g.m31712p(i);
        m31856K1(c0972g);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: K0 */
    public void mo31679K0(AccessibilityEvent accessibilityEvent) {
        super.mo31679K0(accessibilityEvent);
        if (m31858J() > 0) {
            accessibilityEvent.setFromIndex(m32140Z1());
            accessibilityEvent.setToIndex(m32138b2());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: M1 */
    public boolean mo31676M1() {
        return this.f3924D == null && this.f3932v == this.f3935y;
    }

    /* renamed from: N1 */
    public void mo4987N1(RecyclerView.C0938y c0938y, int[] iArr) {
        int i;
        int m32128l2 = m32128l2(c0938y);
        if (this.f3930t.f3954f == -1) {
            i = 0;
        } else {
            i = m32128l2;
            m32128l2 = 0;
        }
        iArr[0] = m32128l2;
        iArr[1] = i;
    }

    /* renamed from: O1 */
    void mo32151O1(RecyclerView.C0938y c0938y, C0900c c0900c, RecyclerView.AbstractC0921o.AbstractC0924c abstractC0924c) {
        int i = c0900c.f3952d;
        if (i < 0 || i >= c0938y.m31703b()) {
            return;
        }
        abstractC0924c.mo31429a(i, Math.max(0, c0900c.f3955g));
    }

    /* renamed from: S1 */
    public int m32147S1(int i) {
        int i2 = -1;
        if (i == 1) {
            return (this.f3929s != 1 && m32126n2()) ? 1 : -1;
        } else if (i == 2) {
            return (this.f3929s != 1 && m32126n2()) ? -1 : 1;
        } else if (i == 17) {
            if (this.f3929s != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.f3929s != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            return this.f3929s == 0 ? 1 : Integer.MIN_VALUE;
        } else if (i != 130) {
            return Integer.MIN_VALUE;
        } else {
            return this.f3929s == 1 ? 1 : Integer.MIN_VALUE;
        }
    }

    /* renamed from: T1 */
    C0900c m32146T1() {
        return new C0900c();
    }

    /* renamed from: U1 */
    public void m32145U1() {
        if (this.f3930t == null) {
            this.f3930t = m32146T1();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008f, code lost:
        if (r9.m31700e() == false) goto L23;
     */
    /* renamed from: V1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int m32144V1(androidx.recyclerview.widget.RecyclerView.C0932u r7, androidx.recyclerview.widget.LinearLayoutManager.C0900c r8, androidx.recyclerview.widget.RecyclerView.C0938y r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.m32144V1(androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.RecyclerView$y, boolean):int");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: X0 */
    public void mo27380X0(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = -1;
        if (!(this.f3924D == null && this.f3921A == -1) && c0938y.m31703b() == 0) {
            m31808k1(c0932u);
            return;
        }
        SavedState savedState = this.f3924D;
        if (savedState != null && savedState.m32113a()) {
            this.f3921A = this.f3924D.f3937d;
        }
        m32145U1();
        this.f3930t.f3949a = false;
        m32116x2();
        View m31839V = m31839V();
        C0898a c0898a = this.f3925E;
        if (!c0898a.f3944e || this.f3921A != -1 || this.f3924D != null) {
            c0898a.m32105e();
            C0898a c0898a2 = this.f3925E;
            c0898a2.f3943d = this.f3934x ^ this.f3935y;
            m32157F2(c0932u, c0938y, c0898a2);
            this.f3925E.f3944e = true;
        } else if (m31839V != null && (this.f3931u.mo31393g(m31839V) >= this.f3931u.mo31391i() || this.f3931u.mo31396d(m31839V) <= this.f3931u.mo31387m())) {
            this.f3925E.m32107c(m31839V, m31816h0(m31839V));
        }
        C0900c c0900c = this.f3930t;
        c0900c.f3954f = c0900c.f3959k >= 0 ? 1 : -1;
        int[] iArr = this.f3928H;
        iArr[0] = 0;
        iArr[1] = 0;
        mo4987N1(c0938y, iArr);
        int max = Math.max(0, this.f3928H[0]) + this.f3931u.mo31387m();
        int max2 = Math.max(0, this.f3928H[1]) + this.f3931u.mo31390j();
        int i9 = max;
        int i10 = max2;
        if (c0938y.m31700e()) {
            int i11 = this.f3921A;
            i9 = max;
            i10 = max2;
            if (i11 != -1) {
                i9 = max;
                i10 = max2;
                if (this.f3922B != Integer.MIN_VALUE) {
                    View mo31870C = mo31870C(i11);
                    i9 = max;
                    i10 = max2;
                    if (mo31870C != null) {
                        if (this.f3934x) {
                            i6 = this.f3931u.mo31391i() - this.f3931u.mo31396d(mo31870C);
                            i7 = this.f3922B;
                        } else {
                            i7 = this.f3931u.mo31393g(mo31870C) - this.f3931u.mo31387m();
                            i6 = this.f3922B;
                        }
                        int i12 = i6 - i7;
                        if (i12 > 0) {
                            i9 = max + i12;
                            i10 = max2;
                        } else {
                            i10 = max2 - i12;
                            i9 = max;
                        }
                    }
                }
            }
        }
        C0898a c0898a3 = this.f3925E;
        if (!c0898a3.f3943d ? !this.f3934x : this.f3934x) {
            i8 = 1;
        }
        mo32122r2(c0932u, c0938y, c0898a3, i8);
        m31785w(c0932u);
        this.f3930t.f3961m = m32117w2();
        this.f3930t.f3958j = c0938y.m31700e();
        this.f3930t.f3957i = 0;
        C0898a c0898a4 = this.f3925E;
        if (c0898a4.f3943d) {
            m32152K2(c0898a4);
            C0900c c0900c2 = this.f3930t;
            c0900c2.f3956h = i9;
            m32144V1(c0932u, c0900c2, c0938y, false);
            C0900c c0900c3 = this.f3930t;
            int i13 = c0900c3.f3950b;
            int i14 = c0900c3.f3952d;
            int i15 = c0900c3.f3951c;
            int i16 = i10;
            if (i15 > 0) {
                i16 = i10 + i15;
            }
            m32154I2(this.f3925E);
            C0900c c0900c4 = this.f3930t;
            c0900c4.f3956h = i16;
            c0900c4.f3952d += c0900c4.f3953e;
            m32144V1(c0932u, c0900c4, c0938y, false);
            C0900c c0900c5 = this.f3930t;
            int i17 = c0900c5.f3950b;
            int i18 = c0900c5.f3951c;
            i = i13;
            i2 = i17;
            if (i18 > 0) {
                m32153J2(i14, i13);
                C0900c c0900c6 = this.f3930t;
                c0900c6.f3956h = i18;
                m32144V1(c0932u, c0900c6, c0938y, false);
                i = this.f3930t.f3950b;
                i2 = i17;
            }
        } else {
            m32154I2(c0898a4);
            C0900c c0900c7 = this.f3930t;
            c0900c7.f3956h = i10;
            m32144V1(c0932u, c0900c7, c0938y, false);
            C0900c c0900c8 = this.f3930t;
            int i19 = c0900c8.f3950b;
            int i20 = c0900c8.f3952d;
            int i21 = c0900c8.f3951c;
            int i22 = i9;
            if (i21 > 0) {
                i22 = i9 + i21;
            }
            m32152K2(this.f3925E);
            C0900c c0900c9 = this.f3930t;
            c0900c9.f3956h = i22;
            c0900c9.f3952d += c0900c9.f3953e;
            m32144V1(c0932u, c0900c9, c0938y, false);
            C0900c c0900c10 = this.f3930t;
            int i23 = c0900c10.f3950b;
            int i24 = c0900c10.f3951c;
            i = i23;
            i2 = i19;
            if (i24 > 0) {
                m32155H2(i20, i19);
                C0900c c0900c11 = this.f3930t;
                c0900c11.f3956h = i24;
                m32144V1(c0932u, c0900c11, c0938y, false);
                i2 = this.f3930t.f3950b;
                i = i23;
            }
        }
        int i25 = i;
        int i26 = i2;
        if (m31858J() > 0) {
            if (this.f3934x ^ this.f3935y) {
                int m32132h2 = m32132h2(i2, c0932u, c0938y, true);
                i5 = i + m32132h2;
                i3 = i2 + m32132h2;
                i4 = m32131i2(i5, c0932u, c0938y, false);
            } else {
                int m32131i2 = m32131i2(i, c0932u, c0938y, true);
                i5 = i + m32131i2;
                i3 = i2 + m32131i2;
                i4 = m32132h2(i3, c0932u, c0938y, false);
            }
            i25 = i5 + i4;
            i26 = i3 + i4;
        }
        m32123q2(c0932u, c0938y, i25, i26);
        if (!c0938y.m31700e()) {
            this.f3931u.m31397s();
        } else {
            this.f3925E.m32105e();
        }
        this.f3932v = this.f3935y;
    }

    /* renamed from: X1 */
    public View m32142X1(boolean z, boolean z2) {
        return this.f3934x ? m32136d2(0, m31858J(), z, z2) : m32136d2(m31858J() - 1, -1, z, z2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: Y0 */
    public void mo31649Y0(RecyclerView.C0938y c0938y) {
        super.mo31649Y0(c0938y);
        this.f3924D = null;
        this.f3921A = -1;
        this.f3922B = Integer.MIN_VALUE;
        this.f3925E.m32105e();
    }

    /* renamed from: Y1 */
    public View m32141Y1(boolean z, boolean z2) {
        return this.f3934x ? m32136d2(m31858J() - 1, -1, z, z2) : m32136d2(0, m31858J(), z, z2);
    }

    /* renamed from: Z1 */
    public int m32140Z1() {
        View m32136d2 = m32136d2(0, m31858J(), false, true);
        return m32136d2 == null ? -1 : m31816h0(m32136d2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0935x.AbstractC0937b
    /* renamed from: a */
    public PointF mo31646a(int i) {
        if (m31858J() == 0) {
            return null;
        }
        boolean z = false;
        if (i < m31816h0(m31860I(0))) {
            z = true;
        }
        int i2 = 1;
        if (z != this.f3934x) {
            i2 = -1;
        }
        return this.f3929s == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    /* renamed from: b2 */
    public int m32138b2() {
        int i = -1;
        View m32136d2 = m32136d2(m31858J() - 1, -1, false, true);
        if (m32136d2 != null) {
            i = m31816h0(m32136d2);
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: c1 */
    public void mo31643c1(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f3924D = savedState;
            if (this.f3921A != -1) {
                savedState.m32112b();
            }
            m31790t1();
        }
    }

    /* renamed from: c2 */
    View m32137c2(int i, int i2) {
        int i3;
        int i4;
        m32145U1();
        if (!(i2 > i ? true : i2 < i ? true : false)) {
            return m31860I(i);
        }
        if (this.f3931u.mo31393g(m31860I(i)) < this.f3931u.mo31387m()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.f3929s == 0 ? this.f4108e.m31332a(i, i2, i3, i4) : this.f4109f.m31332a(i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: d1 */
    public Parcelable mo31641d1() {
        if (this.f3924D != null) {
            return new SavedState(this.f3924D);
        }
        SavedState savedState = new SavedState();
        if (m31858J() > 0) {
            m32145U1();
            boolean z = this.f3932v ^ this.f3934x;
            savedState.f3939f = z;
            if (z) {
                View m32130j2 = m32130j2();
                savedState.f3938e = this.f3931u.mo31391i() - this.f3931u.mo31396d(m32130j2);
                savedState.f3937d = m31816h0(m32130j2);
            } else {
                View m32129k2 = m32129k2();
                savedState.f3937d = m31816h0(m32129k2);
                savedState.f3938e = this.f3931u.mo31393g(m32129k2) - this.f3931u.mo31387m();
            }
        } else {
            savedState.m32112b();
        }
        return savedState;
    }

    /* renamed from: d2 */
    View m32136d2(int i, int i2, boolean z, boolean z2) {
        m32145U1();
        int i3 = 320;
        int i4 = z ? 24579 : 320;
        if (!z2) {
            i3 = 0;
        }
        return this.f3929s == 0 ? this.f4108e.m31332a(i, i2, i4, i3) : this.f4109f.m31332a(i, i2, i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: g */
    public void mo31636g(String str) {
        if (this.f3924D == null) {
            super.mo31636g(str);
        }
    }

    /* renamed from: g2 */
    View mo32133g2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, boolean z, boolean z2) {
        int i;
        int i2;
        m32145U1();
        int m31858J = m31858J();
        int i3 = -1;
        if (z2) {
            i2 = m31858J() - 1;
            i = -1;
        } else {
            i3 = m31858J;
            i2 = 0;
            i = 1;
        }
        int m31703b = c0938y.m31703b();
        int mo31387m = this.f3931u.mo31387m();
        int mo31391i = this.f3931u.mo31391i();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (true) {
            View view4 = view3;
            if (i2 == i3) {
                if (view == null) {
                    view = view2 != null ? view2 : view4;
                }
                return view;
            }
            View m31860I = m31860I(i2);
            int m31816h0 = m31816h0(m31860I);
            int mo31393g = this.f3931u.mo31393g(m31860I);
            int mo31396d = this.f3931u.mo31396d(m31860I);
            View view5 = view;
            View view6 = view2;
            View view7 = view4;
            if (m31816h0 >= 0) {
                view5 = view;
                view6 = view2;
                view7 = view4;
                if (m31816h0 >= m31703b) {
                    continue;
                } else if (((RecyclerView.LayoutParams) m31860I.getLayoutParams()).m31955c()) {
                    view5 = view;
                    view6 = view2;
                    view7 = view4;
                    if (view4 == null) {
                        view5 = view;
                        view6 = view2;
                        view7 = m31860I;
                    }
                } else {
                    boolean z3 = mo31396d <= mo31387m && mo31393g < mo31387m;
                    boolean z4 = mo31393g >= mo31391i && mo31396d > mo31391i;
                    if (!z3 && !z4) {
                        return m31860I;
                    }
                    if (z) {
                        if (!z4) {
                            view5 = view;
                            view6 = view2;
                            view7 = view4;
                            if (view != null) {
                            }
                            view7 = view4;
                            view6 = view2;
                            view5 = m31860I;
                        }
                        view5 = view;
                        view6 = m31860I;
                        view7 = view4;
                    } else {
                        if (!z3) {
                            view5 = view;
                            view6 = view2;
                            view7 = view4;
                            if (view != null) {
                            }
                            view7 = view4;
                            view6 = view2;
                            view5 = m31860I;
                        }
                        view5 = view;
                        view6 = m31860I;
                        view7 = view4;
                    }
                }
            }
            i2 += i;
            view = view5;
            view2 = view6;
            view3 = view7;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: k */
    public boolean mo31631k() {
        return this.f3929s == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: l */
    public boolean mo27381l() {
        boolean z = true;
        if (this.f3929s != 1) {
            z = false;
        }
        return z;
    }

    @Deprecated
    /* renamed from: l2 */
    protected int m32128l2(RecyclerView.C0938y c0938y) {
        if (c0938y.m31701d()) {
            return this.f3931u.mo31386n();
        }
        return 0;
    }

    /* renamed from: m2 */
    public int m32127m2() {
        return this.f3929s;
    }

    /* renamed from: n2 */
    public boolean m32126n2() {
        boolean z = true;
        if (m31834Z() != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: o */
    public void mo31625o(int i, int i2, RecyclerView.C0938y c0938y, RecyclerView.AbstractC0921o.AbstractC0924c abstractC0924c) {
        if (this.f3929s != 0) {
            i = i2;
        }
        if (m31858J() == 0 || i == 0) {
            return;
        }
        m32145U1();
        m32156G2(i > 0 ? 1 : -1, Math.abs(i), true, c0938y);
        mo32151O1(c0938y, this.f3930t, abstractC0924c);
    }

    /* renamed from: o2 */
    public boolean m32125o2() {
        return this.f3936z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: p */
    public void mo31798p(int i, RecyclerView.AbstractC0921o.AbstractC0924c abstractC0924c) {
        int i2;
        boolean z;
        SavedState savedState = this.f3924D;
        int i3 = -1;
        if (savedState == null || !savedState.m32113a()) {
            m32116x2();
            boolean z2 = this.f3934x;
            int i4 = this.f3921A;
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
            SavedState savedState2 = this.f3924D;
            z = savedState2.f3939f;
            i2 = savedState2.f3937d;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.f3927G && i2 >= 0 && i2 < i; i5++) {
            abstractC0924c.mo31429a(i2, 0);
            i2 += i3;
        }
    }

    /* renamed from: p2 */
    void mo32124p2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, C0900c c0900c, C0899b c0899b) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        View m32100d = c0900c.m32100d(c0932u);
        if (m32100d == null) {
            c0899b.f3946b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) m32100d.getLayoutParams();
        if (c0900c.f3960l == null) {
            if (this.f3934x == (c0900c.f3954f == -1)) {
                m31826d(m32100d);
            } else {
                m31824e(m32100d, 0);
            }
        } else {
            if (this.f3934x == (c0900c.f3954f == -1)) {
                m31831b(m32100d);
            } else {
                m31828c(m32100d, 0);
            }
        }
        m31875A0(m32100d, 0, 0);
        c0899b.f3945a = this.f3931u.mo31395e(m32100d);
        if (this.f3929s == 1) {
            if (m32126n2()) {
                i6 = m31800o0() - m31821f0();
                i5 = i6 - this.f3931u.mo31394f(m32100d);
            } else {
                i5 = m31823e0();
                i6 = this.f3931u.mo31394f(m32100d) + i5;
            }
            if (c0900c.f3954f == -1) {
                int i7 = c0900c.f3950b;
                i = i7;
                int i8 = i6;
                i4 = i7 - c0899b.f3945a;
                i2 = i5;
                i3 = i8;
            } else {
                int i9 = c0900c.f3950b;
                int i10 = i6;
                i2 = i5;
                i4 = i9;
                i3 = i10;
                i = c0899b.f3945a + i9;
            }
        } else {
            int m31819g0 = m31819g0();
            int mo31394f = this.f3931u.mo31394f(m32100d) + m31819g0;
            if (c0900c.f3954f == -1) {
                int i11 = c0900c.f3950b;
                i3 = i11;
                i = mo31394f;
                i2 = i11 - c0899b.f3945a;
                i4 = m31819g0;
            } else {
                int i12 = c0900c.f3950b;
                i3 = c0899b.f3945a + i12;
                i = mo31394f;
                i4 = m31819g0;
                i2 = i12;
            }
        }
        m31778z0(m32100d, i2, i4, i3, i);
        if (layoutParams.m31955c() || layoutParams.m31956b()) {
            c0899b.f3947c = true;
        }
        c0899b.f3948d = m32100d.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: q */
    public int mo31622q(RecyclerView.C0938y c0938y) {
        return m32150P1(c0938y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: r */
    public int mo31620r(RecyclerView.C0938y c0938y) {
        return m32149Q1(c0938y);
    }

    /* renamed from: r2 */
    public void mo32122r2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, C0898a c0898a, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: s */
    public int mo31618s(RecyclerView.C0938y c0938y) {
        return m32148R1(c0938y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: s0 */
    public boolean mo31617s0() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: t */
    public int mo31615t(RecyclerView.C0938y c0938y) {
        return m32150P1(c0938y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: u */
    public int mo31613u(RecyclerView.C0938y c0938y) {
        return m32149Q1(c0938y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: v */
    public int mo31611v(RecyclerView.C0938y c0938y) {
        return m32148R1(c0938y);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: w1 */
    public int mo31609w1(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        if (this.f3929s == 1) {
            return 0;
        }
        return m32115y2(i, c0932u, c0938y);
    }

    /* renamed from: w2 */
    boolean m32117w2() {
        return this.f3931u.mo31389k() == 0 && this.f3931u.mo31392h() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: x1 */
    public void mo31607x1(int i) {
        this.f3921A = i;
        this.f3922B = Integer.MIN_VALUE;
        SavedState savedState = this.f3924D;
        if (savedState != null) {
            savedState.m32112b();
        }
        m31790t1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: y1 */
    public int mo27387y1(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        if (this.f3929s == 0) {
            return 0;
        }
        return m32115y2(i, c0932u, c0938y);
    }

    /* renamed from: y2 */
    int m32115y2(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        if (m31858J() == 0 || i == 0) {
            return 0;
        }
        m32145U1();
        this.f3930t.f3949a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        m32156G2(i2, abs, true, c0938y);
        C0900c c0900c = this.f3930t;
        int m32144V1 = c0900c.f3955g + m32144V1(c0932u, c0900c, c0938y, false);
        if (m32144V1 < 0) {
            return 0;
        }
        if (abs > m32144V1) {
            i = i2 * m32144V1;
        }
        this.f3931u.mo31383r(-i);
        this.f3930t.f3959k = i;
        return i;
    }

    /* renamed from: z2 */
    public void m32114z2(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        mo31636g(null);
        if (i == this.f3929s && this.f3931u != null) {
            return;
        }
        AbstractC0975i m31400b = AbstractC0975i.m31400b(this, i);
        this.f3931u = m31400b;
        this.f3925E.f3940a = m31400b;
        this.f3929s = i;
        m31790t1();
    }
}
