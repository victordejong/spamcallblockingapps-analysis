package androidx.viewpager2.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.C0399R;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import n3.b0.a.v;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.p1822f0.AbstractC26591d;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
import p1727n3.p1829l0.p1830a.AbstractC26652g;
import p1727n3.p1829l0.p1831b.C26655c;
import p1727n3.p1829l0.p1831b.C26656d;
import p1727n3.p1829l0.p1831b.C26657e;
import p1727n3.p1829l0.p1831b.C26658f;
import p1727n3.p1829l0.p1831b.C26660g;
import p1727n3.p1829l0.p1831b.C26661h;
import p1727n3.p1829l0.p1831b.C26662i;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2.class */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: d */
    public int f1521d;

    /* renamed from: g */
    public LinearLayoutManager f1524g;

    /* renamed from: i */
    public Parcelable f1526i;

    /* renamed from: j */
    public RecyclerView f1527j;

    /* renamed from: k */
    public v f1528k;

    /* renamed from: l */
    public C26658f f1529l;

    /* renamed from: m */
    public C26655c f1530m;

    /* renamed from: n */
    public C26656d f1531n;

    /* renamed from: o */
    public C26657e f1532o;

    /* renamed from: a */
    public final Rect f1518a = new Rect();

    /* renamed from: b */
    public final Rect f1519b = new Rect();

    /* renamed from: c */
    public C26655c f1520c = new C26655c(3);

    /* renamed from: e */
    public boolean f1522e = false;

    /* renamed from: f */
    public RecyclerView.AbstractC0320i f1523f = new a(this);

    /* renamed from: h */
    public int f1525h = -1;

    /* renamed from: p */
    public RecyclerView.AbstractC0323l f1533p = null;

    /* renamed from: q */
    public boolean f1534q = false;

    /* renamed from: r */
    public boolean f1535r = true;

    /* renamed from: s */
    public int f1536s = -1;

    /* renamed from: t */
    public AbstractC0405b f1537t = new C0408f();

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0404a();

        /* renamed from: a */
        public int f1538a;

        /* renamed from: b */
        public int f1539b;

        /* renamed from: c */
        public Parcelable f1540c;

        /* renamed from: androidx.viewpager2.widget.ViewPager2$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState$a.class */
        public static final class C0404a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, null) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f1538a = parcel.readInt();
            this.f1539b = parcel.readInt();
            this.f1540c = parcel.readParcelable(null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1538a = parcel.readInt();
            this.f1539b = parcel.readInt();
            this.f1540c = parcel.readParcelable(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1538a);
            parcel.writeInt(this.f1539b);
            parcel.writeParcelable(this.f1540c, i);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$b.class */
    public abstract class AbstractC0405b {
        public AbstractC0405b(ViewPager2 viewPager2, a aVar) {
        }

        /* renamed from: a */
        public abstract void mo42616a(C26655c c26655c, RecyclerView recyclerView);
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$c.class */
    public static abstract class AbstractC0406c extends RecyclerView.AbstractC0320i {
        public AbstractC0406c(a aVar) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$e.class */
    public static abstract class AbstractC0407e {
        /* renamed from: a */
        public void mo1520a(int i, float f, int i2) {
        }

        /* renamed from: b */
        public void mo1514b(int i) {
        }

        /* renamed from: g */
        public void mo1513g(int i) {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$f.class */
    public class C0408f extends AbstractC0405b {

        /* renamed from: a */
        public final AbstractC26591d f1541a = new C0409a();

        /* renamed from: b */
        public final AbstractC26591d f1542b = new C0410b();

        /* renamed from: c */
        public RecyclerView.AbstractC0320i f1543c;

        /* renamed from: androidx.viewpager2.widget.ViewPager2$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$f$a.class */
        public class C0409a implements AbstractC26591d {
            public C0409a() {
                C0408f.this = r4;
            }

            @Override // p1727n3.p1807k.p1821i.p1822f0.AbstractC26591d
            /* renamed from: a */
            public boolean mo1609a(View view, AbstractC26591d.AbstractC26592a abstractC26592a) {
                C0408f.this.m42615b(((ViewPager2) view).getCurrentItem() + 1);
                return true;
            }
        }

        /* renamed from: androidx.viewpager2.widget.ViewPager2$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$f$b.class */
        public class C0410b implements AbstractC26591d {
            public C0410b() {
                C0408f.this = r4;
            }

            @Override // p1727n3.p1807k.p1821i.p1822f0.AbstractC26591d
            /* renamed from: a */
            public boolean mo1609a(View view, AbstractC26591d.AbstractC26592a abstractC26592a) {
                C0408f.this.m42615b(((ViewPager2) view).getCurrentItem() - 1);
                return true;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0408f() {
            super(r6, null);
            ViewPager2.this = r6;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0405b
        /* renamed from: a */
        public void mo42616a(C26655c c26655c, RecyclerView recyclerView) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            recyclerView.setImportantForAccessibility(2);
            this.f1543c = new c(this);
            if (ViewPager2.this.getImportantForAccessibility() == 0) {
                ViewPager2.this.setImportantForAccessibility(1);
            }
        }

        /* renamed from: b */
        public void m42615b(int i) {
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.f1535r) {
                viewPager2.m42619e(i, true);
            }
        }

        /* renamed from: c */
        public void m42614c() {
            int itemCount;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = 16908360;
            C26614s.m1568m(viewPager2, 16908360);
            C26614s.m1568m(viewPager2, 16908361);
            C26614s.m1568m(viewPager2, 16908358);
            C26614s.m1568m(viewPager2, 16908359);
            if (ViewPager2.this.getAdapter() == null || (itemCount = ViewPager2.this.getAdapter().getItemCount()) == 0) {
                return;
            }
            ViewPager2 viewPager22 = ViewPager2.this;
            if (!viewPager22.f1535r) {
                return;
            }
            if (viewPager22.getOrientation() != 0) {
                if (ViewPager2.this.f1521d < itemCount - 1) {
                    C26614s.m1566o(viewPager2, new C26584b.C26585a(16908359, null), null, this.f1541a);
                }
                if (ViewPager2.this.f1521d <= 0) {
                    return;
                }
                C26614s.m1566o(viewPager2, new C26584b.C26585a(16908358, null), null, this.f1542b);
                return;
            }
            boolean m42623a = ViewPager2.this.m42623a();
            int i2 = m42623a ? 16908360 : 16908361;
            if (m42623a) {
                i = 16908361;
            }
            if (ViewPager2.this.f1521d < itemCount - 1) {
                C26614s.m1566o(viewPager2, new C26584b.C26585a(i2, null), null, this.f1541a);
            }
            if (ViewPager2.this.f1521d <= 0) {
                return;
            }
            C26614s.m1566o(viewPager2, new C26584b.C26585a(i, null), null, this.f1542b);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$g.class */
    public interface AbstractC0411g {
        /* renamed from: a */
        void m42613a(View view, float f);
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$j.class */
    public static class RunnableC0412j implements Runnable {

        /* renamed from: a */
        public final int f1547a;

        /* renamed from: b */
        public final RecyclerView f1548b;

        public RunnableC0412j(int i, RecyclerView recyclerView) {
            this.f1547a = i;
            this.f1548b = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1548b.smoothScrollToPosition(this.f1547a);
        }
    }

    /* JADX WARN: Finally extract failed */
    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        i iVar = new i(this, context);
        this.f1527j = iVar;
        AtomicInteger atomicInteger = C26614s.f74505a;
        iVar.setId(View.generateViewId());
        this.f1527j.setDescendantFocusability(131072);
        d dVar = new d(this, context);
        this.f1524g = dVar;
        this.f1527j.setLayoutManager(dVar);
        this.f1527j.setScrollingTouchSlop(1);
        int[] iArr = C0399R.styleable.ViewPager2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(obtainStyledAttributes.getInt(C0399R.styleable.ViewPager2_android_orientation, 0));
            obtainStyledAttributes.recycle();
            this.f1527j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.f1527j.addOnChildAttachStateChangeListener(new C26662i(this));
            C26658f c26658f = new C26658f(this);
            this.f1529l = c26658f;
            this.f1531n = new C26656d(this, c26658f, this.f1527j);
            h hVar = new h(this);
            this.f1528k = hVar;
            hVar.m3118a(this.f1527j);
            this.f1527j.addOnScrollListener(this.f1529l);
            C26655c c26655c = new C26655c(3);
            this.f1530m = c26655c;
            this.f1529l.f74600a = c26655c;
            C26660g c26660g = new C26660g(this);
            C26661h c26661h = new C26661h(this);
            c26655c.f74596a.add(c26660g);
            this.f1530m.f74596a.add(c26661h);
            this.f1537t.mo42616a(this.f1530m, this.f1527j);
            C26655c c26655c2 = this.f1530m;
            c26655c2.f74596a.add(this.f1520c);
            C26657e c26657e = new C26657e(this.f1524g);
            this.f1532o = c26657e;
            this.f1530m.f74596a.add(c26657e);
            RecyclerView recyclerView = this.f1527j;
            attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public boolean m42623a() {
        boolean z = true;
        if (this.f1524g.getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public void m42622b(AbstractC0407e abstractC0407e) {
        this.f1520c.f74596a.add(abstractC0407e);
    }

    /* renamed from: c */
    public final void m42621c() {
        RecyclerView.AbstractC0317g adapter;
        if (this.f1525h == -1 || (adapter = getAdapter()) == null) {
            return;
        }
        Parcelable parcelable = this.f1526i;
        if (parcelable != null) {
            if (adapter instanceof AbstractC26652g) {
                ((AbstractC26652g) adapter).mo1523d(parcelable);
            }
            this.f1526i = null;
        }
        int max = Math.max(0, Math.min(this.f1525h, adapter.getItemCount() - 1));
        this.f1521d = max;
        this.f1525h = -1;
        this.f1527j.scrollToPosition(max);
        ((C0408f) this.f1537t).m42614c();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.f1527j.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.f1527j.canScrollVertically(i);
    }

    /* renamed from: d */
    public void m42620d(int i, boolean z) {
        if (!this.f1531n.f74597a.f74612m) {
            m42619e(i, z);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).f1538a;
            sparseArray.put(this.f1527j.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        m42621c();
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* JADX WARN: Type inference failed for: r0v72, types: [double] */
    /* renamed from: e */
    public void m42619e(int i, boolean z) {
        AbstractC0407e abstractC0407e;
        RecyclerView.AbstractC0317g adapter = getAdapter();
        if (adapter == null) {
            if (this.f1525h == -1) {
                return;
            }
            this.f1525h = Math.max(i, 0);
        } else if (adapter.getItemCount() <= 0) {
        } else {
            int min = Math.min(Math.max(i, 0), adapter.getItemCount() - 1);
            int i2 = this.f1521d;
            if (min == i2) {
                if (this.f1529l.f74605f == 0) {
                    return;
                }
            }
            if (min == i2 && z) {
                return;
            }
            char c = i2;
            this.f1521d = min;
            ((C0408f) this.f1537t).m42614c();
            C26658f c26658f = this.f1529l;
            if (!(c26658f.f74605f == 0)) {
                c26658f.m1516g();
                C26658f.C26659a c26659a = c26658f.f74606g;
                c = c26659a.f74613a + c26659a.f74614b;
            }
            C26658f c26658f2 = this.f1529l;
            c26658f2.f74604e = z ? 2 : 3;
            c26658f2.f74612m = false;
            boolean z2 = false;
            if (c26658f2.f74608i != min) {
                z2 = true;
            }
            c26658f2.f74608i = min;
            c26658f2.m1518e(2);
            if (z2 && (abstractC0407e = c26658f2.f74600a) != null) {
                abstractC0407e.mo1513g(min);
            }
            if (!z) {
                this.f1527j.scrollToPosition(min);
                return;
            }
            double d = min;
            if (Math.abs(d - c) <= 3.0d) {
                this.f1527j.smoothScrollToPosition(min);
                return;
            }
            this.f1527j.scrollToPosition(d > c ? min - 3 : min + 3);
            RecyclerView recyclerView = this.f1527j;
            recyclerView.post(new RunnableC0412j(min, recyclerView));
        }
    }

    /* renamed from: f */
    public void m42618f(AbstractC0407e abstractC0407e) {
        this.f1520c.f74596a.remove(abstractC0407e);
    }

    /* renamed from: g */
    public void m42617g() {
        v vVar = this.f1528k;
        if (vVar != null) {
            View d = vVar.d(this.f1524g);
            if (d == null) {
                return;
            }
            int position = this.f1524g.getPosition(d);
            if (position != this.f1521d && getScrollState() == 0) {
                this.f1530m.mo1513g(position);
            }
            this.f1522e = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        Objects.requireNonNull(this.f1537t);
        Objects.requireNonNull(this.f1537t);
        return "androidx.viewpager.widget.ViewPager";
    }

    public RecyclerView.AbstractC0317g getAdapter() {
        return this.f1527j.getAdapter();
    }

    public int getCurrentItem() {
        return this.f1521d;
    }

    public int getItemDecorationCount() {
        return this.f1527j.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f1536s;
    }

    public int getOrientation() {
        return this.f1524g.getOrientation();
    }

    public int getPageSize() {
        int i;
        int i2;
        RecyclerView recyclerView = this.f1527j;
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
        return this.f1529l.f74605f;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        int i2;
        int itemCount;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        C0408f c0408f = (C0408f) this.f1537t;
        if (ViewPager2.this.getAdapter() == null) {
            i2 = 0;
            i = 0;
        } else if (ViewPager2.this.getOrientation() == 1) {
            i2 = ViewPager2.this.getAdapter().getItemCount();
            i = 0;
        } else {
            i = ViewPager2.this.getAdapter().getItemCount();
            i2 = 0;
        }
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C26584b.C26586b.m1611a(i2, i, false, 0).f74481a);
        RecyclerView.AbstractC0317g adapter = ViewPager2.this.getAdapter();
        if (adapter == null || (itemCount = adapter.getItemCount()) == 0) {
            return;
        }
        ViewPager2 viewPager2 = ViewPager2.this;
        if (!viewPager2.f1535r) {
            return;
        }
        if (viewPager2.f1521d > 0) {
            accessibilityNodeInfo.addAction(8192);
        }
        if (ViewPager2.this.f1521d < itemCount - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        accessibilityNodeInfo.setScrollable(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.f1527j.getMeasuredWidth();
        int measuredHeight = this.f1527j.getMeasuredHeight();
        this.f1518a.left = getPaddingLeft();
        this.f1518a.right = (i3 - i) - getPaddingRight();
        this.f1518a.top = getPaddingTop();
        this.f1518a.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f1518a, this.f1519b);
        RecyclerView recyclerView = this.f1527j;
        Rect rect = this.f1519b;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f1522e) {
            m42617g();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        measureChild(this.f1527j, i, i2);
        int measuredWidth = this.f1527j.getMeasuredWidth();
        int measuredHeight = this.f1527j.getMeasuredHeight();
        int measuredState = this.f1527j.getMeasuredState();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(paddingRight + paddingLeft + measuredWidth, getSuggestedMinimumWidth()), i, measuredState), ViewGroup.resolveSizeAndState(Math.max(paddingBottom + paddingTop + measuredHeight, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f1525h = savedState.f1539b;
        this.f1526i = savedState.f1540c;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1538a = this.f1527j.getId();
        int i = this.f1525h;
        int i2 = i;
        if (i == -1) {
            i2 = this.f1521d;
        }
        savedState.f1539b = i2;
        Parcelable parcelable = this.f1526i;
        if (parcelable != null) {
            savedState.f1540c = parcelable;
        } else {
            RecyclerView.AbstractC0317g adapter = this.f1527j.getAdapter();
            if (adapter instanceof AbstractC26652g) {
                savedState.f1540c = ((AbstractC26652g) adapter).mo1524a();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
        if (r5 == 4096) goto L14;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean performAccessibilityAction(int r5, android.os.Bundle r6) {
        /*
            r4 = this;
            r0 = r4
            androidx.viewpager2.widget.ViewPager2$b r0 = r0.f1537t
            androidx.viewpager2.widget.ViewPager2$f r0 = (androidx.viewpager2.widget.ViewPager2.C0408f) r0
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = 0
            r7 = r0
            r0 = r5
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 == r1) goto L24
            r0 = r5
            r1 = 4096(0x1000, float:5.74E-42)
            if (r0 != r1) goto L1e
            goto L24
        L1e:
            r0 = 0
            r8 = r0
            goto L27
        L24:
            r0 = 1
            r8 = r0
        L27:
            r0 = r8
            if (r0 == 0) goto L7f
            r0 = r4
            androidx.viewpager2.widget.ViewPager2$b r0 = r0.f1537t
            androidx.viewpager2.widget.ViewPager2$f r0 = (androidx.viewpager2.widget.ViewPager2.C0408f) r0
            r6 = r0
            r0 = r6
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r5
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 == r1) goto L4a
            r0 = r7
            r8 = r0
            r0 = r5
            r1 = 4096(0x1000, float:5.74E-42)
            if (r0 != r1) goto L4d
        L4a:
            r0 = 1
            r8 = r0
        L4d:
            r0 = r8
            if (r0 == 0) goto L77
            r0 = r5
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 != r1) goto L66
            r0 = r6
            androidx.viewpager2.widget.ViewPager2 r0 = androidx.viewpager2.widget.ViewPager2.this
            int r0 = r0.getCurrentItem()
            r1 = 1
            int r0 = r0 - r1
            r5 = r0
            goto L70
        L66:
            r0 = r6
            androidx.viewpager2.widget.ViewPager2 r0 = androidx.viewpager2.widget.ViewPager2.this
            int r0 = r0.getCurrentItem()
            r1 = 1
            int r0 = r0 + r1
            r5 = r0
        L70:
            r0 = r6
            r1 = r5
            r0.m42615b(r1)
            r0 = 1
            return r0
        L77:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r1.<init>()
            throw r0
        L7f:
            r0 = r4
            r1 = r5
            r2 = r6
            boolean r0 = super.performAccessibilityAction(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ViewPager2.performAccessibilityAction(int, android.os.Bundle):boolean");
    }

    public void setAdapter(RecyclerView.AbstractC0317g abstractC0317g) {
        RecyclerView.AbstractC0317g adapter = this.f1527j.getAdapter();
        C0408f c0408f = (C0408f) this.f1537t;
        Objects.requireNonNull(c0408f);
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(c0408f.f1543c);
        }
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f1523f);
        }
        this.f1527j.setAdapter(abstractC0317g);
        this.f1521d = 0;
        m42621c();
        C0408f c0408f2 = (C0408f) this.f1537t;
        c0408f2.m42614c();
        if (abstractC0317g != null) {
            abstractC0317g.registerAdapterDataObserver(c0408f2.f1543c);
        }
        if (abstractC0317g != null) {
            abstractC0317g.registerAdapterDataObserver(this.f1523f);
        }
    }

    public void setCurrentItem(int i) {
        m42620d(i, true);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        ((C0408f) this.f1537t).m42614c();
    }

    public void setOffscreenPageLimit(int i) {
        if (i >= 1 || i == -1) {
            this.f1536s = i;
            this.f1527j.requestLayout();
            return;
        }
        throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }

    public void setOrientation(int i) {
        this.f1524g.setOrientation(i);
        ((C0408f) this.f1537t).m42614c();
    }

    public void setPageTransformer(AbstractC0411g abstractC0411g) {
        if (abstractC0411g != null) {
            if (!this.f1534q) {
                this.f1533p = this.f1527j.getItemAnimator();
                this.f1534q = true;
            }
            this.f1527j.setItemAnimator(null);
        } else if (this.f1534q) {
            this.f1527j.setItemAnimator(this.f1533p);
            this.f1533p = null;
            this.f1534q = false;
        }
        C26657e c26657e = this.f1532o;
        if (abstractC0411g == c26657e.f74599b) {
            return;
        }
        c26657e.f74599b = abstractC0411g;
        if (abstractC0411g == null) {
            return;
        }
        C26658f c26658f = this.f1529l;
        c26658f.m1516g();
        C26658f.C26659a c26659a = c26658f.f74606g;
        double d = c26659a.f74613a + c26659a.f74614b;
        int i = (int) d;
        float f = (float) (d - i);
        this.f1532o.mo1520a(i, f, Math.round(getPageSize() * f));
    }

    public void setUserInputEnabled(boolean z) {
        this.f1535r = z;
        ((C0408f) this.f1537t).m42614c();
    }
}
