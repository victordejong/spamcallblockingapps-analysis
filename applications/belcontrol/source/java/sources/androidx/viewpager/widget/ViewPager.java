package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
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
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager.class */
public class ViewPager extends ViewGroup {

    /* renamed from: h0 */
    public static final int[] f1559h0 = {16842931};

    /* renamed from: i0 */
    public static final Comparator<C0206f> f1560i0 = new C0202a();

    /* renamed from: j0 */
    public static final Interpolator f1561j0 = new animationInterpolatorC0203b();

    /* renamed from: k0 */
    public static final C0211m f1562k0 = new C0211m();

    /* renamed from: A */
    public boolean f1563A;

    /* renamed from: B */
    public int f1564B;

    /* renamed from: C */
    public int f1565C;

    /* renamed from: D */
    public int f1566D;

    /* renamed from: E */
    public float f1567E;

    /* renamed from: F */
    public float f1568F;

    /* renamed from: G */
    public float f1569G;

    /* renamed from: H */
    public float f1570H;

    /* renamed from: J */
    public VelocityTracker f1572J;

    /* renamed from: K */
    public int f1573K;

    /* renamed from: L */
    public int f1574L;

    /* renamed from: M */
    public int f1575M;

    /* renamed from: N */
    public int f1576N;

    /* renamed from: O */
    public boolean f1577O;

    /* renamed from: P */
    public EdgeEffect f1578P;

    /* renamed from: Q */
    public EdgeEffect f1579Q;

    /* renamed from: S */
    public boolean f1581S;

    /* renamed from: T */
    public int f1582T;

    /* renamed from: U */
    public List<AbstractC0208i> f1583U;

    /* renamed from: V */
    public AbstractC0208i f1584V;

    /* renamed from: W */
    public AbstractC0208i f1585W;

    /* renamed from: a */
    public int f1586a;

    /* renamed from: a0 */
    public List<AbstractC0207h> f1587a0;

    /* renamed from: b0 */
    public AbstractC0209j f1589b0;

    /* renamed from: c0 */
    public int f1591c0;

    /* renamed from: d0 */
    public int f1593d0;

    /* renamed from: e0 */
    public ArrayList<View> f1594e0;

    /* renamed from: f */
    public g40 f1595f;

    /* renamed from: g */
    public int f1597g;

    /* renamed from: l */
    private Scroller f1602l;

    /* renamed from: m */
    public boolean f1603m;

    /* renamed from: n */
    public C0210k f1604n;

    /* renamed from: o */
    public int f1605o;

    /* renamed from: p */
    public Drawable f1606p;

    /* renamed from: q */
    public int f1607q;

    /* renamed from: r */
    public int f1608r;

    /* renamed from: u */
    public int f1611u;

    /* renamed from: v */
    public boolean f1612v;

    /* renamed from: w */
    public boolean f1613w;

    /* renamed from: x */
    public boolean f1614x;

    /* renamed from: z */
    public boolean f1616z;

    /* renamed from: b */
    public final ArrayList<C0206f> f1588b = new ArrayList<>();

    /* renamed from: c */
    public final C0206f f1590c = new C0206f();

    /* renamed from: d */
    public final Rect f1592d = new Rect();

    /* renamed from: h */
    public int f1599h = -1;

    /* renamed from: j */
    public Parcelable f1600j = null;

    /* renamed from: k */
    public ClassLoader f1601k = null;

    /* renamed from: s */
    public float f1609s = -3.4028235E38f;

    /* renamed from: t */
    public float f1610t = Float.MAX_VALUE;

    /* renamed from: y */
    public int f1615y = 1;

    /* renamed from: I */
    public int f1571I = -1;

    /* renamed from: R */
    public boolean f1580R = true;

    /* renamed from: f0 */
    public final Runnable f1596f0 = new RunnableC0204c();

    /* renamed from: g0 */
    public int f1598g0 = 0;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f1617a;

        /* renamed from: b */
        public int f1618b;

        /* renamed from: c */
        public float f1619c = 0.0f;

        /* renamed from: d */
        public boolean f1620d;

        /* renamed from: e */
        public int f1621e;

        /* renamed from: f */
        public int f1622f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f1559h0);
            this.f1618b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    public static final class C0202a implements Comparator<C0206f> {
        /* renamed from: a */
        public int compare(C0206f c0206f, C0206f c0206f2) {
            return c0206f.f1625b - c0206f2.f1625b;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    public static final class animationInterpolatorC0203b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    public class RunnableC0204c implements Runnable {
        public RunnableC0204c() {
            ViewPager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.m5981E();
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public @interface AbstractC0205e {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public static class C0206f {

        /* renamed from: a */
        public Object f1624a;

        /* renamed from: b */
        public int f1625b;

        /* renamed from: c */
        public boolean f1626c;

        /* renamed from: d */
        public float f1627d;

        /* renamed from: e */
        public float f1628e;
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public interface AbstractC0207h {
        void onAdapterChanged(ViewPager viewPager, g40 g40Var, g40 g40Var2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public interface AbstractC0208i {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$j.class */
    public interface AbstractC0209j {
        /* renamed from: a */
        void m5937a(View view, float f);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$k */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$k.class */
    public class C0210k extends DataSetObserver {
        public C0210k() {
            ViewPager.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m5960h();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m5960h();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$m */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$m.class */
    public static class C0211m implements Comparator<View> {
        /* renamed from: a */
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z = layoutParams.f1617a;
            if (z != layoutParams2.f1617a) {
                return z ? 1 : -1;
            }
            return layoutParams.f1621e - layoutParams2.f1621e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        m5946v();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m5946v();
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f1613w != z) {
            this.f1613w = z;
        }
    }

    /* renamed from: w */
    public static boolean m5945w(View view) {
        return view.getClass().getAnnotation(AbstractC0205e.class) != null;
    }

    /* renamed from: A */
    public boolean m5985A() {
        int i = this.f1597g;
        if (i > 0) {
            setCurrentItem(i - 1, true);
            return true;
        }
        return false;
    }

    /* renamed from: B */
    public boolean m5984B() {
        g40 g40Var = this.f1595f;
        if (g40Var == null || this.f1597g >= g40Var.e() - 1) {
            return false;
        }
        setCurrentItem(this.f1597g + 1, true);
        return true;
    }

    /* renamed from: C */
    public final boolean m5983C(int i) {
        int i2;
        if (this.f1588b.size() == 0) {
            if (this.f1580R) {
                return false;
            }
            this.f1581S = false;
            m5943y(0, 0.0f, 0);
            if (!this.f1581S) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            return false;
        }
        C0206f m5948t = m5948t();
        int clientWidth = getClientWidth();
        float f = this.f1605o;
        float f2 = clientWidth;
        float f3 = f / f2;
        int i3 = m5948t.f1625b;
        float f4 = ((i / f2) - m5948t.f1628e) / (m5948t.f1627d + f3);
        this.f1581S = false;
        m5943y(i3, f4, (int) ((clientWidth + i2) * f4));
        if (!this.f1581S) {
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        return true;
    }

    /* renamed from: D */
    public final boolean m5982D(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f1567E;
        this.f1567E = f;
        float scrollX = getScrollX() + (f2 - f);
        float clientWidth = getClientWidth();
        float f3 = this.f1609s * clientWidth;
        float f4 = this.f1610t * clientWidth;
        boolean z3 = false;
        C0206f c0206f = this.f1588b.get(0);
        ArrayList<C0206f> arrayList = this.f1588b;
        C0206f c0206f2 = arrayList.get(arrayList.size() - 1);
        if (c0206f.f1625b != 0) {
            f3 = c0206f.f1628e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (c0206f2.f1625b != this.f1595f.e() - 1) {
            f4 = c0206f2.f1628e * clientWidth;
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
                    this.f1579Q.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.f1578P.onPull(Math.abs(f3 - scrollX) / clientWidth);
            z3 = true;
        }
        int i = (int) f3;
        this.f1567E += f3 - i;
        scrollTo(i, getScrollY());
        m5983C(i);
        return z3;
    }

    /* renamed from: E */
    public void m5981E() {
        m5980F(this.f1597g);
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x033a, code lost:
        if (r8 < r6.f1588b.size()) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0365, code lost:
        if (r8 < r6.f1588b.size()) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r0 == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0196, code lost:
        if (r14 >= 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01c4, code lost:
        if (r14 >= 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01eb, code lost:
        if (r14 >= 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01ee, code lost:
        r13 = r6.f1588b.get(r14);
        r22 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0203, code lost:
        r13 = null;
        r14 = r20;
        r7 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02ef, code lost:
        if (r8 < r6.f1588b.size()) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02f2, code lost:
        r13 = r6.f1588b.get(r8);
        r22 = r19;
        r14 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0309, code lost:
        r13 = null;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5980F(int r7) {
        /*
            Method dump skipped, instructions count: 1253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m5980F(int):void");
    }

    /* renamed from: G */
    public final void m5979G(int i, int i2, int i3, int i4) {
        int min;
        if (i2 <= 0 || this.f1588b.isEmpty()) {
            C0206f m5947u = m5947u(this.f1597g);
            min = (int) ((m5947u != null ? Math.min(m5947u.f1628e, this.f1610t) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min == getScrollX()) {
                return;
            }
            m5961g(false);
        } else if (!this.f1602l.isFinished()) {
            this.f1602l.setFinalX(getCurrentItem() * getClientWidth());
            return;
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            min = (int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - paddingLeft) - paddingRight) + i3));
        }
        scrollTo(min, getScrollY());
    }

    /* renamed from: H */
    public final void m5978H() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < getChildCount()) {
                int i3 = i2;
                if (!((LayoutParams) getChildAt(i2).getLayoutParams()).f1617a) {
                    removeViewAt(i2);
                    i3 = i2 - 1;
                }
                i = i3 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: I */
    public void m5977I(AbstractC0207h abstractC0207h) {
        List<AbstractC0207h> list = this.f1587a0;
        if (list != null) {
            list.remove(abstractC0207h);
        }
    }

    /* renamed from: J */
    public void m5976J(AbstractC0208i abstractC0208i) {
        List<AbstractC0208i> list = this.f1583U;
        if (list != null) {
            list.remove(abstractC0208i);
        }
    }

    /* renamed from: K */
    public final void m5975K(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: L */
    public final boolean m5974L() {
        this.f1571I = -1;
        m5953o();
        this.f1578P.onRelease();
        this.f1579Q.onRelease();
        return this.f1578P.isFinished() || this.f1579Q.isFinished();
    }

    /* renamed from: M */
    public final void m5973M(int i, boolean z, int i2, boolean z2) {
        C0206f m5947u = m5947u(i);
        int clientWidth = m5947u != null ? (int) (getClientWidth() * Math.max(this.f1609s, Math.min(m5947u.f1628e, this.f1610t))) : 0;
        if (z) {
            m5969Q(clientWidth, 0, i2);
            if (!z2) {
                return;
            }
            m5957k(i);
            return;
        }
        if (z2) {
            m5957k(i);
        }
        m5961g(false);
        scrollTo(clientWidth, 0);
        m5983C(clientWidth);
    }

    /* renamed from: N */
    public void m5972N(int i, boolean z, boolean z2) {
        m5971O(i, z, z2, 0);
    }

    /* renamed from: O */
    public void m5971O(int i, boolean z, boolean z2, int i2) {
        int i3;
        g40 g40Var = this.f1595f;
        if (g40Var == null || g40Var.e() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f1597g != i || this.f1588b.size() == 0) {
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f1595f.e()) {
                    i3 = this.f1595f.e() - 1;
                }
            }
            int i4 = this.f1615y;
            int i5 = this.f1597g;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f1588b.size(); i6++) {
                    this.f1588b.get(i6).f1626c = true;
                }
            }
            boolean z3 = false;
            if (this.f1597g != i3) {
                z3 = true;
            }
            if (!this.f1580R) {
                m5980F(i3);
                m5973M(i3, z, i2, z3);
                return;
            }
            this.f1597g = i3;
            if (z3) {
                m5957k(i3);
            }
            requestLayout();
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    /* renamed from: P */
    public AbstractC0208i m5970P(AbstractC0208i abstractC0208i) {
        AbstractC0208i abstractC0208i2 = this.f1585W;
        this.f1585W = abstractC0208i;
        return abstractC0208i2;
    }

    /* renamed from: Q */
    public void m5969Q(int i, int i2, int i3) {
        int i4;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f1602l;
        if (scroller != null && !scroller.isFinished()) {
            i4 = this.f1603m ? this.f1602l.getCurrX() : this.f1602l.getStartX();
            this.f1602l.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i4 = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m5961g(false);
            m5981E();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float abs = Math.abs(i5);
        float f = clientWidth;
        float f2 = i7;
        float m5955m = m5955m(Math.min(1.0f, (abs * 1.0f) / f));
        int abs2 = Math.abs(i3);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f2 + (m5955m * f2)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i5) / ((f * this.f1595f.h(this.f1597g)) + this.f1605o)) + 1.0f) * 100.0f), 600);
        this.f1603m = false;
        this.f1602l.startScroll(i4, scrollY, i5, i6, min);
        jb.d0(this);
    }

    /* renamed from: R */
    public final void m5968R() {
        if (this.f1593d0 != 0) {
            ArrayList<View> arrayList = this.f1594e0;
            if (arrayList == null) {
                this.f1594e0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f1594e0.add(getChildAt(i));
            }
            Collections.sort(this.f1594e0, f1562k0);
        }
    }

    /* renamed from: a */
    public C0206f m5967a(int i, int i2) {
        C0206f c0206f = new C0206f();
        c0206f.f1625b = i;
        c0206f.f1624a = this.f1595f.j(this, i);
        c0206f.f1627d = this.f1595f.h(i);
        if (i2 < 0 || i2 >= this.f1588b.size()) {
            this.f1588b.add(c0206f);
        } else {
            this.f1588b.add(i2, c0206f);
        }
        return c0206f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C0206f m5949s;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (m5949s = m5949s(childAt)) != null && m5949s.f1625b == this.f1597g) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        C0206f m5949s;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m5949s = m5949s(childAt)) != null && m5949s.f1625b == this.f1597g) {
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
        LayoutParams layoutParams3 = (LayoutParams) layoutParams2;
        boolean m5945w = layoutParams3.f1617a | m5945w(view);
        layoutParams3.f1617a = m5945w;
        if (!this.f1612v) {
            super.addView(view, i, layoutParams2);
        } else if (layoutParams3 != null && m5945w) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            layoutParams3.f1620d = true;
            addViewInLayout(view, i, layoutParams2);
        }
    }

    /* renamed from: b */
    public void m5966b(AbstractC0207h abstractC0207h) {
        if (this.f1587a0 == null) {
            this.f1587a0 = new ArrayList();
        }
        this.f1587a0.add(abstractC0207h);
    }

    /* renamed from: c */
    public void m5965c(AbstractC0208i abstractC0208i) {
        if (this.f1583U == null) {
            this.f1583U = new ArrayList();
        }
        this.f1583U.add(abstractC0208i);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = false;
        if (this.f1595f == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX > ((int) (clientWidth * this.f1609s))) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i > 0) {
            z2 = false;
            if (scrollX < ((int) (clientWidth * this.f1610t))) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f1603m = true;
        if (this.f1602l.isFinished() || !this.f1602l.computeScrollOffset()) {
            m5961g(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f1602l.getCurrX();
        int currY = this.f1602l.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m5983C(currX)) {
                this.f1602l.abortAnimation();
                scrollTo(0, currY);
            }
        }
        jb.d0(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0172  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5964d(int r6) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m5964d(int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m5952p(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C0206f m5949s;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m5949s = m5949s(childAt)) != null && m5949s.f1625b == this.f1597g && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        g40 g40Var;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (g40Var = this.f1595f) != null && g40Var.e() > 1)) {
            if (!this.f1578P.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f1609s * width);
                this.f1578P.setSize(height, width);
                z2 = false | this.f1578P.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f1579Q.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f1610t + 1.0f)) * width2);
                this.f1579Q.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f1579Q.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f1578P.finish();
            this.f1579Q.finish();
        }
        if (z) {
            jb.d0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1606p;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* renamed from: e */
    public final void m5963e(C0206f c0206f, int i, C0206f c0206f2) {
        int i2;
        int i3;
        C0206f c0206f3;
        int i4;
        float f;
        C0206f c0206f4;
        float f2;
        int e = this.f1595f.e();
        int clientWidth = getClientWidth();
        float f3 = clientWidth > 0 ? this.f1605o / clientWidth : 0.0f;
        if (c0206f2 != null) {
            int i5 = c0206f2.f1625b;
            int i6 = c0206f.f1625b;
            if (i5 < i6) {
                int i7 = 0;
                float f4 = c0206f2.f1628e + c0206f2.f1627d;
                float f5 = f3;
                while (true) {
                    float f6 = f4 + f5;
                    int i8 = i5 + 1;
                    if (i8 > c0206f.f1625b || i7 >= this.f1588b.size()) {
                        break;
                    }
                    while (true) {
                        c0206f4 = this.f1588b.get(i7);
                        i5 = i8;
                        f2 = f6;
                        if (i8 <= c0206f4.f1625b) {
                            break;
                        }
                        i5 = i8;
                        f2 = f6;
                        if (i7 >= this.f1588b.size() - 1) {
                            break;
                        }
                        i7++;
                    }
                    while (i5 < c0206f4.f1625b) {
                        f2 += this.f1595f.h(i5) + f3;
                        i5++;
                    }
                    c0206f4.f1628e = f2;
                    f4 = f2;
                    f5 = c0206f4.f1627d + f3;
                }
            } else if (i5 > i6) {
                int size = this.f1588b.size() - 1;
                float f7 = c0206f2.f1628e;
                for (int i9 = i5 - 1; i9 >= c0206f.f1625b && size >= 0; i9 = i4 - 1) {
                    while (true) {
                        c0206f3 = this.f1588b.get(size);
                        i4 = i9;
                        f = f7;
                        if (i9 >= c0206f3.f1625b) {
                            break;
                        }
                        i4 = i9;
                        f = f7;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                    }
                    while (i4 > c0206f3.f1625b) {
                        f -= this.f1595f.h(i4) + f3;
                        i4--;
                    }
                    f7 = f - (c0206f3.f1627d + f3);
                    c0206f3.f1628e = f7;
                }
            }
        }
        int size2 = this.f1588b.size();
        float f8 = c0206f.f1628e;
        int i10 = c0206f.f1625b;
        int i11 = i10 - 1;
        this.f1609s = i10 == 0 ? f8 : -3.4028235E38f;
        int i12 = e - 1;
        this.f1610t = i10 == i12 ? (c0206f.f1627d + f8) - 1.0f : Float.MAX_VALUE;
        int i13 = i - 1;
        while (i13 >= 0) {
            C0206f c0206f5 = this.f1588b.get(i13);
            while (true) {
                i3 = c0206f5.f1625b;
                if (i11 <= i3) {
                    break;
                }
                f8 -= this.f1595f.h(i11) + f3;
                i11--;
            }
            f8 -= c0206f5.f1627d + f3;
            c0206f5.f1628e = f8;
            if (i3 == 0) {
                this.f1609s = f8;
            }
            i13--;
            i11--;
        }
        float f9 = c0206f.f1628e + c0206f.f1627d + f3;
        int i14 = i + 1;
        int i15 = c0206f.f1625b + 1;
        while (i14 < size2) {
            C0206f c0206f6 = this.f1588b.get(i14);
            while (true) {
                i2 = c0206f6.f1625b;
                if (i15 >= i2) {
                    break;
                }
                f9 += this.f1595f.h(i15) + f3;
                i15++;
            }
            if (i2 == i12) {
                this.f1610t = (c0206f6.f1627d + f9) - 1.0f;
            }
            c0206f6.f1628e = f9;
            f9 += c0206f6.f1627d + f3;
            i14++;
            i15++;
        }
    }

    /* renamed from: f */
    public boolean m5962f(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m5962f(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    /* renamed from: g */
    public final void m5961g(boolean z) {
        boolean z2 = this.f1598g0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f1602l.isFinished()) {
                this.f1602l.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f1602l.getCurrX();
                int currY = this.f1602l.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m5983C(currX);
                    }
                }
            }
        }
        this.f1614x = false;
        for (int i = 0; i < this.f1588b.size(); i++) {
            C0206f c0206f = this.f1588b.get(i);
            if (c0206f.f1626c) {
                c0206f.f1626c = false;
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                jb.f0(this, this.f1596f0);
            } else {
                this.f1596f0.run();
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public g40 getAdapter() {
        return this.f1595f;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.f1593d0 == 2) {
            i3 = (i - 1) - i2;
        }
        return ((LayoutParams) this.f1594e0.get(i3).getLayoutParams()).f1622f;
    }

    public int getCurrentItem() {
        return this.f1597g;
    }

    public int getOffscreenPageLimit() {
        return this.f1615y;
    }

    public int getPageMargin() {
        return this.f1605o;
    }

    /* renamed from: h */
    public void m5960h() {
        boolean z;
        int i;
        int i2;
        int e = this.f1595f.e();
        this.f1586a = e;
        boolean z2 = this.f1588b.size() < (this.f1615y * 2) + 1 && this.f1588b.size() < e;
        int i3 = this.f1597g;
        int i4 = 0;
        boolean z3 = false;
        boolean z4 = z2;
        while (i4 < this.f1588b.size()) {
            C0206f c0206f = this.f1588b.get(i4);
            int f = this.f1595f.f(c0206f.f1624a);
            if (f == -1) {
                i2 = i3;
                i = i4;
                z = z3;
            } else {
                if (f == -2) {
                    this.f1588b.remove(i4);
                    int i5 = i4 - 1;
                    boolean z5 = z3;
                    if (!z3) {
                        this.f1595f.s(this);
                        z5 = true;
                    }
                    this.f1595f.b(this, c0206f.f1625b, c0206f.f1624a);
                    int i6 = this.f1597g;
                    i4 = i5;
                    z3 = z5;
                    if (i6 == c0206f.f1625b) {
                        i3 = Math.max(0, Math.min(i6, e - 1));
                        z3 = z5;
                        i4 = i5;
                    }
                } else {
                    int i7 = c0206f.f1625b;
                    i2 = i3;
                    i = i4;
                    z = z3;
                    if (i7 != f) {
                        if (i7 == this.f1597g) {
                            i3 = f;
                        }
                        c0206f.f1625b = f;
                    }
                }
                z4 = true;
                i2 = i3;
                i = i4;
                z = z3;
            }
            i4 = i + 1;
            i3 = i2;
            z3 = z;
        }
        if (z3) {
            this.f1595f.d(this);
        }
        Collections.sort(this.f1588b, f1560i0);
        if (z4) {
            int childCount = getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i8).getLayoutParams();
                if (!layoutParams.f1617a) {
                    layoutParams.f1619c = 0.0f;
                }
            }
            m5972N(i3, false, true);
            requestLayout();
        }
    }

    /* renamed from: i */
    public final int m5959i(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f1575M || Math.abs(i2) <= this.f1573K) {
            i += (int) (f + (i >= this.f1597g ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        int i4 = i;
        if (this.f1588b.size() > 0) {
            C0206f c0206f = this.f1588b.get(0);
            ArrayList<C0206f> arrayList = this.f1588b;
            i4 = Math.max(c0206f.f1625b, Math.min(i, arrayList.get(arrayList.size() - 1).f1625b));
        }
        return i4;
    }

    /* renamed from: j */
    public final void m5958j(int i, float f, int i2) {
        AbstractC0208i abstractC0208i = this.f1584V;
        if (abstractC0208i != null) {
            abstractC0208i.onPageScrolled(i, f, i2);
        }
        List<AbstractC0208i> list = this.f1583U;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0208i abstractC0208i2 = this.f1583U.get(i3);
                if (abstractC0208i2 != null) {
                    abstractC0208i2.onPageScrolled(i, f, i2);
                }
            }
        }
        AbstractC0208i abstractC0208i3 = this.f1585W;
        if (abstractC0208i3 != null) {
            abstractC0208i3.onPageScrolled(i, f, i2);
        }
    }

    /* renamed from: k */
    public final void m5957k(int i) {
        AbstractC0208i abstractC0208i = this.f1584V;
        if (abstractC0208i != null) {
            abstractC0208i.onPageSelected(i);
        }
        List<AbstractC0208i> list = this.f1583U;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0208i abstractC0208i2 = this.f1583U.get(i2);
                if (abstractC0208i2 != null) {
                    abstractC0208i2.onPageSelected(i);
                }
            }
        }
        AbstractC0208i abstractC0208i3 = this.f1585W;
        if (abstractC0208i3 != null) {
            abstractC0208i3.onPageSelected(i);
        }
    }

    /* renamed from: l */
    public final void m5956l(int i) {
        AbstractC0208i abstractC0208i = this.f1584V;
        if (abstractC0208i != null) {
            abstractC0208i.onPageScrollStateChanged(i);
        }
        List<AbstractC0208i> list = this.f1583U;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0208i abstractC0208i2 = this.f1583U.get(i2);
                if (abstractC0208i2 != null) {
                    abstractC0208i2.onPageScrollStateChanged(i);
                }
            }
        }
        AbstractC0208i abstractC0208i3 = this.f1585W;
        if (abstractC0208i3 != null) {
            abstractC0208i3.onPageScrollStateChanged(i);
        }
    }

    /* renamed from: m */
    public float m5955m(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: n */
    public final void m5954n(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.f1591c0 : 0, null);
        }
    }

    /* renamed from: o */
    public final void m5953o() {
        this.f1616z = false;
        this.f1563A = false;
        VelocityTracker velocityTracker = this.f1572J;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1572J = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1580R = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f1596f0);
        Scroller scroller = this.f1602l;
        if (scroller != null && !scroller.isFinished()) {
            this.f1602l.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int width;
        int i;
        float f;
        super.onDraw(canvas);
        if (this.f1605o <= 0 || this.f1606p == null || this.f1588b.size() <= 0 || this.f1595f == null) {
            return;
        }
        int scrollX = getScrollX();
        float width2 = getWidth();
        float f2 = this.f1605o / width2;
        int i2 = 0;
        C0206f c0206f = this.f1588b.get(0);
        float f3 = c0206f.f1628e;
        int size = this.f1588b.size();
        int i3 = this.f1588b.get(size - 1).f1625b;
        for (int i4 = c0206f.f1625b; i4 < i3; i4++) {
            while (true) {
                i = c0206f.f1625b;
                if (i4 <= i || i2 >= size) {
                    break;
                }
                i2++;
                c0206f = this.f1588b.get(i2);
            }
            if (i4 == i) {
                float f4 = c0206f.f1628e;
                float f5 = c0206f.f1627d;
                f = (f4 + f5) * width2;
                f3 = f4 + f5 + f2;
            } else {
                float h = this.f1595f.h(i4);
                f = (f3 + h) * width2;
                f3 += h + f2;
            }
            if (this.f1605o + f > scrollX) {
                this.f1606p.setBounds(Math.round(f), this.f1607q, Math.round(this.f1605o + f), this.f1608r);
                this.f1606p.draw(canvas);
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
            m5974L();
            return false;
        }
        if (action != 0) {
            if (this.f1616z) {
                return true;
            }
            if (this.f1563A) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f1569G = x;
            this.f1567E = x;
            float y = motionEvent.getY();
            this.f1570H = y;
            this.f1568F = y;
            this.f1571I = motionEvent.getPointerId(0);
            this.f1563A = false;
            this.f1603m = true;
            this.f1602l.computeScrollOffset();
            if (this.f1598g0 != 2 || Math.abs(this.f1602l.getFinalX() - this.f1602l.getCurrX()) <= this.f1576N) {
                m5961g(false);
                this.f1616z = false;
            } else {
                this.f1602l.abortAnimation();
                this.f1614x = false;
                m5981E();
                this.f1616z = true;
                m5975K(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.f1571I;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f1567E;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f1570H);
                int i2 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                if (i2 != 0 && !m5944x(this.f1567E, f) && m5962f(this, false, (int) f, (int) x2, (int) y2)) {
                    this.f1567E = x2;
                    this.f1568F = y2;
                    this.f1563A = true;
                    return false;
                }
                int i3 = this.f1566D;
                if (abs > i3 && abs * 0.5f > abs2) {
                    this.f1616z = true;
                    m5975K(true);
                    setScrollState(1);
                    float f2 = this.f1569G;
                    float f3 = this.f1566D;
                    this.f1567E = i2 > 0 ? f2 + f3 : f2 - f3;
                    this.f1568F = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > i3) {
                    this.f1563A = true;
                }
                if (this.f1616z && m5982D(x2)) {
                    jb.d0(this);
                }
            }
        } else if (action == 6) {
            m5942z(motionEvent);
        }
        if (this.f1572J == null) {
            this.f1572J = VelocityTracker.obtain();
        }
        this.f1572J.addMovement(motionEvent);
        return this.f1616z;
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

    /* JADX WARN: Removed duplicated region for block: B:32:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C0206f m5949s;
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
            if (childAt.getVisibility() == 0 && (m5949s = m5949s(childAt)) != null && m5949s.f1625b == this.f1597g && childAt.requestFocus(i, rect)) {
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
        super.onRestoreInstanceState(savedState.getSuperState());
        g40 g40Var = this.f1595f;
        if (g40Var != null) {
            g40Var.m(savedState.b, savedState.c);
            m5972N(savedState.a, false, true);
            return;
        }
        this.f1599h = savedState.a;
        this.f1600j = savedState.b;
        this.f1601k = savedState.c;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = this.f1597g;
        g40 g40Var = this.f1595f;
        if (g40Var != null) {
            savedState.b = g40Var.n();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f1605o;
            m5979G(i, i3, i5, i5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public boolean m5952p(KeyEvent keyEvent) {
        boolean z;
        int i;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 21) {
                if (keyCode != 22) {
                    if (keyCode == 61) {
                        if (keyEvent.hasNoModifiers()) {
                            z = m5964d(2);
                        } else if (keyEvent.hasModifiers(1)) {
                            z = m5964d(1);
                        }
                    }
                } else if (keyEvent.hasModifiers(2)) {
                    z = m5984B();
                } else {
                    i = 66;
                    z = m5964d(i);
                }
            } else if (keyEvent.hasModifiers(2)) {
                z = m5985A();
            } else {
                i = 17;
                z = m5964d(i);
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: q */
    public final Rect m5951q(Rect rect, View view) {
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
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    /* renamed from: r */
    public C0206f m5950r(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return m5949s(view);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f1612v) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* renamed from: s */
    public C0206f m5949s(View view) {
        for (int i = 0; i < this.f1588b.size(); i++) {
            C0206f c0206f = this.f1588b.get(i);
            if (this.f1595f.k(view, c0206f.f1624a)) {
                return c0206f;
            }
        }
        return null;
    }

    public void setAdapter(g40 g40Var) {
        g40 g40Var2 = this.f1595f;
        if (g40Var2 != null) {
            g40Var2.q((DataSetObserver) null);
            this.f1595f.s(this);
            for (int i = 0; i < this.f1588b.size(); i++) {
                C0206f c0206f = this.f1588b.get(i);
                this.f1595f.b(this, c0206f.f1625b, c0206f.f1624a);
            }
            this.f1595f.d(this);
            this.f1588b.clear();
            m5978H();
            this.f1597g = 0;
            scrollTo(0, 0);
        }
        g40 g40Var3 = this.f1595f;
        this.f1595f = g40Var;
        this.f1586a = 0;
        if (g40Var != null) {
            if (this.f1604n == null) {
                this.f1604n = new C0210k();
            }
            this.f1595f.q(this.f1604n);
            this.f1614x = false;
            boolean z = this.f1580R;
            this.f1580R = true;
            this.f1586a = this.f1595f.e();
            if (this.f1599h >= 0) {
                this.f1595f.m(this.f1600j, this.f1601k);
                m5972N(this.f1599h, false, true);
                this.f1599h = -1;
                this.f1600j = null;
                this.f1601k = null;
            } else if (!z) {
                m5981E();
            } else {
                requestLayout();
            }
        }
        List<AbstractC0207h> list = this.f1587a0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f1587a0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f1587a0.get(i2).onAdapterChanged(this, g40Var3, g40Var);
        }
    }

    public void setCurrentItem(int i) {
        this.f1614x = false;
        m5972N(i, !this.f1580R, false);
    }

    public void setCurrentItem(int i, boolean z) {
        this.f1614x = false;
        m5972N(i, z, false);
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f1615y) {
            this.f1615y = i2;
            m5981E();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AbstractC0208i abstractC0208i) {
        this.f1584V = abstractC0208i;
    }

    public void setPageMargin(int i) {
        int i2 = this.f1605o;
        this.f1605o = i;
        int width = getWidth();
        m5979G(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(g8.f(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f1606p = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, AbstractC0209j abstractC0209j) {
        setPageTransformer(z, abstractC0209j, 2);
    }

    public void setPageTransformer(boolean z, AbstractC0209j abstractC0209j, int i) {
        int i2 = 1;
        boolean z2 = abstractC0209j != null;
        boolean z3 = z2 != (this.f1589b0 != null);
        this.f1589b0 = abstractC0209j;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            if (z) {
                i2 = 2;
            }
            this.f1593d0 = i2;
            this.f1591c0 = i;
        } else {
            this.f1593d0 = 0;
        }
        if (z3) {
            m5981E();
        }
    }

    public void setScrollState(int i) {
        if (this.f1598g0 == i) {
            return;
        }
        this.f1598g0 = i;
        if (this.f1589b0 != null) {
            m5954n(i != 0);
        }
        m5956l(i);
    }

    /* renamed from: t */
    public final C0206f m5948t() {
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.f1605o / clientWidth : 0.0f;
        C0206f c0206f = null;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        boolean z = true;
        while (i2 < this.f1588b.size()) {
            C0206f c0206f2 = this.f1588b.get(i2);
            int i3 = i2;
            C0206f c0206f3 = c0206f2;
            if (!z) {
                int i4 = i + 1;
                i3 = i2;
                c0206f3 = c0206f2;
                if (c0206f2.f1625b != i4) {
                    c0206f3 = this.f1590c;
                    c0206f3.f1628e = f + f3 + f2;
                    c0206f3.f1625b = i4;
                    c0206f3.f1627d = this.f1595f.h(i4);
                    i3 = i2 - 1;
                }
            }
            f = c0206f3.f1628e;
            float f4 = c0206f3.f1627d;
            if (!z && scrollX < f) {
                return c0206f;
            }
            if (scrollX < f4 + f + f2 || i3 == this.f1588b.size() - 1) {
                return c0206f3;
            }
            i = c0206f3.f1625b;
            f3 = c0206f3.f1627d;
            i2 = i3 + 1;
            z = false;
            c0206f = c0206f3;
        }
        return c0206f;
    }

    /* renamed from: u */
    public C0206f m5947u(int i) {
        for (int i2 = 0; i2 < this.f1588b.size(); i2++) {
            C0206f c0206f = this.f1588b.get(i2);
            if (c0206f.f1625b == i) {
                return c0206f;
            }
        }
        return null;
    }

    /* renamed from: v */
    public void m5946v() {
        setWillNotDraw(false);
        setDescendantFocusability(PKIFailureInfo.transactionIdInUse);
        setFocusable(true);
        Context context = getContext();
        this.f1602l = new Scroller(context, f1561j0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f1566D = viewConfiguration.getScaledPagingTouchSlop();
        this.f1573K = (int) (400.0f * f);
        this.f1574L = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f1578P = new EdgeEffect(context);
        this.f1579Q = new EdgeEffect(context);
        this.f1575M = (int) (25.0f * f);
        this.f1576N = (int) (2.0f * f);
        this.f1564B = (int) (f * 16.0f);
        jb.n0(this, new g(this));
        if (jb.z(this) == 0) {
            jb.x0(this, 1);
        }
        jb.A0(this, new d(this));
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1606p;
    }

    /* renamed from: x */
    public final boolean m5944x(float f, float f2) {
        return (f < ((float) this.f1565C) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f1565C)) && f2 < 0.0f);
    }

    /* renamed from: y */
    public void m5943y(int i, float f, int i2) {
        int i3;
        if (this.f1582T > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1617a) {
                    int i5 = layoutParams.f1618b & 7;
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
        m5958j(i, f, i2);
        if (this.f1589b0 != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt2 = getChildAt(i6);
                if (!((LayoutParams) childAt2.getLayoutParams()).f1617a) {
                    this.f1589b0.m5937a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f1581S = true;
    }

    /* renamed from: z */
    public final void m5942z(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1571I) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f1567E = motionEvent.getX(i);
            this.f1571I = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f1572J;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }
}
