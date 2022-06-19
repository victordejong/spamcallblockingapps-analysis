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
import androidx.core.C0707a;
import androidx.core.view.C0865a;
import androidx.core.view.p038a.AbstractC0878f;
import androidx.core.view.p038a.C0869c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.core.view.v */
/* loaded from: classes-dex2jar.jar:androidx/core/view/v.class */
public final class C0926v {

    /* renamed from: b */
    private static Field f3761b;

    /* renamed from: c */
    private static boolean f3762c;

    /* renamed from: d */
    private static Field f3763d;

    /* renamed from: e */
    private static boolean f3764e;

    /* renamed from: f */
    private static WeakHashMap<View, String> f3765f;

    /* renamed from: h */
    private static Field f3767h;

    /* renamed from: j */
    private static ThreadLocal<Rect> f3769j;

    /* renamed from: a */
    private static final AtomicInteger f3760a = new AtomicInteger(1);

    /* renamed from: g */
    private static WeakHashMap<View, C0940y> f3766g = null;

    /* renamed from: i */
    private static boolean f3768i = false;

    /* renamed from: k */
    private static final int[] f3770k = {C0707a.C0710c.accessibility_custom_action_0, C0707a.C0710c.accessibility_custom_action_1, C0707a.C0710c.accessibility_custom_action_2, C0707a.C0710c.accessibility_custom_action_3, C0707a.C0710c.accessibility_custom_action_4, C0707a.C0710c.accessibility_custom_action_5, C0707a.C0710c.accessibility_custom_action_6, C0707a.C0710c.accessibility_custom_action_7, C0707a.C0710c.accessibility_custom_action_8, C0707a.C0710c.accessibility_custom_action_9, C0707a.C0710c.accessibility_custom_action_10, C0707a.C0710c.accessibility_custom_action_11, C0707a.C0710c.accessibility_custom_action_12, C0707a.C0710c.accessibility_custom_action_13, C0707a.C0710c.accessibility_custom_action_14, C0707a.C0710c.accessibility_custom_action_15, C0707a.C0710c.accessibility_custom_action_16, C0707a.C0710c.accessibility_custom_action_17, C0707a.C0710c.accessibility_custom_action_18, C0707a.C0710c.accessibility_custom_action_19, C0707a.C0710c.accessibility_custom_action_20, C0707a.C0710c.accessibility_custom_action_21, C0707a.C0710c.accessibility_custom_action_22, C0707a.C0710c.accessibility_custom_action_23, C0707a.C0710c.accessibility_custom_action_24, C0707a.C0710c.accessibility_custom_action_25, C0707a.C0710c.accessibility_custom_action_26, C0707a.C0710c.accessibility_custom_action_27, C0707a.C0710c.accessibility_custom_action_28, C0707a.C0710c.accessibility_custom_action_29, C0707a.C0710c.accessibility_custom_action_30, C0707a.C0710c.accessibility_custom_action_31};

    /* renamed from: l */
    private static View$OnAttachStateChangeListenerC0931a f3771l = new View$OnAttachStateChangeListenerC0931a();

    /* renamed from: androidx.core.view.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$a.class */
    static final class View$OnAttachStateChangeListenerC0931a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        private WeakHashMap<View, Boolean> f3773a = new WeakHashMap<>();

        View$OnAttachStateChangeListenerC0931a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.f3773a.entrySet()) {
                View key = entry.getKey();
                boolean booleanValue = entry.getValue().booleanValue();
                boolean z = key.getVisibility() == 0;
                if (booleanValue != z) {
                    if (z) {
                        C0926v.m44094g(key, 16);
                    }
                    this.f3773a.put(key, Boolean.valueOf(z));
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

    /* renamed from: androidx.core.view.v$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$b.class */
    public static abstract class AbstractC0932b<T> {

        /* renamed from: a */
        final int f3774a;

        /* renamed from: b */
        private final Class<T> f3775b;

        /* renamed from: c */
        private final int f3776c;

        AbstractC0932b(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        AbstractC0932b(int i, Class<T> cls, int i2, int i3) {
            this.f3774a = i;
            this.f3775b = cls;
            this.f3776c = i3;
        }

        /* renamed from: a */
        static boolean m44069a(Boolean bool, Boolean bool2) {
            return (bool == null ? false : bool.booleanValue()) == (bool2 == null ? false : bool2.booleanValue());
        }

        /* renamed from: b */
        static boolean m44067b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        /* renamed from: a */
        abstract T mo44071a(View view);

        /* renamed from: a */
        abstract void mo44070a(View view, T t);

        /* renamed from: a */
        final boolean m44072a() {
            return Build.VERSION.SDK_INT >= this.f3776c;
        }

        /* renamed from: a */
        boolean mo44068a(T t, T t2) {
            return !t2.equals(t);
        }

        /* renamed from: b */
        final T m44066b(View view) {
            if (m44072a()) {
                return mo44071a(view);
            }
            if (!m44067b()) {
                return null;
            }
            T t = (T) view.getTag(this.f3774a);
            if (!this.f3775b.isInstance(t)) {
                return null;
            }
            return t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.v$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$c.class */
    public static final class C0933c {
        private C0933c() {
        }

        /* renamed from: a */
        static C0889ac m44065a(View view, C0889ac c0889ac, Rect rect) {
            WindowInsets m44223e = c0889ac.m44223e();
            if (m44223e != null) {
                return C0889ac.m44229a(view.computeSystemWindowInsets(m44223e, rect));
            }
            rect.setEmpty();
            return c0889ac;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.v$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$d.class */
    public static final class C0934d {
        private C0934d() {
        }

        /* renamed from: a */
        public static WindowInsets m44064a(View view) {
            return view.getRootWindowInsets();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.v$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$e.class */
    public static final class C0935e {
        private C0935e() {
        }

        /* renamed from: a */
        static void m44063a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* renamed from: androidx.core.view.v$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$f.class */
    public interface AbstractC0936f {
        /* renamed from: a */
        boolean m44062a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.v$g */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/v$g.class */
    public static final class C0937g {

        /* renamed from: a */
        static final ArrayList<WeakReference<View>> f3777a = new ArrayList<>();

        /* renamed from: b */
        WeakHashMap<View, Boolean> f3778b = null;

        /* renamed from: d */
        private SparseArray<WeakReference<View>> f3780d = null;

        /* renamed from: c */
        WeakReference<KeyEvent> f3779c = null;

        C0937g() {
        }

        /* renamed from: a */
        static C0937g m44060a(View view) {
            C0937g c0937g = (C0937g) view.getTag(C0707a.C0710c.tag_unhandled_key_event_manager);
            C0937g c0937g2 = c0937g;
            if (c0937g == null) {
                c0937g2 = new C0937g();
                view.setTag(C0707a.C0710c.tag_unhandled_key_event_manager, c0937g2);
            }
            return c0937g2;
        }

        /* renamed from: b */
        static boolean m44058b(View view) {
            ArrayList arrayList = (ArrayList) view.getTag(C0707a.C0710c.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((AbstractC0936f) arrayList.get(size)).m44062a()) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        /* renamed from: a */
        final SparseArray<WeakReference<View>> m44061a() {
            if (this.f3780d == null) {
                this.f3780d = new SparseArray<>();
            }
            return this.f3780d;
        }

        /* renamed from: a */
        final View m44059a(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f3778b;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View m44059a = m44059a(viewGroup.getChildAt(childCount), keyEvent);
                    if (m44059a != null) {
                        return m44059a;
                    }
                }
            }
            if (!m44058b(view)) {
                return null;
            }
            return view;
        }
    }

    protected C0926v() {
    }

    /* renamed from: A */
    public static void m44158A(View view) {
        if (view instanceof AbstractC0915k) {
            ((AbstractC0915k) view).mo40494a(1);
        }
    }

    /* renamed from: B */
    public static boolean m44157B(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isLaidOut() : view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* renamed from: C */
    public static float m44156C(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getZ() : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: D */
    public static Rect m44155D(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    /* renamed from: E */
    public static boolean m44154E(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isAttachedToWindow() : view.getWindowToken() != null;
    }

    /* renamed from: F */
    public static boolean m44153F(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    /* renamed from: G */
    public static Display m44152G(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (!m44154E(view)) {
            return null;
        }
        return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: H */
    public static boolean m44151H(View view) {
        Boolean m44066b = new AbstractC0932b<Boolean>(C0707a.C0710c.tag_screen_reader_focusable, Boolean.class, 28) { // from class: androidx.core.view.v.2
            @Override // androidx.core.view.C0926v.AbstractC0932b
            /* renamed from: a */
            final /* synthetic */ Boolean mo44071a(View view2) {
                return Boolean.valueOf(view2.isScreenReaderFocusable());
            }

            @Override // androidx.core.view.C0926v.AbstractC0932b
            /* renamed from: a */
            final /* synthetic */ void mo44070a(View view2, Boolean bool) {
                view2.setScreenReaderFocusable(bool.booleanValue());
            }

            @Override // androidx.core.view.C0926v.AbstractC0932b
            /* renamed from: a */
            final /* bridge */ /* synthetic */ boolean mo44068a(Boolean bool, Boolean bool2) {
                return !m44069a(bool, bool2);
            }
        }.m44066b(view);
        if (m44066b == null) {
            return false;
        }
        return m44066b.booleanValue();
    }

    /* renamed from: I */
    public static CharSequence m44150I(View view) {
        return new AbstractC0932b<CharSequence>(C0707a.C0710c.tag_accessibility_pane_title, CharSequence.class, 8, 28) { // from class: androidx.core.view.v.3
            @Override // androidx.core.view.C0926v.AbstractC0932b
            /* renamed from: a */
            final /* synthetic */ CharSequence mo44071a(View view2) {
                return view2.getAccessibilityPaneTitle();
            }

            @Override // androidx.core.view.C0926v.AbstractC0932b
            /* renamed from: a */
            final /* synthetic */ void mo44070a(View view2, CharSequence charSequence) {
                view2.setAccessibilityPaneTitle(charSequence);
            }

            @Override // androidx.core.view.C0926v.AbstractC0932b
            /* renamed from: a */
            final /* synthetic */ boolean mo44068a(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        }.m44066b(view);
    }

    /* renamed from: J */
    public static boolean m44149J(View view) {
        Boolean m44066b = m44105c().m44066b(view);
        if (m44066b == null) {
            return false;
        }
        return m44066b.booleanValue();
    }

    /* renamed from: K */
    public static void m44148K(View view) {
        AbstractC0932b<Boolean> m44105c = m44105c();
        Boolean bool = Boolean.TRUE;
        if (m44105c.m44072a()) {
            m44105c.mo44070a(view, (View) bool);
        } else if (!AbstractC0932b.m44067b() || !m44105c.mo44068a(m44105c.m44066b(view), bool)) {
        } else {
            m44147L(view);
            view.setTag(m44105c.f3774a, bool);
            m44094g(view, 0);
        }
    }

    /* renamed from: L */
    private static C0865a m44147L(View view) {
        C0865a m44112b = m44112b(view);
        C0865a c0865a = m44112b;
        if (m44112b == null) {
            c0865a = new C0865a();
        }
        m44123a(view, c0865a);
        return c0865a;
    }

    /* renamed from: M */
    private static View.AccessibilityDelegate m44146M(View view) {
        return Build.VERSION.SDK_INT >= 29 ? view.getAccessibilityDelegate() : m44145N(view);
    }

    /* renamed from: N */
    private static View.AccessibilityDelegate m44145N(View view) {
        if (f3768i) {
            return null;
        }
        if (f3767h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f3767h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable th) {
                f3768i = true;
                return null;
            }
        }
        try {
            Object obj = f3767h.get(view);
            if (!(obj instanceof View.AccessibilityDelegate)) {
                return null;
            }
            return (View.AccessibilityDelegate) obj;
        } catch (Throwable th2) {
            f3768i = true;
            return null;
        }
    }

    /* renamed from: O */
    private static List<C0869c.C0870a> m44144O(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(C0707a.C0710c.tag_accessibility_actions);
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList();
            view.setTag(C0707a.C0710c.tag_accessibility_actions, arrayList2);
        }
        return arrayList2;
    }

    /* renamed from: P */
    private static int m44143P(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    /* renamed from: Q */
    private static void m44142Q(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    /* renamed from: a */
    public static int m44141a() {
        AtomicInteger atomicInteger;
        int i;
        int i2;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            atomicInteger = f3760a;
            i = atomicInteger.get();
            int i3 = i + 1;
            i2 = i3;
            if (i3 > 16777215) {
                i2 = 1;
            }
        } while (!atomicInteger.compareAndSet(i, i2));
        return i;
    }

    /* renamed from: a */
    public static int m44139a(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    /* renamed from: a */
    public static int m44118a(View view, CharSequence charSequence, AbstractC0878f abstractC0878f) {
        List<C0869c.C0870a> m44144O = m44144O(view);
        int i = 0;
        int i2 = -1;
        while (true) {
            int[] iArr = f3770k;
            if (i >= iArr.length || i2 != -1) {
                break;
            }
            int i3 = iArr[i];
            boolean z = true;
            for (int i4 = 0; i4 < m44144O.size(); i4++) {
                z &= m44144O.get(i4).m44238a() != i3;
            }
            if (z) {
                i2 = i3;
            }
            i++;
        }
        if (i2 != -1) {
            m44126a(view, new C0869c.C0870a(i2, charSequence, abstractC0878f));
        }
        return i2;
    }

    /* renamed from: a */
    public static C0889ac m44122a(View view, C0889ac c0889ac) {
        WindowInsets m44223e;
        if (Build.VERSION.SDK_INT >= 21 && (m44223e = c0889ac.m44223e()) != null) {
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(m44223e);
            if (!onApplyWindowInsets.equals(m44223e)) {
                return C0889ac.m44229a(onApplyWindowInsets);
            }
        }
        return c0889ac;
    }

    /* renamed from: a */
    public static C0889ac m44121a(View view, C0889ac c0889ac, Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? C0933c.m44065a(view, c0889ac, rect) : c0889ac;
    }

    /* renamed from: a */
    private static void m44140a(int i, View view) {
        List<C0869c.C0870a> m44144O = m44144O(view);
        for (int i2 = 0; i2 < m44144O.size(); i2++) {
            if (m44144O.get(i2).m44238a() == i) {
                m44144O.remove(i2);
                return;
            }
        }
    }

    /* renamed from: a */
    public static void m44138a(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f);
        }
    }

    /* renamed from: a */
    public static void m44136a(View view, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i, 3);
        }
    }

    /* renamed from: a */
    public static void m44135a(View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation(i, i2, i3, i4);
        } else {
            view.postInvalidate(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m44133a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            C0935e.m44063a(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    /* renamed from: a */
    public static void m44132a(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(view instanceof AbstractC0925u)) {
                return;
            }
            ((AbstractC0925u) view).setSupportBackgroundTintList(colorStateList);
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
    public static void m44131a(View view, Paint paint) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setLayerPaint(paint);
            return;
        }
        view.setLayerType(view.getLayerType(), paint);
        view.invalidate();
    }

    /* renamed from: a */
    public static void m44130a(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(view instanceof AbstractC0925u)) {
                return;
            }
            ((AbstractC0925u) view).setSupportBackgroundTintMode(mode);
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
    public static void m44129a(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    /* renamed from: a */
    public static void m44128a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: a */
    private static void m44126a(View view, C0869c.C0870a c0870a) {
        if (Build.VERSION.SDK_INT >= 21) {
            m44147L(view);
            m44140a(c0870a.m44238a(), view);
            m44144O(view).add(c0870a);
            m44094g(view, 0);
        }
    }

    /* renamed from: a */
    public static void m44125a(View view, C0869c.C0870a c0870a, AbstractC0878f abstractC0878f) {
        if (abstractC0878f == null) {
            m44100d(view, c0870a.m44238a());
        } else {
            m44126a(view, new C0869c.C0870a(null, c0870a.f3685M, null, abstractC0878f, c0870a.f3686N));
        }
    }

    /* renamed from: a */
    public static void m44124a(View view, C0869c c0869c) {
        view.onInitializeAccessibilityNodeInfo(c0869c.f3644a);
    }

    /* renamed from: a */
    public static void m44123a(View view, C0865a c0865a) {
        C0865a c0865a2 = c0865a;
        if (c0865a == null) {
            c0865a2 = c0865a;
            if (m44146M(view) instanceof C0865a.C0866a) {
                c0865a2 = new C0865a();
            }
        }
        view.setAccessibilityDelegate(c0865a2 == null ? null : c0865a2.f3637a);
    }

    /* renamed from: a */
    public static void m44120a(View view, final AbstractC0922r abstractC0922r) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (abstractC0922r == null) {
                view.setOnApplyWindowInsetsListener(null);
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.v.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        return abstractC0922r.mo10180a(view2, C0889ac.m44229a(windowInsets)).m44223e();
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public static void m44119a(View view, C0924t c0924t) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (c0924t != null ? c0924t.f3759a : null));
        }
    }

    /* renamed from: a */
    public static void m44117a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    /* renamed from: a */
    public static void m44116a(View view, Runnable runnable, long j) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j);
        }
    }

    /* renamed from: a */
    public static void m44115a(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f3765f == null) {
            f3765f = new WeakHashMap<>();
        }
        f3765f.put(view, str);
    }

    /* renamed from: a */
    public static void m44114a(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    @Deprecated
    /* renamed from: a */
    public static boolean m44137a(View view, int i) {
        return view.canScrollVertically(i);
    }

    /* renamed from: a */
    public static boolean m44134a(View view, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i, bundle);
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m44127a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        C0937g m44060a = C0937g.m44060a(view);
        if (m44060a.f3779c != null && m44060a.f3779c.get() == keyEvent) {
            return false;
        }
        m44060a.f3779c = new WeakReference<>(keyEvent);
        SparseArray<WeakReference<View>> m44061a = m44060a.m44061a();
        WeakReference<View> weakReference = null;
        if (keyEvent.getAction() == 1) {
            int indexOfKey = m44061a.indexOfKey(keyEvent.getKeyCode());
            weakReference = null;
            if (indexOfKey >= 0) {
                weakReference = m44061a.valueAt(indexOfKey);
                m44061a.removeAt(indexOfKey);
            }
        }
        WeakReference<View> weakReference2 = weakReference;
        if (weakReference == null) {
            weakReference2 = m44061a.get(keyEvent.getKeyCode());
        }
        if (weakReference2 == null) {
            return false;
        }
        View view2 = weakReference2.get();
        if (view2 == null || !m44154E(view2)) {
            return true;
        }
        C0937g.m44058b(view2);
        return true;
    }

    /* renamed from: b */
    private static Rect m44113b() {
        if (f3769j == null) {
            f3769j = new ThreadLocal<>();
        }
        Rect rect = f3769j.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            f3769j.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    /* renamed from: b */
    public static C0865a m44112b(View view) {
        View.AccessibilityDelegate m44146M = m44146M(view);
        if (m44146M == null) {
            return null;
        }
        return m44146M instanceof C0865a.C0866a ? ((C0865a.C0866a) m44146M).f3639a : new C0865a(m44146M);
    }

    /* renamed from: b */
    public static C0889ac m44107b(View view, C0889ac c0889ac) {
        WindowInsets m44223e;
        return (Build.VERSION.SDK_INT < 21 || (m44223e = c0889ac.m44223e()) == null || view.dispatchApplyWindowInsets(m44223e).equals(m44223e)) ? c0889ac : C0889ac.m44229a(m44223e);
    }

    /* renamed from: b */
    public static void m44111b(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTranslationZ(f);
        }
    }

    /* renamed from: b */
    public static void m44110b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i);
        }
    }

    /* renamed from: b */
    public static void m44109b(View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i, i2, i3, i4);
        } else {
            view.setPadding(i, i2, i3, i4);
        }
    }

    @Deprecated
    /* renamed from: b */
    public static void m44106b(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    /* renamed from: b */
    public static boolean m44108b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        C0937g m44060a = C0937g.m44060a(view);
        if (keyEvent.getAction() == 0) {
            if (m44060a.f3778b != null) {
                m44060a.f3778b.clear();
            }
            if (!C0937g.f3777a.isEmpty()) {
                synchronized (C0937g.f3777a) {
                    if (m44060a.f3778b == null) {
                        m44060a.f3778b = new WeakHashMap<>();
                    }
                    for (int size = C0937g.f3777a.size() - 1; size >= 0; size--) {
                        View view2 = C0937g.f3777a.get(size).get();
                        if (view2 == null) {
                            C0937g.f3777a.remove(size);
                        } else {
                            m44060a.f3778b.put(view2, Boolean.TRUE);
                            for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                m44060a.f3778b.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }
        View m44059a = m44060a.m44059a(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (m44059a != null && !KeyEvent.isModifierKey(keyCode)) {
                m44060a.m44061a().put(keyCode, new WeakReference<>(m44059a));
            }
        }
        return m44059a != null;
    }

    /* renamed from: c */
    private static AbstractC0932b<Boolean> m44105c() {
        return new AbstractC0932b<Boolean>(C0707a.C0710c.tag_accessibility_heading, Boolean.class, 28) { // from class: androidx.core.view.v.4
            @Override // androidx.core.view.C0926v.AbstractC0932b
            /* renamed from: a */
            final /* synthetic */ Boolean mo44071a(View view) {
                return Boolean.valueOf(view.isAccessibilityHeading());
            }

            @Override // androidx.core.view.C0926v.AbstractC0932b
            /* renamed from: a */
            final /* synthetic */ void mo44070a(View view, Boolean bool) {
                view.setAccessibilityHeading(bool.booleanValue());
            }

            @Override // androidx.core.view.C0926v.AbstractC0932b
            /* renamed from: a */
            final /* bridge */ /* synthetic */ boolean mo44068a(Boolean bool, Boolean bool2) {
                return !m44069a(bool, bool2);
            }
        };
    }

    /* renamed from: c */
    public static void m44103c(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setZ(f);
        }
    }

    /* renamed from: c */
    public static void m44102c(View view, int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 19) {
            if (Build.VERSION.SDK_INT < 16) {
                return;
            }
            i2 = i;
            if (i == 4) {
                i2 = 2;
            }
        }
        view.setImportantForAccessibility(i2);
    }

    /* renamed from: c */
    public static boolean m44104c(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    /* renamed from: d */
    public static void m44101d(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    /* renamed from: d */
    public static void m44100d(View view, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            m44140a(i, view);
            m44094g(view, 0);
        }
    }

    /* renamed from: e */
    public static int m44099e(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    /* renamed from: e */
    public static void m44098e(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
        } else if (Build.VERSION.SDK_INT < 21) {
            m44092h(view, i);
        } else {
            Rect m44113b = m44113b();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                m44113b.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !m44113b.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m44092h(view, i);
            if (!z || !m44113b.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                return;
            }
            ((View) parent).invalidate(m44113b);
        }
    }

    /* renamed from: f */
    public static int m44097f(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    /* renamed from: f */
    public static void m44096f(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
        } else if (Build.VERSION.SDK_INT < 21) {
            m44090i(view, i);
        } else {
            Rect m44113b = m44113b();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                m44113b.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !m44113b.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m44090i(view, i);
            if (!z || !m44113b.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                return;
            }
            ((View) parent).invalidate(m44113b);
        }
    }

    /* renamed from: g */
    public static ViewParent m44095g(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getParentForAccessibility() : view.getParent();
    }

    /* renamed from: g */
    static void m44094g(View view, int i) {
        if (!((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        boolean z = m44150I(view) != null;
        if (m44143P(view) != 0 || (z && view.getVisibility() == 0)) {
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

    /* renamed from: h */
    public static void m44093h(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(1);
        }
    }

    /* renamed from: h */
    private static void m44092h(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m44142Q(view);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m44142Q((View) parent);
        }
    }

    /* renamed from: i */
    public static int m44091i(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    /* renamed from: i */
    private static void m44090i(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m44142Q(view);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m44142Q((View) parent);
        }
    }

    /* renamed from: j */
    public static int m44089j(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    /* renamed from: k */
    public static int m44088k(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f3762c) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f3761b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3762c = true;
        }
        Field field = f3761b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: l */
    public static int m44087l(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f3764e) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f3763d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3764e = true;
        }
        Field field = f3763d;
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
    public static C0940y m44086m(View view) {
        if (f3766g == null) {
            f3766g = new WeakHashMap<>();
        }
        C0940y c0940y = f3766g.get(view);
        C0940y c0940y2 = c0940y;
        if (c0940y == null) {
            c0940y2 = new C0940y(view);
            f3766g.put(view, c0940y2);
        }
        return c0940y2;
    }

    /* renamed from: n */
    public static float m44085n(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getElevation() : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: o */
    public static float m44084o(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getTranslationZ() : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: p */
    public static String m44083p(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f3765f;
        if (weakHashMap != null) {
            return weakHashMap.get(view);
        }
        return null;
    }

    /* renamed from: q */
    public static int m44082q(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    /* renamed from: r */
    public static void m44081r(View view) {
        if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            view.requestFitSystemWindows();
        }
    }

    /* renamed from: s */
    public static boolean m44080s(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    /* renamed from: t */
    public static C0889ac m44079t(View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return C0889ac.m44229a(C0934d.m44064a(view));
        }
        return null;
    }

    /* renamed from: u */
    public static boolean m44078u(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    /* renamed from: v */
    public static boolean m44077v(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    /* renamed from: w */
    public static ColorStateList m44076w(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (!(view instanceof AbstractC0925u)) {
            return null;
        }
        return ((AbstractC0925u) view).getSupportBackgroundTintList();
    }

    /* renamed from: x */
    public static PorterDuff.Mode m44075x(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        if (!(view instanceof AbstractC0925u)) {
            return null;
        }
        return ((AbstractC0925u) view).getSupportBackgroundTintMode();
    }

    /* renamed from: y */
    public static boolean m44074y(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (!(view instanceof AbstractC0914j)) {
            return false;
        }
        return ((AbstractC0914j) view).isNestedScrollingEnabled();
    }

    /* renamed from: z */
    public static void m44073z(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (!(view instanceof AbstractC0914j)) {
        } else {
            ((AbstractC0914j) view).stopNestedScroll();
        }
    }
}
