package androidx.viewpager2.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$Adapter;
import androidx.recyclerview.widget.RecyclerView$h;
import androidx.recyclerview.widget.RecyclerView$k;
import androidx.recyclerview.widget.RecyclerView$o;
import androidx.recyclerview.widget.j;
import androidx.viewpager2.adapter.AbstractC0534c;
import d.h.m.c0.c;
import d.h.m.t;
import d.t.a;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2.class */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: v */
    static boolean f2880v = true;

    /* renamed from: e */
    int f2884e;

    /* renamed from: h */
    private LinearLayoutManager f2887h;

    /* renamed from: j */
    private Parcelable f2889j;

    /* renamed from: k */
    RecyclerView f2890k;

    /* renamed from: l */
    private j f2891l;

    /* renamed from: m */
    e f2892m;

    /* renamed from: n */
    private b f2893n;

    /* renamed from: o */
    private C0542c f2894o;

    /* renamed from: p */
    private d f2895p;

    /* renamed from: u */
    AbstractC0536e f2900u;

    /* renamed from: b */
    private final Rect f2881b = new Rect();

    /* renamed from: c */
    private final Rect f2882c = new Rect();

    /* renamed from: d */
    private b f2883d = new b(3);

    /* renamed from: f */
    boolean f2885f = false;

    /* renamed from: g */
    private RecyclerView$h f2886g = new a(this);

    /* renamed from: i */
    private int f2888i = -1;

    /* renamed from: q */
    private RecyclerView$k f2896q = null;

    /* renamed from: r */
    private boolean f2897r = false;

    /* renamed from: s */
    private boolean f2898s = true;

    /* renamed from: t */
    private int f2899t = -1;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0535a();

        /* renamed from: b */
        int f2901b;

        /* renamed from: c */
        int f2902c;

        /* renamed from: d */
        Parcelable f2903d;

        /* renamed from: androidx.viewpager2.widget.ViewPager2$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState$a.class */
        static final class C0535a implements Parcelable.ClassLoaderCreator<SavedState> {
            C0535a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            m11843a(parcel, null);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m11843a(parcel, classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        private void m11843a(Parcel parcel, ClassLoader classLoader) {
            this.f2901b = parcel.readInt();
            this.f2902c = parcel.readInt();
            this.f2903d = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2901b);
            parcel.writeInt(this.f2902c);
            parcel.writeParcelable(this.f2903d, i);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$e.class */
    public abstract class AbstractC0536e {
        private AbstractC0536e(ViewPager2 viewPager2) {
        }

        /* renamed from: a */
        boolean m11839a() {
            return false;
        }

        /* renamed from: b */
        boolean m11838b(int i) {
            return false;
        }

        /* renamed from: c */
        boolean m11837c(int i, Bundle bundle) {
            return false;
        }

        /* renamed from: d */
        boolean m11836d() {
            return false;
        }

        /* renamed from: e */
        void m11835e(RecyclerView$Adapter<?> recyclerView$Adapter) {
        }

        /* renamed from: f */
        void m11834f(RecyclerView$Adapter<?> recyclerView$Adapter) {
        }

        /* renamed from: g */
        String m11833g() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: h */
        void m11832h(b bVar, RecyclerView recyclerView) {
        }

        /* renamed from: i */
        void m11831i(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        /* renamed from: j */
        void m11830j(c cVar) {
        }

        /* renamed from: k */
        boolean m11829k(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: l */
        boolean m11828l(int i, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: m */
        void m11827m() {
        }

        /* renamed from: n */
        CharSequence m11826n() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: o */
        void m11825o(AccessibilityEvent accessibilityEvent) {
        }

        /* renamed from: p */
        void m11824p() {
        }

        /* renamed from: q */
        void m11823q() {
        }

        /* renamed from: r */
        void m11822r() {
        }

        /* renamed from: s */
        void m11821s() {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$i.class */
    public static abstract class AbstractC0537i {
        /* renamed from: a */
        public void m11820a(int i) {
        }

        /* renamed from: b */
        public void m11819b(int i, float f, int i2) {
        }

        /* renamed from: c */
        public void m11818c(int i) {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$k */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$k.class */
    public interface AbstractC0538k {
        /* renamed from: a */
        void m11817a(View view, float f);
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$n */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$n.class */
    public static class RunnableC0539n implements Runnable {

        /* renamed from: b */
        private final int f2904b;

        /* renamed from: c */
        private final RecyclerView f2905c;

        RunnableC0539n(int i, RecyclerView recyclerView) {
            this.f2904b = i;
            this.f2905c = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2905c.q1(this.f2904b);
        }
    }

    public ViewPager2(Context context) {
        super(context);
        m11854b(context, null);
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m11854b(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m11854b(context, attributeSet);
    }

    /* renamed from: a */
    private RecyclerView$o m11855a() {
        return new d(this);
    }

    /* renamed from: b */
    private void m11854b(Context context, AttributeSet attributeSet) {
        this.f2900u = f2880v ? new j(this) : new f(this);
        m mVar = new m(this, context);
        this.f2890k = mVar;
        mVar.setId(t.k());
        this.f2890k.setDescendantFocusability(131072);
        h hVar = new h(this, context);
        this.f2887h = hVar;
        this.f2890k.setLayoutManager(hVar);
        this.f2890k.setScrollingTouchSlop(1);
        m11846j(context, attributeSet);
        this.f2890k.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f2890k.j(m11855a());
        e eVar = new e(this);
        this.f2892m = eVar;
        this.f2894o = new C0542c(this, eVar, this.f2890k);
        l lVar = new l(this);
        this.f2891l = lVar;
        lVar.b(this.f2890k);
        this.f2890k.l(this.f2892m);
        b bVar = new b(3);
        this.f2893n = bVar;
        this.f2892m.o(bVar);
        b bVar2 = new b(this);
        c cVar = new c(this);
        this.f2893n.d(bVar2);
        this.f2893n.d(cVar);
        this.f2900u.m11832h(this.f2893n, this.f2890k);
        this.f2893n.d(this.f2883d);
        d dVar = new d(this.f2887h);
        this.f2895p = dVar;
        this.f2893n.d(dVar);
        RecyclerView recyclerView = this.f2890k;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    /* renamed from: f */
    private void m11850f(RecyclerView$Adapter<?> recyclerView$Adapter) {
        if (recyclerView$Adapter != null) {
            recyclerView$Adapter.m12823u(this.f2886g);
        }
    }

    /* renamed from: h */
    private void m11848h() {
        RecyclerView$Adapter adapter;
        if (this.f2888i == -1 || (adapter = getAdapter()) == null) {
            return;
        }
        Parcelable parcelable = this.f2889j;
        if (parcelable != null) {
            if (adapter instanceof AbstractC0534c) {
                ((AbstractC0534c) adapter).m11856b(parcelable);
            }
            this.f2889j = null;
        }
        int max = Math.max(0, Math.min(this.f2888i, adapter.m12838f() - 1));
        this.f2884e = max;
        this.f2888i = -1;
        this.f2890k.i1(max);
        this.f2900u.m11827m();
    }

    /* renamed from: j */
    private void m11846j(Context context, AttributeSet attributeSet) {
        int[] iArr = a.ViewPager2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(obtainStyledAttributes.getInt(a.ViewPager2_android_orientation, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: k */
    private void m11845k(RecyclerView$Adapter<?> recyclerView$Adapter) {
        if (recyclerView$Adapter != null) {
            recyclerView$Adapter.m12821w(this.f2886g);
        }
    }

    /* renamed from: c */
    public boolean m11853c() {
        return this.f2894o.m11811a();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.f2890k.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.f2890k.canScrollVertically(i);
    }

    /* renamed from: d */
    boolean m11852d() {
        boolean z = true;
        if (this.f2887h.m12676Z() != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).f2901b;
            sparseArray.put(this.f2890k.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        m11848h();
    }

    /* renamed from: e */
    public boolean m11851e() {
        return this.f2898s;
    }

    /* renamed from: g */
    public void m11849g() {
        if (this.f2895p.d() == null) {
            return;
        }
        double g = this.f2892m.g();
        int i = (int) g;
        double d = i;
        Double.isNaN(d);
        float f = (float) (g - d);
        this.f2895p.b(i, f, Math.round(getPageSize() * f));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return this.f2900u.m11839a() ? this.f2900u.m11833g() : super.getAccessibilityClassName();
    }

    public RecyclerView$Adapter getAdapter() {
        return this.f2890k.getAdapter();
    }

    public int getCurrentItem() {
        return this.f2884e;
    }

    public int getItemDecorationCount() {
        return this.f2890k.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f2899t;
    }

    public int getOrientation() {
        return this.f2887h.l2();
    }

    int getPageSize() {
        int i;
        int i2;
        RecyclerView recyclerView = this.f2890k;
        if (getOrientation() == 0) {
            i2 = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            i = recyclerView.getPaddingRight();
        } else {
            i2 = recyclerView.getHeight() - recyclerView.getPaddingTop();
            i = recyclerView.getPaddingBottom();
        }
        return i2 - i;
    }

    public int getScrollState() {
        return this.f2892m.h();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v50, types: [double] */
    /* renamed from: i */
    void m11847i(int i, boolean z) {
        RecyclerView$Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.f2888i == -1) {
                return;
            }
            this.f2888i = Math.max(i, 0);
        } else if (adapter.m12838f() <= 0) {
        } else {
            int min = Math.min(Math.max(i, 0), adapter.m12838f() - 1);
            if (min == this.f2884e && this.f2892m.j()) {
                return;
            }
            int i2 = this.f2884e;
            if (min == i2 && z) {
                return;
            }
            char c = i2;
            this.f2884e = min;
            this.f2900u.m11823q();
            if (!this.f2892m.j()) {
                c = this.f2892m.g();
            }
            this.f2892m.m(min, z);
            if (!z) {
                this.f2890k.i1(min);
                return;
            }
            double d = min;
            Double.isNaN(d);
            if (Math.abs(d - c) <= 3.0d) {
                this.f2890k.q1(min);
                return;
            }
            this.f2890k.i1(d > c ? min - 3 : min + 3);
            RecyclerView recyclerView = this.f2890k;
            recyclerView.post(new RunnableC0539n(min, recyclerView));
        }
    }

    /* renamed from: l */
    void m11844l() {
        j jVar = this.f2891l;
        if (jVar != null) {
            View f = jVar.f(this.f2887h);
            if (f == null) {
                return;
            }
            int m12653h0 = this.f2887h.m12653h0(f);
            if (m12653h0 != this.f2884e && getScrollState() == 0) {
                this.f2893n.c(m12653h0);
            }
            this.f2885f = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f2900u.m11831i(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.f2890k.getMeasuredWidth();
        int measuredHeight = this.f2890k.getMeasuredHeight();
        this.f2881b.left = getPaddingLeft();
        this.f2881b.right = (i3 - i) - getPaddingRight();
        this.f2881b.top = getPaddingTop();
        this.f2881b.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f2881b, this.f2882c);
        RecyclerView recyclerView = this.f2890k;
        Rect rect = this.f2882c;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f2885f) {
            m11844l();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        measureChild(this.f2890k, i, i2);
        int measuredWidth = this.f2890k.getMeasuredWidth();
        int measuredHeight = this.f2890k.getMeasuredHeight();
        int measuredState = this.f2890k.getMeasuredState();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(measuredWidth + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, measuredState), ViewGroup.resolveSizeAndState(Math.max(measuredHeight + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f2888i = savedState.f2902c;
        this.f2889j = savedState.f2903d;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2901b = this.f2890k.getId();
        int i = this.f2888i;
        int i2 = i;
        if (i == -1) {
            i2 = this.f2884e;
        }
        savedState.f2902c = i2;
        Parcelable parcelable = this.f2889j;
        if (parcelable == null) {
            RecyclerView$Adapter adapter = this.f2890k.getAdapter();
            if (adapter instanceof AbstractC0534c) {
                parcelable = ((AbstractC0534c) adapter).m11857a();
            }
            return savedState;
        }
        savedState.f2903d = parcelable;
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return this.f2900u.m11837c(i, bundle) ? this.f2900u.m11828l(i, bundle) : super.performAccessibilityAction(i, bundle);
    }

    public void setAdapter(RecyclerView$Adapter recyclerView$Adapter) {
        RecyclerView$Adapter<?> adapter = this.f2890k.getAdapter();
        this.f2900u.m11834f(adapter);
        m11845k(adapter);
        this.f2890k.setAdapter(recyclerView$Adapter);
        this.f2884e = 0;
        m11848h();
        this.f2900u.m11835e(recyclerView$Adapter);
        m11850f(recyclerView$Adapter);
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public void setCurrentItem(int i, boolean z) {
        if (!m11853c()) {
            m11847i(i, z);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.f2900u.m11824p();
    }

    public void setOffscreenPageLimit(int i) {
        if (i >= 1 || i == -1) {
            this.f2899t = i;
            this.f2890k.requestLayout();
            return;
        }
        throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }

    public void setOrientation(int i) {
        this.f2887h.y2(i);
        this.f2900u.m11822r();
    }

    public void setPageTransformer(AbstractC0538k abstractC0538k) {
        boolean z = this.f2897r;
        if (abstractC0538k != null) {
            if (!z) {
                this.f2896q = this.f2890k.getItemAnimator();
                this.f2897r = true;
            }
            this.f2890k.setItemAnimator((RecyclerView$k) null);
        } else if (z) {
            this.f2890k.setItemAnimator(this.f2896q);
            this.f2896q = null;
            this.f2897r = false;
        }
        if (abstractC0538k == this.f2895p.d()) {
            return;
        }
        this.f2895p.e(abstractC0538k);
        m11849g();
    }

    public void setUserInputEnabled(boolean z) {
        this.f2898s = z;
        this.f2900u.m11821s();
    }
}
