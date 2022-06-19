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
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p066d0.C2134a;
import p087f0.C2695b;
import p124i4.C3102d;
import p163m0.C3546a;
import p163m0.C3551b0;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.AbstractC3702d;
import p174n0.C3694b;
import p216r0.AbstractC4178a;
import p227s0.C4273c;
import p248u0.View$OnApplyWindowInsetsListenerC4443a;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: D */
    public static final int[] f1523D = {16843828};

    /* renamed from: E */
    public static final int[] f1524E = {16842931};

    /* renamed from: F */
    public static final boolean f1525F = true;

    /* renamed from: G */
    public static final boolean f1526G = true;

    /* renamed from: H */
    public static boolean f1527H;

    /* renamed from: A */
    public Rect f1528A;

    /* renamed from: B */
    public Matrix f1529B;

    /* renamed from: b */
    public float f1532b;

    /* renamed from: c */
    public int f1533c;

    /* renamed from: e */
    public float f1535e;

    /* renamed from: g */
    public final C4273c f1537g;

    /* renamed from: h */
    public final C4273c f1538h;

    /* renamed from: i */
    public final C0341g f1539i;

    /* renamed from: j */
    public final C0341g f1540j;

    /* renamed from: k */
    public int f1541k;

    /* renamed from: l */
    public boolean f1542l;

    /* renamed from: r */
    public boolean f1548r;

    /* renamed from: s */
    public AbstractC0337d f1549s;

    /* renamed from: t */
    public List<AbstractC0337d> f1550t;

    /* renamed from: u */
    public float f1551u;

    /* renamed from: v */
    public float f1552v;

    /* renamed from: w */
    public Drawable f1553w;

    /* renamed from: x */
    public Object f1554x;

    /* renamed from: y */
    public boolean f1555y;

    /* renamed from: z */
    public final ArrayList<View> f1556z;

    /* renamed from: a */
    public final C0336c f1531a = new C0336c();

    /* renamed from: d */
    public int f1534d = -1728053248;

    /* renamed from: f */
    public Paint f1536f = new Paint();

    /* renamed from: m */
    public boolean f1543m = true;

    /* renamed from: n */
    public int f1544n = 3;

    /* renamed from: o */
    public int f1545o = 3;

    /* renamed from: p */
    public int f1546p = 3;

    /* renamed from: q */
    public int f1547q = 3;

    /* renamed from: C */
    public final AbstractC3702d f1530C = new C0334a();

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    public class C0334a implements AbstractC3702d {
        public C0334a() {
            DrawerLayout.this = r4;
        }

        @Override // p174n0.AbstractC3702d
        /* renamed from: a */
        public boolean mo1864a(View view, AbstractC3702d.AbstractC3703a abstractC3703a) {
            if (!DrawerLayout.this.m8275o(view) || DrawerLayout.this.m8281i(view) == 2) {
                return false;
            }
            DrawerLayout.this.m8287c(view, true);
            return true;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$b.class */
    public class C0335b extends C3546a {

        /* renamed from: d */
        public final Rect f1558d = new Rect();

        public C0335b() {
            DrawerLayout.this = r5;
        }

        @Override // p163m0.C3546a
        /* renamed from: a */
        public boolean mo2196a(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                accessibilityEvent.getText();
                View m8283g = DrawerLayout.this.m8283g();
                if (m8283g == null) {
                    return true;
                }
                int m8280j = DrawerLayout.this.m8280j(m8283g);
                DrawerLayout drawerLayout = DrawerLayout.this;
                Objects.requireNonNull(drawerLayout);
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                Gravity.getAbsoluteGravity(m8280j, C3589v.C3594e.m2071d(drawerLayout));
                return true;
            }
            return this.f11715a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // p163m0.C3546a
        /* renamed from: c */
        public void mo737c(View view, AccessibilityEvent accessibilityEvent) {
            this.f11715a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
        }

        @Override // p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            if (DrawerLayout.f1525F) {
                this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
            } else {
                AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(c3694b.f12070a);
                this.f11715a.onInitializeAccessibilityNodeInfo(view, obtain);
                c3694b.f12072c = -1;
                c3694b.f12070a.setSource(view);
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                ViewParent m2088f = C3589v.C3593d.m2088f(view);
                if (m2088f instanceof View) {
                    c3694b.m1869o((View) m2088f);
                }
                Rect rect = this.f1558d;
                obtain.getBoundsInScreen(rect);
                c3694b.f12070a.setBoundsInScreen(rect);
                c3694b.f12070a.setVisibleToUser(obtain.isVisibleToUser());
                c3694b.f12070a.setPackageName(obtain.getPackageName());
                c3694b.f12070a.setClassName(obtain.getClassName());
                c3694b.f12070a.setContentDescription(obtain.getContentDescription());
                c3694b.f12070a.setEnabled(obtain.isEnabled());
                c3694b.f12070a.setFocused(obtain.isFocused());
                c3694b.f12070a.setAccessibilityFocused(obtain.isAccessibilityFocused());
                c3694b.f12070a.setSelected(obtain.isSelected());
                c3694b.f12070a.addAction(obtain.getActions());
                obtain.recycle();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (DrawerLayout.m8278l(childAt)) {
                        c3694b.f12070a.addChild(childAt);
                    }
                }
            }
            c3694b.f12070a.setClassName("androidx.drawerlayout.widget.DrawerLayout");
            c3694b.f12070a.setFocusable(false);
            c3694b.f12070a.setFocused(false);
            c3694b.f12070a.removeAction((AccessibilityNodeInfo.AccessibilityAction) C3694b.C3695a.f12073e.f12083a);
            c3694b.f12070a.removeAction((AccessibilityNodeInfo.AccessibilityAction) C3694b.C3695a.f12074f.f12083a);
        }

        @Override // p163m0.C3546a
        /* renamed from: f */
        public boolean mo2194f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f1525F || DrawerLayout.m8278l(view)) {
                return this.f11715a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$c.class */
    public static final class C0336c extends C3546a {
        @Override // p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
            if (!DrawerLayout.m8278l(view)) {
                c3694b.m1869o(null);
            }
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public interface AbstractC0337d {
        /* renamed from: a */
        void mo3375a(int i);

        /* renamed from: b */
        void mo3374b(View view, float f);

        /* renamed from: c */
        void mo3976c(View view);

        /* renamed from: d */
        void mo3373d(View view);
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$e.class */
    public static class C0338e extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f1560a;

        /* renamed from: b */
        public float f1561b;

        /* renamed from: c */
        public boolean f1562c;

        /* renamed from: d */
        public int f1563d;

        public C0338e(int i, int i2) {
            super(i, i2);
            this.f1560a = 0;
        }

        public C0338e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1560a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f1524E);
            this.f1560a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public C0338e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1560a = 0;
        }

        public C0338e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1560a = 0;
        }

        public C0338e(C0338e c0338e) {
            super((ViewGroup.MarginLayoutParams) c0338e);
            this.f1560a = 0;
            this.f1560a = c0338e.f1560a;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$f.class */
    public static class C0339f extends AbstractC4178a {
        public static final Parcelable.Creator<C0339f> CREATOR = new C0340a();

        /* renamed from: c */
        public int f1564c;

        /* renamed from: d */
        public int f1565d;

        /* renamed from: e */
        public int f1566e;

        /* renamed from: f */
        public int f1567f;

        /* renamed from: g */
        public int f1568g;

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$f$a.class */
        public class C0340a implements Parcelable.ClassLoaderCreator<C0339f> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C0339f(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C0339f createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0339f(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C0339f[i];
            }
        }

        public C0339f(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1564c = 0;
            this.f1564c = parcel.readInt();
            this.f1565d = parcel.readInt();
            this.f1566e = parcel.readInt();
            this.f1567f = parcel.readInt();
            this.f1568g = parcel.readInt();
        }

        public C0339f(Parcelable parcelable) {
            super(parcelable);
            this.f1564c = 0;
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            parcel.writeInt(this.f1564c);
            parcel.writeInt(this.f1565d);
            parcel.writeInt(this.f1566e);
            parcel.writeInt(this.f1567f);
            parcel.writeInt(this.f1568g);
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$g.class */
    public class C0341g extends C4273c.AbstractC4276c {

        /* renamed from: a */
        public final int f1569a;

        /* renamed from: b */
        public C4273c f1570b;

        /* renamed from: c */
        public final Runnable f1571c = new RunnableC0342a();

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$g$a */
        /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$g$a.class */
        public class RunnableC0342a implements Runnable {
            public RunnableC0342a() {
                C0341g.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i;
                View view;
                C0341g c0341g = C0341g.this;
                int i2 = c0341g.f1570b.f13403o;
                boolean z = c0341g.f1569a == 3;
                if (z) {
                    view = DrawerLayout.this.m8285e(3);
                    i = (view != null ? -view.getWidth() : 0) + i2;
                } else {
                    view = DrawerLayout.this.m8285e(5);
                    i = DrawerLayout.this.getWidth() - i2;
                }
                if (view != null) {
                    if (((!z || view.getLeft() >= i) && (z || view.getLeft() <= i)) || DrawerLayout.this.m8281i(view) != 0) {
                        return;
                    }
                    C0338e c0338e = (C0338e) view.getLayoutParams();
                    c0341g.f1570b.m1140x(view, i, view.getTop());
                    c0338e.f1562c = true;
                    DrawerLayout.this.invalidate();
                    c0341g.m8265l();
                    DrawerLayout drawerLayout = DrawerLayout.this;
                    if (drawerLayout.f1548r) {
                        return;
                    }
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    int childCount = drawerLayout.getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        drawerLayout.getChildAt(i3).dispatchTouchEvent(obtain);
                    }
                    obtain.recycle();
                    drawerLayout.f1548r = true;
                }
            }
        }

        public C0341g(int i) {
            DrawerLayout.this = r6;
            this.f1569a = i;
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: a */
        public int mo1138a(View view, int i, int i2) {
            if (DrawerLayout.this.m8289a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: b */
        public int mo1137b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: c */
        public int mo1136c(View view) {
            return DrawerLayout.this.m8274p(view) ? view.getWidth() : 0;
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: e */
        public void mo1134e(int i, int i2) {
            View m8285e = (i & 1) == 1 ? DrawerLayout.this.m8285e(3) : DrawerLayout.this.m8285e(5);
            if (m8285e == null || DrawerLayout.this.m8281i(m8285e) != 0) {
                return;
            }
            this.f1570b.m1162b(m8285e, i2);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: f */
        public void mo1133f(int i, int i2) {
            DrawerLayout.this.postDelayed(this.f1571c, 160L);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: g */
        public void mo1132g(View view, int i) {
            ((C0338e) view.getLayoutParams()).f1562c = false;
            m8265l();
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: h */
        public void mo1131h(int i) {
            DrawerLayout.this.m8266x(i, this.f1570b.f13408t);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: i */
        public void mo1130i(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.m8289a(view, 3) ? i + width : DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.m8269u(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006d, code lost:
            if (r0 > 0.5f) goto L18;
         */
        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: j */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo1129j(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r5
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                androidx.drawerlayout.widget.DrawerLayout$e r0 = (androidx.drawerlayout.widget.DrawerLayout.C0338e) r0
                float r0 = r0.f1561b
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.m8289a(r1, r2)
                if (r0 == 0) goto L4c
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r9 = r0
                r0 = r9
                if (r0 > 0) goto L46
                r0 = r9
                if (r0 != 0) goto L3e
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L3e
                goto L46
            L3e:
                r0 = r8
                int r0 = -r0
                r9 = r0
                goto L77
            L46:
                r0 = 0
                r9 = r0
                goto L77
            L4c:
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                int r0 = r0.getWidth()
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L70
                r0 = r10
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L77
                r0 = r10
                r9 = r0
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L77
            L70:
                r0 = r10
                r1 = r8
                int r0 = r0 - r1
                r9 = r0
            L77:
                r0 = r4
                s0.c r0 = r0.f1570b
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m1142v(r1, r2)
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.C0341g.mo1129j(android.view.View, float, float):void");
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: k */
        public boolean mo1128k(View view, int i) {
            return DrawerLayout.this.m8274p(view) && DrawerLayout.this.m8289a(view, this.f1569a) && DrawerLayout.this.m8281i(view) == 0;
        }

        /* renamed from: l */
        public final void m8265l() {
            int i = 3;
            if (this.f1569a == 3) {
                i = 5;
            }
            View m8285e = DrawerLayout.this.m8285e(i);
            if (m8285e != null) {
                DrawerLayout.this.m8287c(m8285e, true);
            }
        }

        /* renamed from: m */
        public void m8264m() {
            DrawerLayout.this.removeCallbacks(this.f1571c);
        }
    }

    static {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 29) {
            z = false;
        }
        f1527H = z;
    }

    /* JADX WARN: Finally extract failed */
    public DrawerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2130968951);
        TypedArray obtainStyledAttributes;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f1533c = (int) ((64.0f * f) + 0.5f);
        float f2 = f * 400.0f;
        C0341g c0341g = new C0341g(3);
        this.f1539i = c0341g;
        C0341g c0341g2 = new C0341g(5);
        this.f1540j = c0341g2;
        C4273c m1154j = C4273c.m1154j(this, 1.0f, c0341g);
        this.f1537g = m1154j;
        m1154j.f13405q = 1;
        m1154j.f13402n = f2;
        c0341g.f1570b = m1154j;
        C4273c m1154j2 = C4273c.m1154j(this, 1.0f, c0341g2);
        this.f1538h = m1154j2;
        m1154j2.f13405q = 2;
        m1154j2.f13402n = f2;
        c0341g2.f1570b = m1154j2;
        setFocusableInTouchMode(true);
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2075s(this, 1);
        C3589v.m2103u(this, new C0335b());
        setMotionEventSplittingEnabled(false);
        if (C3589v.C3593d.m2092b(this)) {
            setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC4443a(this));
            setSystemUiVisibility(1280);
            obtainStyledAttributes = context.obtainStyledAttributes(f1523D);
            try {
                this.f1553w = obtainStyledAttributes.getDrawable(0);
                obtainStyledAttributes.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
        obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3102d.f10509m, 2130968951, 0);
        try {
            if (obtainStyledAttributes.hasValue(0)) {
                this.f1532b = obtainStyledAttributes.getDimension(0, 0.0f);
            } else {
                this.f1532b = getResources().getDimension(2131165305);
            }
            obtainStyledAttributes.recycle();
            this.f1556z = new ArrayList<>();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: k */
    public static String m8279k(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: l */
    public static boolean m8278l(View view) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        return (C3589v.C3593d.m2091c(view) == 4 || C3589v.C3593d.m2091c(view) == 2) ? false : true;
    }

    /* renamed from: a */
    public boolean m8289a(View view, int i) {
        return (m8280j(view) & i) == i;
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
            if (!m8274p(childAt)) {
                this.f1556z.add(childAt);
            } else if (m8275o(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
        }
        if (!z) {
            int size = this.f1556z.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = this.f1556z.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        this.f1556z.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m8284f() != null || m8274p(view)) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2075s(view, 4);
        } else {
            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
            C3589v.C3593d.m2075s(view, 1);
        }
        if (!f1525F) {
            C3589v.m2103u(view, this.f1531a);
        }
    }

    /* renamed from: b */
    public void m8288b(int i) {
        View m8285e = m8285e(i);
        if (m8285e != null) {
            m8287c(m8285e, true);
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("No drawer view found with gravity ");
        m8752j.append(m8279k(i));
        throw new IllegalArgumentException(m8752j.toString());
    }

    /* renamed from: c */
    public void m8287c(View view, boolean z) {
        if (!m8274p(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        C0338e c0338e = (C0338e) view.getLayoutParams();
        if (this.f1543m) {
            c0338e.f1561b = 0.0f;
            c0338e.f1563d = 0;
        } else if (z) {
            c0338e.f1563d |= 4;
            if (m8289a(view, 3)) {
                this.f1537g.m1140x(view, -view.getWidth(), view.getTop());
            } else {
                this.f1538h.m1140x(view, getWidth(), view.getTop());
            }
        } else {
            m8272r(view, 0.0f);
            m8266x(0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0338e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((C0338e) getChildAt(i).getLayoutParams()).f1561b);
        }
        this.f1535e = f;
        boolean m1155i = this.f1537g.m1155i(true);
        boolean m1155i2 = this.f1538h.m1155i(true);
        if (m1155i || m1155i2) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2083k(this);
        }
    }

    /* renamed from: d */
    public void m8286d(boolean z) {
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
            C0338e c0338e = (C0338e) childAt.getLayoutParams();
            boolean z4 = z2;
            if (m8274p(childAt)) {
                if (!z || c0338e.f1562c) {
                    z4 = z2 | (m8289a(childAt, 3) ? this.f1537g.m1140x(childAt, -childAt.getWidth(), childAt.getTop()) : this.f1538h.m1140x(childAt, getWidth(), childAt.getTop()));
                    c0338e.f1562c = false;
                } else {
                    z4 = z2;
                }
            }
            i++;
            z3 = z4;
        }
        this.f1539i.m8264m();
        this.f1540j.m8264m();
        if (z2) {
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean z;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f1535e <= 0.0f) {
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
            if (this.f1528A == null) {
                this.f1528A = new Rect();
            }
            childAt.getHitRect(this.f1528A);
            if (this.f1528A.contains((int) x, (int) y) && !m8277m(childAt)) {
                if (!childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation(scrollX, scrollY);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.f1529B == null) {
                            this.f1529B = new Matrix();
                        }
                        matrix.invert(this.f1529B);
                        obtain.transform(this.f1529B);
                    }
                    z = childAt.dispatchGenericMotionEvent(obtain);
                    obtain.recycle();
                } else {
                    float scrollX2 = getScrollX() - childAt.getLeft();
                    float scrollY2 = getScrollY() - childAt.getTop();
                    motionEvent.offsetLocation(scrollX2, scrollY2);
                    z = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX2, -scrollY2);
                }
                if (z) {
                    return true;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        int i2;
        int height = getHeight();
        boolean m8277m = m8277m(view);
        int width = getWidth();
        int save = canvas.save();
        int i3 = 0;
        int i4 = width;
        if (m8277m) {
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
                        Drawable background = childAt.getBackground();
                        i7 = width;
                        i8 = i2;
                        if (background != null && background.getOpacity() == -1) {
                            i7 = width;
                            i8 = i2;
                            if (m8274p(childAt)) {
                                if (childAt.getHeight() < height) {
                                    i7 = width;
                                    i8 = i2;
                                } else if (m8289a(childAt, 3)) {
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
        float f = this.f1535e;
        if (f > 0.0f && m8277m) {
            this.f1536f.setColor((((int) ((((-16777216) & i) >>> 24) * f)) << 24) | (this.f1534d & 16777215));
            canvas.drawRect(i3, 0.0f, i4, getHeight(), this.f1536f);
        }
        return drawChild;
    }

    /* renamed from: e */
    public View m8285e(int i) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, C3589v.C3594e.m2071d(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m8280j(childAt) & 7) == (absoluteGravity & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: f */
    public View m8284f() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((C0338e) childAt.getLayoutParams()).f1563d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: g */
    public View m8283g() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m8274p(childAt) && m8273q(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0338e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0338e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0338e ? new C0338e((C0338e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0338e((ViewGroup.MarginLayoutParams) layoutParams) : new C0338e(layoutParams);
    }

    public float getDrawerElevation() {
        if (f1526G) {
            return this.f1532b;
        }
        return 0.0f;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f1553w;
    }

    /* renamed from: h */
    public int m8282h(int i) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int m2071d = C3589v.C3594e.m2071d(this);
        if (i == 3) {
            int i2 = this.f1544n;
            if (i2 != 3) {
                return i2;
            }
            int i3 = m2071d == 0 ? this.f1546p : this.f1547q;
            if (i3 == 3) {
                return 0;
            }
            return i3;
        } else if (i == 5) {
            int i4 = this.f1545o;
            if (i4 != 3) {
                return i4;
            }
            int i5 = m2071d == 0 ? this.f1547q : this.f1546p;
            if (i5 == 3) {
                return 0;
            }
            return i5;
        } else if (i == 8388611) {
            int i6 = this.f1546p;
            if (i6 != 3) {
                return i6;
            }
            int i7 = m2071d == 0 ? this.f1544n : this.f1545o;
            if (i7 == 3) {
                return 0;
            }
            return i7;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f1547q;
            if (i8 != 3) {
                return i8;
            }
            int i9 = m2071d == 0 ? this.f1545o : this.f1544n;
            if (i9 == 3) {
                return 0;
            }
            return i9;
        }
    }

    /* renamed from: i */
    public int m8281i(View view) {
        if (m8274p(view)) {
            return m8282h(((C0338e) view.getLayoutParams()).f1560a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: j */
    public int m8280j(View view) {
        int i = ((C0338e) view.getLayoutParams()).f1560a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        return Gravity.getAbsoluteGravity(i, C3589v.C3594e.m2071d(this));
    }

    /* renamed from: m */
    public boolean m8277m(View view) {
        return ((C0338e) view.getLayoutParams()).f1560a == 0;
    }

    /* renamed from: n */
    public boolean m8276n(int i) {
        View m8285e = m8285e(i);
        if (m8285e != null) {
            return m8275o(m8285e);
        }
        return false;
    }

    /* renamed from: o */
    public boolean m8275o(View view) {
        if (m8274p(view)) {
            boolean z = true;
            if ((((C0338e) view.getLayoutParams()).f1563d & 1) != 1) {
                z = false;
            }
            return z;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1543m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1543m = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1555y || this.f1553w == null) {
            return;
        }
        Object obj = this.f1554x;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop <= 0) {
            return;
        }
        this.f1553w.setBounds(0, 0, getWidth(), systemWindowInsetTop);
        this.f1553w.draw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (r0 != 3) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009c A[LOOP:0: B:11:0x003f->B:22:0x009c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0097 A[SYNTHETIC] */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (m8283g() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            View m8283g = m8283g();
            boolean z = false;
            if (m8283g != null && m8281i(m8283g) == 0) {
                m8286d(false);
            }
            if (m8283g != null) {
                z = true;
            }
            return z;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        WindowInsets rootWindowInsets;
        float f;
        int i5;
        this.f1542l = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                C0338e c0338e = (C0338e) childAt.getLayoutParams();
                if (m8277m(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) c0338e).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) c0338e).topMargin, childAt.getMeasuredWidth() + i8, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0338e).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m8289a(childAt, 3)) {
                        int i9 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i9 + ((int) (c0338e.f1561b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i6 - ((int) (c0338e.f1561b * f3));
                        f = (i6 - i5) / f3;
                    }
                    boolean z2 = f != c0338e.f1561b;
                    int i10 = c0338e.f1560a & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        int i13 = ((ViewGroup.MarginLayoutParams) c0338e).topMargin;
                        if (i12 >= i13) {
                            int i14 = i11 - ((ViewGroup.MarginLayoutParams) c0338e).bottomMargin;
                            i13 = i12;
                            if (i12 + measuredHeight > i14) {
                                i13 = i14 - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i13, measuredWidth + i5, measuredHeight + i13);
                    } else if (i10 != 80) {
                        int i15 = ((ViewGroup.MarginLayoutParams) c0338e).topMargin;
                        childAt.layout(i5, i15, measuredWidth + i5, measuredHeight + i15);
                    } else {
                        int i16 = i4 - i2;
                        childAt.layout(i5, (i16 - ((ViewGroup.MarginLayoutParams) c0338e).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i16 - ((ViewGroup.MarginLayoutParams) c0338e).bottomMargin);
                    }
                    if (z2) {
                        m8269u(childAt, f);
                    }
                    int i17 = c0338e.f1561b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i17) {
                        childAt.setVisibility(i17);
                    }
                }
            }
        }
        if (f1527H && (rootWindowInsets = getRootWindowInsets()) != null) {
            C2695b mo2157h = C3551b0.m2173j(rootWindowInsets, null).f11720a.mo2157h();
            C4273c c4273c = this.f1537g;
            c4273c.f13403o = Math.max(c4273c.f13404p, mo2157h.f9272a);
            C4273c c4273c2 = this.f1538h;
            c4273c2.f13403o = Math.max(c4273c2.f13404p, mo2157h.f9274c);
        }
        this.f1542l = false;
        this.f1543m = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0097  */
    @Override // android.view.View
    @android.annotation.SuppressLint({"WrongConstant"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View m8285e;
        if (!(parcelable instanceof C0339f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0339f c0339f = (C0339f) parcelable;
        super.onRestoreInstanceState(c0339f.f13167a);
        int i = c0339f.f1564c;
        if (i != 0 && (m8285e = m8285e(i)) != null) {
            m8271s(m8285e, true);
        }
        int i2 = c0339f.f1565d;
        if (i2 != 3) {
            m8270t(i2, 3);
        }
        int i3 = c0339f.f1566e;
        if (i3 != 3) {
            m8270t(i3, 5);
        }
        int i4 = c0339f.f1567f;
        if (i4 != 3) {
            m8270t(i4, 8388611);
        }
        int i5 = c0339f.f1568g;
        if (i5 == 3) {
            return;
        }
        m8270t(i5, 8388613);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (f1526G) {
            return;
        }
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3594e.m2071d(this);
        C3589v.C3594e.m2071d(this);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0339f c0339f = new C0339f(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            C0338e c0338e = (C0338e) getChildAt(i).getLayoutParams();
            int i2 = c0338e.f1563d;
            boolean z = true;
            boolean z2 = i2 == 1;
            if (i2 != 2) {
                z = false;
            }
            if (z2 || z) {
                c0339f.f1564c = c0338e.f1560a;
                break;
            }
        }
        c0339f.f1565d = this.f1544n;
        c0339f.f1566e = this.f1545o;
        c0339f.f1567f = this.f1546p;
        c0339f.f1568g = this.f1547q;
        return c0339f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x009b, code lost:
        if (m8281i(r0) != 2) goto L20;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public boolean m8274p(View view) {
        int i = ((C0338e) view.getLayoutParams()).f1560a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, C3589v.C3594e.m2071d(view));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    /* renamed from: q */
    public boolean m8273q(View view) {
        if (m8274p(view)) {
            return ((C0338e) view.getLayoutParams()).f1561b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: r */
    public void m8272r(View view, float f) {
        float f2 = ((C0338e) view.getLayoutParams()).f1561b;
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (f2 * width));
        if (!m8289a(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m8269u(view, f);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            m8286d(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f1542l) {
            super.requestLayout();
        }
    }

    /* renamed from: s */
    public void m8271s(View view, boolean z) {
        if (!m8274p(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        C0338e c0338e = (C0338e) view.getLayoutParams();
        if (this.f1543m) {
            c0338e.f1561b = 1.0f;
            c0338e.f1563d = 1;
            m8267w(view, true);
            m8268v(view);
        } else if (z) {
            c0338e.f1563d |= 2;
            if (m8289a(view, 3)) {
                this.f1537g.m1140x(view, 0, view.getTop());
            } else {
                this.f1538h.m1140x(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            m8272r(view, 1.0f);
            m8266x(0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    public void setDrawerElevation(float f) {
        this.f1532b = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m8274p(childAt)) {
                float f2 = this.f1532b;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3589v.C3598i.m2032s(childAt, f2);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(AbstractC0337d abstractC0337d) {
        List<AbstractC0337d> list;
        AbstractC0337d abstractC0337d2 = this.f1549s;
        if (abstractC0337d2 != null && (list = this.f1550t) != null) {
            list.remove(abstractC0337d2);
        }
        if (abstractC0337d != null) {
            if (this.f1550t == null) {
                this.f1550t = new ArrayList();
            }
            this.f1550t.add(abstractC0337d);
        }
        this.f1549s = abstractC0337d;
    }

    public void setDrawerLockMode(int i) {
        m8270t(i, 3);
        m8270t(i, 5);
    }

    public void setScrimColor(int i) {
        this.f1534d = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        Drawable drawable;
        if (i != 0) {
            Context context = getContext();
            Object obj = C2134a.f7832a;
            drawable = C2134a.C2136b.m3841b(context, i);
        } else {
            drawable = null;
        }
        this.f1553w = drawable;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f1553w = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f1553w = new ColorDrawable(i);
        invalidate();
    }

    /* renamed from: t */
    public void m8270t(int i, int i2) {
        View m8285e;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, C3589v.C3594e.m2071d(this));
        if (i2 == 3) {
            this.f1544n = i;
        } else if (i2 == 5) {
            this.f1545o = i;
        } else if (i2 == 8388611) {
            this.f1546p = i;
        } else if (i2 == 8388613) {
            this.f1547q = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.f1537g : this.f1538h).m1163a();
        }
        if (i != 1) {
            if (i != 2 || (m8285e = m8285e(absoluteGravity)) == null) {
                return;
            }
            m8271s(m8285e, true);
            return;
        }
        View m8285e2 = m8285e(absoluteGravity);
        if (m8285e2 == null) {
            return;
        }
        m8287c(m8285e2, true);
    }

    /* renamed from: u */
    public void m8269u(View view, float f) {
        C0338e c0338e = (C0338e) view.getLayoutParams();
        if (f == c0338e.f1561b) {
            return;
        }
        c0338e.f1561b = f;
        List<AbstractC0337d> list = this.f1550t;
        if (list == null) {
            return;
        }
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            this.f1550t.get(size).mo3374b(view, f);
        }
    }

    /* renamed from: v */
    public final void m8268v(View view) {
        C3694b.C3695a c3695a = C3694b.C3695a.f12080l;
        C3589v.m2106r(c3695a.m1868a(), view);
        C3589v.m2111m(view, 0);
        if (!m8275o(view) || m8281i(view) == 2) {
            return;
        }
        C3589v.m2105s(view, c3695a, null, this.f1530C);
    }

    /* renamed from: w */
    public final void m8267w(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m8274p(childAt)) && (!z || childAt != view)) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3589v.C3593d.m2075s(childAt, 4);
            } else {
                WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                C3589v.C3593d.m2075s(childAt, 1);
            }
        }
    }

    /* renamed from: x */
    public void m8266x(int i, View view) {
        int i2;
        View rootView;
        int i3 = this.f1537g.f13389a;
        int i4 = this.f1538h.f13389a;
        if (i3 == 1 || i4 == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (i3 != 2) {
                i2 = i4 == 2 ? 2 : 0;
            }
        }
        if (view != null && i == 0) {
            float f = ((C0338e) view.getLayoutParams()).f1561b;
            if (f == 0.0f) {
                C0338e c0338e = (C0338e) view.getLayoutParams();
                if ((c0338e.f1563d & 1) == 1) {
                    c0338e.f1563d = 0;
                    List<AbstractC0337d> list = this.f1550t;
                    if (list != null) {
                        for (int size = list.size() - 1; size >= 0; size--) {
                            this.f1550t.get(size).mo3373d(view);
                        }
                    }
                    m8267w(view, false);
                    m8268v(view);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (f == 1.0f) {
                C0338e c0338e2 = (C0338e) view.getLayoutParams();
                if ((c0338e2.f1563d & 1) == 0) {
                    c0338e2.f1563d = 1;
                    List<AbstractC0337d> list2 = this.f1550t;
                    if (list2 != null) {
                        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                            this.f1550t.get(size2).mo3976c(view);
                        }
                    }
                    m8267w(view, true);
                    m8268v(view);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i2 != this.f1541k) {
            this.f1541k = i2;
            List<AbstractC0337d> list3 = this.f1550t;
            if (list3 == null) {
                return;
            }
            for (int size3 = list3.size() - 1; size3 >= 0; size3--) {
                this.f1550t.get(size3).mo3375a(i2);
            }
        }
    }
}
