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
import androidx.recyclerview.widget.RecyclerView$g;
import androidx.recyclerview.widget.RecyclerView$i;
import androidx.recyclerview.widget.RecyclerView$l;
import androidx.recyclerview.widget.RecyclerView$p;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2.class */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: w */
    public static boolean f1630w = true;

    /* renamed from: d */
    public int f1634d;

    /* renamed from: h */
    public LinearLayoutManager f1637h;

    /* renamed from: k */
    public Parcelable f1639k;

    /* renamed from: l */
    public RecyclerView f1640l;

    /* renamed from: m */
    public k00 f1641m;

    /* renamed from: n */
    public p40 f1642n;

    /* renamed from: o */
    public m40 f1643o;

    /* renamed from: p */
    public n40 f1644p;

    /* renamed from: q */
    public o40 f1645q;

    /* renamed from: v */
    public AbstractC0213e f1650v;

    /* renamed from: a */
    public final Rect f1631a = new Rect();

    /* renamed from: b */
    public final Rect f1632b = new Rect();

    /* renamed from: c */
    public m40 f1633c = new m40(3);

    /* renamed from: f */
    public boolean f1635f = false;

    /* renamed from: g */
    public RecyclerView$i f1636g = new a(this);

    /* renamed from: j */
    public int f1638j = -1;

    /* renamed from: r */
    public RecyclerView$l f1646r = null;

    /* renamed from: s */
    public boolean f1647s = false;

    /* renamed from: t */
    public boolean f1648t = true;

    /* renamed from: u */
    public int f1649u = -1;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0212a();

        /* renamed from: a */
        public int f1651a;

        /* renamed from: b */
        public int f1652b;

        /* renamed from: c */
        public Parcelable f1653c;

        /* renamed from: androidx.viewpager2.widget.ViewPager2$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState$a.class */
        public static final class C0212a implements Parcelable.ClassLoaderCreator<SavedState> {
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

        public SavedState(Parcel parcel) {
            super(parcel);
            m5921a(parcel, null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m5921a(parcel, classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        public final void m5921a(Parcel parcel, ClassLoader classLoader) {
            this.f1651a = parcel.readInt();
            this.f1652b = parcel.readInt();
            this.f1653c = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1651a);
            parcel.writeInt(this.f1652b);
            parcel.writeParcelable(this.f1653c, i);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$e.class */
    public abstract class AbstractC0213e {
        public AbstractC0213e(ViewPager2 viewPager2) {
        }

        /* renamed from: a */
        public boolean m5917a() {
            return false;
        }

        /* renamed from: b */
        public boolean m5916b(int i) {
            return false;
        }

        /* renamed from: c */
        public boolean m5915c(int i, Bundle bundle) {
            return false;
        }

        /* renamed from: d */
        public boolean m5914d() {
            return false;
        }

        /* renamed from: e */
        public void m5913e(RecyclerView$g<?> recyclerView$g) {
        }

        /* renamed from: f */
        public void m5912f(RecyclerView$g<?> recyclerView$g) {
        }

        /* renamed from: g */
        public String m5911g() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: h */
        public void m5910h(m40 m40Var, RecyclerView recyclerView) {
        }

        /* renamed from: i */
        public void m5909i(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        /* renamed from: j */
        public void m5908j(ub ubVar) {
        }

        /* renamed from: k */
        public boolean m5907k(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: l */
        public boolean m5906l(int i, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: m */
        public void m5905m() {
        }

        /* renamed from: n */
        public CharSequence m5904n() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: o */
        public void m5903o(AccessibilityEvent accessibilityEvent) {
        }

        /* renamed from: p */
        public void m5902p() {
        }

        /* renamed from: q */
        public void m5901q() {
        }

        /* renamed from: r */
        public void m5900r() {
        }

        /* renamed from: s */
        public void m5899s() {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$i.class */
    public static abstract class AbstractC0214i {
        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }

        public void onPageSelected(int i) {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$k */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$k.class */
    public interface AbstractC0215k {
        /* renamed from: a */
        void m5898a(View view, float f);
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$n */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$n.class */
    public static class RunnableC0216n implements Runnable {

        /* renamed from: a */
        public final int f1654a;

        /* renamed from: b */
        public final RecyclerView f1655b;

        public RunnableC0216n(int i, RecyclerView recyclerView) {
            this.f1654a = i;
            this.f1655b = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1655b.smoothScrollToPosition(this.f1654a);
        }
    }

    public ViewPager2(Context context) {
        super(context);
        m5934b(context, null);
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5934b(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5934b(context, attributeSet);
    }

    /* renamed from: a */
    public final RecyclerView$p m5935a() {
        return new d(this);
    }

    /* renamed from: b */
    public final void m5934b(Context context, AttributeSet attributeSet) {
        this.f1650v = f1630w ? new j(this) : new f(this);
        m mVar = new m(this, context);
        this.f1640l = mVar;
        mVar.setId(jb.k());
        this.f1640l.setDescendantFocusability(131072);
        h hVar = new h(this, context);
        this.f1637h = hVar;
        this.f1640l.setLayoutManager(hVar);
        this.f1640l.setScrollingTouchSlop(1);
        m5925k(context, attributeSet);
        this.f1640l.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f1640l.addOnChildAttachStateChangeListener(m5935a());
        p40 p40Var = new p40(this);
        this.f1642n = p40Var;
        this.f1644p = new n40(this, p40Var, this.f1640l);
        l lVar = new l(this);
        this.f1641m = lVar;
        lVar.b(this.f1640l);
        this.f1640l.addOnScrollListener(this.f1642n);
        m40 m40Var = new m40(3);
        this.f1643o = m40Var;
        this.f1642n.m(m40Var);
        b bVar = new b(this);
        c cVar = new c(this);
        this.f1643o.a(bVar);
        this.f1643o.a(cVar);
        this.f1650v.m5910h(this.f1643o, this.f1640l);
        this.f1643o.a(this.f1633c);
        o40 o40Var = new o40(this.f1637h);
        this.f1645q = o40Var;
        this.f1643o.a(o40Var);
        RecyclerView recyclerView = this.f1640l;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    /* renamed from: c */
    public boolean m5933c() {
        return this.f1644p.a();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.f1640l.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.f1640l.canScrollVertically(i);
    }

    /* renamed from: d */
    public boolean m5932d() {
        boolean z = true;
        if (this.f1637h.getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).f1651a;
            sparseArray.put(this.f1640l.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        m5927i();
    }

    /* renamed from: e */
    public boolean m5931e() {
        return this.f1648t;
    }

    /* renamed from: f */
    public final void m5930f(RecyclerView$g<?> recyclerView$g) {
        if (recyclerView$g != null) {
            recyclerView$g.registerAdapterDataObserver(this.f1636g);
        }
    }

    /* renamed from: g */
    public void m5929g(AbstractC0214i abstractC0214i) {
        this.f1633c.a(abstractC0214i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return this.f1650v.m5917a() ? this.f1650v.m5911g() : super.getAccessibilityClassName();
    }

    public RecyclerView$g getAdapter() {
        return this.f1640l.getAdapter();
    }

    public int getCurrentItem() {
        return this.f1634d;
    }

    public int getItemDecorationCount() {
        return this.f1640l.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f1649u;
    }

    public int getOrientation() {
        return this.f1637h.getOrientation();
    }

    public int getPageSize() {
        int i;
        int i2;
        RecyclerView recyclerView = this.f1640l;
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
        return this.f1642n.f();
    }

    /* renamed from: h */
    public void m5928h() {
        if (this.f1645q.a() == null) {
            return;
        }
        double e = this.f1642n.e();
        int i = (int) e;
        float f = (float) (e - i);
        this.f1645q.onPageScrolled(i, f, Math.round(getPageSize() * f));
    }

    /* renamed from: i */
    public final void m5927i() {
        k40 adapter;
        if (this.f1638j == -1 || (adapter = getAdapter()) == null) {
            return;
        }
        Parcelable parcelable = this.f1639k;
        if (parcelable != null) {
            if (adapter instanceof k40) {
                adapter.c(parcelable);
            }
            this.f1639k = null;
        }
        int max = Math.max(0, Math.min(this.f1638j, adapter.getItemCount() - 1));
        this.f1634d = max;
        this.f1638j = -1;
        this.f1640l.scrollToPosition(max);
        this.f1650v.m5905m();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v48, types: [double] */
    /* renamed from: j */
    public void m5926j(int i, boolean z) {
        RecyclerView$g adapter = getAdapter();
        if (adapter == null) {
            if (this.f1638j == -1) {
                return;
            }
            this.f1638j = Math.max(i, 0);
        } else if (adapter.getItemCount() <= 0) {
        } else {
            int min = Math.min(Math.max(i, 0), adapter.getItemCount() - 1);
            if (min == this.f1634d && this.f1642n.h()) {
                return;
            }
            int i2 = this.f1634d;
            if (min == i2 && z) {
                return;
            }
            char c = i2;
            this.f1634d = min;
            this.f1650v.m5901q();
            if (!this.f1642n.h()) {
                c = this.f1642n.e();
            }
            this.f1642n.k(min, z);
            if (!z) {
                this.f1640l.scrollToPosition(min);
                return;
            }
            double d = min;
            if (Math.abs(d - c) <= 3.0d) {
                this.f1640l.smoothScrollToPosition(min);
                return;
            }
            this.f1640l.scrollToPosition(d > c ? min - 3 : min + 3);
            RecyclerView recyclerView = this.f1640l;
            recyclerView.post(new RunnableC0216n(min, recyclerView));
        }
    }

    /* renamed from: k */
    public final void m5925k(Context context, AttributeSet attributeSet) {
        int[] iArr = h40.ViewPager2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(obtainStyledAttributes.getInt(h40.ViewPager2_android_orientation, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: l */
    public final void m5924l(RecyclerView$g<?> recyclerView$g) {
        if (recyclerView$g != null) {
            recyclerView$g.unregisterAdapterDataObserver(this.f1636g);
        }
    }

    /* renamed from: m */
    public void m5923m(AbstractC0214i abstractC0214i) {
        this.f1633c.b(abstractC0214i);
    }

    /* renamed from: n */
    public void m5922n() {
        k00 k00Var = this.f1641m;
        if (k00Var != null) {
            View g = k00Var.g(this.f1637h);
            if (g == null) {
                return;
            }
            int position = this.f1637h.getPosition(g);
            if (position != this.f1634d && getScrollState() == 0) {
                this.f1643o.onPageSelected(position);
            }
            this.f1635f = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f1650v.m5909i(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.f1640l.getMeasuredWidth();
        int measuredHeight = this.f1640l.getMeasuredHeight();
        this.f1631a.left = getPaddingLeft();
        this.f1631a.right = (i3 - i) - getPaddingRight();
        this.f1631a.top = getPaddingTop();
        this.f1631a.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f1631a, this.f1632b);
        RecyclerView recyclerView = this.f1640l;
        Rect rect = this.f1632b;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f1635f) {
            m5922n();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        measureChild(this.f1640l, i, i2);
        int measuredWidth = this.f1640l.getMeasuredWidth();
        int measuredHeight = this.f1640l.getMeasuredHeight();
        int measuredState = this.f1640l.getMeasuredState();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(measuredWidth + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, measuredState), ViewGroup.resolveSizeAndState(Math.max(measuredHeight + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f1638j = savedState.f1652b;
        this.f1639k = savedState.f1653c;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1651a = this.f1640l.getId();
        int i = this.f1638j;
        int i2 = i;
        if (i == -1) {
            i2 = this.f1634d;
        }
        savedState.f1652b = i2;
        Parcelable parcelable = this.f1639k;
        if (parcelable == null) {
            k40 adapter = this.f1640l.getAdapter();
            if (adapter instanceof k40) {
                parcelable = adapter.b();
            }
            return savedState;
        }
        savedState.f1653c = parcelable;
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return this.f1650v.m5915c(i, bundle) ? this.f1650v.m5906l(i, bundle) : super.performAccessibilityAction(i, bundle);
    }

    public void setAdapter(RecyclerView$g recyclerView$g) {
        RecyclerView$g<?> adapter = this.f1640l.getAdapter();
        this.f1650v.m5912f(adapter);
        m5924l(adapter);
        this.f1640l.setAdapter(recyclerView$g);
        this.f1634d = 0;
        m5927i();
        this.f1650v.m5913e(recyclerView$g);
        m5930f(recyclerView$g);
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public void setCurrentItem(int i, boolean z) {
        if (!m5933c()) {
            m5926j(i, z);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.f1650v.m5902p();
    }

    public void setOffscreenPageLimit(int i) {
        if (i >= 1 || i == -1) {
            this.f1649u = i;
            this.f1640l.requestLayout();
            return;
        }
        throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }

    public void setOrientation(int i) {
        this.f1637h.setOrientation(i);
        this.f1650v.m5900r();
    }

    public void setPageTransformer(AbstractC0215k abstractC0215k) {
        boolean z = this.f1647s;
        if (abstractC0215k != null) {
            if (!z) {
                this.f1646r = this.f1640l.getItemAnimator();
                this.f1647s = true;
            }
            this.f1640l.setItemAnimator((RecyclerView$l) null);
        } else if (z) {
            this.f1640l.setItemAnimator(this.f1646r);
            this.f1646r = null;
            this.f1647s = false;
        }
        if (abstractC0215k == this.f1645q.a()) {
            return;
        }
        this.f1645q.b(abstractC0215k);
        m5928h();
    }

    public void setUserInputEnabled(boolean z) {
        this.f1648t = z;
        this.f1650v.m5899s();
    }
}
