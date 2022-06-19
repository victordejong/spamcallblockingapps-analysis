package androidx.drawerlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: M */
    public static final int[] f806M = {16843828};

    /* renamed from: N */
    public static final int[] f807N = {16842931};

    /* renamed from: O */
    public static final boolean f808O;

    /* renamed from: P */
    public static final boolean f809P;

    /* renamed from: A */
    public Drawable f810A;

    /* renamed from: B */
    public CharSequence f811B;

    /* renamed from: C */
    public CharSequence f812C;

    /* renamed from: D */
    public Object f813D;

    /* renamed from: E */
    public boolean f814E;

    /* renamed from: F */
    public Drawable f815F;

    /* renamed from: G */
    public Drawable f816G;

    /* renamed from: H */
    public Drawable f817H;

    /* renamed from: I */
    public Drawable f818I;

    /* renamed from: J */
    public final ArrayList<View> f819J;

    /* renamed from: K */
    public Rect f820K;

    /* renamed from: L */
    public Matrix f821L;

    /* renamed from: a */
    public final c f822a;

    /* renamed from: b */
    public float f823b;

    /* renamed from: c */
    public int f824c;

    /* renamed from: d */
    public int f825d;

    /* renamed from: f */
    public float f826f;

    /* renamed from: g */
    public Paint f827g;

    /* renamed from: h */
    public final rc f828h;

    /* renamed from: j */
    public final rc f829j;

    /* renamed from: k */
    public final e f830k;

    /* renamed from: l */
    public final e f831l;

    /* renamed from: m */
    public int f832m;

    /* renamed from: n */
    public boolean f833n;

    /* renamed from: o */
    public boolean f834o;

    /* renamed from: p */
    public int f835p;

    /* renamed from: q */
    public int f836q;

    /* renamed from: r */
    public int f837r;

    /* renamed from: s */
    public int f838s;

    /* renamed from: t */
    public boolean f839t;

    /* renamed from: u */
    public AbstractC0108d f840u;

    /* renamed from: v */
    public List<AbstractC0108d> f841v;

    /* renamed from: w */
    public float f842w;

    /* renamed from: x */
    public float f843x;

    /* renamed from: y */
    public Drawable f844y;

    /* renamed from: z */
    public Drawable f845z;

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f846a;

        /* renamed from: b */
        public float f847b;

        /* renamed from: c */
        public boolean f848c;

        /* renamed from: d */
        public int f849d;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f846a = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f846a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f807N);
            this.f846a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f846a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f846a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f846a = 0;
            this.f846a = layoutParams.f846a;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    public class View$OnApplyWindowInsetsListenerC0107a implements View.OnApplyWindowInsetsListener {
        public View$OnApplyWindowInsetsListenerC0107a(DrawerLayout drawerLayout) {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public interface AbstractC0108d {
        /* renamed from: a */
        void m6729a(View view);

        /* renamed from: b */
        void m6728b(View view);

        /* renamed from: c */
        void m6727c(int i);

        /* renamed from: d */
        void m6726d(View view, float f);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f808O = i >= 19;
        f809P = i >= 21;
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f822a = new c();
        this.f825d = -1728053248;
        this.f827g = new Paint();
        this.f834o = true;
        this.f835p = 3;
        this.f836q = 3;
        this.f837r = 3;
        this.f838s = 3;
        this.f815F = null;
        this.f816G = null;
        this.f817H = null;
        this.f818I = null;
        setDescendantFocusability(PKIFailureInfo.transactionIdInUse);
        float f = getResources().getDisplayMetrics().density;
        this.f824c = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        e eVar = new e(this, 3);
        this.f830k = eVar;
        e eVar2 = new e(this, 5);
        this.f831l = eVar2;
        rc o = rc.o(this, 1.0f, eVar);
        this.f828h = o;
        o.L(1);
        o.M(f2);
        eVar.d(o);
        rc o2 = rc.o(this, 1.0f, eVar2);
        this.f829j = o2;
        o2.L(2);
        o2.M(f2);
        eVar2.d(o2);
        setFocusableInTouchMode(true);
        jb.x0(this, 1);
        jb.n0(this, new b(this));
        setMotionEventSplittingEnabled(false);
        if (jb.y(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC0107a(this));
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f806M);
                try {
                    this.f844y = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.f844y = null;
            }
        }
        this.f823b = f * 10.0f;
        this.f819J = new ArrayList<>();
    }

    /* renamed from: v */
    public static String m6737v(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: w */
    public static boolean m6736w(View view) {
        Drawable background = view.getBackground();
        boolean z = false;
        if (background != null) {
            z = false;
            if (background.getOpacity() == -1) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: z */
    public static boolean m6733z(View view) {
        return (jb.z(view) == 4 || jb.z(view) == 2) ? false : true;
    }

    /* renamed from: A */
    public boolean m6773A(View view) {
        return ((LayoutParams) view.getLayoutParams()).f846a == 0;
    }

    /* renamed from: B */
    public boolean m6772B(View view) {
        if (m6771C(view)) {
            boolean z = true;
            if ((((LayoutParams) view.getLayoutParams()).f849d & 1) != 1) {
                z = false;
            }
            return z;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: C */
    public boolean m6771C(View view) {
        int b = ta.b(((LayoutParams) view.getLayoutParams()).f846a, jb.B(view));
        return ((b & 3) == 0 && (b & 5) == 0) ? false : true;
    }

    /* renamed from: D */
    public boolean m6770D(View view) {
        if (m6771C(view)) {
            return ((LayoutParams) view.getLayoutParams()).f847b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: E */
    public final boolean m6769E(float f, float f2, View view) {
        if (this.f820K == null) {
            this.f820K = new Rect();
        }
        view.getHitRect(this.f820K);
        return this.f820K.contains((int) f, (int) f2);
    }

    /* renamed from: F */
    public final boolean m6768F(Drawable drawable, int i) {
        if (drawable == null || !C1282d9.m2737h(drawable)) {
            return false;
        }
        C1282d9.m2732m(drawable, i);
        return true;
    }

    /* renamed from: G */
    public void m6767G(View view, float f) {
        float m6739t = m6739t(view);
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (m6739t * width));
        if (!m6755d(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m6760N(view, f);
    }

    /* renamed from: H */
    public void m6766H(View view) {
        m6765I(view, true);
    }

    /* renamed from: I */
    public void m6765I(View view, boolean z) {
        if (!m6771C(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f834o) {
            layoutParams.f847b = 1.0f;
            layoutParams.f849d = 1;
            m6759O(view, true);
        } else if (z) {
            layoutParams.f849d |= 2;
            if (m6755d(view, 3)) {
                this.f828h.P(view, 0, view.getTop());
            } else {
                this.f829j.P(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            m6767G(view, 1.0f);
            m6758P(layoutParams.f846a, 0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    /* renamed from: J */
    public void m6764J(AbstractC0108d abstractC0108d) {
        List<AbstractC0108d> list;
        if (abstractC0108d == null || (list = this.f841v) == null) {
            return;
        }
        list.remove(abstractC0108d);
    }

    /* renamed from: K */
    public final Drawable m6763K() {
        int B = jb.B(this);
        if (B == 0) {
            Drawable drawable = this.f815F;
            if (drawable != null) {
                m6768F(drawable, B);
                return this.f815F;
            }
        } else {
            Drawable drawable2 = this.f816G;
            if (drawable2 != null) {
                m6768F(drawable2, B);
                return this.f816G;
            }
        }
        return this.f817H;
    }

    /* renamed from: L */
    public final Drawable m6762L() {
        int B = jb.B(this);
        if (B == 0) {
            Drawable drawable = this.f816G;
            if (drawable != null) {
                m6768F(drawable, B);
                return this.f816G;
            }
        } else {
            Drawable drawable2 = this.f815F;
            if (drawable2 != null) {
                m6768F(drawable2, B);
                return this.f815F;
            }
        }
        return this.f818I;
    }

    /* renamed from: M */
    public final void m6761M() {
        if (f809P) {
            return;
        }
        this.f845z = m6763K();
        this.f810A = m6762L();
    }

    /* renamed from: N */
    public void m6760N(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f == layoutParams.f847b) {
            return;
        }
        layoutParams.f847b = f;
        m6748k(view, f);
    }

    /* renamed from: O */
    public final void m6759O(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            jb.x0(childAt, ((z || m6771C(childAt)) && (!z || childAt != view)) ? 4 : 1);
        }
    }

    /* renamed from: P */
    public void m6758P(int i, int i2, View view) {
        int i3;
        int A = this.f828h.A();
        int A2 = this.f829j.A();
        if (A == 1 || A2 == 1) {
            i3 = 1;
        } else {
            i3 = 2;
            if (A != 2) {
                i3 = A2 == 2 ? 2 : 0;
            }
        }
        if (view != null && i2 == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).f847b;
            if (f == 0.0f) {
                m6750i(view);
            } else if (f == 1.0f) {
                m6749j(view);
            }
        }
        if (i3 != this.f832m) {
            this.f832m = i3;
            List<AbstractC0108d> list = this.f841v;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f841v.get(size).m6727c(i3);
            }
        }
    }

    /* renamed from: a */
    public void m6757a(AbstractC0108d abstractC0108d) {
        if (abstractC0108d == null) {
            return;
        }
        if (this.f841v == null) {
            this.f841v = new ArrayList();
        }
        this.f841v.add(abstractC0108d);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (!m6771C(childAt)) {
                this.f819J.add(childAt);
            } else if (m6772B(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
        }
        if (!z) {
            int size = this.f819J.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = this.f819J.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        this.f819J.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        jb.x0(view, (m6745n() != null || m6771C(view)) ? 4 : 1);
        if (!f808O) {
            jb.n0(view, this.f822a);
        }
    }

    /* renamed from: b */
    public void m6756b() {
        if (!this.f839t) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.f839t = true;
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).f847b);
        }
        this.f826f = f;
        boolean n = this.f828h.n(true);
        boolean n2 = this.f829j.n(true);
        if (n || n2) {
            jb.d0(this);
        }
    }

    /* renamed from: d */
    public boolean m6755d(View view, int i) {
        return (m6740s(view) & i) == i;
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f826f <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return false;
            }
            View childAt = getChildAt(childCount);
            if (m6769E(x, y, childAt) && !m6773A(childAt) && m6747l(motionEvent, childAt)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        Drawable drawable;
        int i;
        int i2;
        int height = getHeight();
        boolean m6773A = m6773A(view);
        int width = getWidth();
        int save = canvas.save();
        int i3 = 0;
        int i4 = width;
        if (m6773A) {
            int childCount = getChildCount();
            int i5 = 0;
            int i6 = 0;
            while (true) {
                i2 = i6;
                if (i5 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i5);
                int i7 = width;
                int i8 = i2;
                if (childAt != view) {
                    i7 = width;
                    i8 = i2;
                    if (childAt.getVisibility() == 0) {
                        i7 = width;
                        i8 = i2;
                        if (m6736w(childAt)) {
                            i7 = width;
                            i8 = i2;
                            if (m6771C(childAt)) {
                                if (childAt.getHeight() < height) {
                                    i7 = width;
                                    i8 = i2;
                                } else if (m6755d(childAt, 3)) {
                                    int right = childAt.getRight();
                                    i7 = width;
                                    i8 = i2;
                                    if (right > i2) {
                                        i8 = right;
                                        i7 = width;
                                    }
                                } else {
                                    int left = childAt.getLeft();
                                    i7 = width;
                                    i8 = i2;
                                    if (left < width) {
                                        i7 = left;
                                        i8 = i2;
                                    }
                                }
                            }
                        }
                    }
                }
                i5++;
                width = i7;
                i6 = i8;
            }
            canvas.clipRect(i2, 0, width, getHeight());
            i3 = i2;
            i4 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f826f;
        if (f <= 0.0f || !m6773A) {
            if (this.f845z != null && m6755d(view, 3)) {
                int intrinsicWidth = this.f845z.getIntrinsicWidth();
                int right2 = view.getRight();
                float max = Math.max(0.0f, Math.min(right2 / this.f828h.x(), 1.0f));
                this.f845z.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
                this.f845z.setAlpha((int) (max * 255.0f));
                drawable = this.f845z;
            } else if (this.f810A != null && m6755d(view, 5)) {
                int intrinsicWidth2 = this.f810A.getIntrinsicWidth();
                int left2 = view.getLeft();
                float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f829j.x(), 1.0f));
                this.f810A.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
                this.f810A.setAlpha((int) (max2 * 255.0f));
                drawable = this.f810A;
            }
            drawable.draw(canvas);
        } else {
            this.f827g.setColor((this.f825d & 16777215) | (((int) ((((-16777216) & i) >>> 24) * f)) << 24));
            canvas.drawRect(i3, 0.0f, i4, getHeight(), this.f827g);
        }
        return drawChild;
    }

    /* renamed from: e */
    public void m6754e(View view) {
        m6753f(view, true);
    }

    /* renamed from: f */
    public void m6753f(View view, boolean z) {
        int i;
        rc rcVar;
        if (!m6771C(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f834o) {
            layoutParams.f847b = 0.0f;
            layoutParams.f849d = 0;
        } else if (z) {
            layoutParams.f849d |= 4;
            if (m6755d(view, 3)) {
                rcVar = this.f828h;
                i = -view.getWidth();
            } else {
                rcVar = this.f829j;
                i = getWidth();
            }
            rcVar.P(view, i, view.getTop());
        } else {
            m6767G(view, 0.0f);
            m6758P(layoutParams.f846a, 0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    /* renamed from: g */
    public void m6752g() {
        m6751h(false);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        if (f809P) {
            return this.f823b;
        }
        return 0.0f;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f844y;
    }

    /* renamed from: h */
    public void m6751h(boolean z) {
        boolean z2;
        int childCount = getChildCount();
        int i = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            boolean z4 = z2;
            if (m6771C(childAt)) {
                if (!z || layoutParams.f848c) {
                    z4 = z2 | (m6755d(childAt, 3) ? this.f828h.P(childAt, -childAt.getWidth(), childAt.getTop()) : this.f829j.P(childAt, getWidth(), childAt.getTop()));
                    layoutParams.f848c = false;
                } else {
                    z4 = z2;
                }
            }
            i++;
            z3 = z4;
        }
        this.f830k.c();
        this.f831l.c();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: i */
    public void m6750i(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f849d & 1) == 1) {
            layoutParams.f849d = 0;
            List<AbstractC0108d> list = this.f841v;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f841v.get(size).m6728b(view);
                }
            }
            m6759O(view, false);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    /* renamed from: j */
    public void m6749j(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f849d & 1) == 0) {
            layoutParams.f849d = 1;
            List<AbstractC0108d> list = this.f841v;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f841v.get(size).m6729a(view);
                }
            }
            m6759O(view, true);
            if (!hasWindowFocus()) {
                return;
            }
            sendAccessibilityEvent(32);
        }
    }

    /* renamed from: k */
    public void m6748k(View view, float f) {
        List<AbstractC0108d> list = this.f841v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f841v.get(size).m6726d(view, f);
            }
        }
    }

    /* renamed from: l */
    public final boolean m6747l(MotionEvent motionEvent, View view) {
        boolean z;
        if (!view.getMatrix().isIdentity()) {
            MotionEvent m6738u = m6738u(motionEvent, view);
            z = view.dispatchGenericMotionEvent(m6738u);
            m6738u.recycle();
        } else {
            float scrollX = getScrollX() - view.getLeft();
            float scrollY = getScrollY() - view.getTop();
            motionEvent.offsetLocation(scrollX, scrollY);
            z = view.dispatchGenericMotionEvent(motionEvent);
            motionEvent.offsetLocation(-scrollX, -scrollY);
        }
        return z;
    }

    /* renamed from: m */
    public View m6746m(int i) {
        int b = ta.b(i, jb.B(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m6740s(childAt) & 7) == (b & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: n */
    public View m6745n() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f849d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: o */
    public View m6744o() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m6771C(childAt) && m6770D(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f834o = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f834o = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (!this.f814E || this.f844y == null) {
            return;
        }
        int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.f813D) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
        if (systemWindowInsetTop <= 0) {
            return;
        }
        this.f844y.setBounds(0, 0, getWidth(), systemWindowInsetTop);
        this.f844y.draw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (r0 != 3) goto L14;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !m6734y()) {
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            View m6744o = m6744o();
            if (m6744o != null && m6742q(m6744o) == 0) {
                m6752g();
            }
            return m6744o != null;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f;
        int measuredHeight;
        int i6;
        int i7;
        this.f833n = true;
        int i8 = i3 - i;
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m6773A(childAt)) {
                    int i10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i10, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i10, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    if (m6755d(childAt, 3)) {
                        int i11 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i11 + ((int) (layoutParams.f847b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i8 - ((int) (layoutParams.f847b * f3));
                        f = (i8 - i5) / f3;
                    }
                    boolean z2 = f != layoutParams.f847b;
                    int i12 = layoutParams.f846a & 112;
                    if (i12 != 16) {
                        if (i12 != 80) {
                            measuredHeight = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                            i6 = measuredWidth + i5;
                            i7 = measuredHeight2 + measuredHeight;
                        } else {
                            int i13 = i4 - i2;
                            measuredHeight = (i13 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight();
                            i6 = measuredWidth + i5;
                            i7 = i13 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        }
                        childAt.layout(i5, measuredHeight, i6, i7);
                    } else {
                        int i14 = i4 - i2;
                        int i15 = (i14 - measuredHeight2) / 2;
                        int i16 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i15 >= i16) {
                            int i17 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            i16 = i15;
                            if (i15 + measuredHeight2 > i14 - i17) {
                                i16 = (i14 - i17) - measuredHeight2;
                            }
                        }
                        childAt.layout(i5, i16, measuredWidth + i5, measuredHeight2 + i16);
                    }
                    if (z2) {
                        m6760N(childAt, f);
                    }
                    int i18 = layoutParams.f847b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i18) {
                        childAt.setVisibility(i18);
                    }
                }
            }
        }
        this.f833n = false;
        this.f834o = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L6;
     */
    @Override // android.view.View
    @android.annotation.SuppressLint({"WrongConstant"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 829
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View m6746m;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i = savedState.a;
        if (i != 0 && (m6746m = m6746m(i)) != null) {
            m6766H(m6746m);
        }
        int i2 = savedState.b;
        if (i2 != 3) {
            setDrawerLockMode(i2, 3);
        }
        int i3 = savedState.c;
        if (i3 != 3) {
            setDrawerLockMode(i3, 5);
        }
        int i4 = savedState.d;
        if (i4 != 3) {
            setDrawerLockMode(i4, 8388611);
        }
        int i5 = savedState.f;
        if (i5 == 3) {
            return;
        }
        setDrawerLockMode(i5, 8388613);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        m6761M();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int i2 = layoutParams.f849d;
            boolean z = true;
            boolean z2 = i2 == 1;
            if (i2 != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.a = layoutParams.f846a;
                break;
            }
        }
        savedState.b = this.f835p;
        savedState.c = this.f836q;
        savedState.d = this.f837r;
        savedState.f = this.f838s;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0096, code lost:
        if (m6742q(r0) != 2) goto L20;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public int m6743p(int i) {
        int B = jb.B(this);
        if (i == 3) {
            int i2 = this.f835p;
            if (i2 != 3) {
                return i2;
            }
            int i3 = B == 0 ? this.f837r : this.f838s;
            if (i3 == 3) {
                return 0;
            }
            return i3;
        } else if (i == 5) {
            int i4 = this.f836q;
            if (i4 != 3) {
                return i4;
            }
            int i5 = B == 0 ? this.f838s : this.f837r;
            if (i5 == 3) {
                return 0;
            }
            return i5;
        } else if (i == 8388611) {
            int i6 = this.f837r;
            if (i6 != 3) {
                return i6;
            }
            int i7 = B == 0 ? this.f835p : this.f836q;
            if (i7 == 3) {
                return 0;
            }
            return i7;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f838s;
            if (i8 != 3) {
                return i8;
            }
            int i9 = B == 0 ? this.f836q : this.f835p;
            if (i9 == 3) {
                return 0;
            }
            return i9;
        }
    }

    /* renamed from: q */
    public int m6742q(View view) {
        if (m6771C(view)) {
            return m6743p(((LayoutParams) view.getLayoutParams()).f846a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: r */
    public CharSequence m6741r(int i) {
        int b = ta.b(i, jb.B(this));
        if (b == 3) {
            return this.f811B;
        }
        if (b != 5) {
            return null;
        }
        return this.f812C;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            m6751h(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f833n) {
            super.requestLayout();
        }
    }

    /* renamed from: s */
    public int m6740s(View view) {
        return ta.b(((LayoutParams) view.getLayoutParams()).f846a, jb.B(this));
    }

    public void setChildInsets(Object obj, boolean z) {
        this.f813D = obj;
        this.f814E = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.f823b = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m6771C(childAt)) {
                jb.u0(childAt, this.f823b);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(AbstractC0108d abstractC0108d) {
        AbstractC0108d abstractC0108d2 = this.f840u;
        if (abstractC0108d2 != null) {
            m6764J(abstractC0108d2);
        }
        if (abstractC0108d != null) {
            m6757a(abstractC0108d);
        }
        this.f840u = abstractC0108d;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int i2) {
        View m6746m;
        int b = ta.b(i2, jb.B(this));
        if (i2 == 3) {
            this.f835p = i;
        } else if (i2 == 5) {
            this.f836q = i;
        } else if (i2 == 8388611) {
            this.f837r = i;
        } else if (i2 == 8388613) {
            this.f838s = i;
        }
        if (i != 0) {
            (b == 3 ? this.f828h : this.f829j).b();
        }
        if (i != 1) {
            if (i != 2 || (m6746m = m6746m(b)) == null) {
                return;
            }
            m6766H(m6746m);
            return;
        }
        View m6746m2 = m6746m(b);
        if (m6746m2 == null) {
            return;
        }
        m6754e(m6746m2);
    }

    public void setDrawerLockMode(int i, View view) {
        if (m6771C(view)) {
            setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).f846a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void setDrawerShadow(int i, int i2) {
        setDrawerShadow(g8.f(getContext(), i), i2);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (f809P) {
            return;
        }
        if ((i & 8388611) == 8388611) {
            this.f815F = drawable;
        } else if ((i & 8388613) == 8388613) {
            this.f816G = drawable;
        } else if ((i & 3) == 3) {
            this.f817H = drawable;
        } else if ((i & 5) != 5) {
            return;
        } else {
            this.f818I = drawable;
        }
        m6761M();
        invalidate();
    }

    public void setDrawerTitle(int i, CharSequence charSequence) {
        int b = ta.b(i, jb.B(this));
        if (b == 3) {
            this.f811B = charSequence;
        } else if (b != 5) {
        } else {
            this.f812C = charSequence;
        }
    }

    public void setScrimColor(int i) {
        this.f825d = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.f844y = i != 0 ? g8.f(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f844y = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f844y = new ColorDrawable(i);
        invalidate();
    }

    /* renamed from: t */
    public float m6739t(View view) {
        return ((LayoutParams) view.getLayoutParams()).f847b;
    }

    /* renamed from: u */
    public final MotionEvent m6738u(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.f821L == null) {
                this.f821L = new Matrix();
            }
            matrix.invert(this.f821L);
            obtain.transform(this.f821L);
        }
        return obtain;
    }

    /* renamed from: x */
    public final boolean m6735x() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).f848c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: y */
    public final boolean m6734y() {
        return m6744o() != null;
    }
}
