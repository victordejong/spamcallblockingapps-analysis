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
import androidx.core.content.C0265a;
import androidx.core.graphics.drawable.C0283a;
import d.h.m.d;
import d.h.m.t;
import d.j.a.c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: L */
    private static final int[] f1754L = {16843828};

    /* renamed from: M */
    static final int[] f1755M = {16842931};

    /* renamed from: N */
    static final boolean f1756N;

    /* renamed from: O */
    private static final boolean f1757O;

    /* renamed from: A */
    private CharSequence f1758A;

    /* renamed from: B */
    private CharSequence f1759B;

    /* renamed from: C */
    private Object f1760C;

    /* renamed from: D */
    private boolean f1761D;

    /* renamed from: E */
    private Drawable f1762E;

    /* renamed from: F */
    private Drawable f1763F;

    /* renamed from: G */
    private Drawable f1764G;

    /* renamed from: H */
    private Drawable f1765H;

    /* renamed from: I */
    private final ArrayList<View> f1766I;

    /* renamed from: J */
    private Rect f1767J;

    /* renamed from: K */
    private Matrix f1768K;

    /* renamed from: b */
    private final c f1769b;

    /* renamed from: c */
    private float f1770c;

    /* renamed from: d */
    private int f1771d;

    /* renamed from: e */
    private int f1772e;

    /* renamed from: f */
    private float f1773f;

    /* renamed from: g */
    private Paint f1774g;

    /* renamed from: h */
    private final c f1775h;

    /* renamed from: i */
    private final c f1776i;

    /* renamed from: j */
    private final e f1777j;

    /* renamed from: k */
    private final e f1778k;

    /* renamed from: l */
    private int f1779l;

    /* renamed from: m */
    private boolean f1780m;

    /* renamed from: n */
    private boolean f1781n;

    /* renamed from: o */
    private int f1782o;

    /* renamed from: p */
    private int f1783p;

    /* renamed from: q */
    private int f1784q;

    /* renamed from: r */
    private int f1785r;

    /* renamed from: s */
    private boolean f1786s;

    /* renamed from: t */
    private AbstractC0306d f1787t;

    /* renamed from: u */
    private List<AbstractC0306d> f1788u;

    /* renamed from: v */
    private float f1789v;

    /* renamed from: w */
    private float f1790w;

    /* renamed from: x */
    private Drawable f1791x;

    /* renamed from: y */
    private Drawable f1792y;

    /* renamed from: z */
    private Drawable f1793z;

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f1794a;

        /* renamed from: b */
        float f1795b;

        /* renamed from: c */
        boolean f1796c;

        /* renamed from: d */
        int f1797d;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1794a = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1794a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f1755M);
            this.f1794a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1794a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1794a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f1794a = 0;
            this.f1794a = layoutParams.f1794a;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    class View$OnApplyWindowInsetsListenerC0305a implements View.OnApplyWindowInsetsListener {
        View$OnApplyWindowInsetsListenerC0305a(DrawerLayout drawerLayout) {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public interface AbstractC0306d {
        /* renamed from: a */
        void m13326a(int i);

        /* renamed from: b */
        void m13325b(View view, float f);

        /* renamed from: c */
        void m13324c(View view);

        /* renamed from: d */
        void m13323d(View view);
    }

    static {
        boolean z = true;
        int i = Build.VERSION.SDK_INT;
        f1756N = i >= 19;
        if (i < 21) {
            z = false;
        }
        f1757O = z;
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1769b = new c();
        this.f1772e = -1728053248;
        this.f1774g = new Paint();
        this.f1781n = true;
        this.f1782o = 3;
        this.f1783p = 3;
        this.f1784q = 3;
        this.f1785r = 3;
        this.f1762E = null;
        this.f1763F = null;
        this.f1764G = null;
        this.f1765H = null;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f1771d = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        e eVar = new e(this, 3);
        this.f1777j = eVar;
        e eVar2 = new e(this, 5);
        this.f1778k = eVar2;
        c o = c.o(this, 1.0f, eVar);
        this.f1775h = o;
        o.L(1);
        o.M(f2);
        eVar.q(o);
        c o2 = c.o(this, 1.0f, eVar2);
        this.f1776i = o2;
        o2.L(2);
        o2.M(f2);
        eVar2.q(o2);
        setFocusableInTouchMode(true);
        t.x0(this, 1);
        t.n0(this, new b(this));
        setMotionEventSplittingEnabled(false);
        if (t.y(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC0305a(this));
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f1754L);
                try {
                    this.f1791x = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.f1791x = null;
            }
        }
        this.f1770c = f * 10.0f;
        this.f1766I = new ArrayList<>();
    }

    /* renamed from: A */
    static boolean m13375A(View view) {
        return (t.z(view) == 4 || t.z(view) == 2) ? false : true;
    }

    /* renamed from: G */
    private boolean m13369G(float f, float f2, View view) {
        if (this.f1767J == null) {
            this.f1767J = new Rect();
        }
        view.getHitRect(this.f1767J);
        return this.f1767J.contains((int) f, (int) f2);
    }

    /* renamed from: H */
    private boolean m13368H(Drawable drawable, int i) {
        if (drawable == null || !C0283a.m13471h(drawable)) {
            return false;
        }
        C0283a.m13466m(drawable, i);
        return true;
    }

    /* renamed from: O */
    private Drawable m13361O() {
        int B = t.B(this);
        if (B == 0) {
            Drawable drawable = this.f1762E;
            if (drawable != null) {
                m13368H(drawable, B);
                return this.f1762E;
            }
        } else {
            Drawable drawable2 = this.f1763F;
            if (drawable2 != null) {
                m13368H(drawable2, B);
                return this.f1763F;
            }
        }
        return this.f1764G;
    }

    /* renamed from: P */
    private Drawable m13360P() {
        int B = t.B(this);
        if (B == 0) {
            Drawable drawable = this.f1763F;
            if (drawable != null) {
                m13368H(drawable, B);
                return this.f1763F;
            }
        } else {
            Drawable drawable2 = this.f1762E;
            if (drawable2 != null) {
                m13368H(drawable2, B);
                return this.f1762E;
            }
        }
        return this.f1765H;
    }

    /* renamed from: Q */
    private void m13359Q() {
        if (!f1757O) {
            this.f1792y = m13361O();
            this.f1793z = m13360P();
        }
    }

    /* renamed from: S */
    private void m13357S(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            t.x0(childAt, ((z || m13371E(childAt)) && (!z || childAt != view)) ? 4 : 1);
        }
    }

    /* renamed from: m */
    private boolean m13343m(MotionEvent motionEvent, View view) {
        boolean z;
        if (!view.getMatrix().isIdentity()) {
            MotionEvent v = m13334v(motionEvent, view);
            z = view.dispatchGenericMotionEvent(v);
            v.recycle();
        } else {
            float scrollX = getScrollX() - view.getLeft();
            float scrollY = getScrollY() - view.getTop();
            motionEvent.offsetLocation(scrollX, scrollY);
            z = view.dispatchGenericMotionEvent(motionEvent);
            motionEvent.offsetLocation(-scrollX, -scrollY);
        }
        return z;
    }

    /* renamed from: v */
    private MotionEvent m13334v(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.f1768K == null) {
                this.f1768K = new Matrix();
            }
            matrix.invert(this.f1768K);
            obtain.transform(this.f1768K);
        }
        return obtain;
    }

    /* renamed from: w */
    static String m13333w(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: x */
    private static boolean m13332x(View view) {
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

    /* renamed from: y */
    private boolean m13331y() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).f1796c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: z */
    private boolean m13330z() {
        return m13340p() != null;
    }

    /* renamed from: B */
    boolean m13374B(View view) {
        return ((LayoutParams) view.getLayoutParams()).f1794a == 0;
    }

    /* renamed from: C */
    public boolean m13373C(int i) {
        View n = m13342n(i);
        if (n != null) {
            return m13372D(n);
        }
        return false;
    }

    /* renamed from: D */
    public boolean m13372D(View view) {
        if (m13371E(view)) {
            boolean z = true;
            if ((((LayoutParams) view.getLayoutParams()).f1797d & 1) != 1) {
                z = false;
            }
            return z;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: E */
    boolean m13371E(View view) {
        int b = d.b(((LayoutParams) view.getLayoutParams()).f1794a, t.B(view));
        return ((b & 3) == 0 && (b & 5) == 0) ? false : true;
    }

    /* renamed from: F */
    public boolean m13370F(View view) {
        if (m13371E(view)) {
            return ((LayoutParams) view.getLayoutParams()).f1795b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: I */
    void m13367I(View view, float f) {
        float u = m13335u(view);
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (u * width));
        if (!m13353c(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m13358R(view, f);
    }

    /* renamed from: J */
    public void m13366J(int i) {
        m13365K(i, true);
    }

    /* renamed from: K */
    public void m13365K(int i, boolean z) {
        View n = m13342n(i);
        if (n != null) {
            m13363M(n, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m13333w(i));
    }

    /* renamed from: L */
    public void m13364L(View view) {
        m13363M(view, true);
    }

    /* renamed from: M */
    public void m13363M(View view, boolean z) {
        if (m13371E(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f1781n) {
                layoutParams.f1795b = 1.0f;
                layoutParams.f1797d = 1;
                m13357S(view, true);
            } else if (z) {
                layoutParams.f1797d |= 2;
                if (m13353c(view, 3)) {
                    this.f1775h.P(view, 0, view.getTop());
                } else {
                    this.f1776i.P(view, getWidth() - view.getWidth(), view.getTop());
                }
            } else {
                m13367I(view, 1.0f);
                m13356T(layoutParams.f1794a, 0, view);
                view.setVisibility(0);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    /* renamed from: N */
    public void m13362N(AbstractC0306d dVar) {
        List<AbstractC0306d> list;
        if (dVar != null && (list = this.f1788u) != null) {
            list.remove(dVar);
        }
    }

    /* renamed from: R */
    void m13358R(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f != layoutParams.f1795b) {
            layoutParams.f1795b = f;
            m13344l(view, f);
        }
    }

    /* renamed from: T */
    void m13356T(int i, int i2, View view) {
        int i3;
        int A = this.f1775h.A();
        int A2 = this.f1776i.A();
        if (A == 1 || A2 == 1) {
            i3 = 1;
        } else {
            i3 = 2;
            if (A != 2) {
                i3 = A2 == 2 ? 2 : 0;
            }
        }
        if (view != null && i2 == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).f1795b;
            if (f == 0.0f) {
                m13346j(view);
            } else if (f == 1.0f) {
                m13345k(view);
            }
        }
        if (i3 != this.f1779l) {
            this.f1779l = i3;
            List<AbstractC0306d> list = this.f1788u;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1788u.get(size).m13326a(i3);
                }
            }
        }
    }

    /* renamed from: a */
    public void m13355a(AbstractC0306d dVar) {
        if (dVar != null) {
            if (this.f1788u == null) {
                this.f1788u = new ArrayList();
            }
            this.f1788u.add(dVar);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z = false;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (!m13371E(childAt)) {
                    this.f1766I.add(childAt);
                } else if (m13372D(childAt)) {
                    childAt.addFocusables(arrayList, i, i2);
                    z = true;
                }
            }
            if (!z) {
                int size = this.f1766I.size();
                for (int i4 = 0; i4 < size; i4++) {
                    View view = this.f1766I.get(i4);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i, i2);
                    }
                }
            }
            this.f1766I.clear();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        t.x0(view, (m13341o() != null || m13371E(view)) ? 4 : 1);
        if (!f1756N) {
            t.n0(view, this.f1769b);
        }
    }

    /* renamed from: b */
    void m13354b() {
        if (!this.f1786s) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.f1786s = true;
        }
    }

    /* renamed from: c */
    boolean m13353c(View view, int i) {
        return (m13336t(view) & i) == i;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).f1795b);
        }
        this.f1773f = f;
        boolean n = this.f1775h.n(true);
        boolean n2 = this.f1776i.n(true);
        if (n || n2) {
            t.d0(this);
        }
    }

    /* renamed from: d */
    public void m13352d(int i) {
        m13351e(i, true);
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f1773f <= 0.0f) {
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
            if (m13369G(x, y, childAt) && !m13374B(childAt) && m13343m(motionEvent, childAt)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        Drawable drawable;
        int height = getHeight();
        boolean B = m13374B(view);
        int width = getWidth();
        int save = canvas.save();
        int i = 0;
        int i2 = width;
        if (B) {
            int childCount = getChildCount();
            i = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                width = width;
                i = i;
                if (childAt != view) {
                    width = width;
                    i = i;
                    if (childAt.getVisibility() == 0) {
                        width = width;
                        i = i;
                        if (m13332x(childAt)) {
                            width = width;
                            i = i;
                            if (m13371E(childAt)) {
                                if (childAt.getHeight() < height) {
                                    width = width;
                                    i = i;
                                } else if (m13353c(childAt, 3)) {
                                    int right = childAt.getRight();
                                    width = width;
                                    i = i;
                                    if (right > i) {
                                        i = right;
                                        width = width;
                                    }
                                } else {
                                    int left = childAt.getLeft();
                                    width = width;
                                    i = i;
                                    if (left < width) {
                                        width = left;
                                        i = i;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            canvas.clipRect(i, 0, width, getHeight());
            i2 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f1773f;
        if (f <= 0.0f || !B) {
            if (this.f1792y != null && m13353c(view, 3)) {
                int intrinsicWidth = this.f1792y.getIntrinsicWidth();
                int right2 = view.getRight();
                float max = Math.max(0.0f, Math.min(right2 / this.f1775h.x(), 1.0f));
                this.f1792y.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
                this.f1792y.setAlpha((int) (max * 255.0f));
                drawable = this.f1792y;
            } else if (this.f1793z != null && m13353c(view, 5)) {
                int intrinsicWidth2 = this.f1793z.getIntrinsicWidth();
                int left2 = view.getLeft();
                float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f1776i.x(), 1.0f));
                this.f1793z.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
                this.f1793z.setAlpha((int) (max2 * 255.0f));
                drawable = this.f1793z;
            }
            drawable.draw(canvas);
        } else {
            int i4 = this.f1772e;
            this.f1774g.setColor((i4 & 16777215) | (((int) ((((-16777216) & i4) >>> 24) * f)) << 24));
            canvas.drawRect(i, 0.0f, i2, getHeight(), this.f1774g);
        }
        return drawChild;
    }

    /* renamed from: e */
    public void m13351e(int i, boolean z) {
        View n = m13342n(i);
        if (n != null) {
            m13349g(n, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m13333w(i));
    }

    /* renamed from: f */
    public void m13350f(View view) {
        m13349g(view, true);
    }

    /* renamed from: g */
    public void m13349g(View view, boolean z) {
        int i;
        c cVar;
        if (m13371E(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f1781n) {
                layoutParams.f1795b = 0.0f;
                layoutParams.f1797d = 0;
            } else if (z) {
                layoutParams.f1797d |= 4;
                if (m13353c(view, 3)) {
                    cVar = this.f1775h;
                    i = -view.getWidth();
                } else {
                    cVar = this.f1776i;
                    i = getWidth();
                }
                cVar.P(view, i, view.getTop());
            } else {
                m13367I(view, 0.0f);
                m13356T(layoutParams.f1794a, 0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        if (f1757O) {
            return this.f1770c;
        }
        return 0.0f;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f1791x;
    }

    /* renamed from: h */
    public void m13348h() {
        m13347i(false);
    }

    /* renamed from: i */
    void m13347i(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            z2 = z2;
            if (m13371E(childAt)) {
                if (!z || layoutParams.f1796c) {
                    z2 |= m13353c(childAt, 3) ? this.f1775h.P(childAt, -childAt.getWidth(), childAt.getTop()) : this.f1776i.P(childAt, getWidth(), childAt.getTop());
                    layoutParams.f1796c = false;
                } else {
                    z2 = z2;
                }
            }
        }
        this.f1777j.p();
        this.f1778k.p();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: j */
    void m13346j(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f1797d & 1) == 1) {
            layoutParams.f1797d = 0;
            List<AbstractC0306d> list = this.f1788u;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1788u.get(size).m13323d(view);
                }
            }
            m13357S(view, false);
            if (hasWindowFocus() && (rootView = getRootView()) != null) {
                rootView.sendAccessibilityEvent(32);
            }
        }
    }

    /* renamed from: k */
    void m13345k(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f1797d & 1) == 0) {
            layoutParams.f1797d = 1;
            List<AbstractC0306d> list = this.f1788u;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1788u.get(size).m13324c(view);
                }
            }
            m13357S(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    /* renamed from: l */
    void m13344l(View view, float f) {
        List<AbstractC0306d> list = this.f1788u;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f1788u.get(size).m13325b(view, f);
            }
        }
    }

    /* renamed from: n */
    View m13342n(int i) {
        int b = d.b(i, t.B(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m13336t(childAt) & 7) == (b & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: o */
    View m13341o() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f1797d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1781n = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1781n = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (this.f1761D && this.f1791x != null) {
            int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.f1760C) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
            if (systemWindowInsetTop > 0) {
                this.f1791x.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.f1791x.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (r0 != 3) goto L_0x0057;
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
        if (i != 4 || !m13330z()) {
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View p = m13340p();
        if (p != null && m13338r(p) == 0) {
            m13348h();
        }
        return p != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f;
        int measuredHeight;
        int i6;
        int i7;
        this.f1780m = true;
        int i8 = i3 - i;
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m13374B(childAt)) {
                    int i10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i10, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i10, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight2 = childAt.getMeasuredHeight();
                    if (m13353c(childAt, 3)) {
                        int i11 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i11 + ((int) (layoutParams.f1795b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i8 - ((int) (layoutParams.f1795b * f3));
                        f = (i8 - i5) / f3;
                    }
                    boolean z2 = f != layoutParams.f1795b;
                    int i12 = layoutParams.f1794a & 112;
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
                        m13358R(childAt, f);
                    }
                    int i18 = layoutParams.f1795b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i18) {
                        childAt.setVisibility(i18);
                    }
                }
            }
        }
        this.f1780m = false;
        this.f1781n = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L_0x002e;
     */
    @Override // android.view.View
    @android.annotation.SuppressLint({"WrongConstant"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 839
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View n;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m13379a());
        int i = savedState.d;
        if (!(i == 0 || (n = m13342n(i)) == null)) {
            m13364L(n);
        }
        int i2 = savedState.e;
        if (i2 != 3) {
            setDrawerLockMode(i2, 3);
        }
        int i3 = savedState.f;
        if (i3 != 3) {
            setDrawerLockMode(i3, 5);
        }
        int i4 = savedState.g;
        if (i4 != 3) {
            setDrawerLockMode(i4, 8388611);
        }
        int i5 = savedState.h;
        if (i5 != 3) {
            setDrawerLockMode(i5, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        m13359Q();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int i2 = layoutParams.f1797d;
            boolean z = true;
            boolean z2 = i2 == 1;
            if (i2 != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.d = layoutParams.f1794a;
                break;
            }
        }
        savedState.e = this.f1782o;
        savedState.f = this.f1783p;
        savedState.g = this.f1784q;
        savedState.h = this.f1785r;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0096, code lost:
        if (m13338r(r0) != 2) goto L_0x009b;
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
    View m13340p() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m13371E(childAt) && m13370F(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: q */
    public int m13339q(int i) {
        int B = t.B(this);
        if (i == 3) {
            int i2 = this.f1782o;
            if (i2 != 3) {
                return i2;
            }
            int i3 = B == 0 ? this.f1784q : this.f1785r;
            if (i3 != 3) {
                return i3;
            }
            return 0;
        } else if (i == 5) {
            int i4 = this.f1783p;
            if (i4 != 3) {
                return i4;
            }
            int i5 = B == 0 ? this.f1785r : this.f1784q;
            if (i5 != 3) {
                return i5;
            }
            return 0;
        } else if (i == 8388611) {
            int i6 = this.f1784q;
            if (i6 != 3) {
                return i6;
            }
            int i7 = B == 0 ? this.f1782o : this.f1783p;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f1785r;
            if (i8 != 3) {
                return i8;
            }
            int i9 = B == 0 ? this.f1783p : this.f1782o;
            if (i9 != 3) {
                return i9;
            }
            return 0;
        }
    }

    /* renamed from: r */
    public int m13338r(View view) {
        if (m13371E(view)) {
            return m13339q(((LayoutParams) view.getLayoutParams()).f1794a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            m13347i(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f1780m) {
            super.requestLayout();
        }
    }

    /* renamed from: s */
    public CharSequence m13337s(int i) {
        int b = d.b(i, t.B(this));
        if (b == 3) {
            return this.f1758A;
        }
        if (b == 5) {
            return this.f1759B;
        }
        return null;
    }

    public void setChildInsets(Object obj, boolean z) {
        this.f1760C = obj;
        this.f1761D = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.f1770c = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m13371E(childAt)) {
                t.u0(childAt, this.f1770c);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(AbstractC0306d dVar) {
        AbstractC0306d dVar2 = this.f1787t;
        if (dVar2 != null) {
            m13362N(dVar2);
        }
        if (dVar != null) {
            m13355a(dVar);
        }
        this.f1787t = dVar;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int i2) {
        View n;
        int b = d.b(i2, t.B(this));
        if (i2 == 3) {
            this.f1782o = i;
        } else if (i2 == 5) {
            this.f1783p = i;
        } else if (i2 == 8388611) {
            this.f1784q = i;
        } else if (i2 == 8388613) {
            this.f1785r = i;
        }
        if (i != 0) {
            (b == 3 ? this.f1775h : this.f1776i).b();
        }
        if (i == 1) {
            View n2 = m13342n(b);
            if (n2 != null) {
                m13350f(n2);
            }
        } else if (i == 2 && (n = m13342n(b)) != null) {
            m13364L(n);
        }
    }

    public void setDrawerLockMode(int i, View view) {
        if (m13371E(view)) {
            setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).f1794a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void setDrawerShadow(int i, int i2) {
        setDrawerShadow(C0265a.m13551f(getContext(), i), i2);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (!f1757O) {
            if ((i & 8388611) == 8388611) {
                this.f1762E = drawable;
            } else if ((i & 8388613) == 8388613) {
                this.f1763F = drawable;
            } else if ((i & 3) == 3) {
                this.f1764G = drawable;
            } else if ((i & 5) == 5) {
                this.f1765H = drawable;
            } else {
                return;
            }
            m13359Q();
            invalidate();
        }
    }

    public void setDrawerTitle(int i, CharSequence charSequence) {
        int b = d.b(i, t.B(this));
        if (b == 3) {
            this.f1758A = charSequence;
        } else if (b == 5) {
            this.f1759B = charSequence;
        }
    }

    public void setScrimColor(int i) {
        this.f1772e = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.f1791x = i != 0 ? C0265a.m13551f(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f1791x = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f1791x = new ColorDrawable(i);
        invalidate();
    }

    /* renamed from: t */
    int m13336t(View view) {
        return d.b(((LayoutParams) view.getLayoutParams()).f1794a, t.B(this));
    }

    /* renamed from: u */
    float m13335u(View view) {
        return ((LayoutParams) view.getLayoutParams()).f1795b;
    }
}
