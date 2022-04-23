package android.support.v4.view;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import java.lang.reflect.InvocationTargetException;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    static final m f240a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$a.class */
    static class a implements m {

        /* renamed from: a  reason: collision with root package name */
        WeakHashMap<View, Object> f241a = null;

        a() {
        }

        @Override // android.support.v4.view.t.m
        public int a(int i, int i2, int i3) {
            return View.resolveSize(i, i2);
        }

        long a() {
            return 10L;
        }

        @Override // android.support.v4.view.t.m
        public ab a(View view, ab abVar) {
            return abVar;
        }

        @Override // android.support.v4.view.t.m
        public void a(View view, float f) {
        }

        @Override // android.support.v4.view.t.m
        public void a(View view, int i, int i2, int i3, int i4) {
            view.invalidate(i, i2, i3, i4);
        }

        @Override // android.support.v4.view.t.m
        public void a(View view, int i, Paint paint) {
        }

        @Override // android.support.v4.view.t.m
        public void a(View view, Paint paint) {
        }

        @Override // android.support.v4.view.t.m
        public void a(View view, android.support.v4.view.a aVar) {
        }

        @Override // android.support.v4.view.t.m
        public void a(View view, o oVar) {
        }

        @Override // android.support.v4.view.t.m
        public void a(View view, Runnable runnable) {
            view.postDelayed(runnable, a());
        }

        @Override // android.support.v4.view.t.m
        public void a(ViewGroup viewGroup) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
            if ((r0.computeVerticalScrollRange() - r0.computeVerticalScrollExtent() != 0 ? r0.computeVerticalScrollOffset() > 0 : false) != false) goto L_0x002f;
         */
        @Override // android.support.v4.view.t.m
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(android.view.View r4) {
            /*
                r3 = this;
                r0 = 1
                r5 = r0
                r0 = r4
                boolean r0 = r0 instanceof android.support.v4.view.r
                if (r0 == 0) goto L_0x003b
                r0 = r4
                android.support.v4.view.r r0 = (android.support.v4.view.r) r0
                r4 = r0
                r0 = r4
                int r0 = r0.computeVerticalScrollOffset()
                r6 = r0
                r0 = r4
                int r0 = r0.computeVerticalScrollRange()
                r1 = r4
                int r1 = r1.computeVerticalScrollExtent()
                int r0 = r0 - r1
                if (r0 == 0) goto L_0x0036
                r0 = r6
                if (r0 <= 0) goto L_0x0031
                r0 = 1
                r6 = r0
            L_0x002b:
                r0 = r6
                if (r0 == 0) goto L_0x003b
            L_0x002f:
                r0 = r5
                return r0
            L_0x0031:
                r0 = 0
                r6 = r0
                goto L_0x002b
            L_0x0036:
                r0 = 0
                r6 = r0
                goto L_0x002b
            L_0x003b:
                r0 = 0
                r5 = r0
                goto L_0x002f
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.t.a.a(android.view.View):boolean");
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
            if (r6 == false) goto L_0x0053;
         */
        @Override // android.support.v4.view.t.m
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(android.view.View r5, int r6) {
            /*
                r4 = this;
                r0 = 1
                r7 = r0
                r0 = r5
                boolean r0 = r0 instanceof android.support.v4.view.r
                if (r0 == 0) goto L_0x0053
                r0 = r5
                android.support.v4.view.r r0 = (android.support.v4.view.r) r0
                r5 = r0
                r0 = r5
                int r0 = r0.computeHorizontalScrollOffset()
                r8 = r0
                r0 = r5
                int r0 = r0.computeHorizontalScrollRange()
                r1 = r5
                int r1 = r1.computeHorizontalScrollExtent()
                int r0 = r0 - r1
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x004e
                r0 = r6
                if (r0 >= 0) goto L_0x0040
                r0 = r8
                if (r0 <= 0) goto L_0x003b
                r0 = 1
                r6 = r0
            L_0x0035:
                r0 = r6
                if (r0 == 0) goto L_0x0053
            L_0x0039:
                r0 = r7
                return r0
            L_0x003b:
                r0 = 0
                r6 = r0
                goto L_0x0035
            L_0x0040:
                r0 = r8
                r1 = r9
                r2 = 1
                int r1 = r1 - r2
                if (r0 >= r1) goto L_0x004e
                r0 = 1
                r6 = r0
                goto L_0x0035
            L_0x004e:
                r0 = 0
                r6 = r0
                goto L_0x0035
            L_0x0053:
                r0 = 0
                r7 = r0
                goto L_0x0039
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.view.t.a.a(android.view.View, int):boolean");
        }

        @Override // android.support.v4.view.t.m
        public int b(View view) {
            return 2;
        }

        @Override // android.support.v4.view.t.m
        public ab b(View view, ab abVar) {
            return abVar;
        }

        @Override // android.support.v4.view.t.m
        public void b(View view, float f) {
        }

        @Override // android.support.v4.view.t.m
        public void b(View view, int i) {
        }

        @Override // android.support.v4.view.t.m
        public void c(View view) {
            view.invalidate();
        }

        @Override // android.support.v4.view.t.m
        public void c(View view, float f) {
        }

        @Override // android.support.v4.view.t.m
        public void c(View view, int i) {
            int left = view.getLeft();
            view.offsetLeftAndRight(i);
            if (i != 0) {
                ViewParent parent = view.getParent();
                if (parent instanceof View) {
                    int abs = Math.abs(i);
                    ((View) parent).invalidate(left - abs, view.getTop(), left + view.getWidth() + abs, view.getBottom());
                    return;
                }
                view.invalidate();
            }
        }

        @Override // android.support.v4.view.t.m
        public int d(View view) {
            return 0;
        }

        @Override // android.support.v4.view.t.m
        public void d(View view, int i) {
            int top = view.getTop();
            view.offsetTopAndBottom(i);
            if (i != 0) {
                ViewParent parent = view.getParent();
                if (parent instanceof View) {
                    int abs = Math.abs(i);
                    ((View) parent).invalidate(view.getLeft(), top - abs, view.getRight(), top + view.getHeight() + abs);
                    return;
                }
                view.invalidate();
            }
        }

        @Override // android.support.v4.view.t.m
        public int e(View view) {
            return 0;
        }

        @Override // android.support.v4.view.t.m
        public int f(View view) {
            return 0;
        }

        @Override // android.support.v4.view.t.m
        public ViewParent g(View view) {
            return view.getParent();
        }

        @Override // android.support.v4.view.t.m
        public boolean h(View view) {
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

        @Override // android.support.v4.view.t.m
        public int i(View view) {
            return 0;
        }

        @Override // android.support.v4.view.t.m
        public boolean j(View view) {
            return true;
        }

        @Override // android.support.v4.view.t.m
        public float k(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.t.m
        public float l(View view) {
            return 0.0f;
        }

        @Override // android.support.v4.view.t.m
        public boolean m(View view) {
            return false;
        }

        @Override // android.support.v4.view.t.m
        public void n(View view) {
        }

        @Override // android.support.v4.view.t.m
        public boolean o(View view) {
            return view instanceof android.support.v4.view.k ? ((android.support.v4.view.k) view).isNestedScrollingEnabled() : false;
        }

        @Override // android.support.v4.view.t.m
        public void p(View view) {
            if (view instanceof android.support.v4.view.k) {
                ((android.support.v4.view.k) view).stopNestedScroll();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$b.class */
    static class b extends a {
        b() {
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0036 -> B:5:0x001a). Please submit an issue!!! */
        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void a(ViewGroup viewGroup) {
            if (u.f243a == null) {
                try {
                    u.f243a = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
                } catch (NoSuchMethodException e) {
                    Log.e("ViewCompat", "Unable to find childrenDrawingOrderEnabled", e);
                }
                u.f243a.setAccessible(true);
            }
            try {
                u.f243a.invoke(viewGroup, true);
            } catch (IllegalAccessException e2) {
                Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e2);
            } catch (IllegalArgumentException e3) {
                Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e3);
            } catch (InvocationTargetException e4) {
                Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e4);
            }
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final boolean h(View view) {
            return view.isOpaque();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$c.class */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final int b(View view) {
            return view.getOverScrollMode();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$d.class */
    static class d extends c {
        d() {
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final int a(int i, int i2, int i3) {
            return View.resolveSizeAndState(i, i2, i3);
        }

        @Override // android.support.v4.view.t.a
        final long a() {
            return ValueAnimator.getFrameDelay();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void a(View view, float f) {
            view.setScaleX(f);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void a(View view, int i, Paint paint) {
            view.setLayerType(i, paint);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public void a(View view, Paint paint) {
            view.setLayerType(view.getLayerType(), paint);
            view.invalidate();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void b(View view, float f) {
            view.setScaleY(f);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public void c(View view, int i) {
            v.b(view, i);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public void d(View view, int i) {
            v.a(view, i);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final int e(View view) {
            return view.getLayerType();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final int i(View view) {
            return view.getMeasuredState();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final float k(View view) {
            return view.getScaleX();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void n(View view) {
            view.setSaveFromParentEnabled(false);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$e.class */
    static class e extends f {
        e() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$f.class */
    static class f extends d {

        /* renamed from: b  reason: collision with root package name */
        static boolean f242b = false;

        f() {
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void a(View view, android.support.v4.view.a aVar) {
            view.setAccessibilityDelegate((View.AccessibilityDelegate) (aVar == null ? null : aVar.f201a));
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final boolean a(View view) {
            return view.canScrollVertically(-1);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final boolean a(View view, int i) {
            return view.canScrollHorizontally(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$g.class */
    static class g extends e {
        g() {
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void a(View view, int i, int i2, int i3, int i4) {
            view.postInvalidate(i, i2, i3, i4);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void a(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public void b(View view, int i) {
            int i2 = i;
            if (i == 4) {
                i2 = 2;
            }
            view.setImportantForAccessibility(i2);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void c(View view) {
            view.postInvalidateOnAnimation();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final int d(View view) {
            return view.getImportantForAccessibility();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final ViewParent g(View view) {
            return view.getParentForAccessibility();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final boolean j(View view) {
            return view.hasOverlappingRendering();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final boolean m(View view) {
            return view.getFitsSystemWindows();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$h.class */
    static class h extends g {
        h() {
        }

        @Override // android.support.v4.view.t.d, android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void a(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final int f(View view) {
            return view.getLayoutDirection();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$i.class */
    static class i extends h {
        i() {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$j.class */
    static class j extends i {
        j() {
        }

        @Override // android.support.v4.view.t.g, android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void b(View view, int i) {
            view.setImportantForAccessibility(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$k.class */
    static class k extends j {
        k() {
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final ab a(View view, ab abVar) {
            ab abVar2 = abVar;
            if (abVar instanceof ac) {
                WindowInsets windowInsets = ((ac) abVar).f221a;
                WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
                abVar2 = abVar;
                if (onApplyWindowInsets != windowInsets) {
                    abVar2 = new ac(onApplyWindowInsets);
                }
            }
            return abVar2;
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void a(View view, final o oVar) {
            if (oVar == null) {
                view.setOnApplyWindowInsetsListener(null);
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: android.support.v4.view.w.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        return ((ac) oVar.a(view2, new ac(windowInsets))).f221a;
                    }
                });
            }
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final ab b(View view, ab abVar) {
            ab abVar2 = abVar;
            if (abVar instanceof ac) {
                WindowInsets windowInsets = ((ac) abVar).f221a;
                WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
                abVar2 = abVar;
                if (dispatchApplyWindowInsets != windowInsets) {
                    abVar2 = new ac(dispatchApplyWindowInsets);
                }
            }
            return abVar2;
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void c(View view, float f) {
            view.setElevation(f);
        }

        @Override // android.support.v4.view.t.d, android.support.v4.view.t.a, android.support.v4.view.t.m
        public void c(View view, int i) {
            boolean z;
            Rect a2 = w.a();
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                a2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !a2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            } else {
                z = false;
            }
            v.b(view, i);
            if (z && a2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(a2);
            }
        }

        @Override // android.support.v4.view.t.d, android.support.v4.view.t.a, android.support.v4.view.t.m
        public void d(View view, int i) {
            boolean z;
            Rect a2 = w.a();
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                a2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !a2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            } else {
                z = false;
            }
            v.a(view, i);
            if (z && a2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(a2);
            }
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final float l(View view) {
            return view.getElevation();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final boolean o(View view) {
            return view.isNestedScrollingEnabled();
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void p(View view) {
            view.stopNestedScroll();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$l.class */
    static final class l extends k {
        l() {
        }

        @Override // android.support.v4.view.t.k, android.support.v4.view.t.d, android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void c(View view, int i) {
            view.offsetLeftAndRight(i);
        }

        @Override // android.support.v4.view.t.k, android.support.v4.view.t.d, android.support.v4.view.t.a, android.support.v4.view.t.m
        public final void d(View view, int i) {
            view.offsetTopAndBottom(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/t$m.class */
    public interface m {
        int a(int i, int i2, int i3);

        ab a(View view, ab abVar);

        void a(View view, float f);

        void a(View view, int i, int i2, int i3, int i4);

        void a(View view, int i, Paint paint);

        void a(View view, Paint paint);

        void a(View view, android.support.v4.view.a aVar);

        void a(View view, o oVar);

        void a(View view, Runnable runnable);

        void a(ViewGroup viewGroup);

        boolean a(View view);

        boolean a(View view, int i);

        int b(View view);

        ab b(View view, ab abVar);

        void b(View view, float f);

        void b(View view, int i);

        void c(View view);

        void c(View view, float f);

        void c(View view, int i);

        int d(View view);

        void d(View view, int i);

        int e(View view);

        int f(View view);

        ViewParent g(View view);

        boolean h(View view);

        int i(View view);

        boolean j(View view);

        float k(View view);

        float l(View view);

        boolean m(View view);

        void n(View view);

        boolean o(View view);

        void p(View view);
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            f240a = new l();
        } else if (i2 >= 21) {
            f240a = new k();
        } else if (i2 >= 19) {
            f240a = new j();
        } else if (i2 >= 17) {
            f240a = new h();
        } else if (i2 >= 16) {
            f240a = new g();
        } else if (i2 >= 15) {
            f240a = new e();
        } else if (i2 >= 14) {
            f240a = new f();
        } else if (i2 >= 11) {
            f240a = new d();
        } else if (i2 >= 9) {
            f240a = new c();
        } else if (i2 >= 7) {
            f240a = new b();
        } else {
            f240a = new a();
        }
    }

    public static int a(int i2, int i3, int i4) {
        return f240a.a(i2, i3, i4);
    }

    public static ab a(View view, ab abVar) {
        return f240a.a(view, abVar);
    }

    public static void a(View view, float f2) {
        f240a.a(view, f2);
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        f240a.a(view, i2, i3, i4, i5);
    }

    public static void a(View view, int i2, Paint paint) {
        f240a.a(view, i2, paint);
    }

    public static void a(View view, Paint paint) {
        f240a.a(view, paint);
    }

    public static void a(View view, android.support.v4.view.a aVar) {
        f240a.a(view, aVar);
    }

    public static void a(View view, o oVar) {
        f240a.a(view, oVar);
    }

    public static void a(View view, Runnable runnable) {
        f240a.a(view, runnable);
    }

    public static void a(ViewGroup viewGroup) {
        f240a.a(viewGroup);
    }

    public static boolean a(View view) {
        return f240a.a(view);
    }

    public static boolean a(View view, int i2) {
        return f240a.a(view, i2);
    }

    public static int b(View view) {
        return f240a.b(view);
    }

    public static ab b(View view, ab abVar) {
        return f240a.b(view, abVar);
    }

    public static void b(View view, float f2) {
        f240a.b(view, f2);
    }

    public static void b(View view, int i2) {
        f240a.b(view, i2);
    }

    public static void c(View view) {
        f240a.c(view);
    }

    public static void c(View view, float f2) {
        f240a.c(view, f2);
    }

    public static void c(View view, int i2) {
        f240a.d(view, i2);
    }

    public static int d(View view) {
        return f240a.d(view);
    }

    public static void d(View view, int i2) {
        f240a.c(view, i2);
    }

    public static int e(View view) {
        return f240a.e(view);
    }

    public static int f(View view) {
        return f240a.f(view);
    }

    public static ViewParent g(View view) {
        return f240a.g(view);
    }

    public static boolean h(View view) {
        return f240a.h(view);
    }

    public static int i(View view) {
        return f240a.i(view);
    }

    public static float j(View view) {
        return f240a.k(view);
    }

    public static float k(View view) {
        return f240a.l(view);
    }

    public static boolean l(View view) {
        return f240a.m(view);
    }

    public static void m(View view) {
        f240a.n(view);
    }

    public static boolean n(View view) {
        return f240a.j(view);
    }

    public static boolean o(View view) {
        return f240a.o(view);
    }

    public static void p(View view) {
        f240a.p(view);
    }
}
