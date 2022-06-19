package p020b.p041h.p047i;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.window.SplashScreenView;
import kotlin.p338c.p339a.C9549a;
import kotlin.p338c.p339a.C9550b;
@SuppressLint({"CustomSplashScreen"})
/* renamed from: b.h.i.d */
/* loaded from: classes-dex2jar.jar:b/h/i/d.class */
public final class C1568d {

    /* renamed from: a */
    public static final C1569a f6129a = new C1569a(null);

    /* renamed from: b */
    private final C1572c f6130b;

    /* renamed from: b.h.i.d$a */
    /* loaded from: classes-dex2jar.jar:b/h/i/d$a.class */
    public static final class C1569a {
        private C1569a() {
        }

        public /* synthetic */ C1569a(C9549a c9549a) {
            this();
        }

        /* renamed from: a */
        public final C1568d m29721a(Activity activity) {
            C9550b.m375b(activity, "<this>");
            C1568d c1568d = new C1568d(activity, null);
            c1568d.m29723b();
            return c1568d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.i.d$b */
    /* loaded from: classes-dex2jar.jar:b/h/i/d$b.class */
    public static final class C1570b extends C1572c {

        /* renamed from: h */
        private boolean f6131h = true;

        /* renamed from: i */
        private final ViewGroup.OnHierarchyChangeListener f6132i;

        /* renamed from: b.h.i.d$b$a */
        /* loaded from: classes-dex2jar.jar:b/h/i/d$b$a.class */
        public static final class ViewGroup$OnHierarchyChangeListenerC1571a implements ViewGroup.OnHierarchyChangeListener {

            /* renamed from: e */
            final /* synthetic */ Activity f6134e;

            ViewGroup$OnHierarchyChangeListenerC1571a(Activity activity) {
                C1570b.this = r4;
                this.f6134e = activity;
            }

            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewAdded(View view, View view2) {
                if (view2 instanceof SplashScreenView) {
                    C1570b c1570b = C1570b.this;
                    c1570b.m29719e(c1570b.m29720d((SplashScreenView) view2));
                    ((ViewGroup) this.f6134e.getWindow().getDecorView()).setOnHierarchyChangeListener(null);
                }
            }

            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewRemoved(View view, View view2) {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1570b(Activity activity) {
            super(activity);
            C9550b.m375b(activity, "activity");
            this.f6132i = new ViewGroup$OnHierarchyChangeListenerC1571a(activity);
        }

        @Override // p020b.p041h.p047i.C1568d.C1572c
        /* renamed from: b */
        public void mo29717b() {
            Resources.Theme theme = m29718a().getTheme();
            C9550b.m376a(theme, "activity.theme");
            m29716c(theme, new TypedValue());
            ((ViewGroup) m29718a().getWindow().getDecorView()).setOnHierarchyChangeListener(this.f6132i);
        }

        /* renamed from: d */
        public final boolean m29720d(SplashScreenView splashScreenView) {
            C9550b.m375b(splashScreenView, "child");
            WindowInsets build = new WindowInsets.Builder().build();
            C9550b.m376a(build, "Builder().build()");
            Rect rect = new Rect(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
            return build != splashScreenView.getRootView().computeSystemWindowInsets(build, rect) || !rect.isEmpty();
        }

        /* renamed from: e */
        public final void m29719e(boolean z) {
            this.f6131h = z;
        }
    }

    /* renamed from: b.h.i.d$c */
    /* loaded from: classes-dex2jar.jar:b/h/i/d$c.class */
    public static class C1572c {

        /* renamed from: a */
        private final Activity f6135a;

        /* renamed from: b */
        private int f6136b;

        /* renamed from: c */
        private Integer f6137c;

        /* renamed from: d */
        private Integer f6138d;

        /* renamed from: e */
        private Drawable f6139e;

        /* renamed from: f */
        private boolean f6140f;

        /* renamed from: g */
        private AbstractC1573d f6141g = C1565a.f6128a;

        public C1572c(Activity activity) {
            C9550b.m375b(activity, "activity");
            this.f6135a = activity;
        }

        /* renamed from: a */
        public final Activity m29718a() {
            return this.f6135a;
        }

        /* renamed from: b */
        public void mo29717b() {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = this.f6135a.getTheme();
            boolean z = true;
            if (theme.resolveAttribute(C1566b.windowSplashScreenBackground, typedValue, true)) {
                this.f6137c = Integer.valueOf(typedValue.resourceId);
                this.f6138d = Integer.valueOf(typedValue.data);
            }
            if (theme.resolveAttribute(C1566b.windowSplashScreenAnimatedIcon, typedValue, true)) {
                this.f6139e = theme.getDrawable(typedValue.resourceId);
            }
            if (theme.resolveAttribute(C1566b.splashScreenIconSize, typedValue, true)) {
                if (typedValue.resourceId != C1567c.splashscreen_icon_size_with_background) {
                    z = false;
                }
                this.f6140f = z;
            }
            C9550b.m376a(theme, "currentTheme");
            m29716c(theme, typedValue);
        }

        /* renamed from: c */
        protected final void m29716c(Resources.Theme theme, TypedValue typedValue) {
            C9550b.m375b(theme, "currentTheme");
            C9550b.m375b(typedValue, "typedValue");
            if (theme.resolveAttribute(C1566b.postSplashScreenTheme, typedValue, true)) {
                int i = typedValue.resourceId;
                this.f6136b = i;
                if (i == 0) {
                    return;
                }
                this.f6135a.setTheme(i);
            }
        }
    }

    /* renamed from: b.h.i.d$d */
    /* loaded from: classes-dex2jar.jar:b/h/i/d$d.class */
    public interface AbstractC1573d {
    }

    private C1568d(Activity activity) {
        this.f6130b = Build.VERSION.SDK_INT >= 31 ? new C1570b(activity) : new C1572c(activity);
    }

    public /* synthetic */ C1568d(Activity activity, C9549a c9549a) {
        this(activity);
    }

    /* renamed from: b */
    public final void m29723b() {
        this.f6130b.mo29717b();
    }

    /* renamed from: c */
    public static final C1568d m29722c(Activity activity) {
        return f6129a.m29721a(activity);
    }
}
