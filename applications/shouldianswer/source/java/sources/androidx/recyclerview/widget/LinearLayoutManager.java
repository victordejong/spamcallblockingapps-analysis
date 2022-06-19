package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.customview.p026a.AbstractC0610a;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager.class */
public class LinearLayoutManager extends RecyclerView.AbstractC0956i implements RecyclerView.AbstractC0971s.AbstractC0973b {

    /* renamed from: a */
    private C0937c f2895a;

    /* renamed from: b */
    private boolean f2896b;

    /* renamed from: c */
    private boolean f2897c;

    /* renamed from: d */
    private boolean f2898d;

    /* renamed from: e */
    private boolean f2899e;

    /* renamed from: f */
    private boolean f2900f;

    /* renamed from: g */
    private final C0936b f2901g;

    /* renamed from: h */
    private int f2902h;

    /* renamed from: i */
    int f2903i;

    /* renamed from: j */
    AbstractC1014i f2904j;

    /* renamed from: k */
    boolean f2905k;

    /* renamed from: l */
    int f2906l;

    /* renamed from: m */
    int f2907m;

    /* renamed from: n */
    SavedState f2908n;

    /* renamed from: o */
    final C0935a f2909o;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        int f2910a;

        /* renamed from: b */
        int f2911b;

        /* renamed from: c */
        boolean f2912c;

        public SavedState() {
        }

        SavedState(Parcel parcel) {
            this.f2910a = parcel.readInt();
            this.f2911b = parcel.readInt();
            this.f2912c = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.f2910a = savedState.f2910a;
            this.f2911b = savedState.f2911b;
            this.f2912c = savedState.f2912c;
        }

        /* renamed from: a */
        boolean m4969a() {
            return this.f2910a >= 0;
        }

        /* renamed from: b */
        void m4968b() {
            this.f2910a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f2910a);
            parcel.writeInt(this.f2911b);
            parcel.writeInt(this.f2912c ? 1 : 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
    public static class C0935a {

        /* renamed from: a */
        AbstractC1014i f2913a;

        /* renamed from: b */
        int f2914b;

        /* renamed from: c */
        int f2915c;

        /* renamed from: d */
        boolean f2916d;

        /* renamed from: e */
        boolean f2917e;

        C0935a() {
            m4965a();
        }

        /* renamed from: a */
        void m4965a() {
            this.f2914b = -1;
            this.f2915c = AbstractC0610a.INVALID_ID;
            this.f2916d = false;
            this.f2917e = false;
        }

        /* renamed from: a */
        public void m4964a(View view, int i) {
            int m4575b = this.f2913a.m4575b();
            if (m4575b >= 0) {
                m4961b(view, i);
                return;
            }
            this.f2914b = i;
            if (this.f2916d) {
                int mo4568d = (this.f2913a.mo4568d() - m4575b) - this.f2913a.mo4571b(view);
                this.f2915c = this.f2913a.mo4568d() - mo4568d;
                if (mo4568d <= 0) {
                    return;
                }
                int mo4565e = this.f2913a.mo4565e(view);
                int i2 = this.f2915c;
                int mo4570c = this.f2913a.mo4570c();
                int min = (i2 - mo4565e) - (mo4570c + Math.min(this.f2913a.mo4572a(view) - mo4570c, 0));
                if (min >= 0) {
                    return;
                }
                this.f2915c += Math.min(mo4568d, -min);
                return;
            }
            int mo4572a = this.f2913a.mo4572a(view);
            int mo4570c2 = mo4572a - this.f2913a.mo4570c();
            this.f2915c = mo4572a;
            if (mo4570c2 <= 0) {
                return;
            }
            int mo4565e2 = this.f2913a.mo4565e(view);
            int mo4568d2 = (this.f2913a.mo4568d() - Math.min(0, (this.f2913a.mo4568d() - m4575b) - this.f2913a.mo4571b(view))) - (mo4572a + mo4565e2);
            if (mo4568d2 >= 0) {
                return;
            }
            this.f2915c -= Math.min(mo4570c2, -mo4568d2);
        }

        /* renamed from: a */
        boolean m4963a(View view, RecyclerView.C0974t c0974t) {
            RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view.getLayoutParams();
            return !c0961j.isItemRemoved() && c0961j.getViewLayoutPosition() >= 0 && c0961j.getViewLayoutPosition() < c0974t.m4843e();
        }

        /* renamed from: b */
        void m4962b() {
            this.f2915c = this.f2916d ? this.f2913a.mo4568d() : this.f2913a.mo4570c();
        }

        /* renamed from: b */
        public void m4961b(View view, int i) {
            if (this.f2916d) {
                this.f2915c = this.f2913a.mo4571b(view) + this.f2913a.m4575b();
            } else {
                this.f2915c = this.f2913a.mo4572a(view);
            }
            this.f2914b = i;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f2914b + ", mCoordinate=" + this.f2915c + ", mLayoutFromEnd=" + this.f2916d + ", mValid=" + this.f2917e + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$b.class */
    public static class C0936b {

        /* renamed from: a */
        public int f2918a;

        /* renamed from: b */
        public boolean f2919b;

        /* renamed from: c */
        public boolean f2920c;

        /* renamed from: d */
        public boolean f2921d;

        protected C0936b() {
        }

        /* renamed from: a */
        void m4960a() {
            this.f2918a = 0;
            this.f2919b = false;
            this.f2920c = false;
            this.f2921d = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
    public static class C0937c {

        /* renamed from: b */
        int f2923b;

        /* renamed from: c */
        int f2924c;

        /* renamed from: d */
        int f2925d;

        /* renamed from: e */
        int f2926e;

        /* renamed from: f */
        int f2927f;

        /* renamed from: g */
        int f2928g;

        /* renamed from: j */
        int f2931j;

        /* renamed from: l */
        boolean f2933l;

        /* renamed from: a */
        boolean f2922a = true;

        /* renamed from: h */
        int f2929h = 0;

        /* renamed from: i */
        boolean f2930i = false;

        /* renamed from: k */
        List<RecyclerView.AbstractC0977w> f2932k = null;

        C0937c() {
        }

        /* renamed from: b */
        private View m4955b() {
            int size = this.f2932k.size();
            for (int i = 0; i < size; i++) {
                View view = this.f2932k.get(i).itemView;
                RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view.getLayoutParams();
                if (!c0961j.isItemRemoved() && this.f2925d == c0961j.getViewLayoutPosition()) {
                    m4958a(view);
                    return view;
                }
            }
            return null;
        }

        /* renamed from: a */
        public View m4957a(RecyclerView.C0968p c0968p) {
            if (this.f2932k != null) {
                return m4955b();
            }
            View m4886c = c0968p.m4886c(this.f2925d);
            this.f2925d += this.f2926e;
            return m4886c;
        }

        /* renamed from: a */
        public void m4959a() {
            m4958a((View) null);
        }

        /* renamed from: a */
        public void m4958a(View view) {
            View m4954b = m4954b(view);
            if (m4954b == null) {
                this.f2925d = -1;
            } else {
                this.f2925d = ((RecyclerView.C0961j) m4954b.getLayoutParams()).getViewLayoutPosition();
            }
        }

        /* renamed from: a */
        public boolean m4956a(RecyclerView.C0974t c0974t) {
            int i = this.f2925d;
            return i >= 0 && i < c0974t.m4843e();
        }

        /* renamed from: b */
        public View m4954b(View view) {
            View view2;
            int size = this.f2932k.size();
            View view3 = null;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.f2932k.get(i2).itemView;
                RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view4.getLayoutParams();
                View view5 = view3;
                int i3 = i;
                if (view4 != view) {
                    if (c0961j.isItemRemoved()) {
                        view5 = view3;
                        i3 = i;
                    } else {
                        int viewLayoutPosition = (c0961j.getViewLayoutPosition() - this.f2925d) * this.f2926e;
                        if (viewLayoutPosition < 0) {
                            view5 = view3;
                            i3 = i;
                        } else {
                            view5 = view3;
                            i3 = i;
                            if (viewLayoutPosition >= i) {
                                continue;
                            } else if (viewLayoutPosition == 0) {
                                view2 = view4;
                                break;
                            } else {
                                i3 = viewLayoutPosition;
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
        this.f2903i = 1;
        this.f2897c = false;
        this.f2905k = false;
        this.f2898d = false;
        this.f2899e = true;
        this.f2906l = -1;
        this.f2907m = AbstractC0610a.INVALID_ID;
        this.f2908n = null;
        this.f2909o = new C0935a();
        this.f2901g = new C0936b();
        this.f2902h = 2;
        m4999b(i);
        m4991b(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f2903i = 1;
        this.f2897c = false;
        this.f2905k = false;
        this.f2898d = false;
        this.f2899e = true;
        this.f2906l = -1;
        this.f2907m = AbstractC0610a.INVALID_ID;
        this.f2908n = null;
        this.f2909o = new C0935a();
        this.f2901g = new C0936b();
        this.f2902h = 2;
        RecyclerView.AbstractC0956i.C0960b properties = getProperties(context, attributeSet, i, i2);
        m4999b(properties.f2953a);
        m4991b(properties.f2955c);
        mo5002a(properties.f2956d);
    }

    /* renamed from: a */
    private int m5017a(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, boolean z) {
        int mo4568d;
        int mo4568d2 = this.f2904j.mo4568d() - i;
        if (mo4568d2 > 0) {
            int i2 = -m5018a(-mo4568d2, c0968p, c0974t);
            if (!z || (mo4568d = this.f2904j.mo4568d() - (i + i2)) <= 0) {
                return i2;
            }
            this.f2904j.mo4573a(mo4568d);
            return mo4568d + i2;
        }
        return 0;
    }

    /* renamed from: a */
    private View m5011a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return this.f2905k ? m4986c(c0968p, c0974t) : m4983d(c0968p, c0974t);
    }

    /* renamed from: a */
    private View m5001a(boolean z, boolean z2) {
        return this.f2905k ? m5019a(getChildCount() - 1, -1, z, z2) : m5019a(0, getChildCount(), z, z2);
    }

    /* renamed from: a */
    private void m5022a() {
        if (this.f2903i == 1 || !m4989c()) {
            this.f2905k = this.f2897c;
        } else {
            this.f2905k = !this.f2897c;
        }
    }

    /* renamed from: a */
    private void m5021a(int i, int i2) {
        this.f2895a.f2924c = this.f2904j.mo4568d() - i2;
        this.f2895a.f2926e = this.f2905k ? -1 : 1;
        C0937c c0937c = this.f2895a;
        c0937c.f2925d = i;
        c0937c.f2927f = 1;
        c0937c.f2923b = i2;
        c0937c.f2928g = AbstractC0610a.INVALID_ID;
    }

    /* renamed from: a */
    private void m5020a(int i, int i2, boolean z, RecyclerView.C0974t c0974t) {
        int i3;
        this.f2895a.f2933l = m4979f();
        this.f2895a.f2929h = m5005a(c0974t);
        C0937c c0937c = this.f2895a;
        c0937c.f2927f = i;
        int i4 = -1;
        if (i == 1) {
            c0937c.f2929h += this.f2904j.mo4562g();
            View m4970l = m4970l();
            C0937c c0937c2 = this.f2895a;
            if (!this.f2905k) {
                i4 = 1;
            }
            c0937c2.f2926e = i4;
            this.f2895a.f2925d = getPosition(m4970l) + this.f2895a.f2926e;
            this.f2895a.f2923b = this.f2904j.mo4571b(m4970l);
            i3 = this.f2904j.mo4571b(m4970l) - this.f2904j.mo4568d();
        } else {
            View m4971k = m4971k();
            this.f2895a.f2929h += this.f2904j.mo4570c();
            C0937c c0937c3 = this.f2895a;
            if (this.f2905k) {
                i4 = 1;
            }
            c0937c3.f2926e = i4;
            this.f2895a.f2925d = getPosition(m4971k) + this.f2895a.f2926e;
            this.f2895a.f2923b = this.f2904j.mo4572a(m4971k);
            i3 = (-this.f2904j.mo4572a(m4971k)) + this.f2904j.mo4570c();
        }
        C0937c c0937c4 = this.f2895a;
        c0937c4.f2924c = i2;
        if (z) {
            c0937c4.f2924c -= i3;
        }
        this.f2895a.f2928g = i3;
    }

    /* renamed from: a */
    private void m5016a(C0935a c0935a) {
        m5021a(c0935a.f2914b, c0935a.f2915c);
    }

    /* renamed from: a */
    private void m5015a(RecyclerView.C0968p c0968p, int i) {
        if (i < 0) {
            return;
        }
        int childCount = getChildCount();
        if (!this.f2905k) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (this.f2904j.mo4571b(childAt) > i || this.f2904j.mo4569c(childAt) > i) {
                    m5014a(c0968p, 0, i2);
                    return;
                }
            }
            return;
        }
        int i3 = childCount - 1;
        for (int i4 = i3; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            if (this.f2904j.mo4571b(childAt2) > i || this.f2904j.mo4569c(childAt2) > i) {
                m5014a(c0968p, i3, i4);
                return;
            }
        }
    }

    /* renamed from: a */
    private void m5014a(RecyclerView.C0968p c0968p, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            for (int i3 = i; i3 > i2; i3--) {
                removeAndRecycleViewAt(i3, c0968p);
            }
            return;
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            removeAndRecycleViewAt(i2, c0968p);
        }
    }

    /* renamed from: a */
    private void m5013a(RecyclerView.C0968p c0968p, C0937c c0937c) {
        if (!c0937c.f2922a || c0937c.f2933l) {
            return;
        }
        if (c0937c.f2927f == -1) {
            m4995b(c0968p, c0937c.f2928g);
        } else {
            m5015a(c0968p, c0937c.f2928g);
        }
    }

    /* renamed from: a */
    private void m5010a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, int i, int i2) {
        if (!c0974t.m4846b() || getChildCount() == 0 || c0974t.m4849a() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView.AbstractC0977w> m4887c = c0968p.m4887c();
        int size = m4887c.size();
        int position = getPosition(getChildAt(0));
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView.AbstractC0977w abstractC0977w = m4887c.get(i5);
            if (!abstractC0977w.isRemoved()) {
                boolean z = true;
                if ((abstractC0977w.getLayoutPosition() < position) != this.f2905k) {
                    z = true;
                }
                if (z) {
                    i4 += this.f2904j.mo4565e(abstractC0977w.itemView);
                } else {
                    i3 += this.f2904j.mo4565e(abstractC0977w.itemView);
                }
            }
        }
        this.f2895a.f2932k = m4887c;
        if (i4 > 0) {
            m4987c(getPosition(m4971k()), i);
            C0937c c0937c = this.f2895a;
            c0937c.f2929h = i4;
            c0937c.f2924c = 0;
            c0937c.m4959a();
            m5012a(c0968p, this.f2895a, c0974t, false);
        }
        if (i3 > 0) {
            m5021a(getPosition(m4970l()), i2);
            C0937c c0937c2 = this.f2895a;
            c0937c2.f2929h = i3;
            c0937c2.f2924c = 0;
            c0937c2.m4959a();
            m5012a(c0968p, this.f2895a, c0974t, false);
        }
        this.f2895a.f2932k = null;
    }

    /* renamed from: a */
    private void m5008a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, C0935a c0935a) {
        if (!m5004a(c0974t, c0935a) && !m4993b(c0968p, c0974t, c0935a)) {
            c0935a.m4962b();
            c0935a.f2914b = this.f2898d ? c0974t.m4843e() - 1 : 0;
        }
    }

    /* renamed from: a */
    private boolean m5004a(RecyclerView.C0974t c0974t, C0935a c0935a) {
        int i;
        boolean z = false;
        if (c0974t.m4849a() || (i = this.f2906l) == -1) {
            return false;
        }
        if (i < 0 || i >= c0974t.m4843e()) {
            this.f2906l = -1;
            this.f2907m = AbstractC0610a.INVALID_ID;
            return false;
        }
        c0935a.f2914b = this.f2906l;
        SavedState savedState = this.f2908n;
        if (savedState != null && savedState.m4969a()) {
            c0935a.f2916d = this.f2908n.f2912c;
            if (c0935a.f2916d) {
                c0935a.f2915c = this.f2904j.mo4568d() - this.f2908n.f2911b;
                return true;
            }
            c0935a.f2915c = this.f2904j.mo4570c() + this.f2908n.f2911b;
            return true;
        } else if (this.f2907m != Integer.MIN_VALUE) {
            boolean z2 = this.f2905k;
            c0935a.f2916d = z2;
            if (z2) {
                c0935a.f2915c = this.f2904j.mo4568d() - this.f2907m;
                return true;
            }
            c0935a.f2915c = this.f2904j.mo4570c() + this.f2907m;
            return true;
        } else {
            View findViewByPosition = findViewByPosition(this.f2906l);
            if (findViewByPosition == null) {
                if (getChildCount() > 0) {
                    if ((this.f2906l < getPosition(getChildAt(0))) == this.f2905k) {
                        z = true;
                    }
                    c0935a.f2916d = z;
                }
                c0935a.m4962b();
                return true;
            } else if (this.f2904j.mo4565e(findViewByPosition) > this.f2904j.mo4564f()) {
                c0935a.m4962b();
                return true;
            } else if (this.f2904j.mo4572a(findViewByPosition) - this.f2904j.mo4570c() < 0) {
                c0935a.f2915c = this.f2904j.mo4570c();
                c0935a.f2916d = false;
                return true;
            } else if (this.f2904j.mo4568d() - this.f2904j.mo4571b(findViewByPosition) >= 0) {
                c0935a.f2915c = c0935a.f2916d ? this.f2904j.mo4571b(findViewByPosition) + this.f2904j.m4575b() : this.f2904j.mo4572a(findViewByPosition);
                return true;
            } else {
                c0935a.f2915c = this.f2904j.mo4568d();
                c0935a.f2916d = true;
                return true;
            }
        }
    }

    /* renamed from: b */
    private int m4997b(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, boolean z) {
        int mo4570c = i - this.f2904j.mo4570c();
        if (mo4570c > 0) {
            int i2 = -m5018a(mo4570c, c0968p, c0974t);
            int i3 = i2;
            if (z) {
                int mo4570c2 = (i + i2) - this.f2904j.mo4570c();
                i3 = i2;
                if (mo4570c2 > 0) {
                    this.f2904j.mo4573a(-mo4570c2);
                    i3 = i2 - mo4570c2;
                }
            }
            return i3;
        }
        return 0;
    }

    /* renamed from: b */
    private int m4992b(RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0) {
            return 0;
        }
        m4984d();
        return C1019k.m4556a(c0974t, this.f2904j, m5001a(!this.f2899e, true), m4990b(!this.f2899e, true), this, this.f2899e, this.f2905k);
    }

    /* renamed from: b */
    private View m4994b(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return this.f2905k ? m4983d(c0968p, c0974t) : m4986c(c0968p, c0974t);
    }

    /* renamed from: b */
    private View m4990b(boolean z, boolean z2) {
        return this.f2905k ? m5019a(0, getChildCount(), z, z2) : m5019a(getChildCount() - 1, -1, z, z2);
    }

    /* renamed from: b */
    private void m4996b(C0935a c0935a) {
        m4987c(c0935a.f2914b, c0935a.f2915c);
    }

    /* renamed from: b */
    private void m4995b(RecyclerView.C0968p c0968p, int i) {
        int childCount = getChildCount();
        if (i < 0) {
            return;
        }
        int mo4566e = this.f2904j.mo4566e() - i;
        if (this.f2905k) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (this.f2904j.mo4572a(childAt) < mo4566e || this.f2904j.mo4567d(childAt) < mo4566e) {
                    m5014a(c0968p, 0, i2);
                    return;
                }
            }
            return;
        }
        int i3 = childCount - 1;
        for (int i4 = i3; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            if (this.f2904j.mo4572a(childAt2) < mo4566e || this.f2904j.mo4567d(childAt2) < mo4566e) {
                m5014a(c0968p, i3, i4);
                return;
            }
        }
    }

    /* renamed from: b */
    private boolean m4993b(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, C0935a c0935a) {
        boolean z = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && c0935a.m4963a(focusedChild, c0974t)) {
            c0935a.m4964a(focusedChild, getPosition(focusedChild));
            return true;
        } else if (this.f2896b != this.f2898d) {
            return false;
        } else {
            View m5011a = c0935a.f2916d ? m5011a(c0968p, c0974t) : m4994b(c0968p, c0974t);
            if (m5011a == null) {
                return false;
            }
            c0935a.m4961b(m5011a, getPosition(m5011a));
            if (c0974t.m4849a() || !supportsPredictiveItemAnimations()) {
                return true;
            }
            if (this.f2904j.mo4572a(m5011a) >= this.f2904j.mo4568d() || this.f2904j.mo4571b(m5011a) < this.f2904j.mo4570c()) {
                z = true;
            }
            if (!z) {
                return true;
            }
            c0935a.f2915c = c0935a.f2916d ? this.f2904j.mo4568d() : this.f2904j.mo4570c();
            return true;
        }
    }

    /* renamed from: c */
    private int m4985c(RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0) {
            return 0;
        }
        m4984d();
        return C1019k.m4557a(c0974t, this.f2904j, m5001a(!this.f2899e, true), m4990b(!this.f2899e, true), this, this.f2899e);
    }

    /* renamed from: c */
    private View m4986c(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return mo5009a(c0968p, c0974t, 0, getChildCount(), c0974t.m4843e());
    }

    /* renamed from: c */
    private void m4987c(int i, int i2) {
        this.f2895a.f2924c = i2 - this.f2904j.mo4570c();
        C0937c c0937c = this.f2895a;
        c0937c.f2925d = i;
        c0937c.f2926e = this.f2905k ? 1 : -1;
        C0937c c0937c2 = this.f2895a;
        c0937c2.f2927f = -1;
        c0937c2.f2923b = i2;
        c0937c2.f2928g = AbstractC0610a.INVALID_ID;
    }

    /* renamed from: d */
    private int m4982d(RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0) {
            return 0;
        }
        m4984d();
        return C1019k.m4555b(c0974t, this.f2904j, m5001a(!this.f2899e, true), m4990b(!this.f2899e, true), this, this.f2899e);
    }

    /* renamed from: d */
    private View m4983d(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return mo5009a(c0968p, c0974t, getChildCount() - 1, -1, c0974t.m4843e());
    }

    /* renamed from: e */
    private View m4980e(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return this.f2905k ? m4976g(c0968p, c0974t) : m4974h(c0968p, c0974t);
    }

    /* renamed from: f */
    private View m4978f(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return this.f2905k ? m4974h(c0968p, c0974t) : m4976g(c0968p, c0974t);
    }

    /* renamed from: g */
    private View m4976g(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return m4998b(0, getChildCount());
    }

    /* renamed from: h */
    private View m4974h(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        return m4998b(getChildCount() - 1, -1);
    }

    /* renamed from: k */
    private View m4971k() {
        return getChildAt(this.f2905k ? getChildCount() - 1 : 0);
    }

    /* renamed from: l */
    private View m4970l() {
        return getChildAt(this.f2905k ? 0 : getChildCount() - 1);
    }

    /* renamed from: a */
    int m5018a(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        this.f2895a.f2922a = true;
        m4984d();
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        m5020a(i2, abs, true, c0974t);
        int m5012a = this.f2895a.f2928g + m5012a(c0968p, this.f2895a, c0974t, false);
        if (m5012a < 0) {
            return 0;
        }
        if (abs > m5012a) {
            i = i2 * m5012a;
        }
        this.f2904j.mo4573a(-i);
        this.f2895a.f2931j = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0094, code lost:
        if (r9.m4849a() == false) goto L23;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int m5012a(androidx.recyclerview.widget.RecyclerView.C0968p r7, androidx.recyclerview.widget.LinearLayoutManager.C0937c r8, androidx.recyclerview.widget.RecyclerView.C0974t r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.m5012a(androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.RecyclerView$t, boolean):int");
    }

    /* renamed from: a */
    protected int m5005a(RecyclerView.C0974t c0974t) {
        if (c0974t.m4844d()) {
            return this.f2904j.mo4564f();
        }
        return 0;
    }

    /* renamed from: a */
    View m5019a(int i, int i2, boolean z, boolean z2) {
        m4984d();
        int i3 = 320;
        int i4 = z ? 24579 : 320;
        if (!z2) {
            i3 = 0;
        }
        return this.f2903i == 0 ? this.mHorizontalBoundCheck.m4540a(i, i2, i4, i3) : this.mVerticalBoundCheck.m4540a(i, i2, i4, i3);
    }

    /* renamed from: a */
    View mo5009a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, int i, int i2, int i3) {
        m4984d();
        int mo4570c = this.f2904j.mo4570c();
        int mo4568d = this.f2904j.mo4568d();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (true) {
            View view3 = view2;
            if (i == i2) {
                if (view == null) {
                    view = view3;
                }
                return view;
            }
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            View view4 = view;
            View view5 = view3;
            if (position >= 0) {
                view4 = view;
                view5 = view3;
                if (position >= i3) {
                    continue;
                } else if (((RecyclerView.C0961j) childAt.getLayoutParams()).isItemRemoved()) {
                    view4 = view;
                    view5 = view3;
                    if (view3 == null) {
                        view5 = childAt;
                        view4 = view;
                    }
                } else if (this.f2904j.mo4572a(childAt) < mo4568d && this.f2904j.mo4571b(childAt) >= mo4570c) {
                    return childAt;
                } else {
                    view4 = view;
                    view5 = view3;
                    if (view == null) {
                        view4 = childAt;
                        view5 = view3;
                    }
                }
            }
            i += i4;
            view = view4;
            view2 = view5;
        }
    }

    /* renamed from: a */
    public void mo5007a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, C0935a c0935a, int i) {
    }

    /* renamed from: a */
    void mo5006a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, C0937c c0937c, C0936b c0936b) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View m4957a = c0937c.m4957a(c0968p);
        if (m4957a == null) {
            c0936b.f2919b = true;
            return;
        }
        RecyclerView.C0961j c0961j = (RecyclerView.C0961j) m4957a.getLayoutParams();
        if (c0937c.f2932k == null) {
            if (this.f2905k == (c0937c.f2927f == -1)) {
                addView(m4957a);
            } else {
                addView(m4957a, 0);
            }
        } else {
            if (this.f2905k == (c0937c.f2927f == -1)) {
                addDisappearingView(m4957a);
            } else {
                addDisappearingView(m4957a, 0);
            }
        }
        measureChildWithMargins(m4957a, 0, 0);
        c0936b.f2918a = this.f2904j.mo4565e(m4957a);
        if (this.f2903i == 1) {
            if (m4989c()) {
                i5 = getWidth() - getPaddingRight();
                i3 = i5 - this.f2904j.mo4563f(m4957a);
            } else {
                i3 = getPaddingLeft();
                i5 = this.f2904j.mo4563f(m4957a) + i3;
            }
            if (c0937c.f2927f == -1) {
                i2 = c0937c.f2923b;
                i = i5;
                i4 = c0937c.f2923b - c0936b.f2918a;
            } else {
                int i6 = c0937c.f2923b;
                i2 = c0937c.f2923b + c0936b.f2918a;
                i = i5;
                i4 = i6;
            }
        } else {
            int paddingTop = getPaddingTop();
            int mo4563f = this.f2904j.mo4563f(m4957a) + paddingTop;
            if (c0937c.f2927f == -1) {
                int i7 = c0937c.f2923b;
                i2 = mo4563f;
                i3 = c0937c.f2923b - c0936b.f2918a;
                i4 = paddingTop;
                i = i7;
            } else {
                int i8 = c0937c.f2923b;
                i2 = mo4563f;
                i = c0937c.f2923b + c0936b.f2918a;
                i4 = paddingTop;
                i3 = i8;
            }
        }
        layoutDecoratedWithMargins(m4957a, i3, i4, i, i2);
        if (c0961j.isItemRemoved() || c0961j.isItemChanged()) {
            c0936b.f2920c = true;
        }
        c0936b.f2921d = m4957a.hasFocusable();
    }

    /* renamed from: a */
    void mo5003a(RecyclerView.C0974t c0974t, C0937c c0937c, RecyclerView.AbstractC0956i.AbstractC0959a abstractC0959a) {
        int i = c0937c.f2925d;
        if (i < 0 || i >= c0974t.m4843e()) {
            return;
        }
        abstractC0959a.mo4602b(i, Math.max(0, c0937c.f2928g));
    }

    /* renamed from: a */
    public void mo5002a(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.f2898d == z) {
            return;
        }
        this.f2898d = z;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f2908n == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    /* renamed from: b */
    public int m5000b() {
        return this.f2903i;
    }

    /* renamed from: b */
    View m4998b(int i, int i2) {
        int i3;
        int i4;
        m4984d();
        if (!(i2 > i ? true : i2 < i ? true : false)) {
            return getChildAt(i);
        }
        if (this.f2904j.mo4572a(getChildAt(i)) < this.f2904j.mo4570c()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.f2903i == 0 ? this.mHorizontalBoundCheck.m4540a(i, i2, i3, i4) : this.mVerticalBoundCheck.m4540a(i, i2, i3, i4);
    }

    /* renamed from: b */
    public void m4999b(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        assertNotInLayoutOrScroll(null);
        if (i == this.f2903i && this.f2904j != null) {
            return;
        }
        this.f2904j = AbstractC1014i.m4576a(this, i);
        this.f2909o.f2913a = this.f2904j;
        this.f2903i = i;
        requestLayout();
    }

    /* renamed from: b */
    public void m4991b(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z == this.f2897c) {
            return;
        }
        this.f2897c = z;
        requestLayout();
    }

    /* renamed from: c */
    public int m4988c(int i) {
        int i2 = -1;
        if (i == 1) {
            return (this.f2903i != 1 && m4989c()) ? 1 : -1;
        } else if (i == 2) {
            return (this.f2903i != 1 && m4989c()) ? -1 : 1;
        } else if (i == 17) {
            if (this.f2903i != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.f2903i != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            return this.f2903i == 0 ? 1 : Integer.MIN_VALUE;
        } else if (i != 130) {
            return AbstractC0610a.INVALID_ID;
        } else {
            return this.f2903i == 1 ? 1 : Integer.MIN_VALUE;
        }
    }

    /* renamed from: c */
    public boolean m4989c() {
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean canScrollHorizontally() {
        return this.f2903i == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean canScrollVertically() {
        boolean z = true;
        if (this.f2903i != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.C0974t c0974t, RecyclerView.AbstractC0956i.AbstractC0959a abstractC0959a) {
        if (this.f2903i != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        m4984d();
        m5020a(i > 0 ? 1 : -1, Math.abs(i), true, c0974t);
        mo5003a(c0974t, this.f2895a, abstractC0959a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void collectInitialPrefetchPositions(int i, RecyclerView.AbstractC0956i.AbstractC0959a abstractC0959a) {
        int i2;
        boolean z;
        SavedState savedState = this.f2908n;
        int i3 = -1;
        if (savedState == null || !savedState.m4969a()) {
            m5022a();
            boolean z2 = this.f2905k;
            int i4 = this.f2906l;
            z = z2;
            i2 = i4;
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
            z = this.f2908n.f2912c;
            i2 = this.f2908n.f2910a;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.f2902h && i2 >= 0 && i2 < i; i5++) {
            abstractC0959a.mo4602b(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeHorizontalScrollExtent(RecyclerView.C0974t c0974t) {
        return m4985c(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeHorizontalScrollOffset(RecyclerView.C0974t c0974t) {
        return m4992b(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeHorizontalScrollRange(RecyclerView.C0974t c0974t) {
        return m4982d(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0971s.AbstractC0973b
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        boolean z = false;
        if (i < getPosition(getChildAt(0))) {
            z = true;
        }
        int i2 = 1;
        if (z != this.f2905k) {
            i2 = -1;
        }
        return this.f2903i == 0 ? new PointF(i2, FlexItem.FLEX_GROW_DEFAULT) : new PointF(FlexItem.FLEX_GROW_DEFAULT, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeVerticalScrollExtent(RecyclerView.C0974t c0974t) {
        return m4985c(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeVerticalScrollOffset(RecyclerView.C0974t c0974t) {
        return m4992b(c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int computeVerticalScrollRange(RecyclerView.C0974t c0974t) {
        return m4982d(c0974t);
    }

    /* renamed from: d */
    public void m4984d() {
        if (this.f2895a == null) {
            this.f2895a = m4981e();
        }
    }

    /* renamed from: e */
    C0937c m4981e() {
        return new C0937c();
    }

    /* renamed from: f */
    boolean m4979f() {
        return this.f2904j.mo4561h() == 0 && this.f2904j.mo4566e() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    /* renamed from: g */
    public int m4977g() {
        View m5019a = m5019a(0, getChildCount(), false, true);
        return m5019a == null ? -1 : getPosition(m5019a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateDefaultLayoutParams() {
        return new RecyclerView.C0961j(-2, -2);
    }

    /* renamed from: h */
    public int m4975h() {
        View m5019a = m5019a(0, getChildCount(), true, false);
        return m5019a == null ? -1 : getPosition(m5019a);
    }

    /* renamed from: i */
    public int m4973i() {
        int i = -1;
        View m5019a = m5019a(getChildCount() - 1, -1, false, true);
        if (m5019a != null) {
            i = getPosition(m5019a);
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    /* renamed from: j */
    public int m4972j() {
        int i = -1;
        View m5019a = m5019a(getChildCount() - 1, -1, true, false);
        if (m5019a != null) {
            i = getPosition(m5019a);
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.C0968p c0968p) {
        super.onDetachedFromWindow(recyclerView, c0968p);
        if (this.f2900f) {
            removeAndRecycleAllViews(c0968p);
            c0968p.m4908a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public View onFocusSearchFailed(View view, int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        int m4988c;
        m5022a();
        if (getChildCount() == 0 || (m4988c = m4988c(i)) == Integer.MIN_VALUE) {
            return null;
        }
        m4984d();
        m4984d();
        m5020a(m4988c, (int) (this.f2904j.mo4564f() * 0.33333334f), false, c0974t);
        C0937c c0937c = this.f2895a;
        c0937c.f2928g = AbstractC0610a.INVALID_ID;
        c0937c.f2922a = false;
        m5012a(c0968p, c0937c, c0974t, true);
        View m4978f = m4988c == -1 ? m4978f(c0968p, c0974t) : m4980e(c0968p, c0974t);
        View m4971k = m4988c == -1 ? m4971k() : m4970l();
        if (!m4971k.hasFocusable()) {
            return m4978f;
        }
        if (m4978f != null) {
            return m4971k;
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(m4977g());
            accessibilityEvent.setToIndex(m4973i());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onLayoutChildren(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = -1;
        if (!(this.f2908n == null && this.f2906l == -1) && c0974t.m4843e() == 0) {
            removeAndRecycleAllViews(c0968p);
            return;
        }
        SavedState savedState = this.f2908n;
        if (savedState != null && savedState.m4969a()) {
            this.f2906l = this.f2908n.f2910a;
        }
        m4984d();
        this.f2895a.f2922a = false;
        m5022a();
        View focusedChild = getFocusedChild();
        if (!this.f2909o.f2917e || this.f2906l != -1 || this.f2908n != null) {
            this.f2909o.m4965a();
            C0935a c0935a = this.f2909o;
            c0935a.f2916d = this.f2905k ^ this.f2898d;
            m5008a(c0968p, c0974t, c0935a);
            this.f2909o.f2917e = true;
        } else if (focusedChild != null && (this.f2904j.mo4572a(focusedChild) >= this.f2904j.mo4568d() || this.f2904j.mo4571b(focusedChild) <= this.f2904j.mo4570c())) {
            this.f2909o.m4964a(focusedChild, getPosition(focusedChild));
        }
        int m5005a = m5005a(c0974t);
        if (this.f2895a.f2931j >= 0) {
            i = m5005a;
            m5005a = 0;
        } else {
            i = 0;
        }
        int mo4570c = m5005a + this.f2904j.mo4570c();
        int mo4562g = i + this.f2904j.mo4562g();
        int i10 = mo4570c;
        int i11 = mo4562g;
        if (c0974t.m4849a()) {
            int i12 = this.f2906l;
            i10 = mo4570c;
            i11 = mo4562g;
            if (i12 != -1) {
                i10 = mo4570c;
                i11 = mo4562g;
                if (this.f2907m != Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(i12);
                    i10 = mo4570c;
                    i11 = mo4562g;
                    if (findViewByPosition != null) {
                        if (this.f2905k) {
                            i7 = this.f2904j.mo4568d() - this.f2904j.mo4571b(findViewByPosition);
                            i8 = this.f2907m;
                        } else {
                            i8 = this.f2904j.mo4572a(findViewByPosition) - this.f2904j.mo4570c();
                            i7 = this.f2907m;
                        }
                        int i13 = i7 - i8;
                        if (i13 > 0) {
                            i10 = mo4570c + i13;
                            i11 = mo4562g;
                        } else {
                            i11 = mo4562g - i13;
                            i10 = mo4570c;
                        }
                    }
                }
            }
        }
        if (!this.f2909o.f2916d ? !this.f2905k : this.f2905k) {
            i9 = 1;
        }
        mo5007a(c0968p, c0974t, this.f2909o, i9);
        detachAndScrapAttachedViews(c0968p);
        this.f2895a.f2933l = m4979f();
        this.f2895a.f2930i = c0974t.m4849a();
        if (this.f2909o.f2916d) {
            m4996b(this.f2909o);
            C0937c c0937c = this.f2895a;
            c0937c.f2929h = i10;
            m5012a(c0968p, c0937c, c0974t, false);
            int i14 = this.f2895a.f2923b;
            int i15 = this.f2895a.f2925d;
            int i16 = i11;
            if (this.f2895a.f2924c > 0) {
                i16 = i11 + this.f2895a.f2924c;
            }
            m5016a(this.f2909o);
            C0937c c0937c2 = this.f2895a;
            c0937c2.f2929h = i16;
            c0937c2.f2925d += this.f2895a.f2926e;
            m5012a(c0968p, this.f2895a, c0974t, false);
            int i17 = this.f2895a.f2923b;
            i3 = i14;
            i2 = i17;
            if (this.f2895a.f2924c > 0) {
                int i18 = this.f2895a.f2924c;
                m4987c(i15, i14);
                C0937c c0937c3 = this.f2895a;
                c0937c3.f2929h = i18;
                m5012a(c0968p, c0937c3, c0974t, false);
                i3 = this.f2895a.f2923b;
                i2 = i17;
            }
        } else {
            m5016a(this.f2909o);
            C0937c c0937c4 = this.f2895a;
            c0937c4.f2929h = i11;
            m5012a(c0968p, c0937c4, c0974t, false);
            int i19 = this.f2895a.f2923b;
            int i20 = this.f2895a.f2925d;
            int i21 = i10;
            if (this.f2895a.f2924c > 0) {
                i21 = i10 + this.f2895a.f2924c;
            }
            m4996b(this.f2909o);
            C0937c c0937c5 = this.f2895a;
            c0937c5.f2929h = i21;
            c0937c5.f2925d += this.f2895a.f2926e;
            m5012a(c0968p, this.f2895a, c0974t, false);
            int i22 = this.f2895a.f2923b;
            i3 = i22;
            i2 = i19;
            if (this.f2895a.f2924c > 0) {
                int i23 = this.f2895a.f2924c;
                m5021a(i20, i19);
                C0937c c0937c6 = this.f2895a;
                c0937c6.f2929h = i23;
                m5012a(c0968p, c0937c6, c0974t, false);
                i2 = this.f2895a.f2923b;
                i3 = i22;
            }
        }
        int i24 = i3;
        int i25 = i2;
        if (getChildCount() > 0) {
            if (this.f2905k ^ this.f2898d) {
                int m5017a = m5017a(i2, c0968p, c0974t, true);
                i6 = i3 + m5017a;
                i5 = i2 + m5017a;
                i4 = m4997b(i6, c0968p, c0974t, false);
            } else {
                int m4997b = m4997b(i3, c0968p, c0974t, true);
                i6 = i3 + m4997b;
                i5 = i2 + m4997b;
                i4 = m5017a(i5, c0968p, c0974t, false);
            }
            i24 = i6 + i4;
            i25 = i5 + i4;
        }
        m5010a(c0968p, c0974t, i24, i25);
        if (!c0974t.m4849a()) {
            this.f2904j.m4578a();
        } else {
            this.f2909o.m4965a();
        }
        this.f2896b = this.f2898d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onLayoutCompleted(RecyclerView.C0974t c0974t) {
        super.onLayoutCompleted(c0974t);
        this.f2908n = null;
        this.f2906l = -1;
        this.f2907m = AbstractC0610a.INVALID_ID;
        this.f2909o.m4965a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f2908n = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public Parcelable onSaveInstanceState() {
        SavedState savedState = this.f2908n;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            m4984d();
            boolean z = this.f2896b ^ this.f2905k;
            savedState2.f2912c = z;
            if (z) {
                View m4970l = m4970l();
                savedState2.f2911b = this.f2904j.mo4568d() - this.f2904j.mo4571b(m4970l);
                savedState2.f2910a = getPosition(m4970l);
            } else {
                View m4971k = m4971k();
                savedState2.f2910a = getPosition(m4971k);
                savedState2.f2911b = this.f2904j.mo4572a(m4971k) - this.f2904j.mo4570c();
            }
        } else {
            savedState2.m4968b();
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int scrollHorizontallyBy(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (this.f2903i == 1) {
            return 0;
        }
        return m5018a(i, c0968p, c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void scrollToPosition(int i) {
        this.f2906l = i;
        this.f2907m = AbstractC0610a.INVALID_ID;
        SavedState savedState = this.f2908n;
        if (savedState != null) {
            savedState.m4968b();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int scrollVerticallyBy(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (this.f2903i == 0) {
            return 0;
        }
        return m5018a(i, c0968p, c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.C0974t c0974t, int i) {
        C1011g c1011g = new C1011g(recyclerView.getContext());
        c1011g.m4862c(i);
        startSmoothScroll(c1011g);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean supportsPredictiveItemAnimations() {
        return this.f2908n == null && this.f2896b == this.f2898d;
    }
}
