package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.view.a.b;
import android.support.v4.view.t;
import android.support.v4.view.y;
import android.support.v4.widget.h;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup implements android.support.v4.widget.c {
    static final c h;
    private static final int[] i = {16842931};
    private static final boolean j;
    private static final boolean k;
    @Deprecated
    private f A;
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

    /* renamed from: a  reason: collision with root package name */
    final h f253a;

    /* renamed from: b  reason: collision with root package name */
    final h f254b;
    int c;
    boolean d;
    List<f> e;
    CharSequence f;
    CharSequence g;
    private final b l;
    private float m;
    private int n;
    private int o;
    private float p;
    private Paint q;
    private final g r;
    private final g s;
    private boolean t;
    private boolean u;
    private int v;
    private int w;
    private int x;
    private int y;
    private boolean z;

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f255a;

        /* renamed from: b  reason: collision with root package name */
        private float f256b;
        private boolean c;
        private int d;

        public LayoutParams() {
            super(-1, -1);
            this.f255a = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f255a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.i);
            this.f255a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f255a = 0;
            this.f255a = layoutParams.f255a;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f255a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f255a = 0;
        }

        static /* synthetic */ int b(LayoutParams layoutParams, int i) {
            int i2 = layoutParams.d | i;
            layoutParams.d = i2;
            return i2;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout$SavedState.class */
    protected static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.widget.DrawerLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f257a;

        /* renamed from: b  reason: collision with root package name */
        int f258b;
        int c;
        int d;
        int e;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f257a = 0;
            this.f257a = parcel.readInt();
            this.f258b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readInt();
            this.e = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f257a = 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f257a);
            parcel.writeInt(this.f258b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout$a.class */
    final class a extends android.support.v4.view.a {
        private final Rect c = new Rect();

        a() {
        }

        @Override // android.support.v4.view.a
        public final void a(View view, android.support.v4.view.a.b bVar) {
            if (DrawerLayout.j) {
                super.a(view, bVar);
            } else {
                android.support.v4.view.a.b a2 = android.support.v4.view.a.b.a(bVar);
                super.a(view, a2);
                bVar.a(view);
                ViewParent g = t.g(view);
                if (g instanceof View) {
                    bVar.c((View) g);
                }
                Rect rect = this.c;
                a2.a(rect);
                bVar.b(rect);
                a2.c(rect);
                bVar.d(rect);
                bVar.c(a2.d());
                bVar.a(a2.j());
                bVar.b(a2.k());
                bVar.c(a2.l());
                bVar.h(a2.i());
                bVar.f(a2.g());
                bVar.a(a2.b());
                bVar.b(a2.c());
                bVar.d(a2.e());
                bVar.e(a2.f());
                bVar.g(a2.h());
                bVar.a(a2.a());
                a2.m();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (DrawerLayout.f(childAt)) {
                        bVar.b(childAt);
                    }
                }
            }
            bVar.b(DrawerLayout.class.getName());
            bVar.a(false);
            bVar.b(false);
            bVar.a(b.a.f207a);
            bVar.a(b.a.f208b);
        }

        @Override // android.support.v4.view.a
        public final boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return (DrawerLayout.j || DrawerLayout.f(view)) ? super.a(viewGroup, view, accessibilityEvent) : false;
        }

        @Override // android.support.v4.view.a
        public final boolean b(View view, AccessibilityEvent accessibilityEvent) {
            boolean b2;
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View e = DrawerLayout.this.e();
                if (e != null) {
                    int c = DrawerLayout.this.c(e);
                    DrawerLayout drawerLayout = DrawerLayout.this;
                    int a2 = android.support.v4.view.d.a(c, t.f(drawerLayout));
                    CharSequence charSequence = a2 == 3 ? drawerLayout.f : a2 == 5 ? drawerLayout.g : null;
                    if (charSequence != null) {
                        text.add(charSequence);
                    }
                }
                b2 = true;
            } else {
                b2 = super.b(view, accessibilityEvent);
            }
            return b2;
        }

        @Override // android.support.v4.view.a
        public final void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout$b.class */
    final class b extends android.support.v4.view.a {
        b() {
        }

        @Override // android.support.v4.view.a
        public final void a(View view, android.support.v4.view.a.b bVar) {
            super.a(view, bVar);
            if (!DrawerLayout.f(view)) {
                bVar.c((View) null);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout$c.class */
    interface c {
        int a(Object obj);

        Drawable a(Context context);

        void a(View view);

        void a(View view, Object obj, int i);

        void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i);
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout$d.class */
    static final class d implements c {
        d() {
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final int a(Object obj) {
            return android.support.v4.widget.b.a(obj);
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final Drawable a(Context context) {
            return android.support.v4.widget.b.a(context);
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final void a(View view) {
            android.support.v4.widget.b.a(view);
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final void a(View view, Object obj, int i) {
            android.support.v4.widget.b.a(view, obj, i);
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i) {
            android.support.v4.widget.b.a(marginLayoutParams, obj, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout$e.class */
    static final class e implements c {
        e() {
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final int a(Object obj) {
            return 0;
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final Drawable a(Context context) {
            return null;
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final void a(View view) {
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final void a(View view, Object obj, int i) {
        }

        @Override // android.support.v4.widget.DrawerLayout.c
        public final void a(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i) {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout$f.class */
    public interface f {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/DrawerLayout$g.class */
    public final class g extends h.a {

        /* renamed from: a  reason: collision with root package name */
        final int f261a;

        /* renamed from: b  reason: collision with root package name */
        h f262b;
        private final Runnable d = new Runnable() { // from class: android.support.v4.widget.DrawerLayout.g.1
            @Override // java.lang.Runnable
            public final void run() {
                View a2;
                int width;
                g gVar = g.this;
                int i = gVar.f262b.h;
                boolean z = gVar.f261a == 3;
                if (z) {
                    a2 = DrawerLayout.this.a(3);
                    width = (a2 != null ? -a2.getWidth() : 0) + i;
                } else {
                    a2 = DrawerLayout.this.a(5);
                    width = DrawerLayout.this.getWidth() - i;
                }
                if (a2 == null) {
                    return;
                }
                if (((z && a2.getLeft() < width) || (!z && a2.getLeft() > width)) && DrawerLayout.this.a(a2) == 0) {
                    LayoutParams layoutParams = (LayoutParams) a2.getLayoutParams();
                    gVar.f262b.a(a2, width, a2.getTop());
                    layoutParams.c = true;
                    DrawerLayout.this.invalidate();
                    gVar.b();
                    DrawerLayout drawerLayout = DrawerLayout.this;
                    if (!drawerLayout.d) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                        int childCount = drawerLayout.getChildCount();
                        for (int i2 = 0; i2 < childCount; i2++) {
                            drawerLayout.getChildAt(i2).dispatchTouchEvent(obtain);
                        }
                        obtain.recycle();
                        drawerLayout.d = true;
                    }
                }
            }
        };

        public g(int i) {
            this.f261a = i;
        }

        public final void a() {
            DrawerLayout.this.removeCallbacks(this.d);
        }

        @Override // android.support.v4.widget.h.a
        public final void a(int i) {
            View rootView;
            DrawerLayout drawerLayout = DrawerLayout.this;
            View view = this.f262b.j;
            int i2 = drawerLayout.f253a.f307a;
            int i3 = drawerLayout.f254b.f307a;
            int i4 = (i2 == 1 || i3 == 1) ? 1 : (i2 == 2 || i3 == 2) ? 2 : 0;
            if (view != null && i == 0) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                if (layoutParams.f256b == 0.0f) {
                    LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                    if ((layoutParams2.d & 1) == 1) {
                        layoutParams2.d = 0;
                        if (drawerLayout.e != null) {
                            for (int size = drawerLayout.e.size() - 1; size >= 0; size--) {
                                drawerLayout.e.get(size);
                            }
                        }
                        drawerLayout.a(view, false);
                        if (drawerLayout.hasWindowFocus() && (rootView = drawerLayout.getRootView()) != null) {
                            rootView.sendAccessibilityEvent(32);
                        }
                    }
                } else if (layoutParams.f256b == 1.0f) {
                    LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
                    if ((layoutParams3.d & 1) == 0) {
                        layoutParams3.d = 1;
                        if (drawerLayout.e != null) {
                            for (int size2 = drawerLayout.e.size() - 1; size2 >= 0; size2--) {
                                drawerLayout.e.get(size2);
                            }
                        }
                        drawerLayout.a(view, true);
                        if (drawerLayout.hasWindowFocus()) {
                            drawerLayout.sendAccessibilityEvent(32);
                        }
                        view.requestFocus();
                    }
                }
            }
            if (i4 != drawerLayout.c) {
                drawerLayout.c = i4;
                if (drawerLayout.e != null) {
                    for (int size3 = drawerLayout.e.size() - 1; size3 >= 0; size3--) {
                        drawerLayout.e.get(size3);
                    }
                }
            }
        }

        @Override // android.support.v4.widget.h.a
        public final void a(int i, int i2) {
            View a2 = (i & 1) == 1 ? DrawerLayout.this.a(3) : DrawerLayout.this.a(5);
            if (a2 != null && DrawerLayout.this.a(a2) == 0) {
                this.f262b.a(a2, i2);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
            if (r0 > 0.5f) goto L_0x006f;
         */
        @Override // android.support.v4.widget.h.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(android.view.View r5, float r6) {
            /*
                r4 = this;
                r0 = r5
                float r0 = android.support.v4.widget.DrawerLayout.b(r0)
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                android.support.v4.widget.DrawerLayout r0 = android.support.v4.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.a(r1, r2)
                if (r0 == 0) goto L_0x004b
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x002a
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0043
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0043
            L_0x002a:
                r0 = 0
                r9 = r0
            L_0x002d:
                r0 = r4
                android.support.v4.widget.h r0 = r0.f262b
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.a(r1, r2)
                r0 = r4
                android.support.v4.widget.DrawerLayout r0 = android.support.v4.widget.DrawerLayout.this
                r0.invalidate()
                return
            L_0x0043:
                r0 = r8
                int r0 = -r0
                r9 = r0
                goto L_0x002d
            L_0x004b:
                r0 = r4
                android.support.v4.widget.DrawerLayout r0 = android.support.v4.widget.DrawerLayout.this
                int r0 = r0.getWidth()
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x006f
                r0 = r10
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x002d
                r0 = r10
                r9 = r0
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x002d
            L_0x006f:
                r0 = r10
                r1 = r8
                int r0 = r0 - r1
                r9 = r0
                goto L_0x002d
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.g.a(android.view.View, float):void");
        }

        @Override // android.support.v4.widget.h.a
        public final void a(View view, int i) {
            int width = view.getWidth();
            float width2 = DrawerLayout.this.a(view, 3) ? (width + i) / width : (DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.a(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.h.a
        public final boolean a(View view) {
            return DrawerLayout.d(view) && DrawerLayout.this.a(view, this.f261a) && DrawerLayout.this.a(view) == 0;
        }

        @Override // android.support.v4.widget.h.a
        public final int b(View view, int i) {
            int max;
            if (DrawerLayout.this.a(view, 3)) {
                max = Math.max(-view.getWidth(), Math.min(i, 0));
            } else {
                int width = DrawerLayout.this.getWidth();
                max = Math.max(width - view.getWidth(), Math.min(i, width));
            }
            return max;
        }

        final void b() {
            int i = 3;
            if (this.f261a == 3) {
                i = 5;
            }
            View a2 = DrawerLayout.this.a(i);
            if (a2 != null) {
                DrawerLayout.this.e(a2);
            }
        }

        @Override // android.support.v4.widget.h.a
        public final void b(View view) {
            ((LayoutParams) view.getLayoutParams()).c = false;
            b();
        }

        @Override // android.support.v4.widget.h.a
        public final int c(View view) {
            return DrawerLayout.d(view) ? view.getWidth() : 0;
        }

        @Override // android.support.v4.widget.h.a
        public final void c() {
            DrawerLayout.this.postDelayed(this.d, 160L);
        }

        @Override // android.support.v4.widget.h.a
        public final int d(View view) {
            return view.getTop();
        }
    }

    static {
        boolean z = true;
        j = Build.VERSION.SDK_INT >= 19;
        if (Build.VERSION.SDK_INT < 21) {
            z = false;
        }
        k = z;
        if (Build.VERSION.SDK_INT >= 21) {
            h = new d();
        } else {
            h = new e();
        }
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.l = new b();
        this.o = -1728053248;
        this.q = new Paint();
        this.u = true;
        this.v = 3;
        this.w = 3;
        this.x = 3;
        this.y = 3;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        setDescendantFocusability(262144);
        float f2 = getResources().getDisplayMetrics().density;
        this.n = (int) ((64.0f * f2) + 0.5f);
        float f3 = 400.0f * f2;
        this.r = new g(3);
        this.s = new g(5);
        this.f253a = h.a(this, 1.0f, this.r);
        this.f253a.i = 1;
        this.f253a.g = f3;
        this.r.f262b = this.f253a;
        this.f254b = h.a(this, 1.0f, this.s);
        this.f254b.i = 2;
        this.f254b.g = f3;
        this.s.f262b = this.f254b;
        setFocusableInTouchMode(true);
        t.b((View) this, 1);
        t.a(this, new a());
        y.a(this);
        if (t.l(this)) {
            h.a((View) this);
            this.D = h.a(context);
        }
        this.m = f2 * 10.0f;
        this.M = new ArrayList<>();
    }

    private void a(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            z2 = z2;
            if (d(childAt)) {
                if (z) {
                    z2 = z2;
                    if (!layoutParams.c) {
                    }
                }
                z2 = a(childAt, 3) ? z2 | this.f253a.a(childAt, -childAt.getWidth(), childAt.getTop()) : z2 | this.f254b.a(childAt, getWidth(), childAt.getTop());
                layoutParams.c = false;
            }
        }
        this.r.a();
        this.s.a();
        if (z2) {
            invalidate();
        }
    }

    private static boolean a(Drawable drawable, int i2) {
        boolean z;
        if (drawable == null || !android.support.v4.a.a.a.a(drawable)) {
            z = false;
        } else {
            android.support.v4.a.a.a.b(drawable, i2);
            z = true;
        }
        return z;
    }

    static float b(View view) {
        return ((LayoutParams) view.getLayoutParams()).f256b;
    }

    private View c() {
        View view;
        int childCount = getChildCount();
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                view = null;
                break;
            }
            view = getChildAt(i2);
            if ((((LayoutParams) view.getLayoutParams()).d & 1) == 1) {
                break;
            }
            i2++;
        }
        return view;
    }

    private void d() {
        Drawable drawable;
        Drawable drawable2;
        if (!k) {
            int f2 = t.f(this);
            if (f2 == 0) {
                if (this.I != null) {
                    a(this.I, f2);
                    drawable = this.I;
                }
                drawable = this.K;
            } else {
                if (this.J != null) {
                    a(this.J, f2);
                    drawable = this.J;
                }
                drawable = this.K;
            }
            this.E = drawable;
            int f3 = t.f(this);
            if (f3 == 0) {
                if (this.J != null) {
                    a(this.J, f3);
                    drawable2 = this.J;
                }
                drawable2 = this.L;
            } else {
                if (this.I != null) {
                    a(this.I, f3);
                    drawable2 = this.I;
                }
                drawable2 = this.L;
            }
            this.F = drawable2;
        }
    }

    static boolean d(View view) {
        int a2 = android.support.v4.view.d.a(((LayoutParams) view.getLayoutParams()).f255a, t.f(view));
        return (a2 & 3) != 0 ? true : (a2 & 5) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        return r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View e() {
        /*
            r6 = this;
            r0 = r6
            int r0 = r0.getChildCount()
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0007:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0064
            r0 = r6
            r1 = r8
            android.view.View r0 = r0.getChildAt(r1)
            r9 = r0
            r0 = r9
            boolean r0 = d(r0)
            if (r0 == 0) goto L_0x005e
            r0 = r9
            boolean r0 = d(r0)
            if (r0 != 0) goto L_0x003f
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = r2
            java.lang.String r4 = "View "
            r3.<init>(r4)
            r3 = r9
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = " is not a drawer"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x003f:
            r0 = r9
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            android.support.v4.widget.DrawerLayout$LayoutParams r0 = (android.support.v4.widget.DrawerLayout.LayoutParams) r0
            float r0 = android.support.v4.widget.DrawerLayout.LayoutParams.a(r0)
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0058
            r0 = 1
            r10 = r0
        L_0x0051:
            r0 = r10
            if (r0 == 0) goto L_0x005e
        L_0x0056:
            r0 = r9
            return r0
        L_0x0058:
            r0 = 0
            r10 = r0
            goto L_0x0051
        L_0x005e:
            int r8 = r8 + 1
            goto L_0x0007
        L_0x0064:
            r0 = 0
            r9 = r0
            goto L_0x0056
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.e():android.view.View");
    }

    static /* synthetic */ boolean f(View view) {
        return (t.d(view) == 4 || t.d(view) == 2) ? false : true;
    }

    private static boolean g(View view) {
        return ((LayoutParams) view.getLayoutParams()).f255a == 0;
    }

    private void h(View view) {
        if (!d(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.u) {
            layoutParams.f256b = 1.0f;
            layoutParams.d = 1;
            a(view, true);
        } else {
            LayoutParams.b(layoutParams, 2);
            if (a(view, 3)) {
                this.f253a.a(view, 0, view.getTop());
            } else {
                this.f254b.a(view, getWidth() - view.getWidth(), view.getTop());
            }
        }
        invalidate();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007f, code lost:
        if (r8 != 3) goto L_0x0062;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a8, code lost:
        if (r8 != 3) goto L_0x0062;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d1, code lost:
        if (r8 != 3) goto L_0x0062;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00fa, code lost:
        if (r8 != 3) goto L_0x0062;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.a(android.view.View):int");
    }

    final View a(int i2) {
        View view;
        int a2 = android.support.v4.view.d.a(i2, t.f(this));
        int childCount = getChildCount();
        int i3 = 0;
        while (true) {
            if (i3 >= childCount) {
                view = null;
                break;
            }
            view = getChildAt(i3);
            if ((c(view) & 7) == (a2 & 7)) {
                break;
            }
            i3++;
        }
        return view;
    }

    final void a(View view, float f2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 != layoutParams.f256b) {
            layoutParams.f256b = f2;
            if (this.e != null) {
                for (int size = this.e.size() - 1; size >= 0; size--) {
                    this.e.get(size);
                }
            }
        }
    }

    final void a(View view, boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((z || d(childAt)) && (!z || childAt != view)) {
                t.b(childAt, 4);
            } else {
                t.b(childAt, 1);
            }
        }
    }

    final boolean a(View view, int i2) {
        return (c(view) & i2) == i2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z = false;
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (!d(childAt)) {
                    this.M.add(childAt);
                } else if (!d(childAt)) {
                    throw new IllegalArgumentException("View " + childAt + " is not a drawer");
                } else if ((((LayoutParams) childAt.getLayoutParams()).d & 1) == 1) {
                    childAt.addFocusables(arrayList, i2, i3);
                    z = true;
                }
            }
            if (!z) {
                int size = this.M.size();
                for (int i5 = 0; i5 < size; i5++) {
                    View view = this.M.get(i5);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i2, i3);
                    }
                }
            }
            this.M.clear();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (c() != null || d(view)) {
            t.b(view, 4);
        } else {
            t.b(view, 1);
        }
        if (!j) {
            t.a(view, this.l);
        }
    }

    final int c(View view) {
        return android.support.v4.view.d.a(((LayoutParams) view.getLayoutParams()).f255a, t.f(this));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f2 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            f2 = Math.max(f2, ((LayoutParams) getChildAt(i2).getLayoutParams()).f256b);
        }
        this.p = f2;
        if (this.f253a.c() || this.f254b.c()) {
            t.c(this);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j2) {
        int height = getHeight();
        boolean g2 = g(view);
        int i2 = 0;
        i2 = 0;
        int width = getWidth();
        int save = canvas.save();
        int i3 = width;
        if (g2) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                i2 = i2;
                width = width;
                if (childAt != view) {
                    i2 = i2;
                    width = width;
                    if (childAt.getVisibility() == 0) {
                        Drawable background = childAt.getBackground();
                        i2 = i2;
                        width = width;
                        if (background != null ? background.getOpacity() == -1 : false) {
                            i2 = i2;
                            width = width;
                            if (d(childAt)) {
                                i2 = i2;
                                width = width;
                                if (childAt.getHeight() >= height) {
                                    if (a(childAt, 3)) {
                                        int right = childAt.getRight();
                                        if (right > i2) {
                                            i2 = right;
                                        }
                                        width = width;
                                    } else {
                                        int left = childAt.getLeft();
                                        i2 = i2;
                                        width = width;
                                        if (left < width) {
                                            width = left;
                                            i2 = i2;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            canvas.clipRect(i2, 0, width, getHeight());
            i3 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(save);
        if (this.p > 0.0f && g2) {
            this.q.setColor((((int) (((this.o & (-16777216)) >>> 24) * this.p)) << 24) | (this.o & 16777215));
            canvas.drawRect(i2, 0.0f, i3, getHeight(), this.q);
        } else if (this.E != null && a(view, 3)) {
            int intrinsicWidth = this.E.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.f253a.h, 1.0f));
            this.E.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.E.setAlpha((int) (255.0f * max));
            this.E.draw(canvas);
        } else if (this.F != null && a(view, 5)) {
            int intrinsicWidth2 = this.F.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f254b.h, 1.0f));
            this.F.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.F.setAlpha((int) (255.0f * max2));
            this.F.draw(canvas);
        }
        return drawChild;
    }

    public final void e(View view) {
        if (!d(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.u) {
            layoutParams.f256b = 0.0f;
            layoutParams.d = 0;
        } else {
            LayoutParams.b(layoutParams, 4);
            if (a(view, 3)) {
                this.f253a.a(view, -view.getWidth(), view.getTop());
            } else {
                this.f254b.a(view, getWidth(), view.getTop());
            }
        }
        invalidate();
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
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.u = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.u = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int a2;
        super.onDraw(canvas);
        if (this.H && this.D != null && (a2 = h.a(this.G)) > 0) {
            this.D.setBounds(0, 0, getWidth(), a2);
            this.D.draw(canvas);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0073, code lost:
        if (r4.d == false) goto L_0x0078;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        boolean z = true;
        if (i2 == 4) {
            if (e() != null) {
                android.support.v4.view.e.c(keyEvent);
                return z;
            }
        }
        z = super.onKeyDown(i2, keyEvent);
        return z;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        boolean z = false;
        if (i2 == 4) {
            View e2 = e();
            if (e2 != null && a(e2) == 0) {
                a(false);
            }
            if (e2 != null) {
                z = true;
            }
        } else {
            z = super.onKeyUp(i2, keyEvent);
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        float f2;
        int i7;
        this.t = true;
        int i8 = i4 - i2;
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (g(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        i6 = ((int) (measuredWidth * layoutParams.f256b)) + (-measuredWidth);
                        f2 = (measuredWidth + i6) / measuredWidth;
                    } else {
                        i6 = i8 - ((int) (measuredWidth * layoutParams.f256b));
                        f2 = (i8 - i6) / measuredWidth;
                    }
                    boolean z2 = f2 != layoutParams.f256b;
                    switch (layoutParams.f255a & 112) {
                        case 16:
                            int i10 = i5 - i3;
                            int i11 = (i10 - measuredHeight) / 2;
                            if (i11 < layoutParams.topMargin) {
                                i7 = layoutParams.topMargin;
                            } else {
                                i7 = i11;
                                if (i11 + measuredHeight > i10 - layoutParams.bottomMargin) {
                                    i7 = (i10 - layoutParams.bottomMargin) - measuredHeight;
                                }
                            }
                            childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
                            break;
                        case 80:
                            int i12 = i5 - i3;
                            childAt.layout(i6, (i12 - layoutParams.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i6, i12 - layoutParams.bottomMargin);
                            break;
                        default:
                            childAt.layout(i6, layoutParams.topMargin, measuredWidth + i6, measuredHeight + layoutParams.topMargin);
                            break;
                    }
                    if (z2) {
                        a(childAt, f2);
                    }
                    int i13 = layoutParams.f256b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i13) {
                        childAt.setVisibility(i13);
                    }
                }
            }
        }
        this.t = false;
        this.u = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
        if (r0 != 1073741824) goto L_0x002a;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View a2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!(savedState.f257a == 0 || (a2 = a(savedState.f257a)) == null)) {
            h(a2);
        }
        if (savedState.f258b != 3) {
            setDrawerLockMode(savedState.f258b, 3);
        }
        if (savedState.c != 3) {
            setDrawerLockMode(savedState.c, 5);
        }
        if (savedState.d != 3) {
            setDrawerLockMode(savedState.d, 8388611);
        }
        if (savedState.e != 3) {
            setDrawerLockMode(savedState.e, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        d();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i2).getLayoutParams();
            boolean z = layoutParams.d == 1;
            boolean z2 = layoutParams.d == 2;
            if (z || z2) {
                savedState.f257a = layoutParams.f255a;
                break;
            }
        }
        savedState.f258b = this.v;
        savedState.c = this.w;
        savedState.d = this.x;
        savedState.e = this.y;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View c2;
        this.f253a.b(motionEvent);
        this.f254b.b(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.B = x;
                this.C = y;
                this.z = false;
                this.d = false;
                return true;
            case 1:
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                View b2 = this.f253a.b((int) x2, (int) y2);
                if (b2 != null && g(b2)) {
                    float f2 = x2 - this.B;
                    float f3 = y2 - this.C;
                    int i2 = this.f253a.f308b;
                    if ((f2 * f2) + (f3 * f3) < i2 * i2 && (c2 = c()) != null) {
                        z = a(c2) == 2;
                        a(z);
                        this.z = false;
                        return true;
                    }
                }
                z = true;
                a(z);
                this.z = false;
                return true;
            case 2:
            default:
                return true;
            case 3:
                a(true);
                this.z = false;
                this.d = false;
                return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.z = z;
        if (z) {
            a(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.t) {
            super.requestLayout();
        }
    }

    @Override // android.support.v4.widget.c
    public void setChildInsets(Object obj, boolean z) {
        this.G = obj;
        this.H = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f2) {
        this.m = f2;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (d(childAt)) {
                t.c(childAt, this.m);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(f fVar) {
        f fVar2;
        if (!(this.A == null || (fVar2 = this.A) == null || this.e == null)) {
            this.e.remove(fVar2);
        }
        if (!(fVar == null || fVar == null)) {
            if (this.e == null) {
                this.e = new ArrayList();
            }
            this.e.add(fVar);
        }
        this.A = fVar;
    }

    public void setDrawerLockMode(int i2) {
        setDrawerLockMode(i2, 3);
        setDrawerLockMode(i2, 5);
    }

    public void setDrawerLockMode(int i2, int i3) {
        int a2 = android.support.v4.view.d.a(i3, t.f(this));
        switch (i3) {
            case 3:
                this.v = i2;
                break;
            case 5:
                this.w = i2;
                break;
            case 8388611:
                this.x = i2;
                break;
            case 8388613:
                this.y = i2;
                break;
        }
        if (i2 != 0) {
            (a2 == 3 ? this.f253a : this.f254b).a();
        }
        switch (i2) {
            case 1:
                View a3 = a(a2);
                if (a3 != null) {
                    e(a3);
                    return;
                }
                return;
            case 2:
                View a4 = a(a2);
                if (a4 != null) {
                    h(a4);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void setDrawerLockMode(int i2, View view) {
        if (!d(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
        }
        setDrawerLockMode(i2, ((LayoutParams) view.getLayoutParams()).f255a);
    }

    public void setDrawerShadow(int i2, int i3) {
        setDrawerShadow(getResources().getDrawable(i2), i3);
    }

    public void setDrawerShadow(Drawable drawable, int i2) {
        if (!k) {
            if ((i2 & 8388611) == 8388611) {
                this.I = drawable;
            } else if ((i2 & 8388613) == 8388613) {
                this.J = drawable;
            } else if ((i2 & 3) == 3) {
                this.K = drawable;
            } else if ((i2 & 5) == 5) {
                this.L = drawable;
            } else {
                return;
            }
            d();
            invalidate();
        }
    }

    public void setDrawerTitle(int i2, CharSequence charSequence) {
        int a2 = android.support.v4.view.d.a(i2, t.f(this));
        if (a2 == 3) {
            this.f = charSequence;
        } else if (a2 == 5) {
            this.g = charSequence;
        }
    }

    public void setScrimColor(int i2) {
        this.o = i2;
        invalidate();
    }

    public void setStatusBarBackground(int i2) {
        Drawable drawable;
        if (i2 != 0) {
            Context context = getContext();
            drawable = Build.VERSION.SDK_INT >= 21 ? context.getDrawable(i2) : context.getResources().getDrawable(i2);
        } else {
            drawable = null;
        }
        this.D = drawable;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.D = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i2) {
        this.D = new ColorDrawable(i2);
        invalidate();
    }
}
