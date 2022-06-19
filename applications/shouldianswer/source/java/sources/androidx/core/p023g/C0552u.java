package androidx.core.p023g;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
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
import androidx.core.C0404a;
import androidx.core.p023g.C0503a;
import androidx.core.p023g.p024a.C0510d;
import com.google.android.flexbox.FlexItem;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.core.g.u */
/* loaded from: classes-dex2jar.jar:androidx/core/g/u.class */
public class C0552u {

    /* renamed from: b */
    private static Field f1882b;

    /* renamed from: c */
    private static boolean f1883c;

    /* renamed from: d */
    private static Field f1884d;

    /* renamed from: e */
    private static boolean f1885e;

    /* renamed from: f */
    private static WeakHashMap<View, String> f1886f;

    /* renamed from: h */
    private static Field f1888h;

    /* renamed from: j */
    private static ThreadLocal<Rect> f1890j;

    /* renamed from: a */
    private static final AtomicInteger f1881a = new AtomicInteger(1);

    /* renamed from: g */
    private static WeakHashMap<View, C0564y> f1887g = null;

    /* renamed from: i */
    private static boolean f1889i = false;

    /* renamed from: k */
    private static final int[] f1891k = {C0404a.C0407c.accessibility_custom_action_0, C0404a.C0407c.accessibility_custom_action_1, C0404a.C0407c.accessibility_custom_action_2, C0404a.C0407c.accessibility_custom_action_3, C0404a.C0407c.accessibility_custom_action_4, C0404a.C0407c.accessibility_custom_action_5, C0404a.C0407c.accessibility_custom_action_6, C0404a.C0407c.accessibility_custom_action_7, C0404a.C0407c.accessibility_custom_action_8, C0404a.C0407c.accessibility_custom_action_9, C0404a.C0407c.accessibility_custom_action_10, C0404a.C0407c.accessibility_custom_action_11, C0404a.C0407c.accessibility_custom_action_12, C0404a.C0407c.accessibility_custom_action_13, C0404a.C0407c.accessibility_custom_action_14, C0404a.C0407c.accessibility_custom_action_15, C0404a.C0407c.accessibility_custom_action_16, C0404a.C0407c.accessibility_custom_action_17, C0404a.C0407c.accessibility_custom_action_18, C0404a.C0407c.accessibility_custom_action_19, C0404a.C0407c.accessibility_custom_action_20, C0404a.C0407c.accessibility_custom_action_21, C0404a.C0407c.accessibility_custom_action_22, C0404a.C0407c.accessibility_custom_action_23, C0404a.C0407c.accessibility_custom_action_24, C0404a.C0407c.accessibility_custom_action_25, C0404a.C0407c.accessibility_custom_action_26, C0404a.C0407c.accessibility_custom_action_27, C0404a.C0407c.accessibility_custom_action_28, C0404a.C0407c.accessibility_custom_action_29, C0404a.C0407c.accessibility_custom_action_30, C0404a.C0407c.accessibility_custom_action_31};

    /* renamed from: l */
    private static View$OnAttachStateChangeListenerC0557a f1892l = new View$OnAttachStateChangeListenerC0557a();

    /* renamed from: androidx.core.g.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/u$a.class */
    static class View$OnAttachStateChangeListenerC0557a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        private WeakHashMap<View, Boolean> f1894a = new WeakHashMap<>();

        View$OnAttachStateChangeListenerC0557a() {
        }

        /* renamed from: a */
        private void m6217a(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        /* renamed from: a */
        private void m6216a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                if (z2) {
                    C0552u.m6242g(view, 16);
                }
                this.f1894a.put(view, Boolean.valueOf(z2));
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.f1894a.entrySet()) {
                m6216a(entry.getKey(), entry.getValue().booleanValue());
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            m6217a(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: androidx.core.g.u$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/u$b.class */
    public static abstract class AbstractC0558b<T> {

        /* renamed from: a */
        private final int f1895a;

        /* renamed from: b */
        private final Class<T> f1896b;

        /* renamed from: c */
        private final int f1897c;

        /* renamed from: d */
        private final int f1898d;

        AbstractC0558b(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        AbstractC0558b(int i, Class<T> cls, int i2, int i3) {
            this.f1895a = i;
            this.f1896b = cls;
            this.f1898d = i2;
            this.f1897c = i3;
        }

        /* renamed from: a */
        private boolean m6215a() {
            return Build.VERSION.SDK_INT >= this.f1897c;
        }

        /* renamed from: b */
        private boolean m6214b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        /* renamed from: b */
        abstract T mo6213b(View view);

        /* renamed from: c */
        T m6212c(View view) {
            if (m6215a()) {
                return mo6213b(view);
            }
            if (!m6214b()) {
                return null;
            }
            T t = (T) view.getTag(this.f1895a);
            if (!this.f1896b.isInstance(t)) {
                return null;
            }
            return t;
        }
    }

    /* renamed from: androidx.core.g.u$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/u$c.class */
    public interface AbstractC0559c {
        /* renamed from: a */
        boolean m6211a(View view, KeyEvent keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.g.u$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/u$d.class */
    public static class C0560d {

        /* renamed from: a */
        private static final ArrayList<WeakReference<View>> f1899a = new ArrayList<>();

        /* renamed from: b */
        private WeakHashMap<View, Boolean> f1900b = null;

        /* renamed from: c */
        private SparseArray<WeakReference<View>> f1901c = null;

        /* renamed from: d */
        private WeakReference<KeyEvent> f1902d = null;

        C0560d() {
        }

        /* renamed from: a */
        private SparseArray<WeakReference<View>> m6210a() {
            if (this.f1901c == null) {
                this.f1901c = new SparseArray<>();
            }
            return this.f1901c;
        }

        /* renamed from: a */
        static C0560d m6208a(View view) {
            C0560d c0560d = (C0560d) view.getTag(C0404a.C0407c.tag_unhandled_key_event_manager);
            C0560d c0560d2 = c0560d;
            if (c0560d == null) {
                c0560d2 = new C0560d();
                view.setTag(C0404a.C0407c.tag_unhandled_key_event_manager, c0560d2);
            }
            return c0560d2;
        }

        /* renamed from: b */
        private View m6205b(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f1900b;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View m6205b = m6205b(viewGroup.getChildAt(childCount), keyEvent);
                    if (m6205b != null) {
                        return m6205b;
                    }
                }
            }
            if (!m6204c(view, keyEvent)) {
                return null;
            }
            return view;
        }

        /* renamed from: b */
        private void m6206b() {
            WeakHashMap<View, Boolean> weakHashMap = this.f1900b;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (f1899a.isEmpty()) {
                return;
            }
            synchronized (f1899a) {
                if (this.f1900b == null) {
                    this.f1900b = new WeakHashMap<>();
                }
                for (int size = f1899a.size() - 1; size >= 0; size--) {
                    View view = f1899a.get(size).get();
                    if (view == null) {
                        f1899a.remove(size);
                    } else {
                        this.f1900b.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f1900b.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        /* renamed from: c */
        private boolean m6204c(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(C0404a.C0407c.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((AbstractC0559c) arrayList.get(size)).m6211a(view, keyEvent)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        /* renamed from: a */
        boolean m6209a(KeyEvent keyEvent) {
            WeakReference<KeyEvent> weakReference = this.f1902d;
            if (weakReference == null || weakReference.get() != keyEvent) {
                this.f1902d = new WeakReference<>(keyEvent);
                SparseArray<WeakReference<View>> m6210a = m6210a();
                WeakReference<View> weakReference2 = null;
                if (keyEvent.getAction() == 1) {
                    int indexOfKey = m6210a.indexOfKey(keyEvent.getKeyCode());
                    weakReference2 = null;
                    if (indexOfKey >= 0) {
                        weakReference2 = m6210a.valueAt(indexOfKey);
                        m6210a.removeAt(indexOfKey);
                    }
                }
                WeakReference<View> weakReference3 = weakReference2;
                if (weakReference2 == null) {
                    weakReference3 = m6210a.get(keyEvent.getKeyCode());
                }
                if (weakReference3 == null) {
                    return false;
                }
                View view = weakReference3.get();
                if (view == null || !C0552u.m6292D(view)) {
                    return true;
                }
                m6204c(view, keyEvent);
                return true;
            }
            return false;
        }

        /* renamed from: a */
        boolean m6207a(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                m6206b();
            }
            View m6205b = m6205b(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (m6205b != null && !KeyEvent.isModifierKey(keyCode)) {
                    m6210a().put(keyCode, new WeakReference<>(m6205b));
                }
            }
            return m6205b != null;
        }
    }

    /* renamed from: A */
    public static boolean m6295A(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isLaidOut();
        }
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* renamed from: B */
    public static float m6294B(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getZ() : FlexItem.FLEX_GROW_DEFAULT;
    }

    /* renamed from: C */
    public static Rect m6293C(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    /* renamed from: D */
    public static boolean m6292D(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isAttachedToWindow();
        }
        return view.getWindowToken() != null;
    }

    /* renamed from: E */
    public static boolean m6291E(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    /* renamed from: F */
    public static Display m6290F(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (!m6292D(view)) {
            return null;
        }
        return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: G */
    public static boolean m6289G(View view) {
        Boolean m6212c = m6261b().m6212c(view);
        return m6212c == null ? false : m6212c.booleanValue();
    }

    /* renamed from: H */
    public static CharSequence m6288H(View view) {
        return m6254c().m6212c(view);
    }

    /* renamed from: I */
    public static boolean m6287I(View view) {
        Boolean m6212c = m6250d().m6212c(view);
        return m6212c == null ? false : m6212c.booleanValue();
    }

    /* renamed from: J */
    private static View.AccessibilityDelegate m6286J(View view) {
        if (f1889i) {
            return null;
        }
        if (f1888h == null) {
            try {
                f1888h = View.class.getDeclaredField("mAccessibilityDelegate");
                f1888h.setAccessible(true);
            } catch (Throwable th) {
                f1889i = true;
                return null;
            }
        }
        try {
            Object obj = f1888h.get(view);
            if (!(obj instanceof View.AccessibilityDelegate)) {
                return null;
            }
            return (View.AccessibilityDelegate) obj;
        } catch (Throwable th2) {
            f1889i = true;
            return null;
        }
    }

    /* renamed from: K */
    private static void m6285K(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    @Deprecated
    /* renamed from: a */
    public static int m6283a(int i, int i2) {
        return View.combineMeasuredStates(i, i2);
    }

    @Deprecated
    /* renamed from: a */
    public static int m6282a(int i, int i2, int i3) {
        return View.resolveSizeAndState(i, i2, i3);
    }

    /* renamed from: a */
    public static int m6281a(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    /* renamed from: a */
    private static Rect m6284a() {
        if (f1890j == null) {
            f1890j = new ThreadLocal<>();
        }
        Rect rect = f1890j.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            f1890j.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    /* renamed from: a */
    public static C0529ac m6268a(View view, C0529ac c0529ac) {
        if (Build.VERSION.SDK_INT >= 21) {
            WindowInsets windowInsets = (WindowInsets) C0529ac.m6365a(c0529ac);
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
            WindowInsets windowInsets2 = windowInsets;
            if (!onApplyWindowInsets.equals(windowInsets)) {
                windowInsets2 = new WindowInsets(onApplyWindowInsets);
            }
            return C0529ac.m6364a(windowInsets2);
        }
        return c0529ac;
    }

    /* renamed from: a */
    public static void m6280a(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f);
        }
    }

    /* renamed from: a */
    public static void m6279a(View view, int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i);
        }
    }

    /* renamed from: a */
    public static void m6278a(View view, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i, i2);
        }
    }

    /* renamed from: a */
    public static void m6277a(View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i, i2, i3, i4);
        } else {
            view.setPadding(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m6275a(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(view instanceof AbstractC0551t)) {
                return;
            }
            ((AbstractC0551t) view).setSupportBackgroundTintList(colorStateList);
            return;
        }
        view.setBackgroundTintList(colorStateList);
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        Drawable background = view.getBackground();
        boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
        if (background == null || !z) {
            return;
        }
        if (background.isStateful()) {
            background.setState(view.getDrawableState());
        }
        view.setBackground(background);
    }

    /* renamed from: a */
    public static void m6274a(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(view instanceof AbstractC0551t)) {
                return;
            }
            ((AbstractC0551t) view).setSupportBackgroundTintMode(mode);
            return;
        }
        view.setBackgroundTintMode(mode);
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        Drawable background = view.getBackground();
        boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
        if (background == null || !z) {
            return;
        }
        if (background.isStateful()) {
            background.setState(view.getDrawableState());
        }
        view.setBackground(background);
    }

    /* renamed from: a */
    public static void m6273a(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    /* renamed from: a */
    public static void m6272a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: a */
    public static void m6270a(View view, C0510d c0510d) {
        view.onInitializeAccessibilityNodeInfo(c0510d.m6456a());
    }

    /* renamed from: a */
    public static void m6269a(View view, C0503a c0503a) {
        C0503a c0503a2 = c0503a;
        if (c0503a == null) {
            c0503a2 = c0503a;
            if (m6286J(view) instanceof C0503a.C0504a) {
                c0503a2 = new C0503a();
            }
        }
        view.setAccessibilityDelegate(c0503a2 == null ? null : c0503a2.getBridge());
    }

    /* renamed from: a */
    public static void m6267a(View view, final AbstractC0548q abstractC0548q) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (abstractC0548q == null) {
                view.setOnApplyWindowInsetsListener(null);
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.g.u.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        return (WindowInsets) C0529ac.m6365a(abstractC0548q.onApplyWindowInsets(view2, C0529ac.m6364a(windowInsets)));
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public static void m6266a(View view, C0550s c0550s) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (c0550s != null ? c0550s.m6297a() : null));
        }
    }

    /* renamed from: a */
    public static void m6265a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    /* renamed from: a */
    public static void m6264a(View view, Runnable runnable, long j) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j);
        }
    }

    /* renamed from: a */
    public static void m6263a(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f1886f == null) {
            f1886f = new WeakHashMap<>();
        }
        f1886f.put(view, str);
    }

    /* renamed from: a */
    public static void m6262a(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    /* renamed from: a */
    public static boolean m6276a(View view, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i, bundle);
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m6271a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C0560d.m6208a(view).m6209a(keyEvent);
    }

    /* renamed from: b */
    public static C0529ac m6256b(View view, C0529ac c0529ac) {
        if (Build.VERSION.SDK_INT >= 21) {
            WindowInsets windowInsets = (WindowInsets) C0529ac.m6365a(c0529ac);
            WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
            WindowInsets windowInsets2 = windowInsets;
            if (!dispatchApplyWindowInsets.equals(windowInsets)) {
                windowInsets2 = new WindowInsets(dispatchApplyWindowInsets);
            }
            return C0529ac.m6364a(windowInsets2);
        }
        return c0529ac;
    }

    /* renamed from: b */
    private static AbstractC0558b<Boolean> m6261b() {
        return new AbstractC0558b<Boolean>(C0404a.C0407c.tag_screen_reader_focusable, Boolean.class, 28) { // from class: androidx.core.g.u.2
            /* renamed from: a */
            public Boolean mo6213b(View view) {
                return Boolean.valueOf(view.isScreenReaderFocusable());
            }
        };
    }

    /* renamed from: b */
    public static void m6259b(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTranslationZ(f);
        }
    }

    /* renamed from: b */
    public static void m6258b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setImportantForAccessibility(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            int i2 = i;
            if (i == 4) {
                i2 = 2;
            }
            view.setImportantForAccessibility(i2);
        }
    }

    @Deprecated
    /* renamed from: b */
    public static void m6255b(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    /* renamed from: b */
    public static boolean m6260b(View view) {
        return m6286J(view) != null;
    }

    /* renamed from: b */
    public static boolean m6257b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C0560d.m6208a(view).m6207a(view, keyEvent);
    }

    /* renamed from: c */
    private static AbstractC0558b<CharSequence> m6254c() {
        return new AbstractC0558b<CharSequence>(C0404a.C0407c.tag_accessibility_pane_title, CharSequence.class, 8, 28) { // from class: androidx.core.g.u.3
            /* renamed from: a */
            public CharSequence mo6213b(View view) {
                return view.getAccessibilityPaneTitle();
            }
        };
    }

    /* renamed from: c */
    public static void m6252c(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setZ(f);
        }
    }

    /* renamed from: c */
    public static void m6251c(View view, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i);
        }
    }

    /* renamed from: c */
    public static boolean m6253c(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    /* renamed from: d */
    private static AbstractC0558b<Boolean> m6250d() {
        return new AbstractC0558b<Boolean>(C0404a.C0407c.tag_accessibility_heading, Boolean.class, 28) { // from class: androidx.core.g.u.4
            /* renamed from: a */
            public Boolean mo6213b(View view) {
                return Boolean.valueOf(view.isAccessibilityHeading());
            }
        };
    }

    /* renamed from: d */
    public static void m6249d(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    /* renamed from: d */
    public static void m6248d(View view, int i) {
        if (view instanceof AbstractC0541j) {
            ((AbstractC0541j) view).stopNestedScroll(i);
        } else if (i != 0) {
        } else {
            m6221z(view);
        }
    }

    /* renamed from: e */
    public static int m6247e(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    /* renamed from: e */
    public static void m6246e(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
        } else if (Build.VERSION.SDK_INT < 21) {
            m6240h(view, i);
        } else {
            Rect m6284a = m6284a();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                m6284a.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !m6284a.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m6240h(view, i);
            if (!z || !m6284a.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                return;
            }
            ((View) parent).invalidate(m6284a);
        }
    }

    /* renamed from: f */
    public static int m6245f(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    /* renamed from: f */
    public static void m6244f(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
        } else if (Build.VERSION.SDK_INT < 21) {
            m6238i(view, i);
        } else {
            Rect m6284a = m6284a();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                m6284a.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !m6284a.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m6238i(view, i);
            if (!z || !m6284a.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                return;
            }
            ((View) parent).invalidate(m6284a);
        }
    }

    /* renamed from: g */
    public static ViewParent m6243g(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getParentForAccessibility() : view.getParent();
    }

    /* renamed from: g */
    static void m6242g(View view, int i) {
        if (!((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        boolean z = m6288H(view) != null;
        if (m6239i(view) != 0 || (z && view.getVisibility() == 0)) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(z ? 32 : 2048);
            obtain.setContentChangeTypes(i);
            view.sendAccessibilityEventUnchecked(obtain);
        } else if (view.getParent() == null) {
        } else {
            try {
                view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e);
            }
        }
    }

    @Deprecated
    /* renamed from: h */
    public static int m6241h(View view) {
        return view.getMeasuredState();
    }

    /* renamed from: h */
    private static void m6240h(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m6285K(view);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m6285K((View) parent);
        }
    }

    /* renamed from: i */
    public static int m6239i(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    /* renamed from: i */
    private static void m6238i(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m6285K(view);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m6285K((View) parent);
        }
    }

    /* renamed from: j */
    public static int m6237j(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    /* renamed from: k */
    public static int m6236k(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    /* renamed from: l */
    public static int m6235l(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f1883c) {
            try {
                f1882b = View.class.getDeclaredField("mMinWidth");
                f1882b.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f1883c = true;
        }
        Field field = f1882b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: m */
    public static int m6234m(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f1885e) {
            try {
                f1884d = View.class.getDeclaredField("mMinHeight");
                f1884d.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f1885e = true;
        }
        Field field = f1884d;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: n */
    public static C0564y m6233n(View view) {
        if (f1887g == null) {
            f1887g = new WeakHashMap<>();
        }
        C0564y c0564y = f1887g.get(view);
        C0564y c0564y2 = c0564y;
        if (c0564y == null) {
            c0564y2 = new C0564y(view);
            f1887g.put(view, c0564y2);
        }
        return c0564y2;
    }

    /* renamed from: o */
    public static float m6232o(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getElevation() : FlexItem.FLEX_GROW_DEFAULT;
    }

    /* renamed from: p */
    public static float m6231p(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getTranslationZ() : FlexItem.FLEX_GROW_DEFAULT;
    }

    /* renamed from: q */
    public static String m6230q(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f1886f;
        if (weakHashMap != null) {
            return weakHashMap.get(view);
        }
        return null;
    }

    /* renamed from: r */
    public static int m6229r(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    /* renamed from: s */
    public static void m6228s(View view) {
        if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            view.requestFitSystemWindows();
        }
    }

    /* renamed from: t */
    public static boolean m6227t(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    /* renamed from: u */
    public static boolean m6226u(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    /* renamed from: v */
    public static boolean m6225v(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    /* renamed from: w */
    public static ColorStateList m6224w(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        return view instanceof AbstractC0551t ? ((AbstractC0551t) view).getSupportBackgroundTintList() : null;
    }

    /* renamed from: x */
    public static PorterDuff.Mode m6223x(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        return view instanceof AbstractC0551t ? ((AbstractC0551t) view).getSupportBackgroundTintMode() : null;
    }

    /* renamed from: y */
    public static boolean m6222y(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (!(view instanceof AbstractC0540i)) {
            return false;
        }
        return ((AbstractC0540i) view).isNestedScrollingEnabled();
    }

    /* renamed from: z */
    public static void m6221z(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (!(view instanceof AbstractC0540i)) {
        } else {
            ((AbstractC0540i) view).stopNestedScroll();
        }
    }
}
