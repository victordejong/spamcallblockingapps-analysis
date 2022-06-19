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
import androidx.core.content.C0586a;
import androidx.core.graphics.drawable.C0615a;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1614e;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p055j.p056a.C1710c;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: d */
    private static final int[] f3117d = {16843828};

    /* renamed from: e */
    static final int[] f3118e = {16842931};

    /* renamed from: f */
    static final boolean f3119f;

    /* renamed from: g */
    private static final boolean f3120g;

    /* renamed from: A */
    private AbstractC0663d f3121A;

    /* renamed from: B */
    private List<AbstractC0663d> f3122B;

    /* renamed from: C */
    private float f3123C;

    /* renamed from: D */
    private float f3124D;

    /* renamed from: E */
    private Drawable f3125E;

    /* renamed from: F */
    private Drawable f3126F;

    /* renamed from: G */
    private Drawable f3127G;

    /* renamed from: H */
    private CharSequence f3128H;

    /* renamed from: I */
    private CharSequence f3129I;

    /* renamed from: J */
    private Object f3130J;

    /* renamed from: K */
    private boolean f3131K;

    /* renamed from: L */
    private Drawable f3132L;

    /* renamed from: M */
    private Drawable f3133M;

    /* renamed from: N */
    private Drawable f3134N;

    /* renamed from: O */
    private Drawable f3135O;

    /* renamed from: P */
    private final ArrayList<View> f3136P;

    /* renamed from: Q */
    private Rect f3137Q;

    /* renamed from: R */
    private Matrix f3138R;

    /* renamed from: h */
    private final C0662c f3139h;

    /* renamed from: i */
    private float f3140i;

    /* renamed from: j */
    private int f3141j;

    /* renamed from: k */
    private int f3142k;

    /* renamed from: l */
    private float f3143l;

    /* renamed from: m */
    private Paint f3144m;

    /* renamed from: n */
    private final C1710c f3145n;

    /* renamed from: o */
    private final C1710c f3146o;

    /* renamed from: p */
    private final C0664e f3147p;

    /* renamed from: q */
    private final C0664e f3148q;

    /* renamed from: r */
    private int f3149r;

    /* renamed from: s */
    private boolean f3150s;

    /* renamed from: t */
    private boolean f3151t;

    /* renamed from: u */
    private int f3152u;

    /* renamed from: v */
    private int f3153v;

    /* renamed from: w */
    private int f3154w;

    /* renamed from: x */
    private int f3155x;

    /* renamed from: y */
    private boolean f3156y;

    /* renamed from: z */
    private boolean f3157z;

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f3158a;

        /* renamed from: b */
        float f3159b;

        /* renamed from: c */
        boolean f3160c;

        /* renamed from: d */
        int f3161d;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f3158a = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3158a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f3118e);
            this.f3158a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3158a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3158a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f3158a = 0;
            this.f3158a = layoutParams.f3158a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0659a();

        /* renamed from: f */
        int f3162f;

        /* renamed from: g */
        int f3163g;

        /* renamed from: h */
        int f3164h;

        /* renamed from: i */
        int f3165i;

        /* renamed from: j */
        int f3166j;

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState$a.class */
        static final class C0659a implements Parcelable.ClassLoaderCreator<SavedState> {
            C0659a() {
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

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3162f = 0;
            this.f3162f = parcel.readInt();
            this.f3163g = parcel.readInt();
            this.f3164h = parcel.readInt();
            this.f3165i = parcel.readInt();
            this.f3166j = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f3162f = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3162f);
            parcel.writeInt(this.f3163g);
            parcel.writeInt(this.f3164h);
            parcel.writeInt(this.f3165i);
            parcel.writeInt(this.f3166j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    public class View$OnApplyWindowInsetsListenerC0660a implements View.OnApplyWindowInsetsListener {
        View$OnApplyWindowInsetsListenerC0660a() {
            DrawerLayout.this = r4;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$b.class */
    public class C0661b extends C1599a {

        /* renamed from: d */
        private final Rect f3168d = new Rect();

        C0661b() {
            DrawerLayout.this = r5;
        }

        /* renamed from: n */
        private void m33008n(C1634c c1634c, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (DrawerLayout.m33057A(childAt)) {
                    c1634c.m29490c(childAt);
                }
            }
        }

        /* renamed from: o */
        private void m33007o(C1634c c1634c, C1634c c1634c2) {
            Rect rect = this.f3168d;
            c1634c2.m29470m(rect);
            c1634c.m29497X(rect);
            c1634c2.m29468n(rect);
            c1634c.m29496Y(rect);
            c1634c.m29517F0(c1634c2.m29507N());
            c1634c.m29461q0(c1634c2.m29452v());
            c1634c.m29489c0(c1634c2.m29464p());
            c1634c.m29481g0(c1634c2.m29460r());
            c1634c.m29479h0(c1634c2.m29518F());
            c1634c.m29487d0(c1634c2.m29520E());
            c1634c.m29475j0(c1634c2.m29516G());
            c1634c.m29473k0(c1634c2.m29514H());
            c1634c.m29499V(c1634c2.m29526B());
            c1634c.m29445y0(c1634c2.m29509L());
            c1634c.m29467n0(c1634c2.m29512I());
            c1634c.m29494a(c1634c2.m29474k());
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: a */
        public boolean mo29651a(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View m33022p = DrawerLayout.this.m33022p();
                if (m33022p == null) {
                    return true;
                }
                CharSequence m33019s = DrawerLayout.this.m33019s(DrawerLayout.this.m33018t(m33022p));
                if (m33019s == null) {
                    return true;
                }
                text.add(m33019s);
                return true;
            }
            return super.mo29651a(view, accessibilityEvent);
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: f */
        public void mo4650f(View view, AccessibilityEvent accessibilityEvent) {
            super.mo4650f(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            if (DrawerLayout.f3119f) {
                super.mo3869g(view, c1634c);
            } else {
                C1634c m29504Q = C1634c.m29504Q(c1634c);
                super.mo3869g(view, m29504Q);
                c1634c.m29527A0(view);
                ViewParent m29332J = C1679w.m29332J(view);
                if (m29332J instanceof View) {
                    c1634c.m29457s0((View) m29332J);
                }
                m33007o(c1634c, m29504Q);
                m29504Q.m29502S();
                m33008n(c1634c, (ViewGroup) view);
            }
            c1634c.m29489c0(DrawerLayout.class.getName());
            c1634c.m29475j0(false);
            c1634c.m29473k0(false);
            c1634c.m29501T(C1634c.C1635a.f6282a);
            c1634c.m29501T(C1634c.C1635a.f6283b);
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: i */
        public boolean mo29647i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f3119f || DrawerLayout.m33057A(view)) {
                return super.mo29647i(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$c.class */
    public static final class C0662c extends C1599a {
        C0662c() {
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            if (!DrawerLayout.m33057A(view)) {
                c1634c.m29457s0(null);
            }
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public interface AbstractC0663d {
        /* renamed from: a */
        void mo25768a(View view);

        /* renamed from: b */
        void mo25767b(View view);

        /* renamed from: c */
        void mo25766c(int i);

        /* renamed from: d */
        void mo25765d(View view, float f);
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$e.class */
    public class C0664e extends C1710c.AbstractC1713c {

        /* renamed from: a */
        private final int f3170a;

        /* renamed from: b */
        private C1710c f3171b;

        /* renamed from: c */
        private final Runnable f3172c = new RunnableC0665a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e$a */
        /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$e$a.class */
        public class RunnableC0665a implements Runnable {
            RunnableC0665a() {
                C0664e.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0664e.this.m33005o();
            }
        }

        C0664e(int i) {
            DrawerLayout.this = r6;
            this.f3170a = i;
        }

        /* renamed from: n */
        private void m33006n() {
            int i = 3;
            if (this.f3170a == 3) {
                i = 5;
            }
            View m33024n = DrawerLayout.this.m33024n(i);
            if (m33024n != null) {
                DrawerLayout.this.m33032f(m33024n);
            }
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: a */
        public int mo5407a(View view, int i, int i2) {
            if (DrawerLayout.this.m33035c(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: b */
        public int mo5406b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: d */
        public int mo5586d(View view) {
            return DrawerLayout.this.m33053E(view) ? view.getWidth() : 0;
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: f */
        public void mo29094f(int i, int i2) {
            View m33024n = (i & 1) == 1 ? DrawerLayout.this.m33024n(3) : DrawerLayout.this.m33024n(5);
            if (m33024n == null || DrawerLayout.this.m33020r(m33024n) != 0) {
                return;
            }
            this.f3171b.m29119c(m33024n, i2);
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: g */
        public boolean mo29093g(int i) {
            return false;
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: h */
        public void mo29092h(int i, int i2) {
            DrawerLayout.this.postDelayed(this.f3172c, 160L);
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: i */
        public void mo5585i(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).f3160c = false;
            m33006n();
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: j */
        public void mo5404j(int i) {
            DrawerLayout.this.m33038T(this.f3170a, i, this.f3171b.m29099w());
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: k */
        public void mo5403k(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.m33035c(view, 3) ? i + width : DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.m33040R(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
            if (r0 > 0.5f) goto L18;
         */
        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: l */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo5402l(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                float r0 = r0.m33017u(r1)
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.m33035c(r1, r2)
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
                b.j.a.c r0 = r0.f3171b
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m29125N(r1, r2)
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.C0664e.mo5402l(android.view.View, float, float):void");
        }

        @Override // p020b.p055j.p056a.C1710c.AbstractC1713c
        /* renamed from: m */
        public boolean mo5401m(View view, int i) {
            return DrawerLayout.this.m33053E(view) && DrawerLayout.this.m33035c(view, this.f3170a) && DrawerLayout.this.m33020r(view) == 0;
        }

        /* renamed from: o */
        void m33005o() {
            View view;
            int i;
            int m29098x = this.f3171b.m29098x();
            int i2 = 0;
            boolean z = this.f3170a == 3;
            if (z) {
                view = DrawerLayout.this.m33024n(3);
                if (view != null) {
                    i2 = -view.getWidth();
                }
                i = i2 + m29098x;
            } else {
                view = DrawerLayout.this.m33024n(5);
                i = DrawerLayout.this.getWidth() - m29098x;
            }
            if (view != null) {
                if (((!z || view.getLeft() >= i) && (z || view.getLeft() <= i)) || DrawerLayout.this.m33020r(view) != 0) {
                    return;
                }
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                this.f3171b.m29123P(view, i, view.getTop());
                layoutParams.f3160c = true;
                DrawerLayout.this.invalidate();
                m33006n();
                DrawerLayout.this.m33036b();
            }
        }

        /* renamed from: p */
        public void m33004p() {
            DrawerLayout.this.removeCallbacks(this.f3172c);
        }

        /* renamed from: q */
        public void m33003q(C1710c c1710c) {
            this.f3171b = c1710c;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f3119f = i >= 19;
        f3120g = i >= 21;
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3139h = new C0662c();
        this.f3142k = -1728053248;
        this.f3144m = new Paint();
        this.f3151t = true;
        this.f3152u = 3;
        this.f3153v = 3;
        this.f3154w = 3;
        this.f3155x = 3;
        this.f3132L = null;
        this.f3133M = null;
        this.f3134N = null;
        this.f3135O = null;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f3141j = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        C0664e c0664e = new C0664e(3);
        this.f3147p = c0664e;
        C0664e c0664e2 = new C0664e(5);
        this.f3148q = c0664e2;
        C1710c m29107o = C1710c.m29107o(this, 1.0f, c0664e);
        this.f3145n = m29107o;
        m29107o.m29127L(1);
        m29107o.m29126M(f2);
        c0664e.m33003q(m29107o);
        C1710c m29107o2 = C1710c.m29107o(this, 1.0f, c0664e2);
        this.f3146o = m29107o2;
        m29107o2.m29127L(2);
        m29107o2.m29126M(f2);
        c0664e2.m33003q(m29107o2);
        setFocusableInTouchMode(true);
        C1679w.m29347B0(this, 1);
        C1679w.m29273r0(this, new C0661b());
        setMotionEventSplittingEnabled(false);
        if (C1679w.m29258z(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC0660a());
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f3117d);
                try {
                    this.f3125E = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.f3125E = null;
            }
        }
        this.f3140i = f * 10.0f;
        this.f3136P = new ArrayList<>();
    }

    /* renamed from: A */
    static boolean m33057A(View view) {
        return (C1679w.m29350A(view) == 4 || C1679w.m29350A(view) == 2) ? false : true;
    }

    /* renamed from: G */
    private boolean m33051G(float f, float f2, View view) {
        if (this.f3137Q == null) {
            this.f3137Q = new Rect();
        }
        view.getHitRect(this.f3137Q);
        return this.f3137Q.contains((int) f, (int) f2);
    }

    /* renamed from: H */
    private boolean m33050H(Drawable drawable, int i) {
        if (drawable == null || !C0615a.m33222h(drawable)) {
            return false;
        }
        C0615a.m33217m(drawable, i);
        return true;
    }

    /* renamed from: O */
    private Drawable m33043O() {
        int m29346C = C1679w.m29346C(this);
        if (m29346C == 0) {
            Drawable drawable = this.f3132L;
            if (drawable != null) {
                m33050H(drawable, m29346C);
                return this.f3132L;
            }
        } else {
            Drawable drawable2 = this.f3133M;
            if (drawable2 != null) {
                m33050H(drawable2, m29346C);
                return this.f3133M;
            }
        }
        return this.f3134N;
    }

    /* renamed from: P */
    private Drawable m33042P() {
        int m29346C = C1679w.m29346C(this);
        if (m29346C == 0) {
            Drawable drawable = this.f3133M;
            if (drawable != null) {
                m33050H(drawable, m29346C);
                return this.f3133M;
            }
        } else {
            Drawable drawable2 = this.f3132L;
            if (drawable2 != null) {
                m33050H(drawable2, m29346C);
                return this.f3132L;
            }
        }
        return this.f3135O;
    }

    /* renamed from: Q */
    private void m33041Q() {
        if (f3120g) {
            return;
        }
        this.f3126F = m33043O();
        this.f3127G = m33042P();
    }

    /* renamed from: S */
    private void m33039S(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m33053E(childAt)) && (!z || childAt != view)) {
                C1679w.m29347B0(childAt, 4);
            } else {
                C1679w.m29347B0(childAt, 1);
            }
        }
    }

    /* renamed from: m */
    private boolean m33025m(MotionEvent motionEvent, View view) {
        boolean z;
        if (!view.getMatrix().isIdentity()) {
            MotionEvent m33016v = m33016v(motionEvent, view);
            z = view.dispatchGenericMotionEvent(m33016v);
            m33016v.recycle();
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
    private MotionEvent m33016v(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.f3138R == null) {
                this.f3138R = new Matrix();
            }
            matrix.invert(this.f3138R);
            obtain.transform(this.f3138R);
        }
        return obtain;
    }

    /* renamed from: w */
    static String m33015w(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: x */
    private static boolean m33014x(View view) {
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
    private boolean m33013y() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).f3160c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: z */
    private boolean m33012z() {
        return m33022p() != null;
    }

    /* renamed from: B */
    boolean m33056B(View view) {
        return ((LayoutParams) view.getLayoutParams()).f3158a == 0;
    }

    /* renamed from: C */
    public boolean m33055C(int i) {
        View m33024n = m33024n(i);
        if (m33024n != null) {
            return m33054D(m33024n);
        }
        return false;
    }

    /* renamed from: D */
    public boolean m33054D(View view) {
        if (m33053E(view)) {
            boolean z = true;
            if ((((LayoutParams) view.getLayoutParams()).f3161d & 1) != 1) {
                z = false;
            }
            return z;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: E */
    boolean m33053E(View view) {
        int m29600b = C1614e.m29600b(((LayoutParams) view.getLayoutParams()).f3158a, C1679w.m29346C(view));
        return ((m29600b & 3) == 0 && (m29600b & 5) == 0) ? false : true;
    }

    /* renamed from: F */
    public boolean m33052F(View view) {
        if (m33053E(view)) {
            return ((LayoutParams) view.getLayoutParams()).f3159b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: I */
    void m33049I(View view, float f) {
        float m33017u = m33017u(view);
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (m33017u * width));
        if (!m33035c(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m33040R(view, f);
    }

    /* renamed from: J */
    public void m33048J(int i) {
        m33047K(i, true);
    }

    /* renamed from: K */
    public void m33047K(int i, boolean z) {
        View m33024n = m33024n(i);
        if (m33024n != null) {
            m33045M(m33024n, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m33015w(i));
    }

    /* renamed from: L */
    public void m33046L(View view) {
        m33045M(view, true);
    }

    /* renamed from: M */
    public void m33045M(View view, boolean z) {
        if (!m33053E(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f3151t) {
            layoutParams.f3159b = 1.0f;
            layoutParams.f3161d = 1;
            m33039S(view, true);
        } else if (z) {
            layoutParams.f3161d |= 2;
            if (m33035c(view, 3)) {
                this.f3145n.m29123P(view, 0, view.getTop());
            } else {
                this.f3146o.m29123P(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            m33049I(view, 1.0f);
            m33038T(layoutParams.f3158a, 0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    /* renamed from: N */
    public void m33044N(AbstractC0663d abstractC0663d) {
        List<AbstractC0663d> list;
        if (abstractC0663d == null || (list = this.f3122B) == null) {
            return;
        }
        list.remove(abstractC0663d);
    }

    /* renamed from: R */
    void m33040R(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f == layoutParams.f3159b) {
            return;
        }
        layoutParams.f3159b = f;
        m33026l(view, f);
    }

    /* renamed from: T */
    void m33038T(int i, int i2, View view) {
        int i3;
        int m29138A = this.f3145n.m29138A();
        int m29138A2 = this.f3146o.m29138A();
        if (m29138A == 1 || m29138A2 == 1) {
            i3 = 1;
        } else {
            i3 = 2;
            if (m29138A != 2) {
                i3 = m29138A2 == 2 ? 2 : 0;
            }
        }
        if (view != null && i2 == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).f3159b;
            if (f == 0.0f) {
                m33028j(view);
            } else if (f == 1.0f) {
                m33027k(view);
            }
        }
        if (i3 != this.f3149r) {
            this.f3149r = i3;
            List<AbstractC0663d> list = this.f3122B;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f3122B.get(size).mo25766c(i3);
            }
        }
    }

    /* renamed from: a */
    public void m33037a(AbstractC0663d abstractC0663d) {
        if (abstractC0663d == null) {
            return;
        }
        if (this.f3122B == null) {
            this.f3122B = new ArrayList();
        }
        this.f3122B.add(abstractC0663d);
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
            if (!m33053E(childAt)) {
                this.f3136P.add(childAt);
            } else if (m33054D(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
        }
        if (!z) {
            int size = this.f3136P.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = this.f3136P.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        this.f3136P.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m33023o() != null || m33053E(view)) {
            C1679w.m29347B0(view, 4);
        } else {
            C1679w.m29347B0(view, 1);
        }
        if (!f3119f) {
            C1679w.m29273r0(view, this.f3139h);
        }
    }

    /* renamed from: b */
    void m33036b() {
        if (!this.f3157z) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.f3157z = true;
        }
    }

    /* renamed from: c */
    boolean m33035c(View view, int i) {
        return (m33018t(view) & i) == i;
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
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).f3159b);
        }
        this.f3143l = f;
        boolean m29108n = this.f3145n.m29108n(true);
        boolean m29108n2 = this.f3146o.m29108n(true);
        if (m29108n || m29108n2) {
            C1679w.m29293h0(this);
        }
    }

    /* renamed from: d */
    public void m33034d(int i) {
        m33033e(i, true);
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f3143l <= 0.0f) {
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
            if (m33051G(x, y, childAt) && !m33056B(childAt) && m33025m(motionEvent, childAt)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        int i2;
        int height = getHeight();
        boolean m33056B = m33056B(view);
        int width = getWidth();
        int save = canvas.save();
        int i3 = 0;
        int i4 = width;
        if (m33056B) {
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
                        if (m33014x(childAt)) {
                            i7 = width;
                            i8 = i2;
                            if (m33053E(childAt)) {
                                if (childAt.getHeight() < height) {
                                    i7 = width;
                                    i8 = i2;
                                } else if (m33035c(childAt, 3)) {
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
        float f = this.f3143l;
        if (f > 0.0f && m33056B) {
            this.f3144m.setColor((this.f3142k & 16777215) | (((int) ((((-16777216) & i) >>> 24) * f)) << 24));
            canvas.drawRect(i3, 0.0f, i4, getHeight(), this.f3144m);
        } else if (this.f3126F != null && m33035c(view, 3)) {
            int intrinsicWidth = this.f3126F.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.f3145n.m29098x(), 1.0f));
            this.f3126F.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f3126F.setAlpha((int) (max * 255.0f));
            this.f3126F.draw(canvas);
        } else if (this.f3127G != null && m33035c(view, 5)) {
            int intrinsicWidth2 = this.f3127G.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f3146o.m29098x(), 1.0f));
            this.f3127G.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.f3127G.setAlpha((int) (max2 * 255.0f));
            this.f3127G.draw(canvas);
        }
        return drawChild;
    }

    /* renamed from: e */
    public void m33033e(int i, boolean z) {
        View m33024n = m33024n(i);
        if (m33024n != null) {
            m33031g(m33024n, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m33015w(i));
    }

    /* renamed from: f */
    public void m33032f(View view) {
        m33031g(view, true);
    }

    /* renamed from: g */
    public void m33031g(View view, boolean z) {
        if (!m33053E(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f3151t) {
            layoutParams.f3159b = 0.0f;
            layoutParams.f3161d = 0;
        } else if (z) {
            layoutParams.f3161d |= 4;
            if (m33035c(view, 3)) {
                this.f3145n.m29123P(view, -view.getWidth(), view.getTop());
            } else {
                this.f3146o.m29123P(view, getWidth(), view.getTop());
            }
        } else {
            m33049I(view, 0.0f);
            m33038T(layoutParams.f3158a, 0, view);
            view.setVisibility(4);
        }
        invalidate();
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
        if (f3120g) {
            return this.f3140i;
        }
        return 0.0f;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f3125E;
    }

    /* renamed from: h */
    public void m33030h() {
        m33029i(false);
    }

    /* renamed from: i */
    void m33029i(boolean z) {
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
            if (m33053E(childAt)) {
                if (!z || layoutParams.f3160c) {
                    z4 = z2 | (m33035c(childAt, 3) ? this.f3145n.m29123P(childAt, -childAt.getWidth(), childAt.getTop()) : this.f3146o.m29123P(childAt, getWidth(), childAt.getTop()));
                    layoutParams.f3160c = false;
                } else {
                    z4 = z2;
                }
            }
            i++;
            z3 = z4;
        }
        this.f3147p.m33004p();
        this.f3148q.m33004p();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: j */
    void m33028j(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f3161d & 1) == 1) {
            layoutParams.f3161d = 0;
            List<AbstractC0663d> list = this.f3122B;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f3122B.get(size).mo25767b(view);
                }
            }
            m33039S(view, false);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    /* renamed from: k */
    void m33027k(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f3161d & 1) == 0) {
            layoutParams.f3161d = 1;
            List<AbstractC0663d> list = this.f3122B;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f3122B.get(size).mo25768a(view);
                }
            }
            m33039S(view, true);
            if (!hasWindowFocus()) {
                return;
            }
            sendAccessibilityEvent(32);
        }
    }

    /* renamed from: l */
    void m33026l(View view, float f) {
        List<AbstractC0663d> list = this.f3122B;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f3122B.get(size).mo25765d(view, f);
            }
        }
    }

    /* renamed from: n */
    View m33024n(int i) {
        int m29600b = C1614e.m29600b(i, C1679w.m29346C(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m33018t(childAt) & 7) == (m29600b & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: o */
    View m33023o() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f3161d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3151t = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3151t = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (!this.f3131K || this.f3125E == null) {
            return;
        }
        int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.f3130J) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
        if (systemWindowInsetTop <= 0) {
            return;
        }
        this.f3125E.setBounds(0, 0, getWidth(), systemWindowInsetTop);
        this.f3125E.draw(canvas);
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
        if (i != 4 || !m33012z()) {
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            View m33022p = m33022p();
            if (m33022p != null && m33020r(m33022p) == 0) {
                m33030h();
            }
            return m33022p != null;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f;
        this.f3150s = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m33056B(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m33035c(childAt, 3)) {
                        int i9 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i9 + ((int) (layoutParams.f3159b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i6 - ((int) (layoutParams.f3159b * f3));
                        f = (i6 - i5) / f3;
                    }
                    boolean z2 = f != layoutParams.f3159b;
                    int i10 = layoutParams.f3158a & 112;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i12 >= i13) {
                            int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            i13 = i12;
                            if (i12 + measuredHeight > i11 - i14) {
                                i13 = (i11 - i14) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i13, measuredWidth + i5, measuredHeight + i13);
                    } else if (i10 != 80) {
                        int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i5, i15, measuredWidth + i5, measuredHeight + i15);
                    } else {
                        int i16 = i4 - i2;
                        childAt.layout(i5, (i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z2) {
                        m33040R(childAt, f);
                    }
                    int i17 = layoutParams.f3159b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i17) {
                        childAt.setVisibility(i17);
                    }
                }
            }
        }
        this.f3150s = false;
        this.f3151t = false;
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
    protected void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View m33024n;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        int i = savedState.f3162f;
        if (i != 0 && (m33024n = m33024n(i)) != null) {
            m33046L(m33024n);
        }
        int i2 = savedState.f3163g;
        if (i2 != 3) {
            setDrawerLockMode(i2, 3);
        }
        int i3 = savedState.f3164h;
        if (i3 != 3) {
            setDrawerLockMode(i3, 5);
        }
        int i4 = savedState.f3165i;
        if (i4 != 3) {
            setDrawerLockMode(i4, 8388611);
        }
        int i5 = savedState.f3166j;
        if (i5 == 3) {
            return;
        }
        setDrawerLockMode(i5, 8388613);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        m33041Q();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int i2 = layoutParams.f3161d;
            boolean z = true;
            boolean z2 = i2 == 1;
            if (i2 != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.f3162f = layoutParams.f3158a;
                break;
            }
        }
        savedState.f3163g = this.f3152u;
        savedState.f3164h = this.f3153v;
        savedState.f3165i = this.f3154w;
        savedState.f3166j = this.f3155x;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View m33023o;
        this.f3145n.m29133F(motionEvent);
        this.f3146o.m29133F(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f3123C = x;
            this.f3124D = y;
            this.f3156y = false;
            this.f3157z = false;
            return true;
        } else if (action != 1) {
            if (action != 3) {
                return true;
            }
            m33029i(true);
            this.f3156y = false;
            this.f3157z = false;
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            View m29101u = this.f3145n.m29101u((int) x2, (int) y2);
            if (m29101u != null && m33056B(m29101u)) {
                float f = x2 - this.f3123C;
                float f2 = y2 - this.f3124D;
                int m29096z = this.f3145n.m29096z();
                if ((f * f) + (f2 * f2) < m29096z * m29096z && (m33023o = m33023o()) != null && m33020r(m33023o) != 2) {
                    z = false;
                    m33029i(z);
                    this.f3156y = false;
                    return true;
                }
            }
            z = true;
            m33029i(z);
            this.f3156y = false;
            return true;
        }
    }

    /* renamed from: p */
    View m33022p() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m33053E(childAt) && m33052F(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: q */
    public int m33021q(int i) {
        int m29346C = C1679w.m29346C(this);
        if (i == 3) {
            int i2 = this.f3152u;
            if (i2 != 3) {
                return i2;
            }
            int i3 = m29346C == 0 ? this.f3154w : this.f3155x;
            if (i3 == 3) {
                return 0;
            }
            return i3;
        } else if (i == 5) {
            int i4 = this.f3153v;
            if (i4 != 3) {
                return i4;
            }
            int i5 = m29346C == 0 ? this.f3155x : this.f3154w;
            if (i5 == 3) {
                return 0;
            }
            return i5;
        } else if (i == 8388611) {
            int i6 = this.f3154w;
            if (i6 != 3) {
                return i6;
            }
            int i7 = m29346C == 0 ? this.f3152u : this.f3153v;
            if (i7 == 3) {
                return 0;
            }
            return i7;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f3155x;
            if (i8 != 3) {
                return i8;
            }
            int i9 = m29346C == 0 ? this.f3153v : this.f3152u;
            if (i9 == 3) {
                return 0;
            }
            return i9;
        }
    }

    /* renamed from: r */
    public int m33020r(View view) {
        if (m33053E(view)) {
            return m33021q(((LayoutParams) view.getLayoutParams()).f3158a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.f3156y = z;
        if (z) {
            m33029i(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f3150s) {
            super.requestLayout();
        }
    }

    /* renamed from: s */
    public CharSequence m33019s(int i) {
        int m29600b = C1614e.m29600b(i, C1679w.m29346C(this));
        if (m29600b == 3) {
            return this.f3128H;
        }
        if (m29600b != 5) {
            return null;
        }
        return this.f3129I;
    }

    public void setChildInsets(Object obj, boolean z) {
        this.f3130J = obj;
        this.f3131K = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.f3140i = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m33053E(childAt)) {
                C1679w.m29259y0(childAt, this.f3140i);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(AbstractC0663d abstractC0663d) {
        AbstractC0663d abstractC0663d2 = this.f3121A;
        if (abstractC0663d2 != null) {
            m33044N(abstractC0663d2);
        }
        if (abstractC0663d != null) {
            m33037a(abstractC0663d);
        }
        this.f3121A = abstractC0663d;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int i2) {
        View m33024n;
        int m29600b = C1614e.m29600b(i2, C1679w.m29346C(this));
        if (i2 == 3) {
            this.f3152u = i;
        } else if (i2 == 5) {
            this.f3153v = i;
        } else if (i2 == 8388611) {
            this.f3154w = i;
        } else if (i2 == 8388613) {
            this.f3155x = i;
        }
        if (i != 0) {
            (m29600b == 3 ? this.f3145n : this.f3146o).m29120b();
        }
        if (i != 1) {
            if (i != 2 || (m33024n = m33024n(m29600b)) == null) {
                return;
            }
            m33046L(m33024n);
            return;
        }
        View m33024n2 = m33024n(m29600b);
        if (m33024n2 == null) {
            return;
        }
        m33032f(m33024n2);
    }

    public void setDrawerLockMode(int i, View view) {
        if (m33053E(view)) {
            setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).f3158a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void setDrawerShadow(int i, int i2) {
        setDrawerShadow(C0586a.m33348f(getContext(), i), i2);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (f3120g) {
            return;
        }
        if ((i & 8388611) == 8388611) {
            this.f3132L = drawable;
        } else if ((i & 8388613) == 8388613) {
            this.f3133M = drawable;
        } else if ((i & 3) == 3) {
            this.f3134N = drawable;
        } else if ((i & 5) != 5) {
            return;
        } else {
            this.f3135O = drawable;
        }
        m33041Q();
        invalidate();
    }

    public void setDrawerTitle(int i, CharSequence charSequence) {
        int m29600b = C1614e.m29600b(i, C1679w.m29346C(this));
        if (m29600b == 3) {
            this.f3128H = charSequence;
        } else if (m29600b != 5) {
        } else {
            this.f3129I = charSequence;
        }
    }

    public void setScrimColor(int i) {
        this.f3142k = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.f3125E = i != 0 ? C0586a.m33348f(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f3125E = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f3125E = new ColorDrawable(i);
        invalidate();
    }

    /* renamed from: t */
    int m33018t(View view) {
        return C1614e.m29600b(((LayoutParams) view.getLayoutParams()).f3158a, C1679w.m29346C(this));
    }

    /* renamed from: u */
    float m33017u(View view) {
        return ((LayoutParams) view.getLayoutParams()).f3159b;
    }
}
