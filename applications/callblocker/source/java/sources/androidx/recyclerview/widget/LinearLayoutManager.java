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
public class LinearLayoutManager extends RecyclerView.AbstractC0925i implements RecyclerView.AbstractC0942t.AbstractC0944b {

    /* renamed from: a */
    private C0905c f3039a;

    /* renamed from: b */
    private boolean f3040b;

    /* renamed from: c */
    private boolean f3041c;

    /* renamed from: d */
    private boolean f3042d;

    /* renamed from: e */
    private boolean f3043e;

    /* renamed from: f */
    private boolean f3044f;

    /* renamed from: g */
    private final C0904b f3045g;

    /* renamed from: h */
    private int f3046h;

    /* renamed from: i */
    int f3047i;

    /* renamed from: j */
    AbstractC0990k f3048j;

    /* renamed from: k */
    boolean f3049k;

    /* renamed from: l */
    int f3050l;

    /* renamed from: m */
    int f3051m;

    /* renamed from: n */
    C0906d f3052n;

    /* renamed from: o */
    final C0903a f3053o;

    /* renamed from: z */
    private int[] f3054z;

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
    public static class C0903a {

        /* renamed from: a */
        AbstractC0990k f3055a;

        /* renamed from: b */
        int f3056b;

        /* renamed from: c */
        int f3057c;

        /* renamed from: d */
        boolean f3058d;

        /* renamed from: e */
        boolean f3059e;

        C0903a() {
            m19072a();
        }

        /* renamed from: a */
        void m19072a() {
            this.f3056b = -1;
            this.f3057c = RecyclerView.UNDEFINED_DURATION;
            this.f3058d = false;
            this.f3059e = false;
        }

        /* renamed from: a */
        public void m19071a(View view, int i) {
            int m18465b = this.f3055a.m18465b();
            if (m18465b >= 0) {
                m19068b(view, i);
                return;
            }
            this.f3056b = i;
            if (this.f3058d) {
                int mo18458d = (this.f3055a.mo18458d() - m18465b) - this.f3055a.mo18461b(view);
                this.f3057c = this.f3055a.mo18458d() - mo18458d;
                if (mo18458d <= 0) {
                    return;
                }
                int mo18455e = this.f3055a.mo18455e(view);
                int i2 = this.f3057c;
                int mo18460c = this.f3055a.mo18460c();
                int min = (i2 - mo18455e) - (mo18460c + Math.min(this.f3055a.mo18462a(view) - mo18460c, 0));
                if (min >= 0) {
                    return;
                }
                this.f3057c = Math.min(mo18458d, -min) + this.f3057c;
                return;
            }
            int mo18462a = this.f3055a.mo18462a(view);
            int mo18460c2 = mo18462a - this.f3055a.mo18460c();
            this.f3057c = mo18462a;
            if (mo18460c2 <= 0) {
                return;
            }
            int mo18455e2 = this.f3055a.mo18455e(view);
            int mo18458d2 = (this.f3055a.mo18458d() - Math.min(0, (this.f3055a.mo18458d() - m18465b) - this.f3055a.mo18461b(view))) - (mo18462a + mo18455e2);
            if (mo18458d2 >= 0) {
                return;
            }
            this.f3057c -= Math.min(mo18460c2, -mo18458d2);
        }

        /* renamed from: a */
        boolean m19070a(View view, RecyclerView.C0945u c0945u) {
            RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
            return !c0930j.m18907d() && c0930j.m18905f() >= 0 && c0930j.m18905f() < c0945u.m18818e();
        }

        /* renamed from: b */
        void m19069b() {
            this.f3057c = this.f3058d ? this.f3055a.mo18458d() : this.f3055a.mo18460c();
        }

        /* renamed from: b */
        public void m19068b(View view, int i) {
            if (this.f3058d) {
                this.f3057c = this.f3055a.mo18461b(view) + this.f3055a.m18465b();
            } else {
                this.f3057c = this.f3055a.mo18462a(view);
            }
            this.f3056b = i;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f3056b + ", mCoordinate=" + this.f3057c + ", mLayoutFromEnd=" + this.f3058d + ", mValid=" + this.f3059e + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$b.class */
    public static class C0904b {

        /* renamed from: a */
        public int f3060a;

        /* renamed from: b */
        public boolean f3061b;

        /* renamed from: c */
        public boolean f3062c;

        /* renamed from: d */
        public boolean f3063d;

        protected C0904b() {
        }

        /* renamed from: a */
        void m19067a() {
            this.f3060a = 0;
            this.f3061b = false;
            this.f3062c = false;
            this.f3063d = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
    public static class C0905c {

        /* renamed from: b */
        int f3065b;

        /* renamed from: c */
        int f3066c;

        /* renamed from: d */
        int f3067d;

        /* renamed from: e */
        int f3068e;

        /* renamed from: f */
        int f3069f;

        /* renamed from: g */
        int f3070g;

        /* renamed from: k */
        int f3074k;

        /* renamed from: m */
        boolean f3076m;

        /* renamed from: a */
        boolean f3064a = true;

        /* renamed from: h */
        int f3071h = 0;

        /* renamed from: i */
        int f3072i = 0;

        /* renamed from: j */
        boolean f3073j = false;

        /* renamed from: l */
        List<RecyclerView.AbstractC0948x> f3075l = null;

        C0905c() {
        }

        /* renamed from: b */
        private View m19062b() {
            View view;
            int size = this.f3075l.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    view = null;
                    break;
                }
                view = this.f3075l.get(i).f3183a;
                RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
                if (!c0930j.m18907d() && this.f3067d == c0930j.m18905f()) {
                    m19065a(view);
                    break;
                }
                i++;
            }
            return view;
        }

        /* renamed from: a */
        public View m19064a(RecyclerView.C0937p c0937p) {
            View m18868c;
            if (this.f3075l != null) {
                m18868c = m19062b();
            } else {
                m18868c = c0937p.m18868c(this.f3067d);
                this.f3067d += this.f3068e;
            }
            return m18868c;
        }

        /* renamed from: a */
        public void m19066a() {
            m19065a((View) null);
        }

        /* renamed from: a */
        public void m19065a(View view) {
            View m19061b = m19061b(view);
            if (m19061b == null) {
                this.f3067d = -1;
            } else {
                this.f3067d = ((RecyclerView.C0930j) m19061b.getLayoutParams()).m18905f();
            }
        }

        /* renamed from: a */
        public boolean m19063a(RecyclerView.C0945u c0945u) {
            return this.f3067d >= 0 && this.f3067d < c0945u.m18818e();
        }

        /* renamed from: b */
        public View m19061b(View view) {
            int m18905f;
            int size = this.f3075l.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                View view3 = this.f3075l.get(i2).f3183a;
                RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view3.getLayoutParams();
                if (view3 != view && !c0930j.m18907d() && (m18905f = (c0930j.m18905f() - this.f3067d) * this.f3068e) >= 0 && m18905f < i) {
                    if (m18905f == 0) {
                        view2 = view3;
                        break;
                    }
                    view2 = view3;
                    i = m18905f;
                }
                i2++;
            }
            return view2;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$d.class */
    public static class C0906d implements Parcelable {
        public static final Parcelable.Creator<C0906d> CREATOR = new Parcelable.Creator<C0906d>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.d.1
            /* renamed from: a */
            public C0906d createFromParcel(Parcel parcel) {
                return new C0906d(parcel);
            }

            /* renamed from: a */
            public C0906d[] newArray(int i) {
                return new C0906d[i];
            }
        };

        /* renamed from: a */
        int f3077a;

        /* renamed from: b */
        int f3078b;

        /* renamed from: c */
        boolean f3079c;

        public C0906d() {
        }

        C0906d(Parcel parcel) {
            boolean z = true;
            this.f3077a = parcel.readInt();
            this.f3078b = parcel.readInt();
            this.f3079c = parcel.readInt() != 1 ? false : z;
        }

        public C0906d(C0906d c0906d) {
            this.f3077a = c0906d.f3077a;
            this.f3078b = c0906d.f3078b;
            this.f3079c = c0906d.f3079c;
        }

        /* renamed from: a */
        boolean m19060a() {
            return this.f3077a >= 0;
        }

        /* renamed from: b */
        void m19059b() {
            this.f3077a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f3077a);
            parcel.writeInt(this.f3078b);
            parcel.writeInt(this.f3079c ? 1 : 0);
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.f3047i = 1;
        this.f3041c = false;
        this.f3049k = false;
        this.f3042d = false;
        this.f3043e = true;
        this.f3050l = -1;
        this.f3051m = RecyclerView.UNDEFINED_DURATION;
        this.f3052n = null;
        this.f3053o = new C0903a();
        this.f3045g = new C0904b();
        this.f3046h = 2;
        this.f3054z = new int[2];
        m19101b(i);
        m19094b(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f3047i = 1;
        this.f3041c = false;
        this.f3049k = false;
        this.f3042d = false;
        this.f3043e = true;
        this.f3050l = -1;
        this.f3051m = RecyclerView.UNDEFINED_DURATION;
        this.f3052n = null;
        this.f3053o = new C0903a();
        this.f3045g = new C0904b();
        this.f3046h = 2;
        this.f3054z = new int[2];
        RecyclerView.AbstractC0925i.C0929b a = m18991a(context, attributeSet, i, i2);
        m19101b(a.f3118a);
        m19094b(a.f3120c);
        mo19104a(a.f3121d);
    }

    /* renamed from: O */
    private View m19124O() {
        return m18927i(this.f3049k ? m18910y() - 1 : 0);
    }

    /* renamed from: P */
    private View m19123P() {
        return m18927i(this.f3049k ? 0 : m18910y() - 1);
    }

    /* renamed from: Q */
    private View m19122Q() {
        return this.f3049k ? m19120S() : m19119T();
    }

    /* renamed from: R */
    private View m19121R() {
        return this.f3049k ? m19119T() : m19120S();
    }

    /* renamed from: S */
    private View m19120S() {
        return m19100b(0, m18910y());
    }

    /* renamed from: T */
    private View m19119T() {
        return m19100b(m18910y() - 1, -1);
    }

    /* renamed from: a */
    private int m19115a(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, boolean z) {
        int i2;
        int mo18458d = this.f3048j.mo18458d() - i;
        if (mo18458d > 0) {
            int i3 = -m19092c(-mo18458d, c0937p, c0945u);
            i2 = i3;
            if (z) {
                int mo18458d2 = this.f3048j.mo18458d() - (i + i3);
                i2 = i3;
                if (mo18458d2 > 0) {
                    this.f3048j.mo18463a(mo18458d2);
                    i2 = i3 + mo18458d2;
                }
            }
        } else {
            i2 = 0;
        }
        return i2;
    }

    /* renamed from: a */
    private void m19118a(int i, int i2) {
        this.f3039a.f3066c = this.f3048j.mo18458d() - i2;
        this.f3039a.f3068e = this.f3049k ? -1 : 1;
        this.f3039a.f3067d = i;
        this.f3039a.f3069f = 1;
        this.f3039a.f3065b = i2;
        this.f3039a.f3070g = RecyclerView.UNDEFINED_DURATION;
    }

    /* renamed from: a */
    private void m19117a(int i, int i2, boolean z, RecyclerView.C0945u c0945u) {
        int mo18460c;
        boolean z2 = false;
        this.f3039a.f3076m = m19075m();
        this.f3039a.f3069f = i;
        this.f3054z[0] = 0;
        this.f3054z[1] = 0;
        mo3177a(c0945u, this.f3054z);
        int max = Math.max(0, this.f3054z[0]);
        int max2 = Math.max(0, this.f3054z[1]);
        if (i == 1) {
            z2 = true;
        }
        this.f3039a.f3071h = z2 ? max2 : max;
        C0905c c0905c = this.f3039a;
        if (!z2) {
            max = max2;
        }
        c0905c.f3072i = max;
        if (z2) {
            this.f3039a.f3071h += this.f3048j.mo18452g();
            View m19123P = m19123P();
            C0905c c0905c2 = this.f3039a;
            int i3 = 1;
            if (this.f3049k) {
                i3 = -1;
            }
            c0905c2.f3068e = i3;
            this.f3039a.f3067d = m18943d(m19123P) + this.f3039a.f3068e;
            this.f3039a.f3065b = this.f3048j.mo18461b(m19123P);
            mo18460c = this.f3048j.mo18461b(m19123P) - this.f3048j.mo18458d();
        } else {
            View m19124O = m19124O();
            this.f3039a.f3071h += this.f3048j.mo18460c();
            this.f3039a.f3068e = this.f3049k ? 1 : -1;
            this.f3039a.f3067d = m18943d(m19124O) + this.f3039a.f3068e;
            this.f3039a.f3065b = this.f3048j.mo18462a(m19124O);
            mo18460c = (-this.f3048j.mo18462a(m19124O)) + this.f3048j.mo18460c();
        }
        this.f3039a.f3066c = i2;
        if (z) {
            this.f3039a.f3066c -= mo18460c;
        }
        this.f3039a.f3070g = mo18460c;
    }

    /* renamed from: a */
    private void m19114a(C0903a c0903a) {
        m19118a(c0903a.f3056b, c0903a.f3057c);
    }

    /* renamed from: a */
    private void m19113a(RecyclerView.C0937p c0937p, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            for (int i3 = i; i3 > i2; i3--) {
                m18992a(i3, c0937p);
            }
            return;
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            m18992a(i2, c0937p);
        }
    }

    /* renamed from: a */
    private void m19112a(RecyclerView.C0937p c0937p, C0905c c0905c) {
        if (!c0905c.f3064a || c0905c.f3076m) {
            return;
        }
        int i = c0905c.f3070g;
        int i2 = c0905c.f3072i;
        if (c0905c.f3069f == -1) {
            m19091c(c0937p, i, i2);
        } else {
            m19097b(c0937p, i, i2);
        }
    }

    /* renamed from: a */
    private void m19109a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, C0903a c0903a) {
        if (!m19106a(c0945u, c0903a) && !m19095b(c0937p, c0945u, c0903a)) {
            c0903a.m19069b();
            c0903a.f3056b = this.f3042d ? c0945u.m18818e() - 1 : 0;
        }
    }

    /* renamed from: a */
    private boolean m19106a(RecyclerView.C0945u c0945u, C0903a c0903a) {
        boolean z;
        boolean z2 = false;
        if (c0945u.m18824a() || this.f3050l == -1) {
            z = false;
        } else if (this.f3050l < 0 || this.f3050l >= c0945u.m18818e()) {
            this.f3050l = -1;
            this.f3051m = RecyclerView.UNDEFINED_DURATION;
            z = false;
        } else {
            c0903a.f3056b = this.f3050l;
            if (this.f3052n != null && this.f3052n.m19060a()) {
                c0903a.f3058d = this.f3052n.f3079c;
                if (c0903a.f3058d) {
                    c0903a.f3057c = this.f3048j.mo18458d() - this.f3052n.f3078b;
                    z = true;
                } else {
                    c0903a.f3057c = this.f3048j.mo18460c() + this.f3052n.f3078b;
                    z = true;
                }
            } else if (this.f3051m == Integer.MIN_VALUE) {
                View mo18952c = mo18952c(this.f3050l);
                if (mo18952c == null) {
                    if (m18910y() > 0) {
                        if ((this.f3050l < m18943d(m18927i(0))) == this.f3049k) {
                            z2 = true;
                        }
                        c0903a.f3058d = z2;
                    }
                    c0903a.m19069b();
                    z = true;
                } else if (this.f3048j.mo18455e(mo18952c) > this.f3048j.mo18454f()) {
                    c0903a.m19069b();
                    z = true;
                } else if (this.f3048j.mo18462a(mo18952c) - this.f3048j.mo18460c() < 0) {
                    c0903a.f3057c = this.f3048j.mo18460c();
                    c0903a.f3058d = false;
                    z = true;
                } else if (this.f3048j.mo18458d() - this.f3048j.mo18461b(mo18952c) < 0) {
                    c0903a.f3057c = this.f3048j.mo18458d();
                    c0903a.f3058d = true;
                    z = true;
                } else {
                    c0903a.f3057c = c0903a.f3058d ? this.f3048j.mo18461b(mo18952c) + this.f3048j.m18465b() : this.f3048j.mo18462a(mo18952c);
                    z = true;
                }
            } else {
                c0903a.f3058d = this.f3049k;
                if (this.f3049k) {
                    c0903a.f3057c = this.f3048j.mo18458d() - this.f3051m;
                    z = true;
                } else {
                    c0903a.f3057c = this.f3048j.mo18460c() + this.f3051m;
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private int m19099b(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, boolean z) {
        int i2;
        int mo18460c = i - this.f3048j.mo18460c();
        if (mo18460c > 0) {
            int i3 = -m19092c(mo18460c, c0937p, c0945u);
            i2 = i3;
            if (z) {
                int mo18460c2 = (i + i3) - this.f3048j.mo18460c();
                i2 = i3;
                if (mo18460c2 > 0) {
                    this.f3048j.mo18463a(-mo18460c2);
                    i2 = i3 - mo18460c2;
                }
            }
        } else {
            i2 = 0;
        }
        return i2;
    }

    /* renamed from: b */
    private void m19102b() {
        boolean z = true;
        if (this.f3047i == 1 || !m19083i()) {
            this.f3049k = this.f3041c;
            return;
        }
        if (this.f3041c) {
            z = false;
        }
        this.f3049k = z;
    }

    /* renamed from: b */
    private void m19098b(C0903a c0903a) {
        m19087g(c0903a.f3056b, c0903a.f3057c);
    }

    /* renamed from: b */
    private void m19097b(RecyclerView.C0937p c0937p, int i, int i2) {
        if (i < 0) {
            return;
        }
        int i3 = i - i2;
        int y = m18910y();
        if (this.f3049k) {
            for (int i4 = y - 1; i4 >= 0; i4--) {
                View i5 = m18927i(i4);
                if (this.f3048j.mo18461b(i5) > i3 || this.f3048j.mo18459c(i5) > i3) {
                    m19113a(c0937p, y - 1, i4);
                    return;
                }
            }
            return;
        }
        for (int i6 = 0; i6 < y; i6++) {
            View i7 = m18927i(i6);
            if (this.f3048j.mo18461b(i7) > i3 || this.f3048j.mo18459c(i7) > i3) {
                m19113a(c0937p, 0, i6);
                return;
            }
        }
    }

    /* renamed from: b */
    private void m19096b(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, int i, int i2) {
        if (!c0945u.m18821b() || m18910y() == 0 || c0945u.m18824a() || !mo18721c()) {
            return;
        }
        int i3 = 0;
        int i4 = 0;
        List<RecyclerView.AbstractC0948x> m18869c = c0937p.m18869c();
        int size = m18869c.size();
        int d = m18943d(m18927i(0));
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView.AbstractC0948x abstractC0948x = m18869c.get(i5);
            if (!abstractC0948x.m18781q()) {
                if ((abstractC0948x.m18794d() < d) != this.f3049k ? true : true) {
                    i3 += this.f3048j.mo18455e(abstractC0948x.f3183a);
                } else {
                    i4 = this.f3048j.mo18455e(abstractC0948x.f3183a) + i4;
                }
            }
        }
        this.f3039a.f3075l = m18869c;
        if (i3 > 0) {
            m19087g(m18943d(m19124O()), i);
            this.f3039a.f3071h = i3;
            this.f3039a.f3066c = 0;
            this.f3039a.m19066a();
            m19111a(c0937p, this.f3039a, c0945u, false);
        }
        if (i4 > 0) {
            m19118a(m18943d(m19123P()), i2);
            this.f3039a.f3071h = i4;
            this.f3039a.f3066c = 0;
            this.f3039a.m19066a();
            m19111a(c0937p, this.f3039a, c0945u, false);
        }
        this.f3039a.f3075l = null;
    }

    /* renamed from: b */
    private boolean m19095b(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, C0903a c0903a) {
        boolean z;
        boolean z2 = false;
        if (m18910y() == 0) {
            z = false;
        } else {
            View H = m19004H();
            if (H == null || !c0903a.m19070a(H, c0945u)) {
                z = false;
                if (this.f3040b == this.f3042d) {
                    View m19089f = c0903a.f3058d ? m19089f(c0937p, c0945u) : m19086g(c0937p, c0945u);
                    z = false;
                    if (m19089f != null) {
                        c0903a.m19068b(m19089f, m18943d(m19089f));
                        if (!c0945u.m18824a() && mo18721c()) {
                            if (this.f3048j.mo18462a(m19089f) >= this.f3048j.mo18458d() || this.f3048j.mo18461b(m19089f) < this.f3048j.mo18460c()) {
                                z2 = true;
                            }
                            if (z2) {
                                c0903a.f3057c = c0903a.f3058d ? this.f3048j.mo18458d() : this.f3048j.mo18460c();
                            }
                        }
                        z = true;
                    }
                }
            } else {
                c0903a.m19071a(H, m18943d(H));
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    private void m19091c(RecyclerView.C0937p c0937p, int i, int i2) {
        int y = m18910y();
        if (i < 0) {
            return;
        }
        int mo18456e = (this.f3048j.mo18456e() - i) + i2;
        if (this.f3049k) {
            for (int i3 = 0; i3 < y; i3++) {
                View i4 = m18927i(i3);
                if (this.f3048j.mo18462a(i4) < mo18456e || this.f3048j.mo18457d(i4) < mo18456e) {
                    m19113a(c0937p, 0, i3);
                    return;
                }
            }
            return;
        }
        for (int i5 = y - 1; i5 >= 0; i5--) {
            View i6 = m18927i(i5);
            if (this.f3048j.mo18462a(i6) < mo18456e || this.f3048j.mo18457d(i6) < mo18456e) {
                m19113a(c0937p, y - 1, i5);
                return;
            }
        }
    }

    /* renamed from: f */
    private View m19089f(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return this.f3049k ? m19084h(c0937p, c0945u) : m19082i(c0937p, c0945u);
    }

    /* renamed from: g */
    private View m19086g(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return this.f3049k ? m19082i(c0937p, c0945u) : m19084h(c0937p, c0945u);
    }

    /* renamed from: g */
    private void m19087g(int i, int i2) {
        this.f3039a.f3066c = i2 - this.f3048j.mo18460c();
        this.f3039a.f3067d = i;
        this.f3039a.f3068e = this.f3049k ? 1 : -1;
        this.f3039a.f3069f = -1;
        this.f3039a.f3065b = i2;
        this.f3039a.f3070g = RecyclerView.UNDEFINED_DURATION;
    }

    /* renamed from: h */
    private View m19084h(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return mo19110a(c0937p, c0945u, 0, m18910y(), c0945u.m18818e());
    }

    /* renamed from: i */
    private int m19081i(RecyclerView.C0945u c0945u) {
        int i = 0;
        if (m18910y() != 0) {
            m19080j();
            AbstractC0990k abstractC0990k = this.f3048j;
            View m19103a = m19103a(!this.f3043e, true);
            boolean z = false;
            if (!this.f3043e) {
                z = true;
            }
            i = C0997n.m18431a(c0945u, abstractC0990k, m19103a, m19093b(z, true), this, this.f3043e, this.f3049k);
        }
        return i;
    }

    /* renamed from: i */
    private View m19082i(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return mo19110a(c0937p, c0945u, m18910y() - 1, -1, c0945u.m18818e());
    }

    /* renamed from: j */
    private int m19079j(RecyclerView.C0945u c0945u) {
        int i = 0;
        if (m18910y() != 0) {
            m19080j();
            AbstractC0990k abstractC0990k = this.f3048j;
            View m19103a = m19103a(!this.f3043e, true);
            boolean z = false;
            if (!this.f3043e) {
                z = true;
            }
            i = C0997n.m18432a(c0945u, abstractC0990k, m19103a, m19093b(z, true), this, this.f3043e);
        }
        return i;
    }

    /* renamed from: k */
    private int m19077k(RecyclerView.C0945u c0945u) {
        int i = 0;
        if (m18910y() != 0) {
            m19080j();
            AbstractC0990k abstractC0990k = this.f3048j;
            View m19103a = m19103a(!this.f3043e, true);
            boolean z = false;
            if (!this.f3043e) {
                z = true;
            }
            i = C0997n.m18430b(c0945u, abstractC0990k, m19103a, m19093b(z, true), this, this.f3043e);
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public int mo18764a(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return this.f3047i == 1 ? 0 : m19092c(i, c0937p, c0945u);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0096, code lost:
        if (r9.m18824a() == false) goto L25;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int m19111a(androidx.recyclerview.widget.RecyclerView.C0937p r7, androidx.recyclerview.widget.LinearLayoutManager.C0905c r8, androidx.recyclerview.widget.RecyclerView.C0945u r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.m19111a(androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.RecyclerView$u, boolean):int");
    }

    /* renamed from: a */
    View m19116a(int i, int i2, boolean z, boolean z2) {
        int i3 = 320;
        m19080j();
        int i4 = z ? 24579 : 320;
        if (!z2) {
            i3 = 0;
        }
        return this.f3047i == 0 ? this.f3108r.m18391a(i, i2, i4, i3) : this.f3109s.m18391a(i, i2, i4, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public View mo18758a(View view, int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        View m19124O;
        m19102b();
        if (m18910y() == 0) {
            m19124O = null;
        } else {
            int m19090f = m19090f(i);
            if (m19090f == Integer.MIN_VALUE) {
                m19124O = null;
            } else {
                m19080j();
                m19117a(m19090f, (int) (0.33333334f * this.f3048j.mo18454f()), false, c0945u);
                this.f3039a.f3070g = RecyclerView.UNDEFINED_DURATION;
                this.f3039a.f3064a = false;
                m19111a(c0937p, this.f3039a, c0945u, true);
                View m19121R = m19090f == -1 ? m19121R() : m19122Q();
                m19124O = m19090f == -1 ? m19124O() : m19123P();
                if (!m19124O.hasFocusable()) {
                    m19124O = m19121R;
                } else if (m19121R == null) {
                    m19124O = null;
                }
            }
        }
        return m19124O;
    }

    /* renamed from: a */
    View mo19110a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, int i, int i2, int i3) {
        View view;
        m19080j();
        int mo18460c = this.f3048j.mo18460c();
        int mo18458d = this.f3048j.mo18458d();
        int i4 = i2 > i ? 1 : -1;
        View view2 = null;
        View view3 = null;
        while (true) {
            if (i != i2) {
                View i5 = m18927i(i);
                int d = m18943d(i5);
                if (d >= 0 && d < i3) {
                    if (!((RecyclerView.C0930j) i5.getLayoutParams()).m18907d()) {
                        if (this.f3048j.mo18462a(i5) < mo18458d) {
                            view = i5;
                            if (this.f3048j.mo18461b(i5) >= mo18460c) {
                                break;
                            }
                        }
                        if (view2 == null) {
                            view2 = i5;
                        }
                    } else if (view3 == null) {
                        view3 = i5;
                    }
                }
                i += i4;
            } else {
                if (view2 == null) {
                    view2 = view3;
                }
                view = view2;
            }
        }
        return view;
    }

    /* renamed from: a */
    public View m19103a(boolean z, boolean z2) {
        return this.f3049k ? m19116a(m18910y() - 1, -1, z, z2) : m19116a(0, m18910y(), z, z2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public RecyclerView.C0930j mo18768a() {
        return new RecyclerView.C0930j(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18765a(int i, int i2, RecyclerView.C0945u c0945u, RecyclerView.AbstractC0925i.AbstractC0928a abstractC0928a) {
        if (this.f3047i != 0) {
            i = i2;
        }
        if (m18910y() == 0 || i == 0) {
            return;
        }
        m19080j();
        m19117a(i > 0 ? 1 : -1, Math.abs(i), true, c0945u);
        mo19105a(c0945u, this.f3039a, abstractC0928a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18993a(int i, RecyclerView.AbstractC0925i.AbstractC0928a abstractC0928a) {
        boolean z;
        int i2;
        if (this.f3052n == null || !this.f3052n.m19060a()) {
            m19102b();
            z = this.f3049k;
            i2 = this.f3050l == -1 ? z ? i - 1 : 0 : this.f3050l;
        } else {
            z = this.f3052n.f3079c;
            i2 = this.f3052n.f3077a;
        }
        int i3 = z ? -1 : 1;
        int i4 = i2;
        for (int i5 = 0; i5 < this.f3046h && i4 >= 0 && i4 < i; i5++) {
            abstractC0928a.mo18498b(i4, 0);
            i4 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18760a(Parcelable parcelable) {
        if (parcelable instanceof C0906d) {
            this.f3052n = (C0906d) parcelable;
            m18918q();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18754a(AccessibilityEvent accessibilityEvent) {
        super.mo18754a(accessibilityEvent);
        if (m18910y() > 0) {
            accessibilityEvent.setFromIndex(m19074o());
            accessibilityEvent.setToIndex(m19073p());
        }
    }

    /* renamed from: a */
    public void mo19108a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, C0903a c0903a, int i) {
    }

    /* renamed from: a */
    void mo19107a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, C0905c c0905c, C0904b c0904b) {
        int E;
        int mo18453f;
        int i;
        int i2;
        View m19064a = c0905c.m19064a(c0937p);
        if (m19064a == null) {
            c0904b.f3061b = true;
            return;
        }
        RecyclerView.C0930j c0930j = (RecyclerView.C0930j) m19064a.getLayoutParams();
        if (c0905c.f3075l == null) {
            if (this.f3049k == (c0905c.f3069f == -1)) {
                m18960b(m19064a);
            } else {
                m18959b(m19064a, 0);
            }
        } else {
            if (this.f3049k == (c0905c.f3069f == -1)) {
                m18990a(m19064a);
            } else {
                m18989a(m19064a, 0);
            }
        }
        m18988a(m19064a, 0, 0);
        c0904b.f3060a = this.f3048j.mo18455e(m19064a);
        if (this.f3047i == 1) {
            if (m19083i()) {
                i2 = m19010B() - m19006F();
                i = i2 - this.f3048j.mo18453f(m19064a);
            } else {
                i = m19008D();
                i2 = this.f3048j.mo18453f(m19064a) + i;
            }
            if (c0905c.f3069f == -1) {
                mo18453f = c0905c.f3065b;
                E = c0905c.f3065b - c0904b.f3060a;
            } else {
                E = c0905c.f3065b;
                mo18453f = c0904b.f3060a + c0905c.f3065b;
            }
        } else {
            E = m19007E();
            mo18453f = E + this.f3048j.mo18453f(m19064a);
            if (c0905c.f3069f == -1) {
                i2 = c0905c.f3065b;
                i = c0905c.f3065b - c0904b.f3060a;
            } else {
                i = c0905c.f3065b;
                i2 = c0905c.f3065b + c0904b.f3060a;
            }
        }
        m18987a(m19064a, i, E, i2, mo18453f);
        if (c0930j.m18907d() || c0930j.m18906e()) {
            c0904b.f3062c = true;
        }
        c0904b.f3063d = m19064a.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18746a(RecyclerView.C0945u c0945u) {
        super.mo18746a(c0945u);
        this.f3052n = null;
        this.f3050l = -1;
        this.f3051m = RecyclerView.UNDEFINED_DURATION;
        this.f3053o.m19072a();
    }

    /* renamed from: a */
    void mo19105a(RecyclerView.C0945u c0945u, C0905c c0905c, RecyclerView.AbstractC0925i.AbstractC0928a abstractC0928a) {
        int i = c0905c.f3067d;
        if (i < 0 || i >= c0945u.m18818e()) {
            return;
        }
        abstractC0928a.mo18498b(i, Math.max(0, c0905c.f3070g));
    }

    /* renamed from: a */
    protected void mo3177a(RecyclerView.C0945u c0945u, int[] iArr) {
        int i;
        int m19088f = m19088f(c0945u);
        if (this.f3039a.f3069f == -1) {
            i = 0;
        } else {
            i = m19088f;
            m19088f = 0;
        }
        iArr[0] = m19088f;
        iArr[1] = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18740a(RecyclerView recyclerView, RecyclerView.C0937p c0937p) {
        super.mo18740a(recyclerView, c0937p);
        if (this.f3044f) {
            m18947c(c0937p);
            c0937p.m18890a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo3114a(RecyclerView recyclerView, RecyclerView.C0945u c0945u, int i) {
        C0986h c0986h = new C0986h(recyclerView.getContext());
        c0986h.m18838c(i);
        m18968a(c0986h);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18735a(String str) {
        if (this.f3052n == null) {
            super.mo18735a(str);
        }
    }

    /* renamed from: a */
    public void mo19104a(boolean z) {
        mo18735a((String) null);
        if (this.f3042d == z) {
            return;
        }
        this.f3042d = z;
        m18918q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public int mo18730b(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return this.f3047i == 0 ? 0 : m19092c(i, c0937p, c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public int mo18725b(RecyclerView.C0945u c0945u) {
        return m19077k(c0945u);
    }

    /* renamed from: b */
    View m19100b(int i, int i2) {
        int i3;
        int i4;
        View m18391a;
        m19080j();
        if (!(i2 > i ? true : i2 < i ? true : false)) {
            m18391a = m18927i(i);
        } else {
            if (this.f3048j.mo18462a(m18927i(i)) < this.f3048j.mo18460c()) {
                i3 = 16644;
                i4 = 16388;
            } else {
                i3 = 4161;
                i4 = 4097;
            }
            m18391a = this.f3047i == 0 ? this.f3108r.m18391a(i, i2, i3, i4) : this.f3109s.m18391a(i, i2, i3, i4);
        }
        return m18391a;
    }

    /* renamed from: b */
    public View m19093b(boolean z, boolean z2) {
        return this.f3049k ? m19116a(0, m18910y(), z, z2) : m19116a(m18910y() - 1, -1, z, z2);
    }

    /* renamed from: b */
    public void m19101b(int i) {
        if (i == 0 || i == 1) {
            mo18735a((String) null);
            if (i == this.f3047i && this.f3048j != null) {
                return;
            }
            this.f3048j = AbstractC0990k.m18466a(this, i);
            this.f3053o.f3055a = this.f3048j;
            this.f3047i = i;
            m18918q();
            return;
        }
        throw new IllegalArgumentException("invalid orientation:" + i);
    }

    /* renamed from: b */
    public void m19094b(boolean z) {
        mo18735a((String) null);
        if (z == this.f3041c) {
            return;
        }
        this.f3041c = z;
        m18918q();
    }

    /* renamed from: c */
    int m19092c(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        if (m18910y() == 0 || i == 0) {
            i = 0;
        } else {
            m19080j();
            this.f3039a.f3064a = true;
            int i2 = i > 0 ? 1 : -1;
            int abs = Math.abs(i);
            m19117a(i2, abs, true, c0945u);
            int m19111a = this.f3039a.f3070g + m19111a(c0937p, this.f3039a, c0945u, false);
            if (m19111a < 0) {
                i = 0;
            } else {
                if (abs > m19111a) {
                    i = i2 * m19111a;
                }
                this.f3048j.mo18463a(-i);
                this.f3039a.f3074k = i;
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    public int mo18716c(RecyclerView.C0945u c0945u) {
        return m19077k(c0945u);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
        if (m18943d(r0) != r6) goto L13;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View mo18952c(int r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.m18910y()
            r7 = r0
            r0 = r7
            if (r0 != 0) goto Ld
            r0 = 0
            r8 = r0
        Lb:
            r0 = r8
            return r0
        Ld:
            r0 = r6
            r1 = r5
            r2 = r5
            r3 = 0
            android.view.View r2 = r2.m18927i(r3)
            int r1 = r1.m18943d(r2)
            int r0 = r0 - r1
            r9 = r0
            r0 = r9
            if (r0 < 0) goto L3a
            r0 = r9
            r1 = r7
            if (r0 >= r1) goto L3a
            r0 = r5
            r1 = r9
            android.view.View r0 = r0.m18927i(r1)
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r5
            r1 = r10
            int r0 = r0.m18943d(r1)
            r1 = r6
            if (r0 == r1) goto Lb
        L3a:
            r0 = r5
            r1 = r6
            android.view.View r0 = super.mo18952c(r1)
            r8 = r0
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.mo18952c(int):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    public void mo18718c(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        int i;
        int i2;
        int i3;
        int i4 = -1;
        if (!(this.f3052n == null && this.f3050l == -1) && c0945u.m18818e() == 0) {
            m18947c(c0937p);
            return;
        }
        if (this.f3052n != null && this.f3052n.m19060a()) {
            this.f3050l = this.f3052n.f3077a;
        }
        m19080j();
        this.f3039a.f3064a = false;
        m19102b();
        View H = m19004H();
        if (!this.f3053o.f3059e || this.f3050l != -1 || this.f3052n != null) {
            this.f3053o.m19072a();
            this.f3053o.f3058d = this.f3049k ^ this.f3042d;
            m19109a(c0937p, c0945u, this.f3053o);
            this.f3053o.f3059e = true;
        } else if (H != null && (this.f3048j.mo18462a(H) >= this.f3048j.mo18458d() || this.f3048j.mo18461b(H) <= this.f3048j.mo18460c())) {
            this.f3053o.m19071a(H, m18943d(H));
        }
        this.f3039a.f3069f = this.f3039a.f3074k >= 0 ? 1 : -1;
        this.f3054z[0] = 0;
        this.f3054z[1] = 0;
        mo3177a(c0945u, this.f3054z);
        int mo18460c = this.f3048j.mo18460c() + Math.max(0, this.f3054z[0]);
        int max = Math.max(0, this.f3054z[1]) + this.f3048j.mo18452g();
        int i5 = max;
        int i6 = mo18460c;
        if (c0945u.m18824a()) {
            i5 = max;
            i6 = mo18460c;
            if (this.f3050l != -1) {
                i5 = max;
                i6 = mo18460c;
                if (this.f3051m != Integer.MIN_VALUE) {
                    View mo18952c = mo18952c(this.f3050l);
                    i5 = max;
                    i6 = mo18460c;
                    if (mo18952c != null) {
                        int mo18458d = this.f3049k ? (this.f3048j.mo18458d() - this.f3048j.mo18461b(mo18952c)) - this.f3051m : this.f3051m - (this.f3048j.mo18462a(mo18952c) - this.f3048j.mo18460c());
                        if (mo18458d > 0) {
                            i6 = mo18460c + mo18458d;
                            i5 = max;
                        } else {
                            i5 = max - mo18458d;
                            i6 = mo18460c;
                        }
                    }
                }
            }
        }
        if (this.f3053o.f3058d) {
            if (this.f3049k) {
                i4 = 1;
            }
        } else if (!this.f3049k) {
            i4 = 1;
        }
        mo19108a(c0937p, c0945u, this.f3053o, i4);
        m18975a(c0937p);
        this.f3039a.f3076m = m19075m();
        this.f3039a.f3073j = c0945u.m18824a();
        this.f3039a.f3072i = 0;
        if (this.f3053o.f3058d) {
            m19098b(this.f3053o);
            this.f3039a.f3071h = i6;
            m19111a(c0937p, this.f3039a, c0945u, false);
            int i7 = this.f3039a.f3065b;
            int i8 = this.f3039a.f3067d;
            int i9 = i5;
            if (this.f3039a.f3066c > 0) {
                i9 = i5 + this.f3039a.f3066c;
            }
            m19114a(this.f3053o);
            this.f3039a.f3071h = i9;
            this.f3039a.f3067d += this.f3039a.f3068e;
            m19111a(c0937p, this.f3039a, c0945u, false);
            int i10 = this.f3039a.f3065b;
            if (this.f3039a.f3066c > 0) {
                int i11 = this.f3039a.f3066c;
                m19087g(i8, i7);
                this.f3039a.f3071h = i11;
                m19111a(c0937p, this.f3039a, c0945u, false);
                i3 = this.f3039a.f3065b;
            } else {
                i3 = i7;
            }
            i = i3;
            i2 = i10;
        } else {
            m19114a(this.f3053o);
            this.f3039a.f3071h = i5;
            m19111a(c0937p, this.f3039a, c0945u, false);
            int i12 = this.f3039a.f3065b;
            int i13 = this.f3039a.f3067d;
            int i14 = i6;
            if (this.f3039a.f3066c > 0) {
                i14 = i6 + this.f3039a.f3066c;
            }
            m19098b(this.f3053o);
            this.f3039a.f3071h = i14;
            this.f3039a.f3067d += this.f3039a.f3068e;
            m19111a(c0937p, this.f3039a, c0945u, false);
            int i15 = this.f3039a.f3065b;
            if (this.f3039a.f3066c > 0) {
                int i16 = this.f3039a.f3066c;
                m19118a(i13, i12);
                this.f3039a.f3071h = i16;
                m19111a(c0937p, this.f3039a, c0945u, false);
                i = i15;
                i2 = this.f3039a.f3065b;
            } else {
                i = i15;
                i2 = i12;
            }
        }
        int i17 = i2;
        int i18 = i;
        if (m18910y() > 0) {
            if (this.f3049k ^ this.f3042d) {
                int m19115a = m19115a(i2, c0937p, c0945u, true);
                int i19 = i + m19115a;
                int m19099b = m19099b(i19, c0937p, c0945u, false);
                i18 = i19 + m19099b;
                i17 = m19099b + m19115a + i2;
            } else {
                int m19099b2 = m19099b(i, c0937p, c0945u, true);
                int i20 = m19099b2 + i2;
                int m19115a2 = m19115a(i20, c0937p, c0945u, false);
                i18 = i + m19099b2 + m19115a2;
                i17 = m19115a2 + i20;
            }
        }
        m19096b(c0937p, c0945u, i18, i17);
        if (!c0945u.m18824a()) {
            this.f3048j.m18468a();
        } else {
            this.f3053o.m19072a();
        }
        this.f3040b = this.f3042d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    public boolean mo18721c() {
        return this.f3052n == null && this.f3040b == this.f3042d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: d */
    public int mo18711d(RecyclerView.C0945u c0945u) {
        return m19081i(c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0942t.AbstractC0944b
    /* renamed from: d */
    public PointF mo18712d(int i) {
        PointF pointF;
        boolean z = false;
        if (m18910y() == 0) {
            pointF = null;
        } else {
            if (i < m18943d(m18927i(0))) {
                z = true;
            }
            int i2 = 1;
            if (z != this.f3049k) {
                i2 = -1;
            }
            pointF = this.f3047i == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: d */
    public boolean mo18713d() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: e */
    public int mo18708e(RecyclerView.C0945u c0945u) {
        return m19081i(c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: e */
    public Parcelable mo18710e() {
        C0906d c0906d;
        if (this.f3052n != null) {
            c0906d = new C0906d(this.f3052n);
        } else {
            c0906d = new C0906d();
            if (m18910y() > 0) {
                m19080j();
                boolean z = this.f3040b ^ this.f3049k;
                c0906d.f3079c = z;
                if (z) {
                    View m19123P = m19123P();
                    c0906d.f3078b = this.f3048j.mo18458d() - this.f3048j.mo18461b(m19123P);
                    c0906d.f3077a = m18943d(m19123P);
                } else {
                    View m19124O = m19124O();
                    c0906d.f3077a = m18943d(m19124O);
                    c0906d.f3078b = this.f3048j.mo18462a(m19124O) - this.f3048j.mo18460c();
                }
            } else {
                c0906d.m19059b();
            }
        }
        return c0906d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: e */
    public void mo18709e(int i) {
        this.f3050l = i;
        this.f3051m = RecyclerView.UNDEFINED_DURATION;
        if (this.f3052n != null) {
            this.f3052n.m19059b();
        }
        m18918q();
    }

    /* renamed from: f */
    public int m19090f(int i) {
        int i2;
        switch (i) {
            case 1:
                i2 = -1;
                if (this.f3047i != 1) {
                    i2 = -1;
                    if (m19083i()) {
                        i2 = 1;
                        break;
                    }
                }
                break;
            case 2:
                if (this.f3047i != 1) {
                    i2 = -1;
                    if (!m19083i()) {
                        i2 = 1;
                        break;
                    }
                } else {
                    i2 = 1;
                    break;
                }
                break;
            case 17:
                i2 = -1;
                if (this.f3047i != 0) {
                    i2 = Integer.MIN_VALUE;
                    break;
                }
                break;
            case 33:
                i2 = -1;
                if (this.f3047i != 1) {
                    i2 = Integer.MIN_VALUE;
                    break;
                }
                break;
            case 66:
                if (this.f3047i != 0) {
                    i2 = Integer.MIN_VALUE;
                    break;
                } else {
                    i2 = 1;
                    break;
                }
            case 130:
                i2 = Integer.MIN_VALUE;
                if (this.f3047i == 1) {
                    i2 = 1;
                    break;
                }
                break;
            default:
                i2 = Integer.MIN_VALUE;
                break;
        }
        return i2;
    }

    @Deprecated
    /* renamed from: f */
    protected int m19088f(RecyclerView.C0945u c0945u) {
        return c0945u.m18819d() ? this.f3048j.mo18454f() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: f */
    public boolean mo18707f() {
        return this.f3047i == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: g */
    public int mo18703g(RecyclerView.C0945u c0945u) {
        return m19079j(c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: g */
    public boolean mo18704g() {
        boolean z = true;
        if (this.f3047i != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public int m19085h() {
        return this.f3047i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: h */
    public int mo18701h(RecyclerView.C0945u c0945u) {
        return m19079j(c0945u);
    }

    /* renamed from: i */
    public boolean m19083i() {
        boolean z = true;
        if (m18913v() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public void m19080j() {
        if (this.f3039a == null) {
            this.f3039a = m19078k();
        }
    }

    /* renamed from: k */
    C0905c m19078k() {
        return new C0905c();
    }

    /* renamed from: l */
    public boolean m19076l() {
        return this.f3043e;
    }

    /* renamed from: m */
    boolean m19075m() {
        return this.f3048j.mo18451h() == 0 && this.f3048j.mo18456e() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: n */
    boolean mo18921n() {
        return (m19011A() == 1073741824 || m18909z() == 1073741824 || !m18998N()) ? false : true;
    }

    /* renamed from: o */
    public int m19074o() {
        View m19116a = m19116a(0, m18910y(), false, true);
        return m19116a == null ? -1 : m18943d(m19116a);
    }

    /* renamed from: p */
    public int m19073p() {
        int i = -1;
        View m19116a = m19116a(m18910y() - 1, -1, false, true);
        if (m19116a != null) {
            i = m18943d(m19116a);
        }
        return i;
    }
}
