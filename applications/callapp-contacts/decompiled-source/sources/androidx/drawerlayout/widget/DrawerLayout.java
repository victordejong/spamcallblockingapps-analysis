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
import androidx.core.view.a.c;
import androidx.core.view.v;
import androidx.customview.a.c;
import androidx.customview.view.AbsSavedState;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: b  reason: collision with root package name */
    static final boolean f2095b;
    private static final boolean g;
    private List<c> A;
    private float B;
    private float C;
    private Drawable D;
    private Drawable E;
    private Drawable F;
    private Object G;
    private boolean H;
    private Drawable I;
    private Drawable J;
    private Drawable K;
    private Drawable L;
    private final ArrayList<View> M;
    private Rect N;
    private Matrix O;

    /* renamed from: c  reason: collision with root package name */
    boolean f2096c;

    /* renamed from: d  reason: collision with root package name */
    CharSequence f2097d;
    CharSequence e;
    private final b h;
    private float i;
    private int j;
    private int k;
    private float l;
    private Paint m;
    private final androidx.customview.a.c n;
    private final androidx.customview.a.c o;
    private final e p;
    private final e q;
    private int r;
    private boolean s;
    private boolean t;
    private int u;
    private int v;
    private int w;
    private int x;
    private boolean y;
    private c z;
    private static final int[] f = {16843828};

    /* renamed from: a  reason: collision with root package name */
    static final int[] f2094a = {16842931};

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f2099a;

        /* renamed from: b  reason: collision with root package name */
        float f2100b;

        /* renamed from: c  reason: collision with root package name */
        boolean f2101c;

        /* renamed from: d  reason: collision with root package name */
        int f2102d;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f2099a = 0;
        }

        public LayoutParams(int i, int i2, int i3) {
            this(i, i2);
            this.f2099a = i3;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2099a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f2094a);
            this.f2099a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2099a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2099a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f2099a = 0;
            this.f2099a = layoutParams.f2099a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.drawerlayout.widget.DrawerLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        int openDrawerGravity;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.openDrawerGravity = 0;
            this.openDrawerGravity = parcel.readInt();
            this.lockModeLeft = parcel.readInt();
            this.lockModeRight = parcel.readInt();
            this.lockModeStart = parcel.readInt();
            this.lockModeEnd = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.openDrawerGravity = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.openDrawerGravity);
            parcel.writeInt(this.lockModeLeft);
            parcel.writeInt(this.lockModeRight);
            parcel.writeInt(this.lockModeStart);
            parcel.writeInt(this.lockModeEnd);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    final class a extends androidx.core.view.a {

        /* renamed from: c  reason: collision with root package name */
        private final Rect f2104c = new Rect();

        a() {
        }

        @Override // androidx.core.view.a
        public final void a(View view, androidx.core.view.a.c cVar) {
            if (DrawerLayout.f2095b) {
                super.a(view, cVar);
            } else {
                androidx.core.view.a.c a2 = androidx.core.view.a.c.a(cVar);
                super.a(view, a2);
                cVar.b(view);
                ViewParent g = v.g(view);
                if (g instanceof View) {
                    cVar.d((View) g);
                }
                Rect rect = this.f2104c;
                a2.a(rect);
                cVar.b(rect);
                a2.c(rect);
                cVar.d(rect);
                cVar.d(a2.b());
                cVar.a(a2.f1959a.getPackageName());
                cVar.b(a2.f1959a.getClassName());
                cVar.e(a2.f1959a.getContentDescription());
                cVar.i(a2.f1959a.isEnabled());
                cVar.g(a2.f1959a.isClickable());
                cVar.b(a2.f1959a.isFocusable());
                cVar.c(a2.f1959a.isFocused());
                cVar.e(a2.c());
                cVar.f(a2.f1959a.isSelected());
                cVar.h(a2.f1959a.isLongClickable());
                cVar.a(a2.f1959a.getActions());
                a2.f1959a.recycle();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (DrawerLayout.g(childAt)) {
                        cVar.c(childAt);
                    }
                }
            }
            cVar.b((CharSequence) DrawerLayout.class.getName());
            cVar.b(false);
            cVar.c(false);
            cVar.b(c.a.f1962a);
            cVar.b(c.a.f1963b);
        }

        @Override // androidx.core.view.a
        public final boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f2095b || DrawerLayout.g(view)) {
                return super.a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        @Override // androidx.core.view.a
        public final boolean b(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.b(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View b2 = DrawerLayout.this.b();
            if (b2 == null) {
                return true;
            }
            int c2 = DrawerLayout.this.c(b2);
            DrawerLayout drawerLayout = DrawerLayout.this;
            int a2 = androidx.core.view.e.a(c2, v.f(drawerLayout));
            CharSequence charSequence = a2 == 3 ? drawerLayout.f2097d : a2 == 5 ? drawerLayout.e : null;
            if (charSequence == null) {
                return true;
            }
            text.add(charSequence);
            return true;
        }

        @Override // androidx.core.view.a
        public final void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$b.class */
    static final class b extends androidx.core.view.a {
        b() {
        }

        @Override // androidx.core.view.a
        public final void a(View view, androidx.core.view.a.c cVar) {
            super.a(view, cVar);
            if (!DrawerLayout.g(view)) {
                cVar.d((View) null);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$c.class */
    public interface c {
        void a();

        void a(float f);

        void b();
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public static abstract class d implements c {
        @Override // androidx.drawerlayout.widget.DrawerLayout.c
        public void a() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.c
        public void a(float f) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.c
        public void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$e.class */
    public final class e extends c.a {

        /* renamed from: a  reason: collision with root package name */
        final int f2105a;

        /* renamed from: b  reason: collision with root package name */
        androidx.customview.a.c f2106b;

        /* renamed from: d  reason: collision with root package name */
        private final Runnable f2108d = new Runnable() { // from class: androidx.drawerlayout.widget.DrawerLayout.e.1
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                View view;
                e eVar = e.this;
                int i2 = eVar.f2106b.h;
                boolean z = eVar.f2105a == 3;
                if (z) {
                    view = DrawerLayout.this.b(3);
                    i = (view != null ? -view.getWidth() : 0) + i2;
                } else {
                    view = DrawerLayout.this.b(5);
                    i = DrawerLayout.this.getWidth() - i2;
                }
                if (view == null) {
                    return;
                }
                if (((z && view.getLeft() < i) || (!z && view.getLeft() > i)) && DrawerLayout.this.a(view) == 0) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    eVar.f2106b.a(view, i, view.getTop());
                    layoutParams.f2101c = true;
                    DrawerLayout.this.invalidate();
                    eVar.c();
                    DrawerLayout drawerLayout = DrawerLayout.this;
                    if (!drawerLayout.f2096c) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0);
                        int childCount = drawerLayout.getChildCount();
                        for (int i3 = 0; i3 < childCount; i3++) {
                            drawerLayout.getChildAt(i3).dispatchTouchEvent(obtain);
                        }
                        obtain.recycle();
                        drawerLayout.f2096c = true;
                    }
                }
            }
        };

        e(int i) {
            this.f2105a = i;
        }

        @Override // androidx.customview.a.c.a
        public final int a(View view) {
            if (DrawerLayout.d(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.a.c.a
        public final void a() {
            DrawerLayout.this.postDelayed(this.f2108d, 160L);
        }

        @Override // androidx.customview.a.c.a
        public final void a(int i) {
            DrawerLayout.this.a(i, this.f2106b.j);
        }

        @Override // androidx.customview.a.c.a
        public final void a(int i, int i2) {
            View b2 = (i & 1) == 1 ? DrawerLayout.this.b(3) : DrawerLayout.this.b(5);
            if (b2 != null && DrawerLayout.this.a(b2) == 0) {
                this.f2106b.a(b2, i2);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
            if (r0 > 0.5f) goto L_0x0062;
         */
        @Override // androidx.customview.a.c.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r5
                float r0 = androidx.drawerlayout.widget.DrawerLayout.b(r0)
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.a(r1, r2)
                if (r0 == 0) goto L_0x003e
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r9 = r0
                r0 = r9
                if (r0 > 0) goto L_0x0038
                r0 = r9
                if (r0 != 0) goto L_0x0030
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0030
                goto L_0x0038
            L_0x0030:
                r0 = r8
                int r0 = -r0
                r9 = r0
                goto L_0x0069
            L_0x0038:
                r0 = 0
                r9 = r0
                goto L_0x0069
            L_0x003e:
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                int r0 = r0.getWidth()
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0062
                r0 = r10
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0069
                r0 = r10
                r9 = r0
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0069
            L_0x0062:
                r0 = r10
                r1 = r8
                int r0 = r0 - r1
                r9 = r0
            L_0x0069:
                r0 = r4
                androidx.customview.a.c r0 = r0.f2106b
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.a(r1, r2)
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.e.a(android.view.View, float, float):void");
        }

        @Override // androidx.customview.a.c.a
        public final void a(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).f2101c = false;
            c();
        }

        @Override // androidx.customview.a.c.a
        public final void a(View view, int i, int i2) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.a(view, 3) ? i + width : DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.a(view, width2);
            view.setVisibility(width2 == BitmapDescriptorFactory.HUE_RED ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        public final void b() {
            DrawerLayout.this.removeCallbacks(this.f2108d);
        }

        @Override // androidx.customview.a.c.a
        public final boolean b(View view, int i) {
            return DrawerLayout.d(view) && DrawerLayout.this.a(view, this.f2105a) && DrawerLayout.this.a(view) == 0;
        }

        @Override // androidx.customview.a.c.a
        public final int c(View view, int i) {
            if (DrawerLayout.this.a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        final void c() {
            int i = 3;
            if (this.f2105a == 3) {
                i = 5;
            }
            View b2 = DrawerLayout.this.b(i);
            if (b2 != null) {
                DrawerLayout.this.a(b2, true);
            }
        }

        @Override // androidx.customview.a.c.a
        public final int d(View view, int i) {
            return view.getTop();
        }
    }

    static {
        boolean z = true;
        f2095b = Build.VERSION.SDK_INT >= 19;
        if (Build.VERSION.SDK_INT < 21) {
            z = false;
        }
        g = z;
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = new b();
        this.k = -1728053248;
        this.m = new Paint();
        this.t = true;
        this.u = 3;
        this.v = 3;
        this.w = 3;
        this.x = 3;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        setDescendantFocusability(262144);
        float f2 = getResources().getDisplayMetrics().density;
        this.j = (int) ((64.0f * f2) + 0.5f);
        float f3 = 400.0f * f2;
        e eVar = new e(3);
        this.p = eVar;
        e eVar2 = new e(5);
        this.q = eVar2;
        androidx.customview.a.c a2 = androidx.customview.a.c.a(this, 1.0f, eVar);
        this.n = a2;
        a2.i = 1;
        a2.g = f3;
        eVar.f2106b = a2;
        androidx.customview.a.c a3 = androidx.customview.a.c.a(this, 1.0f, eVar2);
        this.o = a3;
        a3.i = 2;
        a3.g = f3;
        eVar2.f2106b = a3;
        setFocusableInTouchMode(true);
        v.c((View) this, 1);
        v.a(this, new a());
        setMotionEventSplittingEnabled(false);
        if (v.s(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.drawerlayout.widget.DrawerLayout.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
                        return windowInsets.consumeSystemWindowInsets();
                    }
                });
                setSystemUiVisibility(Constants.SMALL_SIZE_SCREEN);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f);
                try {
                    this.D = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.D = null;
            }
        }
        this.i = f2 * 10.0f;
        this.M = new ArrayList<>();
    }

    private void a(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            z2 = z2;
            if (d(childAt)) {
                if (z) {
                    z2 = z2;
                    if (!layoutParams.f2101c) {
                    }
                }
                z2 |= a(childAt, 3) ? this.n.a(childAt, -childAt.getWidth(), childAt.getTop()) : this.o.a(childAt, getWidth(), childAt.getTop());
                layoutParams.f2101c = false;
            }
        }
        this.p.b();
        this.q.b();
        if (z2) {
            invalidate();
        }
    }

    private static boolean a(Drawable drawable, int i) {
        if (drawable == null || !androidx.core.graphics.drawable.a.a(drawable)) {
            return false;
        }
        androidx.core.graphics.drawable.a.b(drawable, i);
        return true;
    }

    static float b(View view) {
        return ((LayoutParams) view.getLayoutParams()).f2100b;
    }

    private void b(View view, float f2) {
        float b2 = b(view);
        float width = view.getWidth();
        int i = ((int) (width * f2)) - ((int) (b2 * width));
        if (!a(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        a(view, f2);
    }

    private void b(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || d(childAt)) && (!z || childAt != view)) {
                v.c(childAt, 4);
            } else {
                v.c(childAt, 1);
            }
        }
    }

    private View c() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f2102d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    private void c(View view, boolean z) {
        if (d(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.t) {
                layoutParams.f2100b = 1.0f;
                layoutParams.f2102d = 1;
                b(view, true);
            } else {
                layoutParams.f2102d |= 2;
                if (a(view, 3)) {
                    this.n.a(view, 0, view.getTop());
                } else {
                    this.o.a(view, getWidth() - view.getWidth(), view.getTop());
                }
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    private static String d(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    private void d() {
        if (!g) {
            this.E = e();
            this.F = f();
        }
    }

    static boolean d(View view) {
        int a2 = androidx.core.view.e.a(((LayoutParams) view.getLayoutParams()).f2099a, v.f(view));
        return ((a2 & 3) == 0 && (a2 & 5) == 0) ? false : true;
    }

    private Drawable e() {
        int f2 = v.f(this);
        if (f2 == 0) {
            Drawable drawable = this.I;
            if (drawable != null) {
                a(drawable, f2);
                return this.I;
            }
        } else {
            Drawable drawable2 = this.J;
            if (drawable2 != null) {
                a(drawable2, f2);
                return this.J;
            }
        }
        return this.K;
    }

    public static boolean e(View view) {
        if (d(view)) {
            return (((LayoutParams) view.getLayoutParams()).f2102d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    private Drawable f() {
        int f2 = v.f(this);
        if (f2 == 0) {
            Drawable drawable = this.J;
            if (drawable != null) {
                a(drawable, f2);
                return this.J;
            }
        } else {
            Drawable drawable2 = this.I;
            if (drawable2 != null) {
                a(drawable2, f2);
                return this.I;
            }
        }
        return this.L;
    }

    public static boolean f(View view) {
        if (d(view)) {
            return ((LayoutParams) view.getLayoutParams()).f2100b > BitmapDescriptorFactory.HUE_RED;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    static boolean g(View view) {
        return (v.e(view) == 4 || v.e(view) == 2) ? false : true;
    }

    private static boolean h(View view) {
        return ((LayoutParams) view.getLayoutParams()).f2099a == 0;
    }

    public final int a(int i) {
        int f2 = v.f(this);
        if (i == 3) {
            int i2 = this.u;
            if (i2 != 3) {
                return i2;
            }
            int i3 = f2 == 0 ? this.w : this.x;
            if (i3 != 3) {
                return i3;
            }
            return 0;
        } else if (i == 5) {
            int i4 = this.v;
            if (i4 != 3) {
                return i4;
            }
            int i5 = f2 == 0 ? this.x : this.w;
            if (i5 != 3) {
                return i5;
            }
            return 0;
        } else if (i == 8388611) {
            int i6 = this.w;
            if (i6 != 3) {
                return i6;
            }
            int i7 = f2 == 0 ? this.u : this.v;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.x;
            if (i8 != 3) {
                return i8;
            }
            int i9 = f2 == 0 ? this.v : this.u;
            if (i9 != 3) {
                return i9;
            }
            return 0;
        }
    }

    public final int a(View view) {
        if (d(view)) {
            return a(((LayoutParams) view.getLayoutParams()).f2099a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public final void a() {
        a(8388611, true);
    }

    final void a(int i, View view) {
        int i2;
        View rootView;
        int i3 = this.n.f2082a;
        int i4 = this.o.f2082a;
        if (i3 == 1 || i4 == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (i3 != 2) {
                i2 = i4 == 2 ? 2 : 0;
            }
        }
        if (view != null && i == 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams.f2100b == BitmapDescriptorFactory.HUE_RED) {
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                if ((layoutParams2.f2102d & 1) == 1) {
                    layoutParams2.f2102d = 0;
                    List<c> list = this.A;
                    if (list != null) {
                        for (int size = list.size() - 1; size >= 0; size--) {
                            this.A.get(size).b();
                        }
                    }
                    b(view, false);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (layoutParams.f2100b == 1.0f) {
                LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
                if ((layoutParams3.f2102d & 1) == 0) {
                    layoutParams3.f2102d = 1;
                    List<c> list2 = this.A;
                    if (list2 != null) {
                        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                            this.A.get(size2).a();
                        }
                    }
                    b(view, true);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i2 != this.r) {
            this.r = i2;
            List<c> list3 = this.A;
            if (list3 != null) {
                for (int size3 = list3.size() - 1; size3 >= 0; size3--) {
                    this.A.get(size3);
                }
            }
        }
    }

    public final void a(int i, boolean z) {
        View b2 = b(8388611);
        if (b2 != null) {
            a(b2, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + d(8388611));
    }

    final void a(View view, float f2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 != layoutParams.f2100b) {
            layoutParams.f2100b = f2;
            List<c> list = this.A;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.A.get(size).a(f2);
                }
            }
        }
    }

    public final void a(View view, boolean z) {
        if (d(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.t) {
                layoutParams.f2100b = BitmapDescriptorFactory.HUE_RED;
                layoutParams.f2102d = 0;
            } else if (z) {
                layoutParams.f2102d |= 4;
                if (a(view, 3)) {
                    this.n.a(view, -view.getWidth(), view.getTop());
                } else {
                    this.o.a(view, getWidth(), view.getTop());
                }
            } else {
                b(view, BitmapDescriptorFactory.HUE_RED);
                a(0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public final void a(c cVar) {
        if (cVar != null) {
            if (this.A == null) {
                this.A = new ArrayList();
            }
            this.A.add(cVar);
        }
    }

    final boolean a(View view, int i) {
        return (c(view) & i) == i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z = false;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (!d(childAt)) {
                    this.M.add(childAt);
                } else if (e(childAt)) {
                    childAt.addFocusables(arrayList, i, i2);
                    z = true;
                }
            }
            if (!z) {
                int size = this.M.size();
                for (int i4 = 0; i4 < size; i4++) {
                    View view = this.M.get(i4);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i, i2);
                    }
                }
            }
            this.M.clear();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (c() != null || d(view)) {
            v.c(view, 4);
        } else {
            v.c(view, 1);
        }
        if (!f2095b) {
            v.a(view, this.h);
        }
    }

    final View b() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (d(childAt) && f(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    public final View b(int i) {
        int a2 = androidx.core.view.e.a(i, v.f(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((c(childAt) & 7) == (a2 & 7)) {
                return childAt;
            }
        }
        return null;
    }

    final int c(View view) {
        return androidx.core.view.e.a(((LayoutParams) view.getLayoutParams()).f2099a, v.f(this));
    }

    public void c(int i) {
        View b2 = b(8388611);
        if (b2 != null) {
            c(b2, true);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + d(8388611));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < childCount; i++) {
            f2 = Math.max(f2, ((LayoutParams) getChildAt(i).getLayoutParams()).f2100b);
        }
        this.l = f2;
        boolean c2 = this.n.c();
        boolean c3 = this.o.c();
        if (c2 || c3) {
            v.d(this);
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean z;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.l <= BitmapDescriptorFactory.HUE_RED) {
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
            if (this.N == null) {
                this.N = new Rect();
            }
            childAt.getHitRect(this.N);
            if (this.N.contains((int) x, (int) y) && !h(childAt)) {
                if (!childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation(scrollX, scrollY);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.O == null) {
                            this.O = new Matrix();
                        }
                        matrix.invert(this.O);
                        obtain.transform(this.O);
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
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int height = getHeight();
        boolean h = h(view);
        int width = getWidth();
        int save = canvas.save();
        int i = 0;
        int i2 = width;
        if (h) {
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
                        Drawable background = childAt.getBackground();
                        width = width;
                        i = i;
                        if (background != null && background.getOpacity() == -1) {
                            width = width;
                            i = i;
                            if (d(childAt)) {
                                width = width;
                                i = i;
                                if (childAt.getHeight() >= height) {
                                    if (a(childAt, 3)) {
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
            }
            canvas.clipRect(i, 0, width, getHeight());
            i2 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f2 = this.l;
        if (f2 > BitmapDescriptorFactory.HUE_RED && h) {
            int i4 = this.k;
            this.m.setColor((i4 & 16777215) | (((int) ((((-16777216) & i4) >>> 24) * f2)) << 24));
            canvas.drawRect(i, BitmapDescriptorFactory.HUE_RED, i2, getHeight(), this.m);
        } else if (this.E != null && a(view, 3)) {
            int intrinsicWidth = this.E.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(right2 / this.n.h, 1.0f));
            this.E.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.E.setAlpha((int) (max * 255.0f));
            this.E.draw(canvas);
        } else if (this.F != null && a(view, 5)) {
            int intrinsicWidth2 = this.F.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min((getWidth() - left2) / this.o.h, 1.0f));
            this.F.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.F.setAlpha((int) (max2 * 255.0f));
            this.F.draw(canvas);
        }
        return drawChild;
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

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.t = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.t = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (this.H && this.D != null) {
            int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.G) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
            if (systemWindowInsetTop > 0) {
                this.D.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.D.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r0 != 3) goto L_0x00c0;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094 A[LOOP:0: B:11:0x003c->B:22:0x0094, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x008f A[SYNTHETIC] */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (b() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View b2 = b();
        if (b2 != null && a(b2) == 0) {
            a(false);
        }
        return b2 != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f2;
        int i6;
        this.s = true;
        int i7 = i3 - i;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (h(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        int i9 = -measuredWidth;
                        float f3 = measuredWidth;
                        i5 = i9 + ((int) (layoutParams.f2100b * f3));
                        f2 = (measuredWidth + i5) / f3;
                    } else {
                        float f4 = measuredWidth;
                        i5 = i7 - ((int) (layoutParams.f2100b * f4));
                        f2 = (i7 - i5) / f4;
                    }
                    boolean z2 = f2 != layoutParams.f2100b;
                    int i10 = layoutParams.f2099a & 112;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        if (i12 < layoutParams.topMargin) {
                            i6 = layoutParams.topMargin;
                        } else {
                            i6 = i12;
                            if (i12 + measuredHeight > i11 - layoutParams.bottomMargin) {
                                i6 = (i11 - layoutParams.bottomMargin) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
                    } else if (i10 != 80) {
                        childAt.layout(i5, layoutParams.topMargin, measuredWidth + i5, layoutParams.topMargin + measuredHeight);
                    } else {
                        int i13 = i4 - i2;
                        childAt.layout(i5, (i13 - layoutParams.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i13 - layoutParams.bottomMargin);
                    }
                    if (z2) {
                        a(childAt, f2);
                    }
                    int i14 = layoutParams.f2100b > BitmapDescriptorFactory.HUE_RED ? 0 : 4;
                    if (childAt.getVisibility() != i14) {
                        childAt.setVisibility(i14);
                    }
                }
            }
        }
        this.s = false;
        this.t = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L_0x002e;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View b2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!(savedState.openDrawerGravity == 0 || (b2 = b(savedState.openDrawerGravity)) == null)) {
            c(b2, true);
        }
        if (savedState.lockModeLeft != 3) {
            setDrawerLockMode(savedState.lockModeLeft, 3);
        }
        if (savedState.lockModeRight != 3) {
            setDrawerLockMode(savedState.lockModeRight, 5);
        }
        if (savedState.lockModeStart != 3) {
            setDrawerLockMode(savedState.lockModeStart, 8388611);
        }
        if (savedState.lockModeEnd != 3) {
            setDrawerLockMode(savedState.lockModeEnd, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        d();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            boolean z = true;
            boolean z2 = layoutParams.f2102d == 1;
            if (layoutParams.f2102d != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.openDrawerGravity = layoutParams.f2099a;
                break;
            }
        }
        savedState.lockModeLeft = this.u;
        savedState.lockModeRight = this.v;
        savedState.lockModeStart = this.w;
        savedState.lockModeEnd = this.x;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View c2;
        this.n.b(motionEvent);
        this.o.b(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.B = x;
            this.C = y;
            this.y = false;
            this.f2096c = false;
            return true;
        } else if (action == 1) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            View b2 = this.n.b((int) x2, (int) y2);
            if (b2 != null && h(b2)) {
                float f2 = x2 - this.B;
                float f3 = y2 - this.C;
                int i = this.n.f2083b;
                if (!((f2 * f2) + (f3 * f3) >= i * i || (c2 = c()) == null || a(c2) == 2)) {
                    z = false;
                    a(z);
                    this.y = false;
                    return true;
                }
            }
            z = true;
            a(z);
            this.y = false;
            return true;
        } else if (action != 3) {
            return true;
        } else {
            a(true);
            this.y = false;
            this.f2096c = false;
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.y = z;
        if (z) {
            a(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.s) {
            super.requestLayout();
        }
    }

    public void setChildInsets(Object obj, boolean z) {
        this.G = obj;
        this.H = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f2) {
        this.i = f2;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (d(childAt)) {
                v.a(childAt, this.i);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(c cVar) {
        List<c> list;
        c cVar2 = this.z;
        if (!(cVar2 == null || cVar2 == null || (list = this.A) == null)) {
            list.remove(cVar2);
        }
        if (cVar != null) {
            a(cVar);
        }
        this.z = cVar;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerLockMode(int i, int i2) {
        View b2;
        int a2 = androidx.core.view.e.a(i2, v.f(this));
        if (i2 == 3) {
            this.u = i;
        } else if (i2 == 5) {
            this.v = i;
        } else if (i2 == 8388611) {
            this.w = i;
        } else if (i2 == 8388613) {
            this.x = i;
        }
        if (i != 0) {
            (a2 == 3 ? this.n : this.o).a();
        }
        if (i == 1) {
            View b3 = b(a2);
            if (b3 != null) {
                a(b3, true);
            }
        } else if (i == 2 && (b2 = b(a2)) != null) {
            c(b2, true);
        }
    }

    public void setDrawerLockMode(int i, View view) {
        if (d(view)) {
            setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).f2099a);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void setDrawerShadow(int i, int i2) {
        setDrawerShadow(androidx.core.content.b.a(getContext(), i), i2);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (!g) {
            if ((i & 8388611) == 8388611) {
                this.I = drawable;
            } else if ((i & 8388613) == 8388613) {
                this.J = drawable;
            } else if ((i & 3) == 3) {
                this.K = drawable;
            } else if ((i & 5) == 5) {
                this.L = drawable;
            } else {
                return;
            }
            d();
            invalidate();
        }
    }

    public void setDrawerTitle(int i, CharSequence charSequence) {
        int a2 = androidx.core.view.e.a(i, v.f(this));
        if (a2 == 3) {
            this.f2097d = charSequence;
        } else if (a2 == 5) {
            this.e = charSequence;
        }
    }

    public void setScrimColor(int i) {
        this.k = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.D = i != 0 ? androidx.core.content.b.a(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.D = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.D = new ColorDrawable(i);
        invalidate();
    }
}
