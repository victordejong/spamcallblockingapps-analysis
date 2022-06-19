package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26558a;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
import p1727n3.p1825k0.p1826a.AbstractC26640a;
import p1727n3.p1825k0.p1826a.C26641b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager.class */
public class ViewPager extends ViewGroup {

    /* renamed from: j0 */
    public static final int[] f1435j0 = {16842931};

    /* renamed from: k0 */
    public static final Comparator<C0392e> f1436k0 = new C0388a();

    /* renamed from: l0 */
    public static final Interpolator f1437l0 = new animationInterpolatorC0389b();

    /* renamed from: m0 */
    public static final C0398k f1438m0 = new C0398k();

    /* renamed from: A */
    public int f1439A;

    /* renamed from: B */
    public int f1440B;

    /* renamed from: C */
    public float f1441C;

    /* renamed from: D */
    public float f1442D;

    /* renamed from: E */
    public float f1443E;

    /* renamed from: J */
    public float f1444J;

    /* renamed from: L */
    public VelocityTracker f1446L;

    /* renamed from: M */
    public int f1447M;

    /* renamed from: N */
    public int f1448N;

    /* renamed from: O */
    public int f1449O;

    /* renamed from: P */
    public int f1450P;

    /* renamed from: Q */
    public EdgeEffect f1451Q;

    /* renamed from: R */
    public EdgeEffect f1452R;

    /* renamed from: T */
    public boolean f1454T;

    /* renamed from: U */
    public int f1455U;

    /* renamed from: V */
    public List<AbstractC0396i> f1456V;

    /* renamed from: W */
    public AbstractC0396i f1457W;

    /* renamed from: a */
    public int f1458a;

    /* renamed from: e */
    public AbstractC26640a f1462e;

    /* renamed from: f */
    public int f1463f;

    /* renamed from: g0 */
    public List<AbstractC0395h> f1465g0;

    /* renamed from: j */
    public Scroller f1470j;

    /* renamed from: k */
    public boolean f1471k;

    /* renamed from: l */
    public C0397j f1472l;

    /* renamed from: m */
    public int f1473m;

    /* renamed from: n */
    public Drawable f1474n;

    /* renamed from: o */
    public int f1475o;

    /* renamed from: p */
    public int f1476p;

    /* renamed from: s */
    public int f1479s;

    /* renamed from: t */
    public boolean f1480t;

    /* renamed from: u */
    public boolean f1481u;

    /* renamed from: v */
    public boolean f1482v;

    /* renamed from: x */
    public boolean f1484x;

    /* renamed from: y */
    public boolean f1485y;

    /* renamed from: z */
    public int f1486z;

    /* renamed from: b */
    public final ArrayList<C0392e> f1459b = new ArrayList<>();

    /* renamed from: c */
    public final C0392e f1460c = new C0392e();

    /* renamed from: d */
    public final Rect f1461d = new Rect();

    /* renamed from: g */
    public int f1464g = -1;

    /* renamed from: h */
    public Parcelable f1466h = null;

    /* renamed from: i */
    public ClassLoader f1468i = null;

    /* renamed from: q */
    public float f1477q = -3.4028235E38f;

    /* renamed from: r */
    public float f1478r = Float.MAX_VALUE;

    /* renamed from: w */
    public int f1483w = 1;

    /* renamed from: K */
    public int f1445K = -1;

    /* renamed from: S */
    public boolean f1453S = true;

    /* renamed from: h0 */
    public final Runnable f1467h0 = new RunnableC0390c();

    /* renamed from: i0 */
    public int f1469i0 = 0;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0387a();

        /* renamed from: c */
        public int f1487c;

        /* renamed from: d */
        public Parcelable f1488d;

        /* renamed from: e */
        public ClassLoader f1489e;

        /* renamed from: androidx.viewpager.widget.ViewPager$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState$a.class */
        public static final class C0387a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            ClassLoader classLoader2 = classLoader == null ? SavedState.class.getClassLoader() : classLoader;
            this.f1487c = parcel.readInt();
            this.f1488d = parcel.readParcelable(classLoader2);
            this.f1489e = classLoader2;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FragmentPager.SavedState{");
            m8728C.append(Integer.toHexString(System.identityHashCode(this)));
            m8728C.append(" position=");
            return C22128a.m8697J2(m8728C, this.f1487c, "}");
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f713a, i);
            parcel.writeInt(this.f1487c);
            parcel.writeParcelable(this.f1488d, i);
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    public static final class C0388a implements Comparator<C0392e> {
        @Override // java.util.Comparator
        public int compare(C0392e c0392e, C0392e c0392e2) {
            return c0392e.f1492b - c0392e2.f1492b;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    public static final class animationInterpolatorC0389b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    public class RunnableC0390c implements Runnable {
        public RunnableC0390c() {
            ViewPager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager viewPager = ViewPager.this;
            viewPager.m42640r(viewPager.f1463f);
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$d.class */
    public @interface AbstractC0391d {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public static class C0392e {

        /* renamed from: a */
        public Object f1491a;

        /* renamed from: b */
        public int f1492b;

        /* renamed from: c */
        public boolean f1493c;

        /* renamed from: d */
        public float f1494d;

        /* renamed from: e */
        public float f1495e;
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public static class C0393f extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f1496a;

        /* renamed from: b */
        public int f1497b;

        /* renamed from: c */
        public float f1498c = 0.0f;

        /* renamed from: d */
        public boolean f1499d;

        /* renamed from: e */
        public int f1500e;

        /* renamed from: f */
        public int f1501f;

        public C0393f() {
            super(-1, -1);
        }

        public C0393f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f1435j0);
            this.f1497b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$g.class */
    public class C0394g extends C26558a {
        public C0394g() {
            ViewPager.this = r4;
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: c */
        public void mo1511c(View view, AccessibilityEvent accessibilityEvent) {
            AbstractC26640a abstractC26640a;
            this.f74411a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            AbstractC26640a abstractC26640a2 = ViewPager.this.f1462e;
            boolean z = true;
            if (abstractC26640a2 == null || abstractC26640a2.mo1537c() <= 1) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            if (accessibilityEvent.getEventType() != 4096 || (abstractC26640a = ViewPager.this.f1462e) == null) {
                return;
            }
            accessibilityEvent.setItemCount(abstractC26640a.mo1537c());
            accessibilityEvent.setFromIndex(ViewPager.this.f1463f);
            accessibilityEvent.setToIndex(ViewPager.this.f1463f);
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: d */
        public void mo1510d(View view, C26584b c26584b) {
            this.f74411a.onInitializeAccessibilityNodeInfo(view, c26584b.f74463a);
            c26584b.f74463a.setClassName(ViewPager.class.getName());
            AbstractC26640a abstractC26640a = ViewPager.this.f1462e;
            c26584b.f74463a.setScrollable(abstractC26640a != null && abstractC26640a.mo1537c() > 1);
            if (ViewPager.this.canScrollHorizontally(1)) {
                c26584b.f74463a.addAction(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                c26584b.f74463a.addAction(8192);
            }
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: g */
        public boolean mo1680g(View view, int i, Bundle bundle) {
            if (super.mo1680g(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f1463f + 1);
                return true;
            } else if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            } else {
                ViewPager viewPager2 = ViewPager.this;
                viewPager2.setCurrentItem(viewPager2.f1463f - 1);
                return true;
            }
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public interface AbstractC0395h {
        /* renamed from: a */
        void m42633a(ViewPager viewPager, AbstractC26640a abstractC26640a, AbstractC26640a abstractC26640a2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public interface AbstractC0396i {
        /* renamed from: a */
        void mo7749a(int i, float f, int i2);

        /* renamed from: b */
        void mo1514b(int i);

        /* renamed from: g */
        void mo7748g(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$j.class */
    public class C0397j extends DataSetObserver {
        public C0397j() {
            ViewPager.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m42652f();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m42652f();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$k */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$k.class */
    public static class C0398k implements Comparator<View> {
        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            C0393f c0393f = (C0393f) view.getLayoutParams();
            C0393f c0393f2 = (C0393f) view2.getLayoutParams();
            boolean z = c0393f.f1496a;
            return z != c0393f2.f1496a ? z ? 1 : -1 : c0393f.f1500e - c0393f2.f1500e;
        }
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.f1470j = new Scroller(context2, f1437l0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f = context2.getResources().getDisplayMetrics().density;
        this.f1440B = viewConfiguration.getScaledPagingTouchSlop();
        this.f1447M = (int) (400.0f * f);
        this.f1448N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f1451Q = new EdgeEffect(context2);
        this.f1452R = new EdgeEffect(context2);
        this.f1449O = (int) (25.0f * f);
        this.f1450P = (int) (2.0f * f);
        this.f1486z = (int) (f * 16.0f);
        C26614s.m1564q(this, new C0394g());
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        C26614s.m1563r(this, new C26641b(this));
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f1481u != z) {
            this.f1481u = z;
        }
    }

    /* renamed from: a */
    public C0392e m42657a(int i, int i2) {
        C0392e c0392e = new C0392e();
        c0392e.f1492b = i;
        c0392e.f1491a = this.f1462e.mo1534f(this, i);
        c0392e.f1494d = this.f1462e.mo1535e(i);
        if (i2 < 0 || i2 >= this.f1459b.size()) {
            this.f1459b.add(c0392e);
        } else {
            this.f1459b.add(i2, c0392e);
        }
        return c0392e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C0392e m42649i;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (m42649i = m42649i(childAt)) != null && m42649i.f1492b == this.f1463f) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        C0392e m42649i;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m42649i = m42649i(childAt)) != null && m42649i.f1492b == this.f1463f) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!checkLayoutParams(layoutParams)) {
            layoutParams2 = generateLayoutParams(layoutParams);
        }
        C0393f c0393f = (C0393f) layoutParams2;
        boolean z = c0393f.f1496a | (view.getClass().getAnnotation(AbstractC0391d.class) != null);
        c0393f.f1496a = z;
        if (!this.f1480t) {
            super.addView(view, i, layoutParams2);
        } else if (z) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            c0393f.f1499d = true;
            addViewInLayout(view, i, layoutParams2);
        }
    }

    /* renamed from: b */
    public void m42656b(AbstractC0396i abstractC0396i) {
        if (this.f1456V == null) {
            this.f1456V = new ArrayList();
        }
        this.f1456V.add(abstractC0396i);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0157  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m42655c(int r6) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m42655c(int):boolean");
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = false;
        if (this.f1462e == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX > ((int) (clientWidth * this.f1477q))) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i > 0) {
            z2 = false;
            if (scrollX < ((int) (clientWidth * this.f1478r))) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0393f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f1471k = true;
        if (this.f1470j.isFinished() || !this.f1470j.computeScrollOffset()) {
            m42653e(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f1470j.getCurrX();
        int currY = this.f1470j.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m42642p(currX)) {
                this.f1470j.abortAnimation();
                scrollTo(0, currY);
            }
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        postInvalidateOnAnimation();
    }

    /* renamed from: d */
    public boolean m42654d(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m42654d(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0089, code lost:
        if (r5 == false) goto L30;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchKeyEvent(android.view.KeyEvent r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            boolean r0 = super.dispatchKeyEvent(r1)
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L8c
            r0 = r4
            int r0 = r0.getAction()
            if (r0 != 0) goto L86
            r0 = r4
            int r0 = r0.getKeyCode()
            r7 = r0
            r0 = r7
            r1 = 21
            if (r0 == r1) goto L6c
            r0 = r7
            r1 = 22
            if (r0 == r1) goto L52
            r0 = r7
            r1 = 61
            if (r0 == r1) goto L31
            goto L86
        L31:
            r0 = r4
            boolean r0 = r0.hasNoModifiers()
            if (r0 == 0) goto L41
            r0 = r3
            r1 = 2
            boolean r0 = r0.m42655c(r1)
            r5 = r0
            goto L88
        L41:
            r0 = r4
            r1 = 1
            boolean r0 = r0.hasModifiers(r1)
            if (r0 == 0) goto L86
            r0 = r3
            r1 = 1
            boolean r0 = r0.m42655c(r1)
            r5 = r0
            goto L88
        L52:
            r0 = r4
            r1 = 2
            boolean r0 = r0.hasModifiers(r1)
            if (r0 == 0) goto L62
            r0 = r3
            boolean r0 = r0.m42643o()
            r5 = r0
            goto L88
        L62:
            r0 = r3
            r1 = 66
            boolean r0 = r0.m42655c(r1)
            r5 = r0
            goto L88
        L6c:
            r0 = r4
            r1 = 2
            boolean r0 = r0.hasModifiers(r1)
            if (r0 == 0) goto L7c
            r0 = r3
            boolean r0 = r0.m42644n()
            r5 = r0
            goto L88
        L7c:
            r0 = r3
            r1 = 17
            boolean r0 = r0.m42655c(r1)
            r5 = r0
            goto L88
        L86:
            r0 = 0
            r5 = r0
        L88:
            r0 = r5
            if (r0 == 0) goto L8e
        L8c:
            r0 = 1
            r6 = r0
        L8e:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C0392e m42649i;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m42649i = m42649i(childAt)) != null && m42649i.f1492b == this.f1463f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        AbstractC26640a abstractC26640a;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (abstractC26640a = this.f1462e) != null && abstractC26640a.mo1537c() > 1)) {
            if (!this.f1451Q.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.f1477q * width);
                this.f1451Q.setSize(height, width);
                z2 = false | this.f1451Q.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f1452R.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f1478r + 1.0f)) * width2);
                this.f1452R.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f1452R.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f1451Q.finish();
            this.f1452R.finish();
        }
        if (z) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1474n;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* renamed from: e */
    public final void m42653e(boolean z) {
        boolean z2 = this.f1469i0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f1470j.isFinished()) {
                this.f1470j.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f1470j.getCurrX();
                int currY = this.f1470j.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m42642p(currX);
                    }
                }
            }
        }
        this.f1482v = false;
        for (int i = 0; i < this.f1459b.size(); i++) {
            C0392e c0392e = this.f1459b.get(i);
            if (c0392e.f1493c) {
                c0392e.f1493c = false;
                z2 = true;
            }
        }
        if (z2) {
            if (!z) {
                this.f1467h0.run();
                return;
            }
            Runnable runnable = this.f1467h0;
            AtomicInteger atomicInteger = C26614s.f74505a;
            postOnAnimation(runnable);
        }
    }

    /* renamed from: f */
    public void m42652f() {
        int mo1537c = this.f1462e.mo1537c();
        this.f1458a = mo1537c;
        boolean z = this.f1459b.size() < (this.f1483w * 2) + 1 && this.f1459b.size() < mo1537c;
        int i = this.f1463f;
        for (int i2 = 0; i2 < this.f1459b.size(); i2++) {
            C0392e c0392e = this.f1459b.get(i2);
            AbstractC26640a abstractC26640a = this.f1462e;
            Object obj = c0392e.f1491a;
            Objects.requireNonNull(abstractC26640a);
        }
        Collections.sort(this.f1459b, f1436k0);
        if (z) {
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                C0393f c0393f = (C0393f) getChildAt(i3).getLayoutParams();
                if (!c0393f.f1496a) {
                    c0393f.f1498c = 0.0f;
                }
            }
            m42634x(i, false, true, 0);
            requestLayout();
        }
    }

    /* renamed from: g */
    public final void m42651g(int i) {
        AbstractC0396i abstractC0396i = this.f1457W;
        if (abstractC0396i != null) {
            abstractC0396i.mo7748g(i);
        }
        List<AbstractC0396i> list = this.f1456V;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0396i abstractC0396i2 = this.f1456V.get(i2);
                if (abstractC0396i2 != null) {
                    abstractC0396i2.mo7748g(i);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0393f();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0393f(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC26640a getAdapter() {
        return this.f1462e;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        throw null;
    }

    public int getCurrentItem() {
        return this.f1463f;
    }

    public int getOffscreenPageLimit() {
        return this.f1483w;
    }

    public int getPageMargin() {
        return this.f1473m;
    }

    /* renamed from: h */
    public final Rect m42650h(Rect rect, View view) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (!(viewParent instanceof ViewGroup) || viewParent == this) {
                break;
            }
            ViewGroup viewGroup = (ViewGroup) viewParent;
            rect2.left = viewGroup.getLeft() + rect2.left;
            rect2.right = viewGroup.getRight() + rect2.right;
            rect2.top = viewGroup.getTop() + rect2.top;
            rect2.bottom = viewGroup.getBottom() + rect2.bottom;
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    /* renamed from: i */
    public C0392e m42649i(View view) {
        for (int i = 0; i < this.f1459b.size(); i++) {
            C0392e c0392e = this.f1459b.get(i);
            if (this.f1462e.mo1148g(view, c0392e.f1491a)) {
                return c0392e;
            }
        }
        return null;
    }

    /* renamed from: j */
    public final C0392e m42648j() {
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.f1473m / clientWidth : 0.0f;
        C0392e c0392e = null;
        int i = 0;
        int i2 = -1;
        boolean z = true;
        float f3 = 0.0f;
        while (i < this.f1459b.size()) {
            C0392e c0392e2 = this.f1459b.get(i);
            int i3 = i;
            C0392e c0392e3 = c0392e2;
            if (!z) {
                int i4 = i2 + 1;
                i3 = i;
                c0392e3 = c0392e2;
                if (c0392e2.f1492b != i4) {
                    c0392e3 = this.f1460c;
                    c0392e3.f1495e = f + f3 + f2;
                    c0392e3.f1492b = i4;
                    c0392e3.f1494d = this.f1462e.mo1535e(i4);
                    i3 = i - 1;
                }
            }
            f = c0392e3.f1495e;
            float f4 = c0392e3.f1494d;
            if (!z && scrollX < f) {
                return c0392e;
            }
            if (scrollX < f4 + f + f2 || i3 == this.f1459b.size() - 1) {
                return c0392e3;
            }
            i2 = c0392e3.f1492b;
            f3 = c0392e3.f1494d;
            i = i3 + 1;
            z = false;
            c0392e = c0392e3;
        }
        return c0392e;
    }

    /* renamed from: k */
    public C0392e m42647k(int i) {
        for (int i2 = 0; i2 < this.f1459b.size(); i2++) {
            C0392e c0392e = this.f1459b.get(i2);
            if (c0392e.f1492b == i) {
                return c0392e;
            }
        }
        return null;
    }

    /* renamed from: l */
    public void m42646l(int i, float f, int i2) {
        int i3;
        if (this.f1455U > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                C0393f c0393f = (C0393f) childAt.getLayoutParams();
                if (c0393f.f1496a) {
                    int i5 = c0393f.f1497b & 7;
                    if (i5 == 1) {
                        i3 = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else if (i5 == 3) {
                        i3 = paddingLeft;
                        paddingLeft = childAt.getWidth() + paddingLeft;
                    } else if (i5 != 5) {
                        i3 = paddingLeft;
                        paddingLeft = paddingLeft;
                    } else {
                        i3 = (width - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    int left = (i3 + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                }
            }
        }
        AbstractC0396i abstractC0396i = this.f1457W;
        if (abstractC0396i != null) {
            abstractC0396i.mo7749a(i, f, i2);
        }
        List<AbstractC0396i> list = this.f1456V;
        if (list != null) {
            int size = list.size();
            for (int i6 = 0; i6 < size; i6++) {
                AbstractC0396i abstractC0396i2 = this.f1456V.get(i6);
                if (abstractC0396i2 != null) {
                    abstractC0396i2.mo7749a(i, f, i2);
                }
            }
        }
        this.f1454T = true;
    }

    /* renamed from: m */
    public final void m42645m(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1445K) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f1441C = motionEvent.getX(i);
            this.f1445K = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f1446L;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }

    /* renamed from: n */
    public boolean m42644n() {
        int i = this.f1463f;
        if (i > 0) {
            m42635w(i - 1, true);
            return true;
        }
        return false;
    }

    /* renamed from: o */
    public boolean m42643o() {
        AbstractC26640a abstractC26640a = this.f1462e;
        if (abstractC26640a == null || this.f1463f >= abstractC26640a.mo1537c() - 1) {
            return false;
        }
        m42635w(this.f1463f + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1453S = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f1467h0);
        Scroller scroller = this.f1470j;
        if (scroller != null && !scroller.isFinished()) {
            this.f1470j.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int width;
        int i;
        float f;
        super.onDraw(canvas);
        if (this.f1473m <= 0 || this.f1474n == null || this.f1459b.size() <= 0 || this.f1462e == null) {
            return;
        }
        int scrollX = getScrollX();
        float width2 = getWidth();
        float f2 = this.f1473m / width2;
        int i2 = 0;
        C0392e c0392e = this.f1459b.get(0);
        float f3 = c0392e.f1495e;
        int size = this.f1459b.size();
        int i3 = this.f1459b.get(size - 1).f1492b;
        for (int i4 = c0392e.f1492b; i4 < i3; i4++) {
            while (true) {
                i = c0392e.f1492b;
                if (i4 <= i || i2 >= size) {
                    break;
                }
                i2++;
                c0392e = this.f1459b.get(i2);
            }
            if (i4 == i) {
                float f4 = c0392e.f1495e;
                float f5 = c0392e.f1494d;
                f = (f4 + f5) * width2;
                f3 = f4 + f5 + f2;
            } else {
                float mo1535e = this.f1462e.mo1535e(i4);
                f = (f3 + mo1535e) * width2;
                f3 = mo1535e + f2 + f3;
            }
            if (this.f1473m + f > scrollX) {
                this.f1474n.setBounds(Math.round(f), this.f1475o, Math.round(this.f1473m + f), this.f1476p);
                this.f1474n.draw(canvas);
            }
            if (f > scrollX + width) {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            m42637u();
            return false;
        }
        if (action != 0) {
            if (this.f1484x) {
                return true;
            }
            if (this.f1485y) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f1443E = x;
            this.f1441C = x;
            float y = motionEvent.getY();
            this.f1444J = y;
            this.f1442D = y;
            this.f1445K = motionEvent.getPointerId(0);
            this.f1485y = false;
            this.f1471k = true;
            this.f1470j.computeScrollOffset();
            if (this.f1469i0 != 2 || Math.abs(this.f1470j.getFinalX() - this.f1470j.getCurrX()) <= this.f1450P) {
                m42653e(false);
                this.f1484x = false;
            } else {
                this.f1470j.abortAnimation();
                this.f1482v = false;
                m42640r(this.f1463f);
                this.f1484x = true;
                m42638t(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.f1445K;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f1441C;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f1444J);
                int i2 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                if (i2 != 0) {
                    float f2 = this.f1441C;
                    if (!((f2 < ((float) this.f1439A) && i2 > 0) || (f2 > ((float) (getWidth() - this.f1439A)) && f < 0.0f)) && m42654d(this, false, (int) f, (int) x2, (int) y2)) {
                        this.f1441C = x2;
                        this.f1442D = y2;
                        this.f1485y = true;
                        return false;
                    }
                }
                int i3 = this.f1440B;
                if (abs > i3 && abs * 0.5f > abs2) {
                    this.f1484x = true;
                    m42638t(true);
                    setScrollState(1);
                    float f3 = this.f1443E;
                    float f4 = this.f1440B;
                    this.f1441C = i2 > 0 ? f3 + f4 : f3 - f4;
                    this.f1442D = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > i3) {
                    this.f1485y = true;
                }
                if (this.f1484x && m42641q(x2)) {
                    AtomicInteger atomicInteger = C26614s.f74505a;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            m42645m(motionEvent);
        }
        if (this.f1446L == null) {
            this.f1446L = VelocityTracker.obtain();
        }
        this.f1446L.addMovement(motionEvent);
        return this.f1484x;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0143  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        C0393f c0393f;
        int i3;
        int i4;
        int i5;
        int i6;
        setMeasuredDimension(ViewGroup.getDefaultSize(0, i), ViewGroup.getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.f1439A = Math.min(measuredWidth / 10, this.f1486z);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i7 = 0;
        while (true) {
            int i8 = 1073741824;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            int i9 = paddingLeft;
            int i10 = measuredHeight;
            if (childAt.getVisibility() != 8) {
                C0393f c0393f2 = (C0393f) childAt.getLayoutParams();
                i9 = paddingLeft;
                i10 = measuredHeight;
                if (c0393f2 != null) {
                    i9 = paddingLeft;
                    i10 = measuredHeight;
                    if (c0393f2.f1496a) {
                        int i11 = c0393f2.f1497b;
                        int i12 = i11 & 7;
                        int i13 = i11 & 112;
                        boolean z = i13 == 48 || i13 == 80;
                        boolean z2 = true;
                        if (i12 != 3) {
                            z2 = i12 == 5;
                        }
                        int i14 = Integer.MIN_VALUE;
                        if (z) {
                            i3 = Integer.MIN_VALUE;
                            i14 = 1073741824;
                        } else {
                            i3 = z2 ? 1073741824 : Integer.MIN_VALUE;
                        }
                        int i15 = ((ViewGroup.LayoutParams) c0393f2).width;
                        if (i15 != -2) {
                            i5 = 1073741824;
                            i4 = i15 != -1 ? i15 : paddingLeft;
                        } else {
                            i4 = paddingLeft;
                            i5 = i14;
                        }
                        int i16 = ((ViewGroup.LayoutParams) c0393f2).height;
                        if (i16 != -2) {
                            i6 = i16 != -1 ? i16 : measuredHeight;
                        } else {
                            i8 = i3;
                            i6 = measuredHeight;
                        }
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i5), View.MeasureSpec.makeMeasureSpec(i6, i8));
                        if (z) {
                            i10 = measuredHeight - childAt.getMeasuredHeight();
                            i9 = paddingLeft;
                        } else {
                            i9 = paddingLeft;
                            i10 = measuredHeight;
                            if (z2) {
                                i9 = paddingLeft - childAt.getMeasuredWidth();
                                i10 = measuredHeight;
                            }
                        }
                    }
                }
            }
            i7++;
            paddingLeft = i9;
            measuredHeight = i10;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f1479s = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f1480t = true;
        m42640r(this.f1463f);
        this.f1480t = false;
        int childCount2 = getChildCount();
        for (int i17 = 0; i17 < childCount2; i17++) {
            View childAt2 = getChildAt(i17);
            if (childAt2.getVisibility() != 8 && ((c0393f = (C0393f) childAt2.getLayoutParams()) == null || !c0393f.f1496a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * c0393f.f1498c), 1073741824), this.f1479s);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C0392e m42649i;
        int childCount = getChildCount();
        int i4 = -1;
        if ((i & 2) != 0) {
            i4 = childCount;
            i3 = 0;
            i2 = 1;
        } else {
            i3 = childCount - 1;
            i2 = -1;
        }
        while (i3 != i4) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (m42649i = m42649i(childAt)) != null && m42649i.f1492b == this.f1463f && childAt.requestFocus(i, rect)) {
                return true;
            }
            i3 += i2;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f713a);
        AbstractC26640a abstractC26640a = this.f1462e;
        if (abstractC26640a != null) {
            abstractC26640a.mo1147i(savedState.f1488d, savedState.f1489e);
            m42634x(savedState.f1487c, false, true, 0);
            return;
        }
        this.f1464g = savedState.f1487c;
        this.f1466h = savedState.f1488d;
        this.f1468i = savedState.f1489e;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1487c = this.f1463f;
        AbstractC26640a abstractC26640a = this.f1462e;
        if (abstractC26640a != null) {
            savedState.f1488d = abstractC26640a.mo1146j();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f1473m;
            m42639s(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC26640a abstractC26640a;
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (abstractC26640a = this.f1462e) == null || abstractC26640a.mo1537c() == 0) {
            return false;
        }
        if (this.f1446L == null) {
            this.f1446L = VelocityTracker.obtain();
        }
        this.f1446L.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f1470j.abortAnimation();
            this.f1482v = false;
            m42640r(this.f1463f);
            float x = motionEvent.getX();
            this.f1443E = x;
            this.f1441C = x;
            float y = motionEvent.getY();
            this.f1444J = y;
            this.f1442D = y;
            this.f1445K = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f1484x) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f1445K);
                    if (findPointerIndex == -1) {
                        z = m42637u();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.f1441C);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.f1442D);
                        if (abs > this.f1440B && abs > abs2) {
                            this.f1484x = true;
                            m42638t(true);
                            float f = this.f1443E;
                            this.f1441C = x2 - f > 0.0f ? f + this.f1440B : f - this.f1440B;
                            this.f1442D = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.f1484x) {
                    z = false | m42641q(motionEvent.getX(motionEvent.findPointerIndex(this.f1445K)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f1441C = motionEvent.getX(actionIndex);
                    this.f1445K = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    m42645m(motionEvent);
                    this.f1441C = motionEvent.getX(motionEvent.findPointerIndex(this.f1445K));
                }
            } else if (this.f1484x) {
                m42636v(this.f1463f, true, 0, false);
                z = m42637u();
            }
        } else if (this.f1484x) {
            VelocityTracker velocityTracker = this.f1446L;
            velocityTracker.computeCurrentVelocity(1000, this.f1448N);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f1445K);
            this.f1482v = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            C0392e m42648j = m42648j();
            float f2 = clientWidth;
            int i = m42648j.f1492b;
            float f3 = ((scrollX / f2) - m42648j.f1495e) / (m42648j.f1494d + (this.f1473m / f2));
            if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.f1445K)) - this.f1443E)) <= this.f1449O || Math.abs(xVelocity) <= this.f1447M) {
                i += (int) (f3 + (i >= this.f1463f ? 0.4f : 0.6f));
            } else if (xVelocity <= 0) {
                i++;
            }
            int i2 = i;
            if (this.f1459b.size() > 0) {
                C0392e c0392e = this.f1459b.get(0);
                ArrayList<C0392e> arrayList = this.f1459b;
                i2 = Math.max(c0392e.f1492b, Math.min(i, arrayList.get(arrayList.size() - 1).f1492b));
            }
            m42634x(i2, true, true, xVelocity);
            z = m42637u();
        }
        if (!z) {
            return true;
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        postInvalidateOnAnimation();
        return true;
    }

    /* renamed from: p */
    public final boolean m42642p(int i) {
        int i2;
        if (this.f1459b.size() == 0) {
            if (this.f1453S) {
                return false;
            }
            this.f1454T = false;
            m42646l(0, 0.0f, 0);
            if (!this.f1454T) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            return false;
        }
        C0392e m42648j = m42648j();
        int clientWidth = getClientWidth();
        float f = this.f1473m;
        float f2 = clientWidth;
        float f3 = f / f2;
        int i3 = m42648j.f1492b;
        float f4 = ((i / f2) - m42648j.f1495e) / (m42648j.f1494d + f3);
        this.f1454T = false;
        m42646l(i3, f4, (int) ((clientWidth + i2) * f4));
        if (!this.f1454T) {
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        return true;
    }

    /* renamed from: q */
    public final boolean m42641q(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f1441C;
        this.f1441C = f;
        float scrollX = getScrollX() + (f2 - f);
        float clientWidth = getClientWidth();
        float f3 = this.f1477q * clientWidth;
        float f4 = this.f1478r * clientWidth;
        boolean z3 = false;
        C0392e c0392e = this.f1459b.get(0);
        ArrayList<C0392e> arrayList = this.f1459b;
        C0392e c0392e2 = arrayList.get(arrayList.size() - 1);
        if (c0392e.f1492b != 0) {
            f3 = c0392e.f1495e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (c0392e2.f1492b != this.f1462e.mo1537c() - 1) {
            f4 = c0392e2.f1495e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX >= f3) {
            z3 = false;
            f3 = scrollX;
            if (scrollX > f4) {
                z3 = false;
                if (z2) {
                    this.f1452R.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.f1451Q.onPull(Math.abs(f3 - scrollX) / clientWidth);
            z3 = true;
        }
        int i = (int) f3;
        this.f1441C = (f3 - i) + this.f1441C;
        scrollTo(i, getScrollY());
        m42642p(i);
        return z3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x009d, code lost:
        if (r0 == r0) goto L25;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m42640r(int r7) {
        /*
            Method dump skipped, instructions count: 2040
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m42640r(int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f1480t) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* renamed from: s */
    public final void m42639s(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.f1459b.isEmpty()) {
            C0392e m42647k = m42647k(this.f1463f);
            int min = (int) ((m42647k != null ? Math.min(m42647k.f1495e, this.f1478r) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min == getScrollX()) {
                return;
            }
            m42653e(false);
            scrollTo(min, getScrollY());
        } else if (!this.f1470j.isFinished()) {
            this.f1470j.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - paddingLeft) - paddingRight) + i3)), getScrollY());
        }
    }

    public void setAdapter(AbstractC26640a abstractC26640a) {
        AbstractC26640a abstractC26640a2 = this.f1462e;
        if (abstractC26640a2 != null) {
            synchronized (abstractC26640a2) {
                abstractC26640a2.f74571b = null;
            }
            this.f1462e.mo1144l(this);
            for (int i = 0; i < this.f1459b.size(); i++) {
                C0392e c0392e = this.f1459b.get(i);
                this.f1462e.mo1177a(this, c0392e.f1492b, c0392e.f1491a);
            }
            this.f1462e.mo1149b(this);
            this.f1459b.clear();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= getChildCount()) {
                    break;
                }
                int i4 = i3;
                if (!((C0393f) getChildAt(i3).getLayoutParams()).f1496a) {
                    removeViewAt(i3);
                    i4 = i3 - 1;
                }
                i2 = i4 + 1;
            }
            this.f1463f = 0;
            scrollTo(0, 0);
        }
        AbstractC26640a abstractC26640a3 = this.f1462e;
        this.f1462e = abstractC26640a;
        this.f1458a = 0;
        if (abstractC26640a != null) {
            if (this.f1472l == null) {
                this.f1472l = new C0397j();
            }
            AbstractC26640a abstractC26640a4 = this.f1462e;
            C0397j c0397j = this.f1472l;
            synchronized (abstractC26640a4) {
                abstractC26640a4.f74571b = c0397j;
            }
            this.f1482v = false;
            boolean z = this.f1453S;
            this.f1453S = true;
            this.f1458a = this.f1462e.mo1537c();
            if (this.f1464g >= 0) {
                this.f1462e.mo1147i(this.f1466h, this.f1468i);
                m42634x(this.f1464g, false, true, 0);
                this.f1464g = -1;
                this.f1466h = null;
                this.f1468i = null;
            } else if (!z) {
                m42640r(this.f1463f);
            } else {
                requestLayout();
            }
        }
        List<AbstractC0395h> list = this.f1465g0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f1465g0.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f1465g0.get(i5).m42633a(this, abstractC26640a3, abstractC26640a);
        }
    }

    public void setCurrentItem(int i) {
        this.f1482v = false;
        m42634x(i, !this.f1453S, false, 0);
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i < 1) {
            i2 = 1;
        }
        if (i2 != this.f1483w) {
            this.f1483w = i2;
            m42640r(this.f1463f);
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AbstractC0396i abstractC0396i) {
        this.f1457W = abstractC0396i;
    }

    public void setPageMargin(int i) {
        int i2 = this.f1473m;
        this.f1473m = i;
        int width = getWidth();
        m42639s(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        Context context = getContext();
        Object obj = C26467a.f74235a;
        setPageMarginDrawable(C26467a.C26470c.m1789b(context, i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f1474n = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i) {
        if (this.f1469i0 == i) {
            return;
        }
        this.f1469i0 = i;
        AbstractC0396i abstractC0396i = this.f1457W;
        if (abstractC0396i != null) {
            abstractC0396i.mo1514b(i);
        }
        List<AbstractC0396i> list = this.f1456V;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0396i abstractC0396i2 = this.f1456V.get(i2);
            if (abstractC0396i2 != null) {
                abstractC0396i2.mo1514b(i);
            }
        }
    }

    /* renamed from: t */
    public final void m42638t(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: u */
    public final boolean m42637u() {
        this.f1445K = -1;
        boolean z = false;
        this.f1484x = false;
        this.f1485y = false;
        VelocityTracker velocityTracker = this.f1446L;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1446L = null;
        }
        this.f1451Q.onRelease();
        this.f1452R.onRelease();
        if (this.f1451Q.isFinished() || this.f1452R.isFinished()) {
            z = true;
        }
        return z;
    }

    /* renamed from: v */
    public final void m42636v(int i, boolean z, int i2, boolean z2) {
        int i3;
        C0392e m42647k = m42647k(i);
        int max = m42647k != null ? (int) (Math.max(this.f1477q, Math.min(m42647k.f1495e, this.f1478r)) * getClientWidth()) : 0;
        if (!z) {
            if (z2) {
                m42651g(i);
            }
            m42653e(false);
            scrollTo(max, 0);
            m42642p(max);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.f1470j;
            if (scroller != null && !scroller.isFinished()) {
                i3 = this.f1471k ? this.f1470j.getCurrX() : this.f1470j.getStartX();
                this.f1470j.abortAnimation();
                setScrollingCacheEnabled(false);
            } else {
                i3 = getScrollX();
            }
            int scrollY = getScrollY();
            int i4 = max - i3;
            int i5 = 0 - scrollY;
            if (i4 == 0 && i5 == 0) {
                m42653e(false);
                m42640r(this.f1463f);
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i6 = clientWidth / 2;
                float abs = Math.abs(i4);
                float f = clientWidth;
                float f2 = i6;
                float sin = (float) Math.sin((Math.min(1.0f, (abs * 1.0f) / f) - 0.5f) * 0.47123894f);
                int abs2 = Math.abs(i2);
                int min = Math.min(abs2 > 0 ? Math.round(Math.abs(((sin * f2) + f2) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i4) / ((this.f1462e.mo1535e(this.f1463f) * f) + this.f1473m)) + 1.0f) * 100.0f), 600);
                this.f1471k = false;
                this.f1470j.startScroll(i3, scrollY, i4, i5, min);
                AtomicInteger atomicInteger = C26614s.f74505a;
                postInvalidateOnAnimation();
            }
        }
        if (!z2) {
            return;
        }
        m42651g(i);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1474n;
    }

    /* renamed from: w */
    public void m42635w(int i, boolean z) {
        this.f1482v = false;
        m42634x(i, z, false, 0);
    }

    /* renamed from: x */
    public void m42634x(int i, boolean z, boolean z2, int i2) {
        int i3;
        AbstractC26640a abstractC26640a = this.f1462e;
        if (abstractC26640a == null || abstractC26640a.mo1537c() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f1463f != i || this.f1459b.size() == 0) {
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f1462e.mo1537c()) {
                    i3 = this.f1462e.mo1537c() - 1;
                }
            }
            int i4 = this.f1483w;
            int i5 = this.f1463f;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f1459b.size(); i6++) {
                    this.f1459b.get(i6).f1493c = true;
                }
            }
            boolean z3 = false;
            if (this.f1463f != i3) {
                z3 = true;
            }
            if (!this.f1453S) {
                m42640r(i3);
                m42636v(i3, z, i2, z3);
                return;
            }
            this.f1463f = i3;
            if (z3) {
                m42651g(i3);
            }
            requestLayout();
        } else {
            setScrollingCacheEnabled(false);
        }
    }
}
