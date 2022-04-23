package androidx.core.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.a;
import androidx.core.view.a;
import androidx.core.view.a.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:androidx/core/view/v.class */
public final class v {

    /* renamed from: b  reason: collision with root package name */
    private static Field f2015b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f2016c;

    /* renamed from: d  reason: collision with root package name */
    private static Field f2017d;
    private static boolean e;
    private static WeakHashMap<View, String> f;
    private static Field h;
    private static ThreadLocal<Rect> j;

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f2014a = new AtomicInteger(1);
    private static WeakHashMap<View, y> g = null;
    private static boolean i = false;
    private static final int[] k = {a.c.accessibility_custom_action_0, a.c.accessibility_custom_action_1, a.c.accessibility_custom_action_2, a.c.accessibility_custom_action_3, a.c.accessibility_custom_action_4, a.c.accessibility_custom_action_5, a.c.accessibility_custom_action_6, a.c.accessibility_custom_action_7, a.c.accessibility_custom_action_8, a.c.accessibility_custom_action_9, a.c.accessibility_custom_action_10, a.c.accessibility_custom_action_11, a.c.accessibility_custom_action_12, a.c.accessibility_custom_action_13, a.c.accessibility_custom_action_14, a.c.accessibility_custom_action_15, a.c.accessibility_custom_action_16, a.c.accessibility_custom_action_17, a.c.accessibility_custom_action_18, a.c.accessibility_custom_action_19, a.c.accessibility_custom_action_20, a.c.accessibility_custom_action_21, a.c.accessibility_custom_action_22, a.c.accessibility_custom_action_23, a.c.accessibility_custom_action_24, a.c.accessibility_custom_action_25, a.c.accessibility_custom_action_26, a.c.accessibility_custom_action_27, a.c.accessibility_custom_action_28, a.c.accessibility_custom_action_29, a.c.accessibility_custom_action_30, a.c.accessibility_custom_action_31};
    private static a l = new a();

    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$a.class */
    static final class a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        private WeakHashMap<View, Boolean> f2019a = new WeakHashMap<>();

        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.f2019a.entrySet()) {
                View key = entry.getKey();
                boolean booleanValue = entry.getValue().booleanValue();
                boolean z = key.getVisibility() == 0;
                if (booleanValue != z) {
                    if (z) {
                        v.g(key, 16);
                    }
                    this.f2019a.put(key, Boolean.valueOf(z));
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$b.class */
    public static abstract class b<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f2020a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<T> f2021b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2022c;

        b(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        b(int i, Class<T> cls, int i2, int i3) {
            this.f2020a = i;
            this.f2021b = cls;
            this.f2022c = i3;
        }

        static boolean a(Boolean bool, Boolean bool2) {
            return (bool == null ? false : bool.booleanValue()) == (bool2 == null ? false : bool2.booleanValue());
        }

        static boolean b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        abstract T a(View view);

        abstract void a(View view, T t);

        final boolean a() {
            return Build.VERSION.SDK_INT >= this.f2022c;
        }

        boolean a(T t, T t2) {
            return !t2.equals(t);
        }

        final T b(View view) {
            if (a()) {
                return a(view);
            }
            if (!b()) {
                return null;
            }
            T t = (T) view.getTag(this.f2020a);
            if (this.f2021b.isInstance(t)) {
                return t;
            }
            return null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$c.class */
    static final class c {
        private c() {
        }

        static ac a(View view, ac acVar, Rect rect) {
            WindowInsets e = acVar.e();
            if (e != null) {
                return ac.a(view.computeSystemWindowInsets(e, rect));
            }
            rect.setEmpty();
            return acVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$d.class */
    static final class d {
        private d() {
        }

        public static WindowInsets a(View view) {
            return view.getRootWindowInsets();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$e.class */
    static final class e {
        private e() {
        }

        static void a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$f.class */
    public interface f {
        boolean a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$g.class */
    static final class g {

        /* renamed from: a  reason: collision with root package name */
        static final ArrayList<WeakReference<View>> f2023a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        WeakHashMap<View, Boolean> f2024b = null;

        /* renamed from: d  reason: collision with root package name */
        private SparseArray<WeakReference<View>> f2026d = null;

        /* renamed from: c  reason: collision with root package name */
        WeakReference<KeyEvent> f2025c = null;

        g() {
        }

        static g a(View view) {
            g gVar = (g) view.getTag(a.c.tag_unhandled_key_event_manager);
            g gVar2 = gVar;
            if (gVar == null) {
                gVar2 = new g();
                view.setTag(a.c.tag_unhandled_key_event_manager, gVar2);
            }
            return gVar2;
        }

        static boolean b(View view) {
            ArrayList arrayList = (ArrayList) view.getTag(a.c.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((f) arrayList.get(size)).a()) {
                    return true;
                }
            }
            return false;
        }

        final SparseArray<WeakReference<View>> a() {
            if (this.f2026d == null) {
                this.f2026d = new SparseArray<>();
            }
            return this.f2026d;
        }

        final View a(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f2024b;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View a2 = a(viewGroup.getChildAt(childCount), keyEvent);
                    if (a2 != null) {
                        return a2;
                    }
                }
            }
            if (b(view)) {
                return view;
            }
            return null;
        }
    }

    protected v() {
    }

    public static void A(View view) {
        if (view instanceof k) {
            ((k) view).a(1);
        }
    }

    public static boolean B(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isLaidOut() : view.getWidth() > 0 && view.getHeight() > 0;
    }

    public static float C(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getZ() : BitmapDescriptorFactory.HUE_RED;
    }

    public static Rect D(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    public static boolean E(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isAttachedToWindow() : view.getWindowToken() != null;
    }

    public static boolean F(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    public static Display G(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (E(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    public static boolean H(View view) {
        Boolean b2 = new b<Boolean>(a.c.tag_screen_reader_focusable, Boolean.class, 28) { // from class: androidx.core.view.v.2
            @Override // androidx.core.view.v.b
            final /* synthetic */ Boolean a(View view2) {
                return Boolean.valueOf(view2.isScreenReaderFocusable());
            }

            @Override // androidx.core.view.v.b
            final /* synthetic */ void a(View view2, Boolean bool) {
                view2.setScreenReaderFocusable(bool.booleanValue());
            }

            @Override // androidx.core.view.v.b
            final /* bridge */ /* synthetic */ boolean a(Boolean bool, Boolean bool2) {
                return !a(bool, bool2);
            }
        }.b(view);
        if (b2 == null) {
            return false;
        }
        return b2.booleanValue();
    }

    public static CharSequence I(View view) {
        return new b<CharSequence>(a.c.tag_accessibility_pane_title, CharSequence.class, 8, 28) { // from class: androidx.core.view.v.3
            @Override // androidx.core.view.v.b
            final /* synthetic */ CharSequence a(View view2) {
                return view2.getAccessibilityPaneTitle();
            }

            @Override // androidx.core.view.v.b
            final /* synthetic */ void a(View view2, CharSequence charSequence) {
                view2.setAccessibilityPaneTitle(charSequence);
            }

            @Override // androidx.core.view.v.b
            final /* synthetic */ boolean a(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        }.b(view);
    }

    public static boolean J(View view) {
        Boolean b2 = c().b(view);
        if (b2 == null) {
            return false;
        }
        return b2.booleanValue();
    }

    public static void K(View view) {
        b<Boolean> c2 = c();
        Boolean bool = Boolean.TRUE;
        if (c2.a()) {
            c2.a(view, (View) bool);
        } else if (b.b() && c2.a(c2.b(view), bool)) {
            L(view);
            view.setTag(c2.f2020a, bool);
            g(view, 0);
        }
    }

    private static androidx.core.view.a L(View view) {
        androidx.core.view.a b2 = b(view);
        androidx.core.view.a aVar = b2;
        if (b2 == null) {
            aVar = new androidx.core.view.a();
        }
        a(view, aVar);
        return aVar;
    }

    private static View.AccessibilityDelegate M(View view) {
        return Build.VERSION.SDK_INT >= 29 ? view.getAccessibilityDelegate() : N(view);
    }

    private static View.AccessibilityDelegate N(View view) {
        if (i) {
            return null;
        }
        if (h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable th) {
                i = true;
                return null;
            }
        }
        try {
            Object obj = h.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable th2) {
            i = true;
            return null;
        }
    }

    private static List<c.a> O(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(a.c.tag_accessibility_actions);
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList();
            view.setTag(a.c.tag_accessibility_actions, arrayList2);
        }
        return arrayList2;
    }

    private static int P(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    private static void Q(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static int a() {
        AtomicInteger atomicInteger;
        int i2;
        int i3;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            atomicInteger = f2014a;
            i2 = atomicInteger.get();
            int i4 = i2 + 1;
            i3 = i4;
            if (i4 > 16777215) {
                i3 = 1;
            }
        } while (!atomicInteger.compareAndSet(i2, i3));
        return i2;
    }

    public static int a(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    public static int a(View view, CharSequence charSequence, androidx.core.view.a.f fVar) {
        List<c.a> O = O(view);
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int[] iArr = k;
            if (i2 >= iArr.length || i3 != -1) {
                break;
            }
            int i4 = iArr[i2];
            boolean z = true;
            for (int i5 = 0; i5 < O.size(); i5++) {
                z &= O.get(i5).a() != i4;
            }
            if (z) {
                i3 = i4;
            }
            i2++;
        }
        if (i3 != -1) {
            a(view, new c.a(i3, charSequence, fVar));
        }
        return i3;
    }

    public static ac a(View view, ac acVar) {
        WindowInsets e2;
        if (Build.VERSION.SDK_INT >= 21 && (e2 = acVar.e()) != null) {
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(e2);
            if (!onApplyWindowInsets.equals(e2)) {
                return ac.a(onApplyWindowInsets);
            }
        }
        return acVar;
    }

    public static ac a(View view, ac acVar, Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? c.a(view, acVar, rect) : acVar;
    }

    private static void a(int i2, View view) {
        List<c.a> O = O(view);
        for (int i3 = 0; i3 < O.size(); i3++) {
            if (O.get(i3).a() == i2) {
                O.remove(i3);
                return;
            }
        }
    }

    public static void a(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f2);
        }
    }

    public static void a(View view, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i2, 3);
        }
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation(i2, i3, i4, i5);
        } else {
            view.postInvalidate(i2, i3, i4, i5);
        }
    }

    public static void a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            e.a(view, context, iArr, attributeSet, typedArray, i2, 0);
        }
    }

    public static void a(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && z) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        } else if (view instanceof u) {
            ((u) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    public static void a(View view, Paint paint) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setLayerPaint(paint);
            return;
        }
        view.setLayerType(view.getLayerType(), paint);
        view.invalidate();
    }

    public static void a(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && z) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        } else if (view instanceof u) {
            ((u) view).setSupportBackgroundTintMode(mode);
        }
    }

    public static void a(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    public static void a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    private static void a(View view, c.a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            L(view);
            a(aVar.a(), view);
            O(view).add(aVar);
            g(view, 0);
        }
    }

    public static void a(View view, c.a aVar, androidx.core.view.a.f fVar) {
        if (fVar == null) {
            d(view, aVar.a());
        } else {
            a(view, new c.a(null, aVar.M, null, fVar, aVar.N));
        }
    }

    public static void a(View view, androidx.core.view.a.c cVar) {
        view.onInitializeAccessibilityNodeInfo(cVar.f1959a);
    }

    public static void a(View view, androidx.core.view.a aVar) {
        androidx.core.view.a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = aVar;
            if (M(view) instanceof a.C0051a) {
                aVar2 = new androidx.core.view.a();
            }
        }
        view.setAccessibilityDelegate(aVar2 == null ? null : aVar2.f1952a);
    }

    public static void a(View view, final r rVar) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (rVar == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.v.1
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    return r.this.a(view2, ac.a(windowInsets)).e();
                }
            });
        }
    }

    public static void a(View view, t tVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (tVar != null ? tVar.f2013a : null));
        }
    }

    public static void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    public static void a(View view, Runnable runnable, long j2) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j2);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j2);
        }
    }

    public static void a(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f == null) {
            f = new WeakHashMap<>();
        }
        f.put(view, str);
    }

    public static void a(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    @Deprecated
    public static boolean a(View view, int i2) {
        return view.canScrollVertically(i2);
    }

    public static boolean a(View view, int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i2, bundle);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        g a2 = g.a(view);
        if (a2.f2025c != null && a2.f2025c.get() == keyEvent) {
            return false;
        }
        a2.f2025c = new WeakReference<>(keyEvent);
        SparseArray<WeakReference<View>> a3 = a2.a();
        WeakReference<View> weakReference = null;
        if (keyEvent.getAction() == 1) {
            int indexOfKey = a3.indexOfKey(keyEvent.getKeyCode());
            weakReference = null;
            if (indexOfKey >= 0) {
                weakReference = a3.valueAt(indexOfKey);
                a3.removeAt(indexOfKey);
            }
        }
        WeakReference<View> weakReference2 = weakReference;
        if (weakReference == null) {
            weakReference2 = a3.get(keyEvent.getKeyCode());
        }
        if (weakReference2 == null) {
            return false;
        }
        View view2 = weakReference2.get();
        if (view2 == null || !E(view2)) {
            return true;
        }
        g.b(view2);
        return true;
    }

    private static Rect b() {
        if (j == null) {
            j = new ThreadLocal<>();
        }
        Rect rect = j.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            j.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    public static androidx.core.view.a b(View view) {
        View.AccessibilityDelegate M = M(view);
        if (M == null) {
            return null;
        }
        return M instanceof a.C0051a ? ((a.C0051a) M).f1957a : new androidx.core.view.a(M);
    }

    public static ac b(View view, ac acVar) {
        WindowInsets e2;
        return (Build.VERSION.SDK_INT < 21 || (e2 = acVar.e()) == null || view.dispatchApplyWindowInsets(e2).equals(e2)) ? acVar : ac.a(e2);
    }

    public static void b(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTranslationZ(f2);
        }
    }

    public static void b(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i2);
        }
    }

    public static void b(View view, int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i2, i3, i4, i5);
        } else {
            view.setPadding(i2, i3, i4, i5);
        }
    }

    @Deprecated
    public static void b(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        g a2 = g.a(view);
        if (keyEvent.getAction() == 0) {
            if (a2.f2024b != null) {
                a2.f2024b.clear();
            }
            if (!g.f2023a.isEmpty()) {
                synchronized (g.f2023a) {
                    if (a2.f2024b == null) {
                        a2.f2024b = new WeakHashMap<>();
                    }
                    for (int size = g.f2023a.size() - 1; size >= 0; size--) {
                        View view2 = g.f2023a.get(size).get();
                        if (view2 == null) {
                            g.f2023a.remove(size);
                        } else {
                            a2.f2024b.put(view2, Boolean.TRUE);
                            for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                a2.f2024b.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }
        View a3 = a2.a(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (a3 != null && !KeyEvent.isModifierKey(keyCode)) {
                a2.a().put(keyCode, new WeakReference<>(a3));
            }
        }
        return a3 != null;
    }

    private static b<Boolean> c() {
        return new b<Boolean>(a.c.tag_accessibility_heading, Boolean.class, 28) { // from class: androidx.core.view.v.4
            @Override // androidx.core.view.v.b
            final /* synthetic */ Boolean a(View view) {
                return Boolean.valueOf(view.isAccessibilityHeading());
            }

            @Override // androidx.core.view.v.b
            final /* synthetic */ void a(View view, Boolean bool) {
                view.setAccessibilityHeading(bool.booleanValue());
            }

            @Override // androidx.core.view.v.b
            final /* bridge */ /* synthetic */ boolean a(Boolean bool, Boolean bool2) {
                return !a(bool, bool2);
            }
        };
    }

    public static void c(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setZ(f2);
        }
    }

    public static void c(View view, int i2) {
        int i3 = i2;
        if (Build.VERSION.SDK_INT < 19) {
            if (Build.VERSION.SDK_INT >= 16) {
                i3 = i2;
                if (i2 == 4) {
                    i3 = 2;
                }
            } else {
                return;
            }
        }
        view.setImportantForAccessibility(i3);
    }

    public static boolean c(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    public static void d(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    public static void d(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            a(i2, view);
            g(view, 0);
        }
    }

    public static int e(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    public static void e(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i2);
        } else if (Build.VERSION.SDK_INT >= 21) {
            Rect b2 = b();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                b2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !b2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            h(view, i2);
            if (z && b2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(b2);
            }
        } else {
            h(view, i2);
        }
    }

    public static int f(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    public static void f(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i2);
        } else if (Build.VERSION.SDK_INT >= 21) {
            Rect b2 = b();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                b2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !b2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            i(view, i2);
            if (z && b2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(b2);
            }
        } else {
            i(view, i2);
        }
    }

    public static ViewParent g(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getParentForAccessibility() : view.getParent();
    }

    static void g(View view, int i2) {
        if (((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            boolean z = I(view) != null;
            if (P(view) != 0 || (z && view.getVisibility() == 0)) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i2);
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i2);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                }
            }
        }
    }

    public static void h(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(1);
        }
    }

    private static void h(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (view.getVisibility() == 0) {
            Q(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                Q((View) parent);
            }
        }
    }

    public static int i(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    private static void i(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (view.getVisibility() == 0) {
            Q(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                Q((View) parent);
            }
        }
    }

    public static int j(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    public static int k(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f2016c) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f2015b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
            }
            f2016c = true;
        }
        Field field = f2015b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e3) {
            return 0;
        }
    }

    public static int l(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!e) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f2017d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
            }
            e = true;
        }
        Field field = f2017d;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e3) {
            return 0;
        }
    }

    public static y m(View view) {
        if (g == null) {
            g = new WeakHashMap<>();
        }
        y yVar = g.get(view);
        y yVar2 = yVar;
        if (yVar == null) {
            yVar2 = new y(view);
            g.put(view, yVar2);
        }
        return yVar2;
    }

    public static float n(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getElevation() : BitmapDescriptorFactory.HUE_RED;
    }

    public static float o(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getTranslationZ() : BitmapDescriptorFactory.HUE_RED;
    }

    public static String p(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    public static int q(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    public static void r(View view) {
        if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else if (Build.VERSION.SDK_INT >= 16) {
            view.requestFitSystemWindows();
        }
    }

    public static boolean s(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    public static ac t(View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return ac.a(d.a(view));
        }
        return null;
    }

    public static boolean u(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    public static boolean v(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    public static ColorStateList w(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (view instanceof u) {
            return ((u) view).getSupportBackgroundTintList();
        }
        return null;
    }

    public static PorterDuff.Mode x(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        if (view instanceof u) {
            return ((u) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    public static boolean y(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof j) {
            return ((j) view).isNestedScrollingEnabled();
        }
        return false;
    }

    public static void z(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof j) {
            ((j) view).stopNestedScroll();
        }
    }
}
