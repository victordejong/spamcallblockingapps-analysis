package p012b.p042i.p054p;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p012b.p042i.C0834d;
import p012b.p042i.p054p.C0949a;
/* renamed from: b.i.p.u */
/* loaded from: classes-dex2jar.jar:b/i/p/u.class */
public class C1002u {

    /* renamed from: a */
    public static Field f4253a;

    /* renamed from: b */
    public static boolean f4254b;

    /* renamed from: c */
    public static Field f4255c;

    /* renamed from: d */
    public static boolean f4256d;

    /* renamed from: e */
    public static WeakHashMap<View, String> f4257e;

    /* renamed from: g */
    public static Field f4259g;

    /* renamed from: i */
    public static ThreadLocal<Rect> f4261i;

    /* renamed from: f */
    public static WeakHashMap<View, C1017y> f4258f = null;

    /* renamed from: h */
    public static boolean f4260h = false;

    /* renamed from: b.i.p.u$a */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$a.class */
    public class View$OnApplyWindowInsetsListenerC1003a implements View.OnApplyWindowInsetsListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0999r f4262a;

        public View$OnApplyWindowInsetsListenerC1003a(AbstractC0999r rVar) {
            this.f4262a = rVar;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            return this.f4262a.mo35259a(view, C0957c0.m35416a(windowInsets)).m35405j();
        }
    }

    /* renamed from: b.i.p.u$b */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$b.class */
    public class C1004b extends AbstractC1008f<Boolean> {
        public C1004b(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p012b.p042i.p054p.C1002u.AbstractC1008f
        /* renamed from: a */
        public Boolean mo35192a(View view) {
            return Boolean.valueOf(view.isScreenReaderFocusable());
        }
    }

    /* renamed from: b.i.p.u$c */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$c.class */
    public class C1005c extends AbstractC1008f<CharSequence> {
        public C1005c(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p012b.p042i.p054p.C1002u.AbstractC1008f
        /* renamed from: a */
        public CharSequence mo35192a(View view) {
            return view.getAccessibilityPaneTitle();
        }
    }

    /* renamed from: b.i.p.u$d */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$d.class */
    public class C1006d extends AbstractC1008f<Boolean> {
        public C1006d(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p012b.p042i.p054p.C1002u.AbstractC1008f
        /* renamed from: a */
        public Boolean mo35192a(View view) {
            return Boolean.valueOf(view.isAccessibilityHeading());
        }
    }

    /* renamed from: b.i.p.u$e */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$e.class */
    public static class ViewTreeObserver$OnGlobalLayoutListenerC1007e implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: a */
        public WeakHashMap<View, Boolean> f4263a = new WeakHashMap<>();

        /* renamed from: a */
        public final void m35195a(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        /* renamed from: a */
        public final void m35194a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                if (z2) {
                    C1002u.m35224c(view, 16);
                }
                this.f4263a.put(view, Boolean.valueOf(z2));
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.f4263a.entrySet()) {
                m35194a(entry.getKey(), entry.getValue().booleanValue());
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            m35195a(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: b.i.p.u$f */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$f.class */
    public static abstract class AbstractC1008f<T> {

        /* renamed from: a */
        public final int f4264a;

        /* renamed from: b */
        public final Class<T> f4265b;

        /* renamed from: c */
        public final int f4266c;

        public AbstractC1008f(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        public AbstractC1008f(int i, Class<T> cls, int i2, int i3) {
            this.f4264a = i;
            this.f4265b = cls;
            this.f4266c = i3;
        }

        /* renamed from: a */
        public abstract T mo35192a(View view);

        /* renamed from: a */
        public final boolean m35193a() {
            return Build.VERSION.SDK_INT >= 19;
        }

        /* renamed from: b */
        public T m35190b(View view) {
            if (m35191b()) {
                return mo35192a(view);
            }
            if (!m35193a()) {
                return null;
            }
            T t = (T) view.getTag(this.f4264a);
            if (this.f4265b.isInstance(t)) {
                return t;
            }
            return null;
        }

        /* renamed from: b */
        public final boolean m35191b() {
            return Build.VERSION.SDK_INT >= this.f4266c;
        }
    }

    /* renamed from: b.i.p.u$g */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$g.class */
    public static class C1009g {
        /* renamed from: a */
        public static C0957c0 m35189a(View view, C0957c0 c0Var, Rect rect) {
            WindowInsets j = c0Var.m35405j();
            if (j != null) {
                return C0957c0.m35416a(view.computeSystemWindowInsets(j, rect));
            }
            rect.setEmpty();
            return c0Var;
        }
    }

    /* renamed from: b.i.p.u$h */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$h.class */
    public static class C1010h {
        /* renamed from: a */
        public static WindowInsets m35188a(View view) {
            return view.getRootWindowInsets();
        }
    }

    /* renamed from: b.i.p.u$i */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$i.class */
    public static class C1011i {
        /* renamed from: a */
        public static void m35187a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* renamed from: b.i.p.u$j */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$j.class */
    public interface AbstractC1012j {
        /* renamed from: a */
        boolean m35186a(View view, KeyEvent keyEvent);
    }

    /* renamed from: b.i.p.u$k */
    /* loaded from: classes-dex2jar.jar:b/i/p/u$k.class */
    public static class C1013k {

        /* renamed from: d */
        public static final ArrayList<WeakReference<View>> f4267d = new ArrayList<>();

        /* renamed from: a */
        public WeakHashMap<View, Boolean> f4268a = null;

        /* renamed from: b */
        public SparseArray<WeakReference<View>> f4269b = null;

        /* renamed from: c */
        public WeakReference<KeyEvent> f4270c = null;

        /* renamed from: a */
        public static C1013k m35183a(View view) {
            C1013k kVar = (C1013k) view.getTag(C0834d.tag_unhandled_key_event_manager);
            C1013k kVar2 = kVar;
            if (kVar == null) {
                kVar2 = new C1013k();
                view.setTag(C0834d.tag_unhandled_key_event_manager, kVar2);
            }
            return kVar2;
        }

        /* renamed from: a */
        public final SparseArray<WeakReference<View>> m35185a() {
            if (this.f4269b == null) {
                this.f4269b = new SparseArray<>();
            }
            return this.f4269b;
        }

        /* renamed from: a */
        public boolean m35184a(KeyEvent keyEvent) {
            WeakReference<KeyEvent> weakReference = this.f4270c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f4270c = new WeakReference<>(keyEvent);
            SparseArray<WeakReference<View>> a = m35185a();
            WeakReference<View> weakReference2 = null;
            if (keyEvent.getAction() == 1) {
                int indexOfKey = a.indexOfKey(keyEvent.getKeyCode());
                weakReference2 = null;
                if (indexOfKey >= 0) {
                    weakReference2 = a.valueAt(indexOfKey);
                    a.removeAt(indexOfKey);
                }
            }
            WeakReference<View> weakReference3 = weakReference2;
            if (weakReference2 == null) {
                weakReference3 = a.get(keyEvent.getKeyCode());
            }
            if (weakReference3 == null) {
                return false;
            }
            View view = weakReference3.get();
            if (view == null || !C1002u.m35197y(view)) {
                return true;
            }
            m35179c(view, keyEvent);
            return true;
        }

        /* renamed from: a */
        public boolean m35182a(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                m35181b();
            }
            View b = m35180b(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (b != null && !KeyEvent.isModifierKey(keyCode)) {
                    m35185a().put(keyCode, new WeakReference<>(b));
                }
            }
            return b != null;
        }

        /* renamed from: b */
        public final View m35180b(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f4268a;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View b = m35180b(viewGroup.getChildAt(childCount), keyEvent);
                    if (b != null) {
                        return b;
                    }
                }
            }
            if (m35179c(view, keyEvent)) {
                return view;
            }
            return null;
        }

        /* renamed from: b */
        public final void m35181b() {
            WeakHashMap<View, Boolean> weakHashMap = this.f4268a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (!f4267d.isEmpty()) {
                synchronized (f4267d) {
                    try {
                        if (this.f4268a == null) {
                            this.f4268a = new WeakHashMap<>();
                        }
                        for (int size = f4267d.size() - 1; size >= 0; size--) {
                            View view = f4267d.get(size).get();
                            if (view == null) {
                                f4267d.remove(size);
                            } else {
                                this.f4268a.put(view, Boolean.TRUE);
                                for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    this.f4268a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        /* renamed from: c */
        public final boolean m35179c(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(C0834d.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((AbstractC1012j) arrayList.get(size)).m35186a(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        new AtomicInteger(1);
        new ViewTreeObserver$OnGlobalLayoutListenerC1007e();
    }

    /* renamed from: A */
    public static boolean m35256A(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof AbstractC0993l) {
            return ((AbstractC0993l) view).isNestedScrollingEnabled();
        }
        return false;
    }

    /* renamed from: B */
    public static boolean m35255B(View view) {
        Boolean b = m35223d().m35190b(view);
        return b == null ? false : b.booleanValue();
    }

    /* renamed from: C */
    public static void m35254C(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    /* renamed from: D */
    public static void m35253D(View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            view.requestApplyInsets();
        } else if (i >= 16) {
            view.requestFitSystemWindows();
        }
    }

    /* renamed from: E */
    public static void m35252E(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof AbstractC0993l) {
            ((AbstractC0993l) view).stopNestedScroll();
        }
    }

    /* renamed from: F */
    public static void m35251F(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    /* renamed from: a */
    public static C0957c0 m35237a(View view, C0957c0 c0Var) {
        WindowInsets j;
        return (Build.VERSION.SDK_INT < 21 || (j = c0Var.m35405j()) == null || view.dispatchApplyWindowInsets(j).equals(j)) ? c0Var : C0957c0.m35416a(j);
    }

    /* renamed from: a */
    public static C0957c0 m35236a(View view, C0957c0 c0Var, Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? C1009g.m35189a(view, c0Var, rect) : c0Var;
    }

    /* renamed from: a */
    public static AbstractC1008f<Boolean> m35250a() {
        return new C1006d(C0834d.tag_accessibility_heading, Boolean.class, 28);
    }

    /* renamed from: a */
    public static C1017y m35249a(View view) {
        if (f4258f == null) {
            f4258f = new WeakHashMap<>();
        }
        C1017y yVar = f4258f.get(view);
        C1017y yVar2 = yVar;
        if (yVar == null) {
            yVar2 = new C1017y(view);
            f4258f.put(view, yVar2);
        }
        return yVar2;
    }

    /* renamed from: a */
    public static void m35248a(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f);
        }
    }

    /* renamed from: a */
    public static void m35247a(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m35251F(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                m35251F((View) parent);
            }
        }
    }

    /* renamed from: a */
    public static void m35246a(View view, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i, i2);
        }
    }

    /* renamed from: a */
    public static void m35245a(View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation(i, i2, i3, i4);
        } else {
            view.postInvalidate(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m35244a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            C1011i.m35187a(view, context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* renamed from: a */
    public static void m35243a(View view, ColorStateList colorStateList) {
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
        } else if (view instanceof AbstractC1001t) {
            ((AbstractC1001t) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m35242a(View view, Paint paint) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setLayerPaint(paint);
            return;
        }
        view.setLayerType(view.getLayerType(), paint);
        view.invalidate();
    }

    /* renamed from: a */
    public static void m35241a(View view, PorterDuff.Mode mode) {
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
        } else if (view instanceof AbstractC1001t) {
            ((AbstractC1001t) view).setSupportBackgroundTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m35240a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: a */
    public static void m35238a(View view, C0949a aVar) {
        C0949a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = aVar;
            if (m35225c(view) instanceof C0949a.C0950a) {
                aVar2 = new C0949a();
            }
        }
        view.setAccessibilityDelegate(aVar2 == null ? null : aVar2.m35436a());
    }

    /* renamed from: a */
    public static void m35235a(View view, AbstractC0999r rVar) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (rVar == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC1003a(rVar));
        }
    }

    /* renamed from: a */
    public static void m35234a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    /* renamed from: a */
    public static void m35233a(View view, Runnable runnable, long j) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j);
        }
    }

    /* renamed from: a */
    public static void m35232a(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f4257e == null) {
            f4257e = new WeakHashMap<>();
        }
        f4257e.put(view, str);
    }

    /* renamed from: a */
    public static boolean m35239a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C1013k.m35183a(view).m35182a(view, keyEvent);
    }

    /* renamed from: b */
    public static Rect m35231b() {
        if (f4261i == null) {
            f4261i = new ThreadLocal<>();
        }
        Rect rect = f4261i.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            f4261i.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    /* renamed from: b */
    public static C0949a m35230b(View view) {
        View.AccessibilityDelegate c = m35225c(view);
        if (c == null) {
            return null;
        }
        return c instanceof C0949a.C0950a ? ((C0949a.C0950a) c).f4199a : new C0949a(c);
    }

    /* renamed from: b */
    public static C0957c0 m35227b(View view, C0957c0 c0Var) {
        WindowInsets j;
        if (Build.VERSION.SDK_INT >= 21 && (j = c0Var.m35405j()) != null) {
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(j);
            if (!onApplyWindowInsets.equals(j)) {
                return C0957c0.m35416a(onApplyWindowInsets);
            }
        }
        return c0Var;
    }

    /* renamed from: b */
    public static void m35229b(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m35251F(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                m35251F((View) parent);
            }
        }
    }

    /* renamed from: b */
    public static boolean m35228b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C1013k.m35183a(view).m35184a(keyEvent);
    }

    /* renamed from: c */
    public static View.AccessibilityDelegate m35225c(View view) {
        return Build.VERSION.SDK_INT >= 29 ? view.getAccessibilityDelegate() : m35222d(view);
    }

    /* renamed from: c */
    public static AbstractC1008f<CharSequence> m35226c() {
        return new C1005c(C0834d.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    /* renamed from: c */
    public static void m35224c(View view, int i) {
        if (((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            boolean z = m35218f(view) != null;
            if (m35220e(view) != 0 || (z && view.getVisibility() == 0)) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : RecyclerView.AbstractC0495b0.FLAG_MOVED);
                obtain.setContentChangeTypes(i);
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                } catch (AbstractMethodError e) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e);
                }
            }
        }
    }

    /* renamed from: d */
    public static View.AccessibilityDelegate m35222d(View view) {
        if (f4260h) {
            return null;
        }
        if (f4259g == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f4259g = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable th) {
                f4260h = true;
                return null;
            }
        }
        try {
            Object obj = f4259g.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable th2) {
            f4260h = true;
            return null;
        }
    }

    /* renamed from: d */
    public static AbstractC1008f<Boolean> m35223d() {
        return new C1004b(C0834d.tag_screen_reader_focusable, Boolean.class, 28);
    }

    /* renamed from: d */
    public static void m35221d(View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetLeftAndRight(i);
        } else if (i2 >= 21) {
            Rect b = m35231b();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                b.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !b.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m35247a(view, i);
            if (z && b.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(b);
            }
        } else {
            m35247a(view, i);
        }
    }

    /* renamed from: e */
    public static int m35220e(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    /* renamed from: e */
    public static void m35219e(View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetTopAndBottom(i);
        } else if (i2 >= 21) {
            Rect b = m35231b();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                b.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !b.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m35229b(view, i);
            if (z && b.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(b);
            }
        } else {
            m35229b(view, i);
        }
    }

    /* renamed from: f */
    public static CharSequence m35218f(View view) {
        return m35226c().m35190b(view);
    }

    /* renamed from: f */
    public static void m35217f(View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            view.setImportantForAccessibility(i);
        } else if (i2 >= 16) {
            int i3 = i;
            if (i == 4) {
                i3 = 2;
            }
            view.setImportantForAccessibility(i3);
        }
    }

    /* renamed from: g */
    public static ColorStateList m35216g(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        return view instanceof AbstractC1001t ? ((AbstractC1001t) view).getSupportBackgroundTintList() : null;
    }

    /* renamed from: g */
    public static void m35215g(View view, int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i);
        }
    }

    /* renamed from: h */
    public static PorterDuff.Mode m35214h(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        return view instanceof AbstractC1001t ? ((AbstractC1001t) view).getSupportBackgroundTintMode() : null;
    }

    /* renamed from: i */
    public static Display m35213i(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (m35197y(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    /* renamed from: j */
    public static float m35212j(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getElevation();
        }
        return 0.0f;
    }

    /* renamed from: k */
    public static boolean m35211k(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    /* renamed from: l */
    public static int m35210l(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    /* renamed from: m */
    public static int m35209m(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    /* renamed from: n */
    public static int m35208n(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    /* renamed from: o */
    public static int m35207o(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f4256d) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f4255c = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f4256d = true;
        }
        Field field = f4255c;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: p */
    public static int m35206p(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f4254b) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f4253a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f4254b = true;
        }
        Field field = f4253a;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: q */
    public static ViewParent m35205q(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getParentForAccessibility() : view.getParent();
    }

    /* renamed from: r */
    public static C0957c0 m35204r(View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return C0957c0.m35416a(C1010h.m35188a(view));
        }
        return null;
    }

    /* renamed from: s */
    public static String m35203s(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f4257e;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    /* renamed from: t */
    public static int m35202t(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    /* renamed from: u */
    public static float m35201u(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    /* renamed from: v */
    public static boolean m35200v(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    /* renamed from: w */
    public static boolean m35199w(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    /* renamed from: x */
    public static boolean m35198x(View view) {
        Boolean b = m35250a().m35190b(view);
        return b == null ? false : b.booleanValue();
    }

    /* renamed from: y */
    public static boolean m35197y(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isAttachedToWindow();
        }
        return view.getWindowToken() != null;
    }

    /* renamed from: z */
    public static boolean m35196z(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isLaidOut();
        }
        return view.getWidth() > 0 && view.getHeight() > 0;
    }
}
