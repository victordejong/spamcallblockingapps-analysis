package androidx.viewpager2.p051a;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.C0993l;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.AbstractC1118c;
/* renamed from: androidx.viewpager2.a.f */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/f.class */
public final class C1107f extends ViewGroup {

    /* renamed from: a */
    static boolean f3813a = true;

    /* renamed from: b */
    int f3814b;

    /* renamed from: c */
    boolean f3815c;

    /* renamed from: d */
    RecyclerView f3816d;

    /* renamed from: e */
    C1105e f3817e;

    /* renamed from: f */
    AbstractC1108a f3818f;

    /* renamed from: g */
    private final Rect f3819g;

    /* renamed from: h */
    private final Rect f3820h;

    /* renamed from: i */
    private RecyclerView.AbstractC0916c f3821i;

    /* renamed from: j */
    private LinearLayoutManager f3822j;

    /* renamed from: k */
    private int f3823k;

    /* renamed from: l */
    private Parcelable f3824l;

    /* renamed from: m */
    private C0993l f3825m;

    /* renamed from: n */
    private C1102b f3826n;

    /* renamed from: o */
    private C1103c f3827o;

    /* renamed from: p */
    private C1104d f3828p;

    /* renamed from: q */
    private RecyclerView.AbstractC0919f f3829q;

    /* renamed from: r */
    private boolean f3830r;

    /* renamed from: s */
    private boolean f3831s;

    /* renamed from: t */
    private int f3832t;

    /* renamed from: androidx.viewpager2.a.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/f$a.class */
    public abstract class AbstractC1108a {
        /* renamed from: a */
        void m18009a(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        /* renamed from: a */
        void m18008a(RecyclerView.AbstractC0914a<?> abstractC0914a) {
        }

        /* renamed from: a */
        boolean m18011a() {
            return false;
        }

        /* renamed from: a */
        boolean m18010a(int i, Bundle bundle) {
            return false;
        }

        /* renamed from: b */
        String m18007b() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: b */
        void m18005b(RecyclerView.AbstractC0914a<?> abstractC0914a) {
        }

        /* renamed from: b */
        boolean m18006b(int i, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: c */
        void m18004c() {
        }

        /* renamed from: d */
        void m18003d() {
        }

        /* renamed from: e */
        void m18002e() {
        }

        /* renamed from: f */
        void m18001f() {
        }

        /* renamed from: g */
        void m18000g() {
        }
    }

    /* renamed from: androidx.viewpager2.a.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/f$b.class */
    public static abstract class AbstractC1109b {
        /* renamed from: a */
        public void mo17999a(int i) {
        }

        /* renamed from: a */
        public void mo17998a(int i, float f, int i2) {
        }

        /* renamed from: b */
        public void mo17997b(int i) {
        }
    }

    /* renamed from: androidx.viewpager2.a.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/f$c.class */
    public interface AbstractC1110c {
        /* renamed from: a */
        void m17996a(View view, float f);
    }

    /* renamed from: androidx.viewpager2.a.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/f$d.class */
    public static class C1111d extends View.BaseSavedState {
        public static final Parcelable.Creator<C1111d> CREATOR = new Parcelable.ClassLoaderCreator<C1111d>() { // from class: androidx.viewpager2.a.f.d.1
            /* renamed from: a */
            public C1111d createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, null);
            }

            /* renamed from: a */
            public C1111d createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new C1111d(parcel, classLoader) : new C1111d(parcel);
            }

            /* renamed from: a */
            public C1111d[] newArray(int i) {
                return new C1111d[i];
            }
        };

        /* renamed from: a */
        int f3833a;

        /* renamed from: b */
        int f3834b;

        /* renamed from: c */
        Parcelable f3835c;

        C1111d(Parcel parcel) {
            super(parcel);
            m17995a(parcel, null);
        }

        C1111d(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m17995a(parcel, classLoader);
        }

        C1111d(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        private void m17995a(Parcel parcel, ClassLoader classLoader) {
            this.f3833a = parcel.readInt();
            this.f3834b = parcel.readInt();
            this.f3835c = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3833a);
            parcel.writeInt(this.f3834b);
            parcel.writeParcelable(this.f3835c, i);
        }
    }

    /* renamed from: androidx.viewpager2.a.f$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/a/f$e.class */
    public static class RunnableC1113e implements Runnable {

        /* renamed from: a */
        private final int f3836a;

        /* renamed from: b */
        private final RecyclerView f3837b;

        RunnableC1113e(int i, RecyclerView recyclerView) {
            this.f3836a = i;
            this.f3837b = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3837b.smoothScrollToPosition(this.f3836a);
        }
    }

    /* renamed from: a */
    private void m18018a(RecyclerView.AbstractC0914a<?> abstractC0914a) {
        if (abstractC0914a != null) {
            abstractC0914a.m19055a(this.f3821i);
        }
    }

    /* renamed from: b */
    private void m18015b(RecyclerView.AbstractC0914a<?> abstractC0914a) {
        if (abstractC0914a != null) {
            abstractC0914a.m19048b(this.f3821i);
        }
    }

    /* renamed from: e */
    private void m18012e() {
        RecyclerView.AbstractC0914a adapter;
        if (this.f3823k == -1 || (adapter = getAdapter()) == null) {
            return;
        }
        if (this.f3824l != null) {
            if (adapter instanceof AbstractC1118c) {
                ((AbstractC1118c) adapter).m17983a(this.f3824l);
            }
            this.f3824l = null;
        }
        this.f3814b = Math.max(0, Math.min(this.f3823k, adapter.mo959a() - 1));
        this.f3823k = -1;
        this.f3816d.scrollToPosition(this.f3814b);
        this.f3818f.m18004c();
    }

    /* renamed from: a */
    void m18020a() {
        if (this.f3825m == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View mo18402a = this.f3825m.mo18402a(this.f3822j);
        if (mo18402a == null) {
            return;
        }
        int d = this.f3822j.m18943d(mo18402a);
        if (d != this.f3814b && getScrollState() == 0) {
            this.f3826n.mo17999a(d);
        }
        this.f3815c = false;
    }

    /* renamed from: a */
    public void m18019a(int i, boolean z) {
        if (m18014c()) {
            throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
        }
        m18016b(i, z);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r0v46, types: [double] */
    /* renamed from: b */
    void m18016b(int i, boolean z) {
        RecyclerView.AbstractC0914a adapter = getAdapter();
        if (adapter == null) {
            if (this.f3823k == -1) {
                return;
            }
            this.f3823k = Math.max(i, 0);
        } else if (adapter.mo959a() <= 0) {
        } else {
            int min = Math.min(Math.max(i, 0), adapter.mo959a() - 1);
            if (min == this.f3814b && this.f3817e.m18029b()) {
                return;
            }
            if (min == this.f3814b && z) {
                return;
            }
            char c = this.f3814b;
            this.f3814b = min;
            this.f3818f.m18002e();
            if (!this.f3817e.m18029b()) {
                c = this.f3817e.m18026d();
            }
            this.f3817e.m18031a(min, z);
            if (!z) {
                this.f3816d.scrollToPosition(min);
            } else if (Math.abs(min - c) <= 3.0d) {
                this.f3816d.smoothScrollToPosition(min);
            } else {
                this.f3816d.scrollToPosition(((double) min) > c ? min - 3 : min + 3);
                this.f3816d.post(new RunnableC1113e(min, this.f3816d));
            }
        }
    }

    /* renamed from: b */
    public boolean m18017b() {
        boolean z = true;
        if (this.f3822j.m18913v() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m18014c() {
        return this.f3827o.m18037a();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.f3816d.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.f3816d.canScrollVertically(i);
    }

    /* renamed from: d */
    public void m18013d() {
        if (this.f3828p.m18036a() == null) {
            return;
        }
        double m18026d = this.f3817e.m18026d();
        int i = (int) m18026d;
        float f = (float) (m18026d - i);
        this.f3828p.mo17998a(i, f, Math.round(getPageSize() * f));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof C1111d) {
            int i = ((C1111d) parcelable).f3833a;
            sparseArray.put(this.f3816d.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        m18012e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return this.f3818f.m18011a() ? this.f3818f.m18007b() : super.getAccessibilityClassName();
    }

    public RecyclerView.AbstractC0914a getAdapter() {
        return this.f3816d.getAdapter();
    }

    public int getCurrentItem() {
        return this.f3814b;
    }

    public int getItemDecorationCount() {
        return this.f3816d.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f3832t;
    }

    public int getOrientation() {
        return this.f3822j.m19085h();
    }

    int getPageSize() {
        RecyclerView recyclerView = this.f3816d;
        return getOrientation() == 0 ? (recyclerView.getWidth() - recyclerView.getPaddingLeft()) - recyclerView.getPaddingRight() : (recyclerView.getHeight() - recyclerView.getPaddingTop()) - recyclerView.getPaddingBottom();
    }

    public int getScrollState() {
        return this.f3817e.m18034a();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f3818f.m18009a(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.f3816d.getMeasuredWidth();
        int measuredHeight = this.f3816d.getMeasuredHeight();
        this.f3819g.left = getPaddingLeft();
        this.f3819g.right = (i3 - i) - getPaddingRight();
        this.f3819g.top = getPaddingTop();
        this.f3819g.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f3819g, this.f3820h);
        this.f3816d.layout(this.f3820h.left, this.f3820h.top, this.f3820h.right, this.f3820h.bottom);
        if (this.f3815c) {
            m18020a();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        measureChild(this.f3816d, i, i2);
        int measuredWidth = this.f3816d.getMeasuredWidth();
        int measuredHeight = this.f3816d.getMeasuredHeight();
        int measuredState = this.f3816d.getMeasuredState();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(resolveSizeAndState(Math.max(measuredWidth + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, measuredState), resolveSizeAndState(Math.max(measuredHeight + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1111d)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1111d c1111d = (C1111d) parcelable;
        super.onRestoreInstanceState(c1111d.getSuperState());
        this.f3823k = c1111d.f3834b;
        this.f3824l = c1111d.f3835c;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C1111d c1111d = new C1111d(super.onSaveInstanceState());
        c1111d.f3833a = this.f3816d.getId();
        c1111d.f3834b = this.f3823k == -1 ? this.f3814b : this.f3823k;
        if (this.f3824l != null) {
            c1111d.f3835c = this.f3824l;
        } else {
            RecyclerView.AbstractC0914a adapter = this.f3816d.getAdapter();
            if (adapter instanceof AbstractC1118c) {
                c1111d.f3835c = ((AbstractC1118c) adapter).m17982b_();
            }
        }
        return c1111d;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(getClass().getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return this.f3818f.m18010a(i, bundle) ? this.f3818f.m18006b(i, bundle) : super.performAccessibilityAction(i, bundle);
    }

    public void setAdapter(RecyclerView.AbstractC0914a abstractC0914a) {
        RecyclerView.AbstractC0914a adapter = this.f3816d.getAdapter();
        this.f3818f.m18005b(adapter);
        m18015b(adapter);
        this.f3816d.setAdapter(abstractC0914a);
        this.f3814b = 0;
        m18012e();
        this.f3818f.m18008a(abstractC0914a);
        m18018a(abstractC0914a);
    }

    public void setCurrentItem(int i) {
        m18019a(i, true);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.f3818f.m18000g();
    }

    public void setOffscreenPageLimit(int i) {
        if (i >= 1 || i == -1) {
            this.f3832t = i;
            this.f3816d.requestLayout();
            return;
        }
        throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }

    public void setOrientation(int i) {
        this.f3822j.m19101b(i);
        this.f3818f.m18003d();
    }

    public void setPageTransformer(AbstractC1110c abstractC1110c) {
        if (abstractC1110c != null) {
            if (!this.f3830r) {
                this.f3829q = this.f3816d.getItemAnimator();
                this.f3830r = true;
            }
            this.f3816d.setItemAnimator(null);
        } else if (this.f3830r) {
            this.f3816d.setItemAnimator(this.f3829q);
            this.f3829q = null;
            this.f3830r = false;
        }
        if (abstractC1110c == this.f3828p.m18036a()) {
            return;
        }
        this.f3828p.m18035a(abstractC1110c);
        m18013d();
    }

    public void setUserInputEnabled(boolean z) {
        this.f3831s = z;
        this.f3818f.m18001f();
    }
}
