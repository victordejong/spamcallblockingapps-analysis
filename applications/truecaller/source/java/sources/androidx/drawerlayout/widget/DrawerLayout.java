package androidx.drawerlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.customview.view.AbsSavedState;
import com.tenor.android.core.constant.ItemVisualPosition;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26558a;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
import p1727n3.p1832m.p1833a.C26670e;
import p1727n3.p1853o.p1854a.View$OnApplyWindowInsetsListenerC26885a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: C */
    public static final int[] f726C = {16843828};

    /* renamed from: D */
    public static final int[] f727D = {16842931};

    /* renamed from: A */
    public Rect f728A;

    /* renamed from: B */
    public Matrix f729B;

    /* renamed from: b */
    public float f731b;

    /* renamed from: c */
    public int f732c;

    /* renamed from: e */
    public float f734e;

    /* renamed from: g */
    public final C26670e f736g;

    /* renamed from: h */
    public final C26670e f737h;

    /* renamed from: i */
    public final C0152f f738i;

    /* renamed from: j */
    public final C0152f f739j;

    /* renamed from: k */
    public int f740k;

    /* renamed from: l */
    public boolean f741l;

    /* renamed from: r */
    public boolean f747r;

    /* renamed from: s */
    public AbstractC0149c f748s;

    /* renamed from: t */
    public List<AbstractC0149c> f749t;

    /* renamed from: u */
    public float f750u;

    /* renamed from: v */
    public float f751v;

    /* renamed from: w */
    public Drawable f752w;

    /* renamed from: x */
    public Object f753x;

    /* renamed from: y */
    public boolean f754y;

    /* renamed from: z */
    public final ArrayList<View> f755z;

    /* renamed from: a */
    public final C0148b f730a = new C0148b();

    /* renamed from: d */
    public int f733d = -1728053248;

    /* renamed from: f */
    public Paint f735f = new Paint();

    /* renamed from: m */
    public boolean f742m = true;

    /* renamed from: n */
    public int f743n = 3;

    /* renamed from: o */
    public int f744o = 3;

    /* renamed from: p */
    public int f745p = 3;

    /* renamed from: q */
    public int f746q = 3;

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0146a();

        /* renamed from: c */
        public int f756c;

        /* renamed from: d */
        public int f757d;

        /* renamed from: e */
        public int f758e;

        /* renamed from: f */
        public int f759f;

        /* renamed from: g */
        public int f760g;

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState$a.class */
        public static final class C0146a implements Parcelable.ClassLoaderCreator<SavedState> {
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
            this.f756c = 0;
            this.f756c = parcel.readInt();
            this.f757d = parcel.readInt();
            this.f758e = parcel.readInt();
            this.f759f = parcel.readInt();
            this.f760g = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f756c = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f713a, i);
            parcel.writeInt(this.f756c);
            parcel.writeInt(this.f757d);
            parcel.writeInt(this.f758e);
            parcel.writeInt(this.f759f);
            parcel.writeInt(this.f760g);
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    public class C0147a extends C26558a {

        /* renamed from: d */
        public final Rect f761d = new Rect();

        public C0147a() {
            DrawerLayout.this = r5;
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: a */
        public boolean mo1683a(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                accessibilityEvent.getText();
                View m42973h = DrawerLayout.this.m42973h();
                if (m42973h == null) {
                    return true;
                }
                int m42970k = DrawerLayout.this.m42970k(m42973h);
                DrawerLayout drawerLayout = DrawerLayout.this;
                Objects.requireNonNull(drawerLayout);
                AtomicInteger atomicInteger = C26614s.f74505a;
                Gravity.getAbsoluteGravity(m42970k, drawerLayout.getLayoutDirection());
                return true;
            }
            return this.f74411a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: c */
        public void mo1511c(View view, AccessibilityEvent accessibilityEvent) {
            this.f74411a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: d */
        public void mo1510d(View view, C26584b c26584b) {
            int[] iArr = DrawerLayout.f726C;
            this.f74411a.onInitializeAccessibilityNodeInfo(view, c26584b.f74463a);
            c26584b.f74463a.setClassName(DrawerLayout.class.getName());
            c26584b.f74463a.setFocusable(false);
            c26584b.f74463a.setFocused(false);
            c26584b.m1619l(C26584b.C26585a.f74466e);
            c26584b.m1619l(C26584b.C26585a.f74467f);
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: f */
        public boolean mo1681f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            int[] iArr = DrawerLayout.f726C;
            return this.f74411a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$b.class */
    public static final class C0148b extends C26558a {
        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: d */
        public void mo1510d(View view, C26584b c26584b) {
            this.f74411a.onInitializeAccessibilityNodeInfo(view, c26584b.f74463a);
            if (!DrawerLayout.m42968m(view)) {
                c26584b.m1614q(null);
            }
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$c.class */
    public interface AbstractC0149c {
        /* renamed from: a */
        void mo3674a(View view);

        /* renamed from: b */
        void mo3673b(View view);

        /* renamed from: c */
        void mo3672c(int i);

        /* renamed from: d */
        void mo21931d(View view, float f);
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public static class C0150d extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f763a;

        /* renamed from: b */
        public float f764b;

        /* renamed from: c */
        public boolean f765c;

        /* renamed from: d */
        public int f766d;

        public C0150d(int i, int i2) {
            super(i, i2);
            this.f763a = 0;
        }

        public C0150d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f763a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f727D);
            this.f763a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public C0150d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f763a = 0;
        }

        public C0150d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f763a = 0;
        }

        public C0150d(C0150d c0150d) {
            super((ViewGroup.MarginLayoutParams) c0150d);
            this.f763a = 0;
            this.f763a = c0150d.f763a;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$e.class */
    public static abstract class AbstractC0151e implements AbstractC0149c {
        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0149c
        /* renamed from: d */
        public void mo21931d(View view, float f) {
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$f.class */
    public class C0152f extends C26670e.AbstractC26673c {

        /* renamed from: a */
        public final int f767a;

        /* renamed from: b */
        public C26670e f768b;

        /* renamed from: c */
        public final Runnable f769c = new RunnableC0153a();

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$f$a.class */
        public class RunnableC0153a implements Runnable {
            public RunnableC0153a() {
                C0152f.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i;
                View view;
                C0152f c0152f = C0152f.this;
                int i2 = c0152f.f768b.f74651o;
                boolean z = c0152f.f767a == 3;
                if (z) {
                    view = DrawerLayout.this.m42975f(3);
                    i = (view != null ? -view.getWidth() : 0) + i2;
                } else {
                    view = DrawerLayout.this.m42975f(5);
                    i = DrawerLayout.this.getWidth() - i2;
                }
                if (view != null) {
                    if (((!z || view.getLeft() >= i) && (z || view.getLeft() <= i)) || DrawerLayout.this.m42971j(view) != 0) {
                        return;
                    }
                    C0150d c0150d = (C0150d) view.getLayoutParams();
                    c0152f.f768b.m1465x(view, i, view.getTop());
                    c0150d.f765c = true;
                    DrawerLayout.this.invalidate();
                    c0152f.m42956m();
                    DrawerLayout drawerLayout = DrawerLayout.this;
                    if (drawerLayout.f747r) {
                        return;
                    }
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    int childCount = drawerLayout.getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        drawerLayout.getChildAt(i3).dispatchTouchEvent(obtain);
                    }
                    obtain.recycle();
                    drawerLayout.f747r = true;
                }
            }
        }

        public C0152f(int i) {
            DrawerLayout.this = r6;
            this.f767a = i;
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: a */
        public int mo1463a(View view, int i, int i2) {
            if (DrawerLayout.this.m42979b(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: b */
        public int mo1462b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: c */
        public int mo1461c(View view) {
            return DrawerLayout.this.m42964q(view) ? view.getWidth() : 0;
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: e */
        public void mo1459e(int i, int i2) {
            View m42975f = (i & 1) == 1 ? DrawerLayout.this.m42975f(3) : DrawerLayout.this.m42975f(5);
            if (m42975f == null || DrawerLayout.this.m42971j(m42975f) != 0) {
                return;
            }
            this.f768b.m1487b(m42975f, i2);
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: f */
        public boolean mo1458f(int i) {
            return false;
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: g */
        public void mo1457g(int i, int i2) {
            DrawerLayout.this.postDelayed(this.f769c, 160L);
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: h */
        public void mo1456h(View view, int i) {
            ((C0150d) view.getLayoutParams()).f765c = false;
            m42956m();
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: i */
        public void mo1455i(int i) {
            DrawerLayout.this.m42957x(i, this.f768b.f74655s);
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: j */
        public void mo1454j(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.m42979b(view, 3) ? i + width : DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.m42959v(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x006d, code lost:
            if (r0 > 0.5f) goto L18;
         */
        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo1453k(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r5
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                androidx.drawerlayout.widget.DrawerLayout$d r0 = (androidx.drawerlayout.widget.DrawerLayout.C0150d) r0
                float r0 = r0.f764b
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.m42979b(r1, r2)
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
                n3.m.a.e r0 = r0.f768b
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m1467v(r1, r2)
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.C0152f.mo1453k(android.view.View, float, float):void");
        }

        @Override // p1727n3.p1832m.p1833a.C26670e.AbstractC26673c
        /* renamed from: l */
        public boolean mo1452l(View view, int i) {
            return DrawerLayout.this.m42964q(view) && DrawerLayout.this.m42979b(view, this.f767a) && DrawerLayout.this.m42971j(view) == 0;
        }

        /* renamed from: m */
        public final void m42956m() {
            int i = 3;
            if (this.f767a == 3) {
                i = 5;
            }
            View m42975f = DrawerLayout.this.m42975f(i);
            if (m42975f != null) {
                DrawerLayout.this.m42977d(m42975f, true);
            }
        }

        /* renamed from: n */
        public void m42955n() {
            DrawerLayout.this.removeCallbacks(this.f769c);
        }
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f732c = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        C0152f c0152f = new C0152f(3);
        this.f738i = c0152f;
        C0152f c0152f2 = new C0152f(5);
        this.f739j = c0152f2;
        C26670e m1479j = C26670e.m1479j(this, 1.0f, c0152f);
        this.f736g = m1479j;
        m1479j.f74652p = 1;
        m1479j.f74650n = f2;
        c0152f.f768b = m1479j;
        C26670e m1479j2 = C26670e.m1479j(this, 1.0f, c0152f2);
        this.f737h = m1479j2;
        m1479j2.f74652p = 2;
        m1479j2.f74650n = f2;
        c0152f2.f768b = m1479j2;
        setFocusableInTouchMode(true);
        AtomicInteger atomicInteger = C26614s.f74505a;
        setImportantForAccessibility(1);
        C26614s.m1564q(this, new C0147a());
        setMotionEventSplittingEnabled(false);
        if (getFitsSystemWindows()) {
            setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC26885a(this));
            setSystemUiVisibility(1280);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f726C);
            try {
                this.f752w = obtainStyledAttributes.getDrawable(0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f731b = f * 10.0f;
        this.f755z = new ArrayList<>();
    }

    /* renamed from: l */
    public static String m42969l(int i) {
        return (i & 3) == 3 ? ItemVisualPosition.LEFT : (i & 5) == 5 ? ItemVisualPosition.RIGHT : Integer.toHexString(i);
    }

    /* renamed from: m */
    public static boolean m42968m(View view) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        return (view.getImportantForAccessibility() == 4 || view.getImportantForAccessibility() == 2) ? false : true;
    }

    /* renamed from: a */
    public void m42980a(AbstractC0149c abstractC0149c) {
        if (abstractC0149c == null) {
            return;
        }
        if (this.f749t == null) {
            this.f749t = new ArrayList();
        }
        this.f749t.add(abstractC0149c);
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
            if (!m42964q(childAt)) {
                this.f755z.add(childAt);
            } else if (m42965p(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
        }
        if (!z) {
            int size = this.f755z.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = this.f755z.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        this.f755z.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m42974g() != null || m42964q(view)) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            view.setImportantForAccessibility(4);
            return;
        }
        AtomicInteger atomicInteger2 = C26614s.f74505a;
        view.setImportantForAccessibility(1);
    }

    /* renamed from: b */
    public boolean m42979b(View view, int i) {
        return (m42970k(view) & i) == i;
    }

    /* renamed from: c */
    public void m42978c(int i) {
        View m42975f = m42975f(i);
        if (m42975f != null) {
            m42977d(m42975f, true);
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("No drawer view found with gravity ");
        m8728C.append(m42969l(i));
        throw new IllegalArgumentException(m8728C.toString());
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0150d) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((C0150d) getChildAt(i).getLayoutParams()).f764b);
        }
        this.f734e = f;
        boolean m1480i = this.f736g.m1480i(true);
        boolean m1480i2 = this.f737h.m1480i(true);
        if (m1480i || m1480i2) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            postInvalidateOnAnimation();
        }
    }

    /* renamed from: d */
    public void m42977d(View view, boolean z) {
        if (!m42964q(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        C0150d c0150d = (C0150d) view.getLayoutParams();
        if (this.f742m) {
            c0150d.f764b = 0.0f;
            c0150d.f766d = 0;
        } else if (z) {
            c0150d.f766d |= 4;
            if (m42979b(view, 3)) {
                this.f736g.m1465x(view, -view.getWidth(), view.getTop());
            } else {
                this.f737h.m1465x(view, getWidth(), view.getTop());
            }
        } else {
            m42962s(view, 0.0f);
            int i = c0150d.f763a;
            m42957x(0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean z;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f734e <= 0.0f) {
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
            if (this.f728A == null) {
                this.f728A = new Rect();
            }
            childAt.getHitRect(this.f728A);
            if (this.f728A.contains((int) x, (int) y) && !m42967n(childAt)) {
                if (!childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation(scrollX, scrollY);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.f729B == null) {
                            this.f729B = new Matrix();
                        }
                        matrix.invert(this.f729B);
                        obtain.transform(this.f729B);
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
        int height = getHeight();
        boolean m42967n = m42967n(view);
        int width = getWidth();
        int save = canvas.save();
        int i2 = 0;
        int i3 = width;
        if (m42967n) {
            int childCount = getChildCount();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i2 = i5;
                if (i4 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i4);
                int i6 = width;
                int i7 = i2;
                if (childAt != view) {
                    i6 = width;
                    i7 = i2;
                    if (childAt.getVisibility() == 0) {
                        Drawable background = childAt.getBackground();
                        i6 = width;
                        i7 = i2;
                        if (background != null && background.getOpacity() == -1) {
                            i6 = width;
                            i7 = i2;
                            if (m42964q(childAt)) {
                                if (childAt.getHeight() < height) {
                                    i6 = width;
                                    i7 = i2;
                                } else if (m42979b(childAt, 3)) {
                                    int right = childAt.getRight();
                                    i6 = width;
                                    i7 = i2;
                                    if (right > i2) {
                                        i7 = right;
                                        i6 = width;
                                    }
                                } else {
                                    int left = childAt.getLeft();
                                    i6 = width;
                                    i7 = i2;
                                    if (left < width) {
                                        i6 = left;
                                        i7 = i2;
                                    }
                                }
                            }
                        }
                    }
                }
                i4++;
                width = i6;
                i5 = i7;
            }
            canvas.clipRect(i2, 0, width, getHeight());
            i3 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f734e;
        if (f > 0.0f && m42967n) {
            this.f735f.setColor((((int) ((((-16777216) & i) >>> 24) * f)) << 24) | (this.f733d & 16777215));
            canvas.drawRect(i2, 0.0f, i3, getHeight(), this.f735f);
        }
        return drawChild;
    }

    /* renamed from: e */
    public void m42976e(boolean z) {
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
            C0150d c0150d = (C0150d) childAt.getLayoutParams();
            boolean z4 = z2;
            if (m42964q(childAt)) {
                if (!z || c0150d.f765c) {
                    z4 = z2 | (m42979b(childAt, 3) ? this.f736g.m1465x(childAt, -childAt.getWidth(), childAt.getTop()) : this.f737h.m1465x(childAt, getWidth(), childAt.getTop()));
                    c0150d.f765c = false;
                } else {
                    z4 = z2;
                }
            }
            i++;
            z3 = z4;
        }
        this.f738i.m42955n();
        this.f739j.m42955n();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: f */
    public View m42975f(int i) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m42970k(childAt) & 7) == (absoluteGravity & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: g */
    public View m42974g() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((C0150d) childAt.getLayoutParams()).f766d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0150d(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0150d(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0150d ? new C0150d((C0150d) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0150d((ViewGroup.MarginLayoutParams) layoutParams) : new C0150d(layoutParams);
    }

    public float getDrawerElevation() {
        return this.f731b;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f752w;
    }

    /* renamed from: h */
    public View m42973h() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m42964q(childAt) && m42963r(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: i */
    public int m42972i(int i) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        int layoutDirection = getLayoutDirection();
        if (i == 3) {
            int i2 = this.f743n;
            if (i2 != 3) {
                return i2;
            }
            int i3 = layoutDirection == 0 ? this.f745p : this.f746q;
            if (i3 == 3) {
                return 0;
            }
            return i3;
        } else if (i == 5) {
            int i4 = this.f744o;
            if (i4 != 3) {
                return i4;
            }
            int i5 = layoutDirection == 0 ? this.f746q : this.f745p;
            if (i5 == 3) {
                return 0;
            }
            return i5;
        } else if (i == 8388611) {
            int i6 = this.f745p;
            if (i6 != 3) {
                return i6;
            }
            int i7 = layoutDirection == 0 ? this.f743n : this.f744o;
            if (i7 == 3) {
                return 0;
            }
            return i7;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f746q;
            if (i8 != 3) {
                return i8;
            }
            int i9 = layoutDirection == 0 ? this.f744o : this.f743n;
            if (i9 == 3) {
                return 0;
            }
            return i9;
        }
    }

    /* renamed from: j */
    public int m42971j(View view) {
        if (m42964q(view)) {
            return m42972i(((C0150d) view.getLayoutParams()).f763a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: k */
    public int m42970k(View view) {
        int i = ((C0150d) view.getLayoutParams()).f763a;
        AtomicInteger atomicInteger = C26614s.f74505a;
        return Gravity.getAbsoluteGravity(i, getLayoutDirection());
    }

    /* renamed from: n */
    public boolean m42967n(View view) {
        return ((C0150d) view.getLayoutParams()).f763a == 0;
    }

    /* renamed from: o */
    public boolean m42966o(int i) {
        View m42975f = m42975f(i);
        if (m42975f != null) {
            return m42965p(m42975f);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f742m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f742m = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f754y || this.f752w == null) {
            return;
        }
        Object obj = this.f753x;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop <= 0) {
            return;
        }
        this.f752w.setBounds(0, 0, getWidth(), systemWindowInsetTop);
        this.f752w.draw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x014e, code lost:
        if (r4.f747r == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (r0 != 3) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009c A[LOOP:0: B:11:0x003f->B:22:0x009c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0097 A[SYNTHETIC] */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (m42973h() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            View m42973h = m42973h();
            boolean z = false;
            if (m42973h != null && m42971j(m42973h) == 0) {
                m42976e(false);
            }
            if (m42973h != null) {
                z = true;
            }
            return z;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f;
        int i5;
        this.f741l = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                C0150d c0150d = (C0150d) childAt.getLayoutParams();
                if (m42967n(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) c0150d).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) c0150d).topMargin, childAt.getMeasuredWidth() + i8, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0150d).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m42979b(childAt, 3)) {
                        int i9 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i9 + ((int) (c0150d.f764b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i6 - ((int) (c0150d.f764b * f3));
                        f = (i6 - i5) / f3;
                    }
                    boolean z2 = f != c0150d.f764b;
                    int i10 = c0150d.f763a & 112;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        int i13 = ((ViewGroup.MarginLayoutParams) c0150d).topMargin;
                        if (i12 >= i13) {
                            int i14 = ((ViewGroup.MarginLayoutParams) c0150d).bottomMargin;
                            i13 = i12;
                            if (i12 + measuredHeight > i11 - i14) {
                                i13 = (i11 - i14) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i13, measuredWidth + i5, measuredHeight + i13);
                    } else if (i10 != 80) {
                        int i15 = ((ViewGroup.MarginLayoutParams) c0150d).topMargin;
                        childAt.layout(i5, i15, measuredWidth + i5, measuredHeight + i15);
                    } else {
                        int i16 = i4 - i2;
                        childAt.layout(i5, (i16 - ((ViewGroup.MarginLayoutParams) c0150d).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i16 - ((ViewGroup.MarginLayoutParams) c0150d).bottomMargin);
                    }
                    if (z2) {
                        m42959v(childAt, f);
                    }
                    int i17 = c0150d.f764b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i17) {
                        childAt.setVisibility(i17);
                    }
                }
            }
        }
        this.f741l = false;
        this.f742m = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0243, code lost:
        r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C("Child drawer has absolute gravity ");
        r0.append(m42969l(r0));
        r0.append(" but this ");
        r0.append("DrawerLayout");
        r0.append(" already has a ");
        r0.append("drawer view along that edge");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0286, code lost:
        throw new java.lang.IllegalStateException(r0.toString());
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0316 A[SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 802
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View m42975f;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f713a);
        int i = savedState.f756c;
        if (i != 0 && (m42975f = m42975f(i)) != null) {
            m42961t(m42975f, true);
        }
        int i2 = savedState.f757d;
        if (i2 != 3) {
            m42960u(i2, 3);
        }
        int i3 = savedState.f758e;
        if (i3 != 3) {
            m42960u(i3, 5);
        }
        int i4 = savedState.f759f;
        if (i4 != 3) {
            m42960u(i4, 8388611);
        }
        int i5 = savedState.f760g;
        if (i5 == 3) {
            return;
        }
        m42960u(i5, 8388613);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            C0150d c0150d = (C0150d) getChildAt(i).getLayoutParams();
            int i2 = c0150d.f766d;
            boolean z = true;
            boolean z2 = i2 == 1;
            if (i2 != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.f756c = c0150d.f763a;
                break;
            }
        }
        savedState.f757d = this.f743n;
        savedState.f758e = this.f744o;
        savedState.f759f = this.f745p;
        savedState.f760g = this.f746q;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x009b, code lost:
        if (m42971j(r0) != 2) goto L20;
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
    public boolean m42965p(View view) {
        if (m42964q(view)) {
            boolean z = true;
            if ((((C0150d) view.getLayoutParams()).f766d & 1) != 1) {
                z = false;
            }
            return z;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: q */
    public boolean m42964q(View view) {
        int i = ((C0150d) view.getLayoutParams()).f763a;
        AtomicInteger atomicInteger = C26614s.f74505a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    /* renamed from: r */
    public boolean m42963r(View view) {
        if (m42964q(view)) {
            return ((C0150d) view.getLayoutParams()).f764b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            m42976e(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f741l) {
            super.requestLayout();
        }
    }

    /* renamed from: s */
    public void m42962s(View view, float f) {
        float f2 = ((C0150d) view.getLayoutParams()).f764b;
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (f2 * width));
        if (!m42979b(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m42959v(view, f);
    }

    public void setDrawerElevation(float f) {
        this.f731b = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m42964q(childAt)) {
                float f2 = this.f731b;
                AtomicInteger atomicInteger = C26614s.f74505a;
                childAt.setElevation(f2);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(AbstractC0149c abstractC0149c) {
        List<AbstractC0149c> list;
        AbstractC0149c abstractC0149c2 = this.f748s;
        if (abstractC0149c2 != null && abstractC0149c2 != null && (list = this.f749t) != null) {
            list.remove(abstractC0149c2);
        }
        if (abstractC0149c != null) {
            m42980a(abstractC0149c);
        }
        this.f748s = abstractC0149c;
    }

    public void setDrawerLockMode(int i) {
        m42960u(i, 3);
        m42960u(i, 5);
    }

    public void setScrimColor(int i) {
        this.f733d = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        Drawable drawable;
        if (i != 0) {
            Context context = getContext();
            Object obj = C26467a.f74235a;
            drawable = C26467a.C26470c.m1789b(context, i);
        } else {
            drawable = null;
        }
        this.f752w = drawable;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f752w = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f752w = new ColorDrawable(i);
        invalidate();
    }

    /* renamed from: t */
    public void m42961t(View view, boolean z) {
        if (!m42964q(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        C0150d c0150d = (C0150d) view.getLayoutParams();
        if (this.f742m) {
            c0150d.f764b = 1.0f;
            c0150d.f766d = 1;
            m42958w(view, true);
        } else if (z) {
            c0150d.f766d |= 2;
            if (m42979b(view, 3)) {
                this.f736g.m1465x(view, 0, view.getTop());
            } else {
                this.f737h.m1465x(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            m42962s(view, 1.0f);
            int i = c0150d.f763a;
            m42957x(0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    /* renamed from: u */
    public void m42960u(int i, int i2) {
        View m42975f;
        AtomicInteger atomicInteger = C26614s.f74505a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection());
        if (i2 == 3) {
            this.f743n = i;
        } else if (i2 == 5) {
            this.f744o = i;
        } else if (i2 == 8388611) {
            this.f745p = i;
        } else if (i2 == 8388613) {
            this.f746q = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.f736g : this.f737h).m1488a();
        }
        if (i != 1) {
            if (i != 2 || (m42975f = m42975f(absoluteGravity)) == null) {
                return;
            }
            m42961t(m42975f, true);
            return;
        }
        View m42975f2 = m42975f(absoluteGravity);
        if (m42975f2 == null) {
            return;
        }
        m42977d(m42975f2, true);
    }

    /* renamed from: v */
    public void m42959v(View view, float f) {
        C0150d c0150d = (C0150d) view.getLayoutParams();
        if (f == c0150d.f764b) {
            return;
        }
        c0150d.f764b = f;
        List<AbstractC0149c> list = this.f749t;
        if (list == null) {
            return;
        }
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            this.f749t.get(size).mo21931d(view, f);
        }
    }

    /* renamed from: w */
    public final void m42958w(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m42964q(childAt)) && (!z || childAt != view)) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                childAt.setImportantForAccessibility(4);
            } else {
                AtomicInteger atomicInteger2 = C26614s.f74505a;
                childAt.setImportantForAccessibility(1);
            }
        }
    }

    /* renamed from: x */
    public void m42957x(int i, View view) {
        int i2;
        View rootView;
        int i3 = this.f736g.f74637a;
        int i4 = this.f737h.f74637a;
        if (i3 == 1 || i4 == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (i3 != 2) {
                i2 = i4 == 2 ? 2 : 0;
            }
        }
        if (view != null && i == 0) {
            float f = ((C0150d) view.getLayoutParams()).f764b;
            if (f == 0.0f) {
                C0150d c0150d = (C0150d) view.getLayoutParams();
                if ((c0150d.f766d & 1) == 1) {
                    c0150d.f766d = 0;
                    List<AbstractC0149c> list = this.f749t;
                    if (list != null) {
                        for (int size = list.size() - 1; size >= 0; size--) {
                            this.f749t.get(size).mo3673b(view);
                        }
                    }
                    m42958w(view, false);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (f == 1.0f) {
                C0150d c0150d2 = (C0150d) view.getLayoutParams();
                if ((c0150d2.f766d & 1) == 0) {
                    c0150d2.f766d = 1;
                    List<AbstractC0149c> list2 = this.f749t;
                    if (list2 != null) {
                        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                            this.f749t.get(size2).mo3674a(view);
                        }
                    }
                    m42958w(view, true);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i2 != this.f740k) {
            this.f740k = i2;
            List<AbstractC0149c> list3 = this.f749t;
            if (list3 == null) {
                return;
            }
            for (int size3 = list3.size() - 1; size3 >= 0; size3--) {
                this.f749t.get(size3).mo3672c(i2);
            }
        }
    }
}
