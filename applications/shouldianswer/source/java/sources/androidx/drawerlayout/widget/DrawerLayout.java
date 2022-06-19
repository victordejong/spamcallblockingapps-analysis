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
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p015a.C0409a;
import androidx.core.p023g.C0503a;
import androidx.core.p023g.C0533c;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.p024a.C0510d;
import androidx.customview.p026a.C0618c;
import androidx.customview.view.AbsSavedState;
import com.google.android.flexbox.FlexItem;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: b */
    static final boolean f2132b;

    /* renamed from: d */
    private static final boolean f2134d;

    /* renamed from: A */
    private float f2135A;

    /* renamed from: B */
    private Drawable f2136B;

    /* renamed from: C */
    private Drawable f2137C;

    /* renamed from: D */
    private Drawable f2138D;

    /* renamed from: E */
    private CharSequence f2139E;

    /* renamed from: F */
    private CharSequence f2140F;

    /* renamed from: G */
    private Object f2141G;

    /* renamed from: H */
    private boolean f2142H;

    /* renamed from: I */
    private Drawable f2143I;

    /* renamed from: J */
    private Drawable f2144J;

    /* renamed from: K */
    private Drawable f2145K;

    /* renamed from: L */
    private Drawable f2146L;

    /* renamed from: M */
    private final ArrayList<View> f2147M;

    /* renamed from: N */
    private Rect f2148N;

    /* renamed from: O */
    private Matrix f2149O;

    /* renamed from: e */
    private final C0657b f2150e;

    /* renamed from: f */
    private float f2151f;

    /* renamed from: g */
    private int f2152g;

    /* renamed from: h */
    private int f2153h;

    /* renamed from: i */
    private float f2154i;

    /* renamed from: j */
    private Paint f2155j;

    /* renamed from: k */
    private final C0618c f2156k;

    /* renamed from: l */
    private final C0618c f2157l;

    /* renamed from: m */
    private final C0660e f2158m;

    /* renamed from: n */
    private final C0660e f2159n;

    /* renamed from: o */
    private int f2160o;

    /* renamed from: p */
    private boolean f2161p;

    /* renamed from: q */
    private boolean f2162q;

    /* renamed from: r */
    private int f2163r;

    /* renamed from: s */
    private int f2164s;

    /* renamed from: t */
    private int f2165t;

    /* renamed from: u */
    private int f2166u;

    /* renamed from: v */
    private boolean f2167v;

    /* renamed from: w */
    private boolean f2168w;

    /* renamed from: x */
    private AbstractC0658c f2169x;

    /* renamed from: y */
    private List<AbstractC0658c> f2170y;

    /* renamed from: z */
    private float f2171z;

    /* renamed from: c */
    private static final int[] f2133c = {16843828};

    /* renamed from: a */
    static final int[] f2131a = {16842931};

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.drawerlayout.widget.DrawerLayout.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        int f2173a;

        /* renamed from: b */
        int f2174b;

        /* renamed from: c */
        int f2175c;

        /* renamed from: d */
        int f2176d;

        /* renamed from: e */
        int f2177e;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2173a = 0;
            this.f2173a = parcel.readInt();
            this.f2174b = parcel.readInt();
            this.f2175c = parcel.readInt();
            this.f2176d = parcel.readInt();
            this.f2177e = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f2173a = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2173a);
            parcel.writeInt(this.f2174b);
            parcel.writeInt(this.f2175c);
            parcel.writeInt(this.f2176d);
            parcel.writeInt(this.f2177e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    public class C0656a extends C0503a {

        /* renamed from: b */
        private final Rect f2179b = new Rect();

        C0656a() {
            DrawerLayout.this = r5;
        }

        /* renamed from: a */
        private void m5781a(C0510d c0510d, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (DrawerLayout.m5786l(childAt)) {
                    c0510d.m6428c(childAt);
                }
            }
        }

        /* renamed from: a */
        private void m5780a(C0510d c0510d, C0510d c0510d2) {
            Rect rect = this.f2179b;
            c0510d2.m6452a(rect);
            c0510d.m6437b(rect);
            c0510d2.m6429c(rect);
            c0510d.m6423d(rect);
            c0510d.m6416e(c0510d2.m6404i());
            c0510d.m6444a(c0510d2.m6388q());
            c0510d.m6433b(c0510d2.m6387r());
            c0510d.m6417e(c0510d2.m6385t());
            c0510d.m6401j(c0510d2.m6394n());
            c0510d.m6405h(c0510d2.m6398l());
            c0510d.m6425c(c0510d2.m6411g());
            c0510d.m6420d(c0510d2.m6407h());
            c0510d.m6412f(c0510d2.m6402j());
            c0510d.m6408g(c0510d2.m6400k());
            c0510d.m6403i(c0510d2.m6396m());
            c0510d.m6455a(c0510d2.m6424d());
        }

        @Override // androidx.core.p023g.C0503a
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View m5810c = DrawerLayout.this.m5810c();
                if (m5810c == null) {
                    return true;
                }
                CharSequence m5817b = DrawerLayout.this.m5817b(DrawerLayout.this.m5800e(m5810c));
                if (m5817b == null) {
                    return true;
                }
                text.add(m5817b);
                return true;
            }
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.core.p023g.C0503a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // androidx.core.p023g.C0503a
        public void onInitializeAccessibilityNodeInfo(View view, C0510d c0510d) {
            if (DrawerLayout.f2132b) {
                super.onInitializeAccessibilityNodeInfo(view, c0510d);
            } else {
                C0510d m6445a = C0510d.m6445a(c0510d);
                super.onInitializeAccessibilityNodeInfo(view, m6445a);
                c0510d.m6436b(view);
                ViewParent m6243g = C0552u.m6243g(view);
                if (m6243g instanceof View) {
                    c0510d.m6422d((View) m6243g);
                }
                m5780a(c0510d, m6445a);
                m6445a.m6384u();
                m5781a(c0510d, (ViewGroup) view);
            }
            c0510d.m6433b((CharSequence) DrawerLayout.class.getName());
            c0510d.m6425c(false);
            c0510d.m6420d(false);
            c0510d.m6434b(C0510d.C0511a.f1822a);
            c0510d.m6434b(C0510d.C0511a.f1823b);
        }

        @Override // androidx.core.p023g.C0503a
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f2132b || DrawerLayout.m5786l(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$b.class */
    public static final class C0657b extends C0503a {
        C0657b() {
        }

        @Override // androidx.core.p023g.C0503a
        public void onInitializeAccessibilityNodeInfo(View view, C0510d c0510d) {
            super.onInitializeAccessibilityNodeInfo(view, c0510d);
            if (!DrawerLayout.m5786l(view)) {
                c0510d.m6422d((View) null);
            }
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$c.class */
    public interface AbstractC0658c {
        /* renamed from: a */
        void mo5779a(int i);

        /* renamed from: a */
        void mo750a(View view);

        /* renamed from: a */
        void mo5778a(View view, float f);

        /* renamed from: b */
        void mo749b(View view);
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public static class C0659d extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f2180a;

        /* renamed from: b */
        float f2181b;

        /* renamed from: c */
        boolean f2182c;

        /* renamed from: d */
        int f2183d;

        public C0659d(int i, int i2) {
            super(i, i2);
            this.f2180a = 0;
        }

        public C0659d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2180a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f2131a);
            this.f2180a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public C0659d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2180a = 0;
        }

        public C0659d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2180a = 0;
        }

        public C0659d(C0659d c0659d) {
            super((ViewGroup.MarginLayoutParams) c0659d);
            this.f2180a = 0;
            this.f2180a = c0659d.f2180a;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$e.class */
    public class C0660e extends C0618c.AbstractC0621a {

        /* renamed from: b */
        private final int f2185b;

        /* renamed from: c */
        private C0618c f2186c;

        /* renamed from: d */
        private final Runnable f2187d = new Runnable() { // from class: androidx.drawerlayout.widget.DrawerLayout.e.1
            @Override // java.lang.Runnable
            public void run() {
                C0660e.this.m5775b();
            }
        };

        C0660e(int i) {
            DrawerLayout.this = r6;
            this.f2185b = i;
        }

        /* renamed from: c */
        private void m5774c() {
            int i = 3;
            if (this.f2185b == 3) {
                i = 5;
            }
            View m5809c = DrawerLayout.this.m5809c(i);
            if (m5809c != null) {
                DrawerLayout.this.m5789i(m5809c);
            }
        }

        /* renamed from: a */
        public void m5777a() {
            DrawerLayout.this.removeCallbacks(this.f2187d);
        }

        /* renamed from: a */
        public void m5776a(C0618c c0618c) {
            this.f2186c = c0618c;
        }

        /* renamed from: b */
        void m5775b() {
            View view;
            int i;
            int m5914b = this.f2186c.m5914b();
            int i2 = 0;
            boolean z = this.f2185b == 3;
            if (z) {
                view = DrawerLayout.this.m5809c(3);
                if (view != null) {
                    i2 = -view.getWidth();
                }
                i = i2 + m5914b;
            } else {
                view = DrawerLayout.this.m5809c(5);
                i = DrawerLayout.this.getWidth() - m5914b;
            }
            if (view != null) {
                if (((!z || view.getLeft() >= i) && (z || view.getLeft() <= i)) || DrawerLayout.this.m5825a(view) != 0) {
                    return;
                }
                C0659d c0659d = (C0659d) view.getLayoutParams();
                this.f2186c.m5919a(view, i, view.getTop());
                c0659d.f2182c = true;
                DrawerLayout.this.invalidate();
                m5774c();
                DrawerLayout.this.m5805d();
            }
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            if (DrawerLayout.this.m5823a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public int getViewHorizontalDragRange(View view) {
            return DrawerLayout.this.m5794g(view) ? view.getWidth() : 0;
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onEdgeDragStarted(int i, int i2) {
            View m5809c = (i & 1) == 1 ? DrawerLayout.this.m5809c(3) : DrawerLayout.this.m5809c(5);
            if (m5809c == null || DrawerLayout.this.m5825a(m5809c) != 0) {
                return;
            }
            this.f2186c.m5920a(m5809c, i2);
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public boolean onEdgeLock(int i) {
            return false;
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onEdgeTouched(int i, int i2) {
            DrawerLayout.this.postDelayed(this.f2187d, 160L);
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewCaptured(View view, int i) {
            ((C0659d) view.getLayoutParams()).f2182c = false;
            m5774c();
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewDragStateChanged(int i) {
            DrawerLayout.this.m5829a(this.f2185b, i, this.f2186c.m5904c());
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.m5823a(view, 3) ? i + width : DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.m5813b(view, width2);
            view.setVisibility(width2 == FlexItem.FLEX_GROW_DEFAULT ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
            if (r0 > 0.5f) goto L18;
         */
        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onViewReleased(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                float r0 = r0.m5803d(r1)
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.m5823a(r1, r2)
                if (r0 == 0) goto L42
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r9 = r0
                r0 = r9
                if (r0 > 0) goto L3c
                r0 = r9
                if (r0 != 0) goto L34
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L34
                goto L3c
            L34:
                r0 = r8
                int r0 = -r0
                r9 = r0
                goto L6d
            L3c:
                r0 = 0
                r9 = r0
                goto L6d
            L42:
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                int r0 = r0.getWidth()
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L66
                r0 = r10
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L6d
                r0 = r10
                r9 = r0
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L6d
            L66:
                r0 = r10
                r1 = r8
                int r0 = r0 - r1
                r9 = r0
            L6d:
                r0 = r4
                androidx.customview.a.c r0 = r0.f2186c
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m5925a(r1, r2)
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.C0660e.onViewReleased(android.view.View, float, float):void");
        }

        @Override // androidx.customview.p026a.C0618c.AbstractC0621a
        public boolean tryCaptureView(View view, int i) {
            return DrawerLayout.this.m5794g(view) && DrawerLayout.this.m5823a(view, this.f2185b) && DrawerLayout.this.m5825a(view) == 0;
        }
    }

    static {
        f2132b = Build.VERSION.SDK_INT >= 19;
        f2134d = Build.VERSION.SDK_INT >= 21;
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2150e = new C0657b();
        this.f2153h = -1728053248;
        this.f2155j = new Paint();
        this.f2162q = true;
        this.f2163r = 3;
        this.f2164s = 3;
        this.f2165t = 3;
        this.f2166u = 3;
        this.f2143I = null;
        this.f2144J = null;
        this.f2145K = null;
        this.f2146L = null;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f2152g = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        this.f2158m = new C0660e(3);
        this.f2159n = new C0660e(5);
        this.f2156k = C0618c.m5917a(this, 1.0f, this.f2158m);
        this.f2156k.m5926a(1);
        this.f2156k.m5931a(f2);
        this.f2158m.m5776a(this.f2156k);
        this.f2157l = C0618c.m5917a(this, 1.0f, this.f2159n);
        this.f2157l.m5926a(2);
        this.f2157l.m5931a(f2);
        this.f2159n.m5776a(this.f2157l);
        setFocusableInTouchMode(true);
        C0552u.m6258b((View) this, 1);
        C0552u.m6269a(this, new C0656a());
        setMotionEventSplittingEnabled(false);
        if (C0552u.m6227t(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.drawerlayout.widget.DrawerLayout.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        ((DrawerLayout) view).m5820a(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
                        return windowInsets.consumeSystemWindowInsets();
                    }
                });
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f2133c);
                try {
                    this.f2136B = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.f2136B = null;
            }
        }
        this.f2151f = f * 10.0f;
        this.f2147M = new ArrayList<>();
    }

    /* renamed from: a */
    private boolean m5832a(float f, float f2, View view) {
        if (this.f2148N == null) {
            this.f2148N = new Rect();
        }
        view.getHitRect(this.f2148N);
        return this.f2148N.contains((int) f, (int) f2);
    }

    /* renamed from: a */
    private boolean m5827a(Drawable drawable, int i) {
        if (drawable == null || !C0575a.m6128b(drawable)) {
            return false;
        }
        C0575a.m6127b(drawable, i);
        return true;
    }

    /* renamed from: a */
    private boolean m5826a(MotionEvent motionEvent, View view) {
        boolean z;
        if (!view.getMatrix().isIdentity()) {
            MotionEvent m5815b = m5815b(motionEvent, view);
            z = view.dispatchGenericMotionEvent(m5815b);
            m5815b.recycle();
        } else {
            float scrollX = getScrollX() - view.getLeft();
            float scrollY = getScrollY() - view.getTop();
            motionEvent.offsetLocation(scrollX, scrollY);
            z = view.dispatchGenericMotionEvent(motionEvent);
            motionEvent.offsetLocation(-scrollX, -scrollY);
        }
        return z;
    }

    /* renamed from: b */
    private MotionEvent m5815b(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.f2149O == null) {
                this.f2149O = new Matrix();
            }
            matrix.invert(this.f2149O);
            obtain.transform(this.f2149O);
        }
        return obtain;
    }

    /* renamed from: c */
    private void m5806c(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m5794g(childAt)) && (!z || childAt != view)) {
                C0552u.m6258b(childAt, 4);
            } else {
                C0552u.m6258b(childAt, 1);
            }
        }
    }

    /* renamed from: d */
    static String m5804d(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: e */
    private void m5802e() {
        if (f2134d) {
            return;
        }
        this.f2137C = m5799f();
        this.f2138D = m5796g();
    }

    /* renamed from: f */
    private Drawable m5799f() {
        int m6245f = C0552u.m6245f(this);
        if (m6245f == 0) {
            Drawable drawable = this.f2143I;
            if (drawable != null) {
                m5827a(drawable, m6245f);
                return this.f2143I;
            }
        } else {
            Drawable drawable2 = this.f2144J;
            if (drawable2 != null) {
                m5827a(drawable2, m6245f);
                return this.f2144J;
            }
        }
        return this.f2145K;
    }

    /* renamed from: g */
    private Drawable m5796g() {
        int m6245f = C0552u.m6245f(this);
        if (m6245f == 0) {
            Drawable drawable = this.f2144J;
            if (drawable != null) {
                m5827a(drawable, m6245f);
                return this.f2144J;
            }
        } else {
            Drawable drawable2 = this.f2143I;
            if (drawable2 != null) {
                m5827a(drawable2, m6245f);
                return this.f2143I;
            }
        }
        return this.f2146L;
    }

    /* renamed from: h */
    private boolean m5793h() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((C0659d) getChildAt(i).getLayoutParams()).f2182c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    private boolean m5790i() {
        return m5810c() != null;
    }

    /* renamed from: l */
    static boolean m5786l(View view) {
        return (C0552u.m6247e(view) == 4 || C0552u.m6247e(view) == 2) ? false : true;
    }

    /* renamed from: m */
    private static boolean m5785m(View view) {
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

    /* renamed from: a */
    public int m5831a(int i) {
        int m6245f = C0552u.m6245f(this);
        if (i == 3) {
            int i2 = this.f2163r;
            if (i2 != 3) {
                return i2;
            }
            int i3 = m6245f == 0 ? this.f2165t : this.f2166u;
            if (i3 == 3) {
                return 0;
            }
            return i3;
        } else if (i == 5) {
            int i4 = this.f2164s;
            if (i4 != 3) {
                return i4;
            }
            int i5 = m6245f == 0 ? this.f2166u : this.f2165t;
            if (i5 == 3) {
                return 0;
            }
            return i5;
        } else if (i == 8388611) {
            int i6 = this.f2165t;
            if (i6 != 3) {
                return i6;
            }
            int i7 = m6245f == 0 ? this.f2163r : this.f2164s;
            if (i7 == 3) {
                return 0;
            }
            return i7;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f2166u;
            if (i8 != 3) {
                return i8;
            }
            int i9 = m6245f == 0 ? this.f2164s : this.f2163r;
            if (i9 == 3) {
                return 0;
            }
            return i9;
        }
    }

    /* renamed from: a */
    public int m5825a(View view) {
        if (m5794g(view)) {
            return m5831a(((C0659d) view.getLayoutParams()).f2180a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: a */
    View m5833a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((C0659d) childAt.getLayoutParams()).f2183d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m5830a(int i, int i2) {
        View m5809c;
        int m6344a = C0533c.m6344a(i2, C0552u.m6245f(this));
        if (i2 == 3) {
            this.f2163r = i;
        } else if (i2 == 5) {
            this.f2164s = i;
        } else if (i2 == 8388611) {
            this.f2165t = i;
        } else if (i2 == 8388613) {
            this.f2166u = i;
        }
        if (i != 0) {
            (m6344a == 3 ? this.f2156k : this.f2157l).m5897e();
        }
        if (i != 1) {
            if (i != 2 || (m5809c = m5809c(m6344a)) == null) {
                return;
            }
            m5791h(m5809c);
            return;
        }
        View m5809c2 = m5809c(m6344a);
        if (m5809c2 == null) {
            return;
        }
        m5789i(m5809c2);
    }

    /* renamed from: a */
    void m5829a(int i, int i2, View view) {
        int i3;
        int m5932a = this.f2156k.m5932a();
        int m5932a2 = this.f2157l.m5932a();
        if (m5932a == 1 || m5932a2 == 1) {
            i3 = 1;
        } else {
            i3 = 2;
            if (m5932a != 2) {
                i3 = m5932a2 == 2 ? 2 : 0;
            }
        }
        if (view != null && i2 == 0) {
            C0659d c0659d = (C0659d) view.getLayoutParams();
            if (c0659d.f2181b == FlexItem.FLEX_GROW_DEFAULT) {
                m5814b(view);
            } else if (c0659d.f2181b == 1.0f) {
                m5808c(view);
            }
        }
        if (i3 != this.f2160o) {
            this.f2160o = i3;
            List<AbstractC0658c> list = this.f2170y;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2170y.get(size).mo5779a(i3);
            }
        }
    }

    /* renamed from: a */
    public void m5828a(int i, boolean z) {
        View m5809c = m5809c(i);
        if (m5809c != null) {
            m5822a(m5809c, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m5804d(i));
    }

    /* renamed from: a */
    void m5824a(View view, float f) {
        List<AbstractC0658c> list = this.f2170y;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2170y.get(size).mo5778a(view, f);
            }
        }
    }

    /* renamed from: a */
    public void m5822a(View view, boolean z) {
        if (!m5794g(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        C0659d c0659d = (C0659d) view.getLayoutParams();
        if (this.f2162q) {
            c0659d.f2181b = 1.0f;
            c0659d.f2183d = 1;
            m5806c(view, true);
        } else if (z) {
            c0659d.f2183d |= 2;
            if (m5823a(view, 3)) {
                this.f2156k.m5919a(view, 0, view.getTop());
            } else {
                this.f2157l.m5919a(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            m5807c(view, 1.0f);
            m5829a(c0659d.f2180a, 0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    /* renamed from: a */
    public void m5821a(AbstractC0658c abstractC0658c) {
        if (abstractC0658c == null) {
            return;
        }
        if (this.f2170y == null) {
            this.f2170y = new ArrayList();
        }
        this.f2170y.add(abstractC0658c);
    }

    /* renamed from: a */
    public void m5820a(Object obj, boolean z) {
        this.f2141G = obj;
        this.f2142H = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    /* renamed from: a */
    void m5819a(boolean z) {
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
            C0659d c0659d = (C0659d) childAt.getLayoutParams();
            boolean z4 = z2;
            if (m5794g(childAt)) {
                if (!z || c0659d.f2182c) {
                    z4 = z2 | (m5823a(childAt, 3) ? this.f2156k.m5919a(childAt, -childAt.getWidth(), childAt.getTop()) : this.f2157l.m5919a(childAt, getWidth(), childAt.getTop()));
                    c0659d.f2182c = false;
                } else {
                    z4 = z2;
                }
            }
            i++;
            z3 = z4;
        }
        this.f2158m.m5777a();
        this.f2159n.m5777a();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: a */
    boolean m5823a(View view, int i) {
        return (m5800e(view) & i) == i;
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
            if (!m5794g(childAt)) {
                this.f2147M.add(childAt);
            } else if (m5788j(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
        }
        if (!z) {
            int size = this.f2147M.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = this.f2147M.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        this.f2147M.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m5833a() != null || m5794g(view)) {
            C0552u.m6258b(view, 4);
        } else {
            C0552u.m6258b(view, 1);
        }
        if (!f2132b) {
            C0552u.m6269a(view, this.f2150e);
        }
    }

    /* renamed from: b */
    public CharSequence m5817b(int i) {
        int m6344a = C0533c.m6344a(i, C0552u.m6245f(this));
        if (m6344a == 3) {
            return this.f2139E;
        }
        if (m6344a != 5) {
            return null;
        }
        return this.f2140F;
    }

    /* renamed from: b */
    public void m5818b() {
        m5819a(false);
    }

    /* renamed from: b */
    public void m5816b(int i, boolean z) {
        View m5809c = m5809c(i);
        if (m5809c != null) {
            m5812b(m5809c, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m5804d(i));
    }

    /* renamed from: b */
    void m5814b(View view) {
        View rootView;
        C0659d c0659d = (C0659d) view.getLayoutParams();
        if ((c0659d.f2183d & 1) == 1) {
            c0659d.f2183d = 0;
            List<AbstractC0658c> list = this.f2170y;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f2170y.get(size).mo749b(view);
                }
            }
            m5806c(view, false);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    /* renamed from: b */
    void m5813b(View view, float f) {
        C0659d c0659d = (C0659d) view.getLayoutParams();
        if (f == c0659d.f2181b) {
            return;
        }
        c0659d.f2181b = f;
        m5824a(view, f);
    }

    /* renamed from: b */
    public void m5812b(View view, boolean z) {
        if (!m5794g(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        C0659d c0659d = (C0659d) view.getLayoutParams();
        if (this.f2162q) {
            c0659d.f2181b = FlexItem.FLEX_GROW_DEFAULT;
            c0659d.f2183d = 0;
        } else if (z) {
            c0659d.f2183d |= 4;
            if (m5823a(view, 3)) {
                this.f2156k.m5919a(view, -view.getWidth(), view.getTop());
            } else {
                this.f2157l.m5919a(view, getWidth(), view.getTop());
            }
        } else {
            m5807c(view, FlexItem.FLEX_GROW_DEFAULT);
            m5829a(c0659d.f2180a, 0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    /* renamed from: b */
    public void m5811b(AbstractC0658c abstractC0658c) {
        List<AbstractC0658c> list;
        if (abstractC0658c == null || (list = this.f2170y) == null) {
            return;
        }
        list.remove(abstractC0658c);
    }

    /* renamed from: c */
    View m5810c() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m5794g(childAt) && m5787k(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: c */
    View m5809c(int i) {
        int m6344a = C0533c.m6344a(i, C0552u.m6245f(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m5800e(childAt) & 7) == (m6344a & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: c */
    void m5808c(View view) {
        C0659d c0659d = (C0659d) view.getLayoutParams();
        if ((c0659d.f2183d & 1) == 0) {
            c0659d.f2183d = 1;
            List<AbstractC0658c> list = this.f2170y;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f2170y.get(size).mo750a(view);
                }
            }
            m5806c(view, true);
            if (!hasWindowFocus()) {
                return;
            }
            sendAccessibilityEvent(32);
        }
    }

    /* renamed from: c */
    void m5807c(View view, float f) {
        float m5803d = m5803d(view);
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (m5803d * width));
        if (!m5823a(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m5813b(view, f);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0659d) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((C0659d) getChildAt(i).getLayoutParams()).f2181b);
        }
        this.f2154i = f;
        boolean m5915a = this.f2156k.m5915a(true);
        boolean m5915a2 = this.f2157l.m5915a(true);
        if (m5915a || m5915a2) {
            C0552u.m6249d(this);
        }
    }

    /* renamed from: d */
    float m5803d(View view) {
        return ((C0659d) view.getLayoutParams()).f2181b;
    }

    /* renamed from: d */
    void m5805d() {
        if (!this.f2168w) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.f2168w = true;
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f2154i <= FlexItem.FLEX_GROW_DEFAULT) {
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
            if (m5832a(x, y, childAt) && !m5797f(childAt) && m5826a(motionEvent, childAt)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        int height = getHeight();
        boolean m5797f = m5797f(view);
        int width = getWidth();
        int save = canvas.save();
        int i2 = 0;
        if (m5797f) {
            int childCount = getChildCount();
            int i3 = 0;
            i2 = 0;
            while (i3 < childCount) {
                View childAt = getChildAt(i3);
                int i4 = i2;
                int i5 = width;
                if (childAt != view) {
                    i4 = i2;
                    i5 = width;
                    if (childAt.getVisibility() == 0) {
                        i4 = i2;
                        i5 = width;
                        if (m5785m(childAt)) {
                            i4 = i2;
                            i5 = width;
                            if (m5794g(childAt)) {
                                if (childAt.getHeight() < height) {
                                    i4 = i2;
                                    i5 = width;
                                } else if (m5823a(childAt, 3)) {
                                    int right = childAt.getRight();
                                    i4 = i2;
                                    i5 = width;
                                    if (right > i2) {
                                        i4 = right;
                                        i5 = width;
                                    }
                                } else {
                                    int left = childAt.getLeft();
                                    i4 = i2;
                                    i5 = width;
                                    if (left < width) {
                                        i5 = left;
                                        i4 = i2;
                                    }
                                }
                            }
                        }
                    }
                }
                i3++;
                i2 = i4;
                width = i5;
            }
            canvas.clipRect(i2, 0, width, getHeight());
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f2154i;
        if (f > FlexItem.FLEX_GROW_DEFAULT && m5797f) {
            this.f2155j.setColor((this.f2153h & FlexItem.MAX_SIZE) | (((int) ((((-16777216) & i) >>> 24) * f)) << 24));
            canvas.drawRect(i2, FlexItem.FLEX_GROW_DEFAULT, width, getHeight(), this.f2155j);
        } else if (this.f2137C != null && m5823a(view, 3)) {
            int intrinsicWidth = this.f2137C.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max((float) FlexItem.FLEX_GROW_DEFAULT, Math.min(right2 / this.f2156k.m5914b(), 1.0f));
            this.f2137C.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f2137C.setAlpha((int) (max * 255.0f));
            this.f2137C.draw(canvas);
        } else if (this.f2138D != null && m5823a(view, 5)) {
            int intrinsicWidth2 = this.f2138D.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max((float) FlexItem.FLEX_GROW_DEFAULT, Math.min((getWidth() - left2) / this.f2157l.m5914b(), 1.0f));
            this.f2138D.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.f2138D.setAlpha((int) (max2 * 255.0f));
            this.f2138D.draw(canvas);
        }
        return drawChild;
    }

    /* renamed from: e */
    int m5800e(View view) {
        return C0533c.m6344a(((C0659d) view.getLayoutParams()).f2180a, C0552u.m6245f(this));
    }

    /* renamed from: e */
    public void m5801e(int i) {
        m5828a(i, true);
    }

    /* renamed from: f */
    public void m5798f(int i) {
        m5816b(i, true);
    }

    /* renamed from: f */
    boolean m5797f(View view) {
        return ((C0659d) view.getLayoutParams()).f2180a == 0;
    }

    /* renamed from: g */
    public boolean m5795g(int i) {
        View m5809c = m5809c(i);
        if (m5809c != null) {
            return m5788j(m5809c);
        }
        return false;
    }

    /* renamed from: g */
    boolean m5794g(View view) {
        int m6344a = C0533c.m6344a(((C0659d) view.getLayoutParams()).f2180a, C0552u.m6245f(view));
        return ((m6344a & 3) == 0 && (m6344a & 5) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0659d(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0659d(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0659d ? new C0659d((C0659d) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0659d((ViewGroup.MarginLayoutParams) layoutParams) : new C0659d(layoutParams);
    }

    public float getDrawerElevation() {
        return f2134d ? this.f2151f : FlexItem.FLEX_GROW_DEFAULT;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f2136B;
    }

    /* renamed from: h */
    public void m5791h(View view) {
        m5822a(view, true);
    }

    /* renamed from: h */
    public boolean m5792h(int i) {
        View m5809c = m5809c(i);
        if (m5809c != null) {
            return m5787k(m5809c);
        }
        return false;
    }

    /* renamed from: i */
    public void m5789i(View view) {
        m5812b(view, true);
    }

    /* renamed from: j */
    public boolean m5788j(View view) {
        if (m5794g(view)) {
            boolean z = true;
            if ((((C0659d) view.getLayoutParams()).f2183d & 1) != 1) {
                z = false;
            }
            return z;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: k */
    public boolean m5787k(View view) {
        if (m5794g(view)) {
            return ((C0659d) view.getLayoutParams()).f2181b > FlexItem.FLEX_GROW_DEFAULT;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2162q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2162q = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (!this.f2142H || this.f2136B == null) {
            return;
        }
        int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.f2141G) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
        if (systemWindowInsetTop <= 0) {
            return;
        }
        this.f2136B.setBounds(0, 0, getWidth(), systemWindowInsetTop);
        this.f2136B.draw(canvas);
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
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !m5790i()) {
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            View m5810c = m5810c();
            if (m5810c != null && m5825a(m5810c) == 0) {
                m5818b();
            }
            return m5810c != null;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f;
        int i6;
        this.f2161p = true;
        int i7 = i3 - i;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                C0659d c0659d = (C0659d) childAt.getLayoutParams();
                if (m5797f(childAt)) {
                    childAt.layout(c0659d.leftMargin, c0659d.topMargin, c0659d.leftMargin + childAt.getMeasuredWidth(), c0659d.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m5823a(childAt, 3)) {
                        int i9 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i9 + ((int) (c0659d.f2181b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i7 - ((int) (c0659d.f2181b * f3));
                        f = (i7 - i5) / f3;
                    }
                    boolean z2 = f != c0659d.f2181b;
                    int i10 = c0659d.f2180a & 112;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        if (i12 < c0659d.topMargin) {
                            i6 = c0659d.topMargin;
                        } else {
                            i6 = i12;
                            if (i12 + measuredHeight > i11 - c0659d.bottomMargin) {
                                i6 = (i11 - c0659d.bottomMargin) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
                    } else if (i10 != 80) {
                        childAt.layout(i5, c0659d.topMargin, measuredWidth + i5, c0659d.topMargin + measuredHeight);
                    } else {
                        int i13 = i4 - i2;
                        childAt.layout(i5, (i13 - c0659d.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i13 - c0659d.bottomMargin);
                    }
                    if (z2) {
                        m5813b(childAt, f);
                    }
                    int i14 = c0659d.f2181b > FlexItem.FLEX_GROW_DEFAULT ? 0 : 4;
                    if (childAt.getVisibility() != i14) {
                        childAt.setVisibility(i14);
                    }
                }
            }
        }
        this.f2161p = false;
        this.f2162q = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L6;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 823
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View m5809c;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f2173a != 0 && (m5809c = m5809c(savedState.f2173a)) != null) {
            m5791h(m5809c);
        }
        if (savedState.f2174b != 3) {
            m5830a(savedState.f2174b, 3);
        }
        if (savedState.f2175c != 3) {
            m5830a(savedState.f2175c, 5);
        }
        if (savedState.f2176d != 3) {
            m5830a(savedState.f2176d, 8388611);
        }
        if (savedState.f2177e == 3) {
            return;
        }
        m5830a(savedState.f2177e, 8388613);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        m5802e();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            C0659d c0659d = (C0659d) getChildAt(i).getLayoutParams();
            boolean z = true;
            boolean z2 = c0659d.f2183d == 1;
            if (c0659d.f2183d != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.f2173a = c0659d.f2180a;
                break;
            }
        }
        savedState.f2174b = this.f2163r;
        savedState.f2175c = this.f2164s;
        savedState.f2176d = this.f2165t;
        savedState.f2177e = this.f2166u;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View m5833a;
        this.f2156k.m5907b(motionEvent);
        this.f2157l.m5907b(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f2171z = x;
            this.f2135A = y;
            this.f2167v = false;
            this.f2168w = false;
            return true;
        } else if (action != 1) {
            if (action != 3) {
                return true;
            }
            m5819a(true);
            this.f2167v = false;
            this.f2168w = false;
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            View m5898d = this.f2156k.m5898d((int) x2, (int) y2);
            if (m5898d != null && m5797f(m5898d)) {
                float f = x2 - this.f2171z;
                float f2 = y2 - this.f2135A;
                int m5900d = this.f2156k.m5900d();
                if ((f * f) + (f2 * f2) < m5900d * m5900d && (m5833a = m5833a()) != null && m5825a(m5833a) != 2) {
                    z = false;
                    m5819a(z);
                    this.f2167v = false;
                    return true;
                }
            }
            z = true;
            m5819a(z);
            this.f2167v = false;
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.f2167v = z;
        if (z) {
            m5819a(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f2161p) {
            super.requestLayout();
        }
    }

    public void setDrawerElevation(float f) {
        this.f2151f = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m5794g(childAt)) {
                C0552u.m6280a(childAt, this.f2151f);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(AbstractC0658c abstractC0658c) {
        AbstractC0658c abstractC0658c2 = this.f2169x;
        if (abstractC0658c2 != null) {
            m5811b(abstractC0658c2);
        }
        if (abstractC0658c != null) {
            m5821a(abstractC0658c);
        }
        this.f2169x = abstractC0658c;
    }

    public void setDrawerLockMode(int i) {
        m5830a(i, 3);
        m5830a(i, 5);
    }

    public void setScrimColor(int i) {
        this.f2153h = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.f2136B = i != 0 ? C0409a.m6753a(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f2136B = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f2136B = new ColorDrawable(i);
        invalidate();
    }
}
