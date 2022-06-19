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
import android.os.SystemClock;
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
import androidx.core.content.C0586a;
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
import p020b.p041h.p050l.AbstractC1673q;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager.class */
public class ViewPager extends ViewGroup {

    /* renamed from: d */
    static final int[] f5051d = {16842931};

    /* renamed from: e */
    private static final Comparator<C1190f> f5052e = new C1185a();

    /* renamed from: f */
    private static final Interpolator f5053f = new animationInterpolatorC1186b();

    /* renamed from: g */
    private static final C1196l f5054g = new C1196l();

    /* renamed from: A */
    private int f5055A;

    /* renamed from: B */
    private boolean f5056B;

    /* renamed from: C */
    private boolean f5057C;

    /* renamed from: D */
    private boolean f5058D;

    /* renamed from: F */
    private boolean f5060F;

    /* renamed from: G */
    private boolean f5061G;

    /* renamed from: H */
    private int f5062H;

    /* renamed from: I */
    private int f5063I;

    /* renamed from: J */
    private int f5064J;

    /* renamed from: K */
    private float f5065K;

    /* renamed from: L */
    private float f5066L;

    /* renamed from: M */
    private float f5067M;

    /* renamed from: N */
    private float f5068N;

    /* renamed from: P */
    private VelocityTracker f5070P;

    /* renamed from: Q */
    private int f5071Q;

    /* renamed from: R */
    private int f5072R;

    /* renamed from: S */
    private int f5073S;

    /* renamed from: T */
    private int f5074T;

    /* renamed from: U */
    private boolean f5075U;

    /* renamed from: V */
    private long f5076V;

    /* renamed from: W */
    private EdgeEffect f5077W;

    /* renamed from: a0 */
    private EdgeEffect f5078a0;

    /* renamed from: d0 */
    private boolean f5081d0;

    /* renamed from: e0 */
    private int f5082e0;

    /* renamed from: f0 */
    private List<AbstractC1193i> f5083f0;

    /* renamed from: g0 */
    private AbstractC1193i f5084g0;

    /* renamed from: h */
    private int f5085h;

    /* renamed from: h0 */
    private AbstractC1193i f5086h0;

    /* renamed from: i0 */
    private List<AbstractC1192h> f5088i0;

    /* renamed from: j0 */
    private AbstractC1194j f5090j0;

    /* renamed from: k0 */
    private int f5092k0;

    /* renamed from: l */
    AbstractC1197a f5093l;

    /* renamed from: l0 */
    private int f5094l0;

    /* renamed from: m */
    int f5095m;

    /* renamed from: m0 */
    private ArrayList<View> f5096m0;

    /* renamed from: q */
    private Scroller f5102q;

    /* renamed from: r */
    private boolean f5103r;

    /* renamed from: s */
    private C1195k f5104s;

    /* renamed from: t */
    private int f5105t;

    /* renamed from: u */
    private Drawable f5106u;

    /* renamed from: v */
    private int f5107v;

    /* renamed from: w */
    private int f5108w;

    /* renamed from: z */
    private int f5111z;

    /* renamed from: i */
    private final ArrayList<C1190f> f5087i = new ArrayList<>();

    /* renamed from: j */
    private final C1190f f5089j = new C1190f();

    /* renamed from: k */
    private final Rect f5091k = new Rect();

    /* renamed from: n */
    private int f5097n = -1;

    /* renamed from: o */
    private Parcelable f5099o = null;

    /* renamed from: p */
    private ClassLoader f5101p = null;

    /* renamed from: x */
    private float f5109x = -3.4028235E38f;

    /* renamed from: y */
    private float f5110y = Float.MAX_VALUE;

    /* renamed from: E */
    private int f5059E = 1;

    /* renamed from: O */
    private int f5069O = -1;

    /* renamed from: b0 */
    private boolean f5079b0 = true;

    /* renamed from: c0 */
    private boolean f5080c0 = false;

    /* renamed from: n0 */
    private final Runnable f5098n0 = new RunnableC1187c();

    /* renamed from: o0 */
    private int f5100o0 = 0;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f5112a;

        /* renamed from: b */
        public int f5113b;

        /* renamed from: c */
        float f5114c = 0.0f;

        /* renamed from: d */
        boolean f5115d;

        /* renamed from: e */
        int f5116e;

        /* renamed from: f */
        int f5117f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f5051d);
            this.f5113b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1184a();

        /* renamed from: f */
        int f5118f;

        /* renamed from: g */
        Parcelable f5119g;

        /* renamed from: h */
        ClassLoader f5120h;

        /* renamed from: androidx.viewpager.widget.ViewPager$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState$a.class */
        static final class C1184a implements Parcelable.ClassLoaderCreator<SavedState> {
            C1184a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            ClassLoader classLoader2 = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f5118f = parcel.readInt();
            this.f5119g = parcel.readParcelable(classLoader2);
            this.f5120h = classLoader2;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f5118f + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f5118f);
            parcel.writeParcelable(this.f5119g, i);
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    static final class C1185a implements Comparator<C1190f> {
        C1185a() {
        }

        /* renamed from: a */
        public int compare(C1190f c1190f, C1190f c1190f2) {
            return c1190f.f5125b - c1190f2.f5125b;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    static final class animationInterpolatorC1186b implements Interpolator {
        animationInterpolatorC1186b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    public class RunnableC1187c implements Runnable {
        RunnableC1187c() {
            ViewPager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.m30760I();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$d.class */
    public class C1188d implements AbstractC1673q {

        /* renamed from: a */
        private final Rect f5122a = new Rect();

        C1188d() {
            ViewPager.this = r5;
        }

        @Override // p020b.p041h.p050l.AbstractC1673q
        /* renamed from: a */
        public C1615e0 mo4441a(View view, C1615e0 c1615e0) {
            C1615e0 m29303c0 = C1679w.m29303c0(view, c1615e0);
            if (m29303c0.m29584p()) {
                return m29303c0;
            }
            Rect rect = this.f5122a;
            rect.left = m29303c0.m29590j();
            rect.top = m29303c0.m29588l();
            rect.right = m29303c0.m29589k();
            rect.bottom = m29303c0.m29591i();
            int childCount = ViewPager.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                C1615e0 m29294h = C1679w.m29294h(ViewPager.this.getChildAt(i), m29303c0);
                rect.left = Math.min(m29294h.m29590j(), rect.left);
                rect.top = Math.min(m29294h.m29588l(), rect.top);
                rect.right = Math.min(m29294h.m29589k(), rect.right);
                rect.bottom = Math.min(m29294h.m29591i(), rect.bottom);
            }
            return m29303c0.m29583q(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public @interface AbstractC1189e {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public static class C1190f {

        /* renamed from: a */
        Object f5124a;

        /* renamed from: b */
        int f5125b;

        /* renamed from: c */
        boolean f5126c;

        /* renamed from: d */
        float f5127d;

        /* renamed from: e */
        float f5128e;

        C1190f() {
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$g.class */
    public class C1191g extends C1599a {
        C1191g() {
            ViewPager.this = r4;
        }

        /* renamed from: n */
        private boolean m30717n() {
            AbstractC1197a abstractC1197a = ViewPager.this.f5093l;
            boolean z = true;
            if (abstractC1197a == null || abstractC1197a.mo25082e() <= 1) {
                z = false;
            }
            return z;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: f */
        public void mo4650f(View view, AccessibilityEvent accessibilityEvent) {
            AbstractC1197a abstractC1197a;
            super.mo4650f(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(m30717n());
            if (accessibilityEvent.getEventType() != 4096 || (abstractC1197a = ViewPager.this.f5093l) == null) {
                return;
            }
            accessibilityEvent.setItemCount(abstractC1197a.mo25082e());
            accessibilityEvent.setFromIndex(ViewPager.this.f5095m);
            accessibilityEvent.setToIndex(ViewPager.this.f5095m);
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            c1634c.m29489c0(ViewPager.class.getName());
            c1634c.m29447x0(m30717n());
            if (ViewPager.this.canScrollHorizontally(1)) {
                c1634c.m29494a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                c1634c.m29494a(8192);
            }
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: j */
        public boolean mo29646j(View view, int i, Bundle bundle) {
            if (super.mo29646j(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f5095m + 1);
                return true;
            } else if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            } else {
                ViewPager viewPager2 = ViewPager.this;
                viewPager2.setCurrentItem(viewPager2.f5095m - 1);
                return true;
            }
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public interface AbstractC1192h {
        /* renamed from: b */
        void mo4126b(ViewPager viewPager, AbstractC1197a abstractC1197a, AbstractC1197a abstractC1197a2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public interface AbstractC1193i {
        /* renamed from: a */
        void mo4098a(int i, float f, int i2);

        /* renamed from: c */
        void mo4096c(int i);

        /* renamed from: d */
        void mo4095d(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$j.class */
    public interface AbstractC1194j {
        /* renamed from: a */
        void m30716a(View view, float f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.viewpager.widget.ViewPager$k */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$k.class */
    public class C1195k extends DataSetObserver {
        C1195k() {
            ViewPager.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m30739i();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m30739i();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$l */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$l.class */
    public static class C1196l implements Comparator<View> {
        C1196l() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z = layoutParams.f5112a;
            if (z != layoutParams2.f5112a) {
                return z ? 1 : -1;
            }
            return layoutParams.f5116e - layoutParams2.f5116e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        m30723y();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m30723y();
    }

    /* renamed from: B */
    private boolean m30767B(float f, float f2) {
        return (f < ((float) this.f5063I) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f5063I)) && f2 < 0.0f);
    }

    /* renamed from: D */
    private void m30765D(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f5069O) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f5065K = motionEvent.getX(i);
            this.f5069O = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f5070P;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }

    /* renamed from: G */
    private boolean m30762G(int i) {
        int i2;
        if (this.f5087i.size() == 0) {
            if (this.f5079b0) {
                return false;
            }
            this.f5081d0 = false;
            m30766C(0, 0.0f, 0);
            if (!this.f5081d0) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            return false;
        }
        C1190f m30725w = m30725w();
        int clientWidth = getClientWidth();
        float f = this.f5105t;
        float f2 = clientWidth;
        float f3 = f / f2;
        int i3 = m30725w.f5125b;
        float f4 = ((i / f2) - m30725w.f5128e) / (m30725w.f5127d + f3);
        this.f5081d0 = false;
        m30766C(i3, f4, (int) ((clientWidth + i2) * f4));
        if (!this.f5081d0) {
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        return true;
    }

    /* renamed from: H */
    private boolean m30761H(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f5065K;
        this.f5065K = f;
        float scrollX = getScrollX() + (f2 - f);
        float clientWidth = getClientWidth();
        float f3 = this.f5109x * clientWidth;
        float f4 = this.f5110y * clientWidth;
        boolean z3 = false;
        C1190f c1190f = this.f5087i.get(0);
        ArrayList<C1190f> arrayList = this.f5087i;
        C1190f c1190f2 = arrayList.get(arrayList.size() - 1);
        if (c1190f.f5125b != 0) {
            f3 = c1190f.f5128e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (c1190f2.f5125b != this.f5093l.mo25082e() - 1) {
            f4 = c1190f2.f5128e * clientWidth;
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
                    this.f5078a0.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.f5077W.onPull(Math.abs(f3 - scrollX) / clientWidth);
            z3 = true;
        }
        int i = (int) f3;
        this.f5065K += f3 - i;
        scrollTo(i, getScrollY());
        m30762G(i);
        return z3;
    }

    /* renamed from: K */
    private void m30758K(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.f5087i.isEmpty()) {
            C1190f m30724x = m30724x(this.f5095m);
            int min = (int) ((m30724x != null ? Math.min(m30724x.f5128e, this.f5110y) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min == getScrollX()) {
                return;
            }
            m30740h(false);
            scrollTo(min, getScrollY());
        } else if (!this.f5102q.isFinished()) {
            this.f5102q.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - paddingLeft) - paddingRight) + i3)), getScrollY());
        }
    }

    /* renamed from: L */
    private void m30757L() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < getChildCount()) {
                int i3 = i2;
                if (!((LayoutParams) getChildAt(i2).getLayoutParams()).f5112a) {
                    removeViewAt(i2);
                    i3 = i2 - 1;
                }
                i = i3 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: O */
    private void m30754O(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: P */
    private boolean m30753P() {
        this.f5069O = -1;
        m30732p();
        this.f5077W.onRelease();
        this.f5078a0.onRelease();
        return this.f5077W.isFinished() || this.f5078a0.isFinished();
    }

    /* renamed from: Q */
    private void m30752Q(int i, boolean z, int i2, boolean z2) {
        C1190f m30724x = m30724x(i);
        int clientWidth = m30724x != null ? (int) (getClientWidth() * Math.max(this.f5109x, Math.min(m30724x.f5128e, this.f5110y))) : 0;
        if (z) {
            m30748U(clientWidth, 0, i2);
            if (!z2) {
                return;
            }
            m30736l(i);
            return;
        }
        if (z2) {
            m30736l(i);
        }
        m30740h(false);
        scrollTo(clientWidth, 0);
        m30762G(clientWidth);
    }

    /* renamed from: V */
    private void m30747V() {
        if (this.f5094l0 != 0) {
            ArrayList<View> arrayList = this.f5096m0;
            if (arrayList == null) {
                this.f5096m0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f5096m0.add(getChildAt(i));
            }
            Collections.sort(this.f5096m0, f5054g);
        }
    }

    /* renamed from: f */
    private void m30741f(C1190f c1190f, int i, C1190f c1190f2) {
        int i2;
        int i3;
        C1190f c1190f3;
        int i4;
        float f;
        C1190f c1190f4;
        int i5;
        float f2;
        int mo25082e = this.f5093l.mo25082e();
        int clientWidth = getClientWidth();
        float f3 = clientWidth > 0 ? this.f5105t / clientWidth : 0.0f;
        if (c1190f2 != null) {
            int i6 = c1190f2.f5125b;
            int i7 = c1190f.f5125b;
            if (i6 < i7) {
                float f4 = c1190f2.f5128e + c1190f2.f5127d + f3;
                int i8 = 0;
                for (int i9 = i6 + 1; i9 <= c1190f.f5125b && i8 < this.f5087i.size(); i9 = i5 + 1) {
                    C1190f c1190f5 = this.f5087i.get(i8);
                    while (true) {
                        c1190f4 = c1190f5;
                        i5 = i9;
                        f2 = f4;
                        if (i9 <= c1190f4.f5125b) {
                            break;
                        }
                        i5 = i9;
                        f2 = f4;
                        if (i8 >= this.f5087i.size() - 1) {
                            break;
                        }
                        i8++;
                        c1190f5 = this.f5087i.get(i8);
                    }
                    while (i5 < c1190f4.f5125b) {
                        f2 += this.f5093l.m30710h(i5) + f3;
                        i5++;
                    }
                    c1190f4.f5128e = f2;
                    f4 = f2 + c1190f4.f5127d + f3;
                }
            } else if (i6 > i7) {
                int size = this.f5087i.size() - 1;
                float f5 = c1190f2.f5128e;
                for (int i10 = i6 - 1; i10 >= c1190f.f5125b && size >= 0; i10 = i4 - 1) {
                    C1190f c1190f6 = this.f5087i.get(size);
                    while (true) {
                        c1190f3 = c1190f6;
                        i4 = i10;
                        f = f5;
                        if (i10 >= c1190f3.f5125b) {
                            break;
                        }
                        i4 = i10;
                        f = f5;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                        c1190f6 = this.f5087i.get(size);
                    }
                    while (i4 > c1190f3.f5125b) {
                        f -= this.f5093l.m30710h(i4) + f3;
                        i4--;
                    }
                    f5 = f - (c1190f3.f5127d + f3);
                    c1190f3.f5128e = f5;
                }
            }
        }
        int size2 = this.f5087i.size();
        float f6 = c1190f.f5128e;
        int i11 = c1190f.f5125b;
        int i12 = i11 - 1;
        this.f5109x = i11 == 0 ? f6 : -3.4028235E38f;
        int i13 = mo25082e - 1;
        this.f5110y = i11 == i13 ? (c1190f.f5127d + f6) - 1.0f : Float.MAX_VALUE;
        int i14 = i - 1;
        while (i14 >= 0) {
            C1190f c1190f7 = this.f5087i.get(i14);
            while (true) {
                i3 = c1190f7.f5125b;
                if (i12 <= i3) {
                    break;
                }
                f6 -= this.f5093l.m30710h(i12) + f3;
                i12--;
            }
            f6 -= c1190f7.f5127d + f3;
            c1190f7.f5128e = f6;
            if (i3 == 0) {
                this.f5109x = f6;
            }
            i14--;
            i12--;
        }
        float f7 = c1190f.f5128e + c1190f.f5127d + f3;
        int i15 = i + 1;
        int i16 = c1190f.f5125b + 1;
        while (i15 < size2) {
            C1190f c1190f8 = this.f5087i.get(i15);
            while (true) {
                i2 = c1190f8.f5125b;
                if (i16 >= i2) {
                    break;
                }
                f7 += this.f5093l.m30710h(i16) + f3;
                i16++;
            }
            if (i2 == i13) {
                this.f5110y = (c1190f8.f5127d + f7) - 1.0f;
            }
            c1190f8.f5128e = f7;
            f7 += c1190f8.f5127d + f3;
            i15++;
            i16++;
        }
        this.f5080c0 = false;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* renamed from: h */
    private void m30740h(boolean z) {
        boolean z2 = this.f5100o0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f5102q.isFinished()) {
                this.f5102q.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f5102q.getCurrX();
                int currY = this.f5102q.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m30762G(currX);
                    }
                }
            }
        }
        this.f5058D = false;
        for (int i = 0; i < this.f5087i.size(); i++) {
            C1190f c1190f = this.f5087i.get(i);
            if (c1190f.f5126c) {
                c1190f.f5126c = false;
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                C1679w.m29289j0(this, this.f5098n0);
            } else {
                this.f5098n0.run();
            }
        }
    }

    /* renamed from: j */
    private int m30738j(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f5073S || Math.abs(i2) <= this.f5071Q) {
            i += (int) (f + (i >= this.f5095m ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        int i4 = i;
        if (this.f5087i.size() > 0) {
            C1190f c1190f = this.f5087i.get(0);
            ArrayList<C1190f> arrayList = this.f5087i;
            i4 = Math.max(c1190f.f5125b, Math.min(i, arrayList.get(arrayList.size() - 1).f5125b));
        }
        return i4;
    }

    /* renamed from: k */
    private void m30737k(int i, float f, int i2) {
        AbstractC1193i abstractC1193i = this.f5084g0;
        if (abstractC1193i != null) {
            abstractC1193i.mo4098a(i, f, i2);
        }
        List<AbstractC1193i> list = this.f5083f0;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC1193i abstractC1193i2 = this.f5083f0.get(i3);
                if (abstractC1193i2 != null) {
                    abstractC1193i2.mo4098a(i, f, i2);
                }
            }
        }
        AbstractC1193i abstractC1193i3 = this.f5086h0;
        if (abstractC1193i3 != null) {
            abstractC1193i3.mo4098a(i, f, i2);
        }
    }

    /* renamed from: l */
    private void m30736l(int i) {
        AbstractC1193i abstractC1193i = this.f5084g0;
        if (abstractC1193i != null) {
            abstractC1193i.mo4095d(i);
        }
        List<AbstractC1193i> list = this.f5083f0;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1193i abstractC1193i2 = this.f5083f0.get(i2);
                if (abstractC1193i2 != null) {
                    abstractC1193i2.mo4095d(i);
                }
            }
        }
        AbstractC1193i abstractC1193i3 = this.f5086h0;
        if (abstractC1193i3 != null) {
            abstractC1193i3.mo4095d(i);
        }
    }

    /* renamed from: m */
    private void m30735m(int i) {
        AbstractC1193i abstractC1193i = this.f5084g0;
        if (abstractC1193i != null) {
            abstractC1193i.mo4096c(i);
        }
        List<AbstractC1193i> list = this.f5083f0;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1193i abstractC1193i2 = this.f5083f0.get(i2);
                if (abstractC1193i2 != null) {
                    abstractC1193i2.mo4096c(i);
                }
            }
        }
        AbstractC1193i abstractC1193i3 = this.f5086h0;
        if (abstractC1193i3 != null) {
            abstractC1193i3.mo4096c(i);
        }
    }

    /* renamed from: o */
    private void m30733o(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.f5092k0 : 0, null);
        }
    }

    /* renamed from: p */
    private void m30732p() {
        this.f5060F = false;
        this.f5061G = false;
        VelocityTracker velocityTracker = this.f5070P;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f5070P = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f5057C != z) {
            this.f5057C = z;
        }
    }

    /* renamed from: t */
    private Rect m30728t(Rect rect, View view) {
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

    /* renamed from: w */
    private C1190f m30725w() {
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.f5105t / clientWidth : 0.0f;
        C1190f c1190f = null;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        boolean z = true;
        while (i2 < this.f5087i.size()) {
            C1190f c1190f2 = this.f5087i.get(i2);
            int i3 = i2;
            C1190f c1190f3 = c1190f2;
            if (!z) {
                int i4 = i + 1;
                i3 = i2;
                c1190f3 = c1190f2;
                if (c1190f2.f5125b != i4) {
                    c1190f3 = this.f5089j;
                    c1190f3.f5128e = f + f3 + f2;
                    c1190f3.f5125b = i4;
                    c1190f3.f5127d = this.f5093l.m30710h(i4);
                    i3 = i2 - 1;
                }
            }
            f = c1190f3.f5128e;
            float f4 = c1190f3.f5127d;
            if (!z && scrollX < f) {
                return c1190f;
            }
            if (scrollX < f4 + f + f2 || i3 == this.f5087i.size() - 1) {
                return c1190f3;
            }
            i = c1190f3.f5125b;
            f3 = c1190f3.f5127d;
            i2 = i3 + 1;
            z = false;
            c1190f = c1190f3;
        }
        return c1190f;
    }

    /* renamed from: z */
    private static boolean m30722z(View view) {
        return view.getClass().getAnnotation(AbstractC1189e.class) != null;
    }

    /* renamed from: A */
    public boolean m30768A() {
        return this.f5075U;
    }

    /* renamed from: C */
    protected void m30766C(int i, float f, int i2) {
        int i3;
        if (this.f5082e0 > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f5112a) {
                    int i5 = layoutParams.f5113b & 7;
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
        m30737k(i, f, i2);
        if (this.f5090j0 != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt2 = getChildAt(i6);
                if (!((LayoutParams) childAt2.getLayoutParams()).f5112a) {
                    this.f5090j0.m30716a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f5081d0 = true;
    }

    /* renamed from: E */
    boolean m30764E() {
        int i = this.f5095m;
        if (i > 0) {
            setCurrentItem(i - 1, true);
            return true;
        }
        return false;
    }

    /* renamed from: F */
    boolean m30763F() {
        AbstractC1197a abstractC1197a = this.f5093l;
        if (abstractC1197a == null || this.f5095m >= abstractC1197a.mo25082e() - 1) {
            return false;
        }
        setCurrentItem(this.f5095m + 1, true);
        return true;
    }

    /* renamed from: I */
    void m30760I() {
        m30759J(this.f5095m);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r0 == r0) goto L28;
     */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m30759J(int r7) {
        /*
            Method dump skipped, instructions count: 1323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m30759J(int):void");
    }

    /* renamed from: M */
    public void m30756M(AbstractC1192h abstractC1192h) {
        List<AbstractC1192h> list = this.f5088i0;
        if (list != null) {
            list.remove(abstractC1192h);
        }
    }

    /* renamed from: N */
    public void m30755N(AbstractC1193i abstractC1193i) {
        List<AbstractC1193i> list = this.f5083f0;
        if (list != null) {
            list.remove(abstractC1193i);
        }
    }

    /* renamed from: R */
    void m30751R(int i, boolean z, boolean z2) {
        m30750S(i, z, z2, 0);
    }

    /* renamed from: S */
    void m30750S(int i, boolean z, boolean z2, int i2) {
        int i3;
        AbstractC1197a abstractC1197a = this.f5093l;
        if (abstractC1197a == null || abstractC1197a.mo25082e() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f5095m != i || this.f5087i.size() == 0) {
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f5093l.mo25082e()) {
                    i3 = this.f5093l.mo25082e() - 1;
                }
            }
            int i4 = this.f5059E;
            int i5 = this.f5095m;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f5087i.size(); i6++) {
                    this.f5087i.get(i6).f5126c = true;
                }
            }
            boolean z3 = false;
            if (this.f5095m != i3) {
                z3 = true;
            }
            if (!this.f5079b0) {
                m30759J(i3);
                m30752Q(i3, z, i2, z3);
                return;
            }
            this.f5095m = i3;
            if (z3) {
                m30736l(i3);
            }
            requestLayout();
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    /* renamed from: T */
    public AbstractC1193i m30749T(AbstractC1193i abstractC1193i) {
        AbstractC1193i abstractC1193i2 = this.f5086h0;
        this.f5086h0 = abstractC1193i;
        return abstractC1193i2;
    }

    /* renamed from: U */
    void m30748U(int i, int i2, int i3) {
        int i4;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f5102q;
        if (scroller != null && !scroller.isFinished()) {
            i4 = this.f5103r ? this.f5102q.getCurrX() : this.f5102q.getStartX();
            this.f5102q.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i4 = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m30740h(false);
            m30760I();
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
        float m30734n = m30734n(Math.min(1.0f, (abs * 1.0f) / f));
        int abs2 = Math.abs(i3);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f2 + (m30734n * f2)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i5) / ((f * this.f5093l.m30710h(this.f5095m)) + this.f5105t)) + 1.0f) * 100.0f), 600);
        this.f5103r = false;
        this.f5102q.startScroll(i4, scrollY, i5, i6, min);
        C1679w.m29293h0(this);
    }

    /* renamed from: a */
    C1190f m30746a(int i, int i2) {
        C1190f c1190f = new C1190f();
        c1190f.f5125b = i;
        c1190f.f5124a = this.f5093l.mo27515j(this, i);
        c1190f.f5127d = this.f5093l.m30710h(i);
        if (i2 < 0 || i2 >= this.f5087i.size()) {
            this.f5087i.add(c1190f);
        } else {
            this.f5087i.add(i2, c1190f);
        }
        return c1190f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C1190f m30726v;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (m30726v = m30726v(childAt)) != null && m30726v.f5125b == this.f5095m) {
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
        C1190f m30726v;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m30726v = m30726v(childAt)) != null && m30726v.f5125b == this.f5095m) {
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
        boolean m30722z = layoutParams3.f5112a | m30722z(view);
        layoutParams3.f5112a = m30722z;
        if (!this.f5056B) {
            super.addView(view, i, layoutParams2);
        } else if (m30722z) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            layoutParams3.f5115d = true;
            addViewInLayout(view, i, layoutParams2);
        }
    }

    /* renamed from: b */
    public void m30745b(AbstractC1192h abstractC1192h) {
        if (this.f5088i0 == null) {
            this.f5088i0 = new ArrayList();
        }
        this.f5088i0.add(abstractC1192h);
    }

    /* renamed from: c */
    public void m30744c(AbstractC1193i abstractC1193i) {
        if (this.f5083f0 == null) {
            this.f5083f0 = new ArrayList();
        }
        this.f5083f0.add(abstractC1193i);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = false;
        if (this.f5093l == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX > ((int) (clientWidth * this.f5109x))) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i > 0) {
            z2 = false;
            if (scrollX < ((int) (clientWidth * this.f5110y))) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f5103r = true;
        if (this.f5102q.isFinished() || !this.f5102q.computeScrollOffset()) {
            m30740h(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f5102q.getCurrX();
        int currY = this.f5102q.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m30762G(currX)) {
                this.f5102q.abortAnimation();
                scrollTo(0, currY);
            }
        }
        C1679w.m29293h0(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x017a  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m30743d(int r6) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m30743d(int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m30730r(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C1190f m30726v;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m30726v = m30726v(childAt)) != null && m30726v.f5125b == this.f5095m && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        AbstractC1197a abstractC1197a;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (abstractC1197a = this.f5093l) != null && abstractC1197a.mo25082e() > 1)) {
            if (!this.f5077W.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f5109x * width);
                this.f5077W.setSize(height, width);
                z2 = false | this.f5077W.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f5078a0.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f5110y + 1.0f)) * width2);
                this.f5078a0.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f5078a0.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f5077W.finish();
            this.f5078a0.finish();
        }
        if (z) {
            C1679w.m29293h0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f5106u;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* renamed from: e */
    public boolean m30742e() {
        if (this.f5060F) {
            return false;
        }
        this.f5075U = true;
        setScrollState(1);
        this.f5065K = 0.0f;
        this.f5067M = 0.0f;
        VelocityTracker velocityTracker = this.f5070P;
        if (velocityTracker == null) {
            this.f5070P = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.f5070P.addMovement(obtain);
        obtain.recycle();
        this.f5076V = uptimeMillis;
        return true;
    }

    /* renamed from: g */
    public boolean mo26149g(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && mo26149g(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC1197a getAdapter() {
        return this.f5093l;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.f5094l0 == 2) {
            i3 = (i - 1) - i2;
        }
        return ((LayoutParams) this.f5096m0.get(i3).getLayoutParams()).f5117f;
    }

    public int getCurrentItem() {
        return this.f5095m;
    }

    public int getOffscreenPageLimit() {
        return this.f5059E;
    }

    public int getPageMargin() {
        return this.f5105t;
    }

    /* renamed from: i */
    void m30739i() {
        boolean z;
        boolean z2;
        int i;
        int i2;
        int mo25082e = this.f5093l.mo25082e();
        this.f5085h = mo25082e;
        boolean z3 = this.f5087i.size() < (this.f5059E * 2) + 1 && this.f5087i.size() < mo25082e;
        int i3 = this.f5095m;
        int i4 = 0;
        boolean z4 = false;
        while (true) {
            z = z4;
            if (i4 >= this.f5087i.size()) {
                break;
            }
            C1190f c1190f = this.f5087i.get(i4);
            int m30711f = this.f5093l.m30711f(c1190f.f5124a);
            if (m30711f == -1) {
                i2 = i3;
                i = i4;
                z2 = z;
            } else {
                if (m30711f == -2) {
                    this.f5087i.remove(i4);
                    int i5 = i4 - 1;
                    boolean z5 = z;
                    if (!z) {
                        this.f5093l.mo27511t(this);
                        z5 = true;
                    }
                    this.f5093l.mo27516b(this, c1190f.f5125b, c1190f.f5124a);
                    int i6 = this.f5095m;
                    i4 = i5;
                    z = z5;
                    if (i6 == c1190f.f5125b) {
                        i3 = Math.max(0, Math.min(i6, mo25082e - 1));
                        z = z5;
                        i4 = i5;
                    }
                } else {
                    int i7 = c1190f.f5125b;
                    i2 = i3;
                    i = i4;
                    z2 = z;
                    if (i7 != m30711f) {
                        if (i7 == this.f5095m) {
                            i3 = m30711f;
                        }
                        c1190f.f5125b = m30711f;
                    }
                }
                z3 = true;
                i2 = i3;
                i = i4;
                z2 = z;
            }
            i4 = i + 1;
            i3 = i2;
            z4 = z2;
        }
        if (z) {
            this.f5093l.mo30712d(this);
        }
        Collections.sort(this.f5087i, f5052e);
        if (z3) {
            int childCount = getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i8).getLayoutParams();
                if (!layoutParams.f5112a) {
                    layoutParams.f5114c = 0.0f;
                }
            }
            m30751R(i3, false, true);
            requestLayout();
        }
    }

    /* renamed from: n */
    float m30734n(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5079b0 = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f5098n0);
        Scroller scroller = this.f5102q;
        if (scroller != null && !scroller.isFinished()) {
            this.f5102q.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        int i;
        float f;
        super.onDraw(canvas);
        if (this.f5105t <= 0 || this.f5106u == null || this.f5087i.size() <= 0 || this.f5093l == null) {
            return;
        }
        int scrollX = getScrollX();
        float width2 = getWidth();
        float f2 = this.f5105t / width2;
        int i2 = 0;
        C1190f c1190f = this.f5087i.get(0);
        float f3 = c1190f.f5128e;
        int size = this.f5087i.size();
        int i3 = this.f5087i.get(size - 1).f5125b;
        for (int i4 = c1190f.f5125b; i4 < i3; i4++) {
            while (true) {
                i = c1190f.f5125b;
                if (i4 <= i || i2 >= size) {
                    break;
                }
                i2++;
                c1190f = this.f5087i.get(i2);
            }
            if (i4 == i) {
                float f4 = c1190f.f5128e;
                float f5 = c1190f.f5127d;
                f = (f4 + f5) * width2;
                f3 = f4 + f5 + f2;
            } else {
                float m30710h = this.f5093l.m30710h(i4);
                f = (f3 + m30710h) * width2;
                f3 += m30710h + f2;
            }
            if (this.f5105t + f > scrollX) {
                this.f5106u.setBounds(Math.round(f), this.f5107v, Math.round(this.f5105t + f), this.f5108w);
                this.f5106u.draw(canvas);
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
            m30753P();
            return false;
        }
        if (action != 0) {
            if (this.f5060F) {
                return true;
            }
            if (this.f5061G) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f5067M = x;
            this.f5065K = x;
            float y = motionEvent.getY();
            this.f5068N = y;
            this.f5066L = y;
            this.f5069O = motionEvent.getPointerId(0);
            this.f5061G = false;
            this.f5103r = true;
            this.f5102q.computeScrollOffset();
            if (this.f5100o0 != 2 || Math.abs(this.f5102q.getFinalX() - this.f5102q.getCurrX()) <= this.f5074T) {
                m30740h(false);
                this.f5060F = false;
            } else {
                this.f5102q.abortAnimation();
                this.f5058D = false;
                m30760I();
                this.f5060F = true;
                m30754O(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.f5069O;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f5065K;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f5068N);
                int i2 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                if (i2 != 0 && !m30767B(this.f5065K, f) && mo26149g(this, false, (int) f, (int) x2, (int) y2)) {
                    this.f5065K = x2;
                    this.f5066L = y2;
                    this.f5061G = true;
                    return false;
                }
                int i3 = this.f5064J;
                if (abs > i3 && abs * 0.5f > abs2) {
                    this.f5060F = true;
                    m30754O(true);
                    setScrollState(1);
                    float f2 = this.f5067M;
                    float f3 = this.f5064J;
                    this.f5065K = i2 > 0 ? f2 + f3 : f2 - f3;
                    this.f5066L = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > i3) {
                    this.f5061G = true;
                }
                if (this.f5060F && m30761H(x2)) {
                    C1679w.m29293h0(this);
                }
            }
        } else if (action == 6) {
            m30765D(motionEvent);
        }
        if (this.f5070P == null) {
            this.f5070P = VelocityTracker.obtain();
        }
        this.f5070P.addMovement(motionEvent);
        return this.f5060F;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0143  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
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
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C1190f m30726v;
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
            if (childAt.getVisibility() == 0 && (m30726v = m30726v(childAt)) != null && m30726v.f5125b == this.f5095m && childAt.requestFocus(i, rect)) {
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
        super.onRestoreInstanceState(savedState.m33061a());
        AbstractC1197a abstractC1197a = this.f5093l;
        if (abstractC1197a != null) {
            abstractC1197a.mo27513n(savedState.f5119g, savedState.f5120h);
            m30751R(savedState.f5118f, false, true);
            return;
        }
        this.f5097n = savedState.f5118f;
        this.f5099o = savedState.f5119g;
        this.f5101p = savedState.f5120h;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5118f = this.f5095m;
        AbstractC1197a abstractC1197a = this.f5093l;
        if (abstractC1197a != null) {
            savedState.f5119g = abstractC1197a.mo27512o();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f5105t;
            m30758K(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC1197a abstractC1197a;
        if (this.f5075U) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (abstractC1197a = this.f5093l) == null || abstractC1197a.mo25082e() == 0) {
            return false;
        }
        if (this.f5070P == null) {
            this.f5070P = VelocityTracker.obtain();
        }
        this.f5070P.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f5102q.abortAnimation();
            this.f5058D = false;
            m30760I();
            float x = motionEvent.getX();
            this.f5067M = x;
            this.f5065K = x;
            float y = motionEvent.getY();
            this.f5068N = y;
            this.f5066L = y;
            this.f5069O = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f5060F) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f5069O);
                    if (findPointerIndex == -1) {
                        z = m30753P();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.f5065K);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.f5066L);
                        if (abs > this.f5064J && abs > abs2) {
                            this.f5060F = true;
                            m30754O(true);
                            float f = this.f5067M;
                            this.f5065K = x2 - f > 0.0f ? f + this.f5064J : f - this.f5064J;
                            this.f5066L = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.f5060F) {
                    z = false | m30761H(motionEvent.getX(motionEvent.findPointerIndex(this.f5069O)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f5065K = motionEvent.getX(actionIndex);
                    this.f5069O = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    m30765D(motionEvent);
                    this.f5065K = motionEvent.getX(motionEvent.findPointerIndex(this.f5069O));
                }
            } else if (this.f5060F) {
                m30752Q(this.f5095m, true, 0, false);
                z = m30753P();
            }
        } else if (this.f5060F) {
            VelocityTracker velocityTracker = this.f5070P;
            velocityTracker.computeCurrentVelocity(1000, this.f5072R);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f5069O);
            this.f5058D = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            C1190f m30725w = m30725w();
            float f2 = clientWidth;
            m30750S(m30738j(m30725w.f5125b, ((scrollX / f2) - m30725w.f5128e) / (m30725w.f5127d + (this.f5105t / f2)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.f5069O)) - this.f5067M)), true, true, xVelocity);
            z = m30753P();
        }
        if (!z) {
            return true;
        }
        C1679w.m29293h0(this);
        return true;
    }

    /* renamed from: q */
    public void m30731q() {
        if (this.f5075U) {
            if (this.f5093l != null) {
                VelocityTracker velocityTracker = this.f5070P;
                velocityTracker.computeCurrentVelocity(1000, this.f5072R);
                int xVelocity = (int) velocityTracker.getXVelocity(this.f5069O);
                this.f5058D = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                C1190f m30725w = m30725w();
                m30750S(m30738j(m30725w.f5125b, ((scrollX / clientWidth) - m30725w.f5128e) / m30725w.f5127d, xVelocity, (int) (this.f5065K - this.f5067M)), true, true, xVelocity);
            }
            m30732p();
            this.f5075U = false;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    /* renamed from: r */
    public boolean m30730r(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                z = keyEvent.hasModifiers(2) ? m30764E() : m30743d(17);
            } else if (keyCode == 22) {
                z = keyEvent.hasModifiers(2) ? m30763F() : m30743d(66);
            } else if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    z = m30743d(2);
                } else if (keyEvent.hasModifiers(1)) {
                    z = m30743d(1);
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f5056B) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* renamed from: s */
    public void m30729s(float f) {
        if (this.f5075U) {
            if (this.f5093l == null) {
                return;
            }
            this.f5065K += f;
            float scrollX = getScrollX() - f;
            float clientWidth = getClientWidth();
            float f2 = this.f5109x * clientWidth;
            float f3 = this.f5110y * clientWidth;
            C1190f c1190f = this.f5087i.get(0);
            ArrayList<C1190f> arrayList = this.f5087i;
            C1190f c1190f2 = arrayList.get(arrayList.size() - 1);
            if (c1190f.f5125b != 0) {
                f2 = c1190f.f5128e * clientWidth;
            }
            if (c1190f2.f5125b != this.f5093l.mo25082e() - 1) {
                f3 = c1190f2.f5128e * clientWidth;
            }
            if (scrollX >= f2) {
                f2 = scrollX;
                if (scrollX > f3) {
                    f2 = f3;
                }
            }
            int i = (int) f2;
            this.f5065K += f2 - i;
            scrollTo(i, getScrollY());
            m30762G(i);
            MotionEvent obtain = MotionEvent.obtain(this.f5076V, SystemClock.uptimeMillis(), 2, this.f5065K, 0.0f, 0);
            this.f5070P.addMovement(obtain);
            obtain.recycle();
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public void setAdapter(AbstractC1197a abstractC1197a) {
        AbstractC1197a abstractC1197a2 = this.f5093l;
        if (abstractC1197a2 != null) {
            abstractC1197a2.m30704r(null);
            this.f5093l.mo27511t(this);
            for (int i = 0; i < this.f5087i.size(); i++) {
                C1190f c1190f = this.f5087i.get(i);
                this.f5093l.mo27516b(this, c1190f.f5125b, c1190f.f5124a);
            }
            this.f5093l.mo30712d(this);
            this.f5087i.clear();
            m30757L();
            this.f5095m = 0;
            scrollTo(0, 0);
        }
        AbstractC1197a abstractC1197a3 = this.f5093l;
        this.f5093l = abstractC1197a;
        this.f5085h = 0;
        if (abstractC1197a != null) {
            if (this.f5104s == null) {
                this.f5104s = new C1195k();
            }
            this.f5093l.m30704r(this.f5104s);
            this.f5058D = false;
            boolean z = this.f5079b0;
            this.f5079b0 = true;
            this.f5085h = this.f5093l.mo25082e();
            if (this.f5097n >= 0) {
                this.f5093l.mo27513n(this.f5099o, this.f5101p);
                m30751R(this.f5097n, false, true);
                this.f5097n = -1;
                this.f5099o = null;
                this.f5101p = null;
            } else if (!z) {
                m30760I();
            } else {
                requestLayout();
            }
        }
        List<AbstractC1192h> list = this.f5088i0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f5088i0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f5088i0.get(i2).mo4126b(this, abstractC1197a3, abstractC1197a);
        }
    }

    public void setCurrentItem(int i) {
        this.f5058D = false;
        m30751R(i, !this.f5079b0, false);
    }

    public void setCurrentItem(int i, boolean z) {
        this.f5058D = false;
        m30751R(i, z, false);
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f5059E) {
            this.f5059E = i2;
            m30760I();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AbstractC1193i abstractC1193i) {
        this.f5084g0 = abstractC1193i;
    }

    public void setPageMargin(int i) {
        int i2 = this.f5105t;
        this.f5105t = i;
        int width = getWidth();
        m30758K(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(C0586a.m33348f(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f5106u = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, AbstractC1194j abstractC1194j) {
        setPageTransformer(z, abstractC1194j, 2);
    }

    public void setPageTransformer(boolean z, AbstractC1194j abstractC1194j, int i) {
        int i2 = 1;
        boolean z2 = abstractC1194j != null;
        boolean z3 = z2 != (this.f5090j0 != null);
        this.f5090j0 = abstractC1194j;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            if (z) {
                i2 = 2;
            }
            this.f5094l0 = i2;
            this.f5092k0 = i;
        } else {
            this.f5094l0 = 0;
        }
        if (z3) {
            m30760I();
        }
    }

    void setScrollState(int i) {
        if (this.f5100o0 == i) {
            return;
        }
        this.f5100o0 = i;
        if (this.f5090j0 != null) {
            m30733o(i != 0);
        }
        m30735m(i);
    }

    /* renamed from: u */
    C1190f m30727u(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return m30726v(view);
            }
        }
    }

    /* renamed from: v */
    C1190f m30726v(View view) {
        for (int i = 0; i < this.f5087i.size(); i++) {
            C1190f c1190f = this.f5087i.get(i);
            if (this.f5093l.mo27514k(view, c1190f.f5124a)) {
                return c1190f;
            }
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f5106u;
    }

    /* renamed from: x */
    C1190f m30724x(int i) {
        for (int i2 = 0; i2 < this.f5087i.size(); i2++) {
            C1190f c1190f = this.f5087i.get(i2);
            if (c1190f.f5125b == i) {
                return c1190f;
            }
        }
        return null;
    }

    /* renamed from: y */
    void m30723y() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f5102q = new Scroller(context, f5053f);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f5064J = viewConfiguration.getScaledPagingTouchSlop();
        this.f5071Q = (int) (400.0f * f);
        this.f5072R = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f5077W = new EdgeEffect(context);
        this.f5078a0 = new EdgeEffect(context);
        this.f5073S = (int) (25.0f * f);
        this.f5074T = (int) (2.0f * f);
        this.f5062H = (int) (f * 16.0f);
        C1679w.m29273r0(this, new C1191g());
        if (C1679w.m29350A(this) == 0) {
            C1679w.m29347B0(this, 1);
        }
        C1679w.m29341E0(this, new C1188d());
    }
}
