package p086f;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.p012v4.media.C0082b;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.widget.AbstractC0230g0;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.C0202c;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p086f.AbstractC2635a;
import p117h8.C3035k;
import p134j4.C3260w0;
import p140k.AbstractC3295a;
import p140k.C3302f;
import p140k.C3305g;
import p163m0.AbstractC3548a0;
import p163m0.AbstractC3614z;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: f.y */
/* loaded from: classes-dex2jar.jar:f/y.class */
public class C2689y extends AbstractC2635a implements ActionBarOverlayLayout.AbstractC0156d {

    /* renamed from: a */
    public Context f9238a;

    /* renamed from: b */
    public Context f9239b;

    /* renamed from: c */
    public ActionBarOverlayLayout f9240c;

    /* renamed from: d */
    public ActionBarContainer f9241d;

    /* renamed from: e */
    public AbstractC0230g0 f9242e;

    /* renamed from: f */
    public ActionBarContextView f9243f;

    /* renamed from: g */
    public View f9244g;

    /* renamed from: h */
    public boolean f9245h;

    /* renamed from: i */
    public C2693d f9246i;

    /* renamed from: j */
    public AbstractC3295a f9247j;

    /* renamed from: k */
    public AbstractC3295a.AbstractC3296a f9248k;

    /* renamed from: l */
    public boolean f9249l;

    /* renamed from: n */
    public boolean f9251n;

    /* renamed from: q */
    public boolean f9254q;

    /* renamed from: r */
    public boolean f9255r;

    /* renamed from: t */
    public C3305g f9257t;

    /* renamed from: u */
    public boolean f9258u;

    /* renamed from: v */
    public boolean f9259v;

    /* renamed from: z */
    public static final Interpolator f9237z = new AccelerateInterpolator();

    /* renamed from: A */
    public static final Interpolator f9236A = new DecelerateInterpolator();

    /* renamed from: m */
    public ArrayList<AbstractC2635a.AbstractC2637b> f9250m = new ArrayList<>();

    /* renamed from: o */
    public int f9252o = 0;

    /* renamed from: p */
    public boolean f9253p = true;

    /* renamed from: s */
    public boolean f9256s = true;

    /* renamed from: w */
    public final AbstractC3614z f9260w = new C2690a();

    /* renamed from: x */
    public final AbstractC3614z f9261x = new C2691b();

    /* renamed from: y */
    public final AbstractC3548a0 f9262y = new C2692c();

    /* renamed from: f.y$a */
    /* loaded from: classes-dex2jar.jar:f/y$a.class */
    public class C2690a extends C3260w0 {
        public C2690a() {
            C2689y.this = r4;
        }

        @Override // p163m0.AbstractC3614z
        /* renamed from: c */
        public void mo1976c(View view) {
            View view2;
            C2689y c2689y = C2689y.this;
            if (c2689y.f9253p && (view2 = c2689y.f9244g) != null) {
                view2.setTranslationY(0.0f);
                C2689y.this.f9241d.setTranslationY(0.0f);
            }
            C2689y.this.f9241d.setVisibility(8);
            C2689y.this.f9241d.setTransitioning(false);
            C2689y c2689y2 = C2689y.this;
            c2689y2.f9257t = null;
            AbstractC3295a.AbstractC3296a abstractC3296a = c2689y2.f9248k;
            if (abstractC3296a != null) {
                abstractC3296a.mo2405d(c2689y2.f9247j);
                c2689y2.f9247j = null;
                c2689y2.f9248k = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = C2689y.this.f9240c;
            if (actionBarOverlayLayout != null) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3589v.C3597h.m2051c(actionBarOverlayLayout);
            }
        }
    }

    /* renamed from: f.y$b */
    /* loaded from: classes-dex2jar.jar:f/y$b.class */
    public class C2691b extends C3260w0 {
        public C2691b() {
            C2689y.this = r4;
        }

        @Override // p163m0.AbstractC3614z
        /* renamed from: c */
        public void mo1976c(View view) {
            C2689y c2689y = C2689y.this;
            c2689y.f9257t = null;
            c2689y.f9241d.requestLayout();
        }
    }

    /* renamed from: f.y$c */
    /* loaded from: classes-dex2jar.jar:f/y$c.class */
    public class C2692c implements AbstractC3548a0 {
        public C2692c() {
            C2689y.this = r4;
        }
    }

    /* renamed from: f.y$d */
    /* loaded from: classes-dex2jar.jar:f/y$d.class */
    public class C2693d extends AbstractC3295a implements C0136e.AbstractC0137a {

        /* renamed from: c */
        public final Context f9266c;

        /* renamed from: d */
        public final C0136e f9267d;

        /* renamed from: e */
        public AbstractC3295a.AbstractC3296a f9268e;

        /* renamed from: f */
        public WeakReference<View> f9269f;

        public C2693d(Context context, AbstractC3295a.AbstractC3296a abstractC3296a) {
            C2689y.this = r5;
            this.f9266c = context;
            this.f9268e = abstractC3296a;
            C0136e c0136e = new C0136e(context);
            c0136e.f438l = 1;
            this.f9267d = c0136e;
            c0136e.f431e = this;
        }

        @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
        /* renamed from: a */
        public boolean mo2424a(C0136e c0136e, MenuItem menuItem) {
            AbstractC3295a.AbstractC3296a abstractC3296a = this.f9268e;
            if (abstractC3296a != null) {
                return abstractC3296a.mo2408a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
        /* renamed from: b */
        public void mo2423b(C0136e c0136e) {
            if (this.f9268e == null) {
                return;
            }
            mo2416i();
            C0202c c0202c = C2689y.this.f9243f.f810d;
            if (c0202c == null) {
                return;
            }
            c0202c.m8569p();
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: c */
        public void mo2422c() {
            C2689y c2689y = C2689y.this;
            if (c2689y.f9246i != this) {
                return;
            }
            if (!(!c2689y.f9254q)) {
                c2689y.f9247j = this;
                c2689y.f9248k = this.f9268e;
            } else {
                this.f9268e.mo2405d(this);
            }
            this.f9268e = null;
            C2689y.this.m3262t(false);
            ActionBarContextView actionBarContextView = C2689y.this.f9243f;
            if (actionBarContextView.f534k == null) {
                actionBarContextView.m8668h();
            }
            C2689y c2689y2 = C2689y.this;
            c2689y2.f9240c.setHideOnContentScrollEnabled(c2689y2.f9259v);
            C2689y.this.f9246i = null;
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: d */
        public View mo2421d() {
            WeakReference<View> weakReference = this.f9269f;
            return weakReference != null ? weakReference.get() : null;
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: e */
        public Menu mo2420e() {
            return this.f9267d;
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: f */
        public MenuInflater mo2419f() {
            return new C3302f(this.f9266c);
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: g */
        public CharSequence mo2418g() {
            return C2689y.this.f9243f.getSubtitle();
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: h */
        public CharSequence mo2417h() {
            return C2689y.this.f9243f.getTitle();
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: i */
        public void mo2416i() {
            if (C2689y.this.f9246i != this) {
                return;
            }
            this.f9267d.m8699y();
            try {
                this.f9268e.mo2406c(this, this.f9267d);
            } finally {
                this.f9267d.m8700x();
            }
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: j */
        public boolean mo2415j() {
            return C2689y.this.f9243f.f542s;
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: k */
        public void mo2414k(View view) {
            C2689y.this.f9243f.setCustomView(view);
            this.f9269f = new WeakReference<>(view);
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: l */
        public void mo2413l(int i) {
            C2689y.this.f9243f.setSubtitle(C2689y.this.f9238a.getResources().getString(i));
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: m */
        public void mo2412m(CharSequence charSequence) {
            C2689y.this.f9243f.setSubtitle(charSequence);
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: n */
        public void mo2411n(int i) {
            C2689y.this.f9243f.setTitle(C2689y.this.f9238a.getResources().getString(i));
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: o */
        public void mo2410o(CharSequence charSequence) {
            C2689y.this.f9243f.setTitle(charSequence);
        }

        @Override // p140k.AbstractC3295a
        /* renamed from: p */
        public void mo2409p(boolean z) {
            this.f11148b = z;
            C2689y.this.f9243f.setTitleOptional(z);
        }
    }

    public C2689y(Activity activity, boolean z) {
        new ArrayList();
        View decorView = activity.getWindow().getDecorView();
        m3261u(decorView);
        if (!z) {
            this.f9244g = decorView.findViewById(16908290);
        }
    }

    public C2689y(Dialog dialog) {
        new ArrayList();
        m3261u(dialog.getWindow().getDecorView());
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: b */
    public boolean mo3276b() {
        AbstractC0230g0 abstractC0230g0 = this.f9242e;
        if (abstractC0230g0 == null || !abstractC0230g0.mo8512n()) {
            return false;
        }
        this.f9242e.collapseActionView();
        return true;
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: c */
    public void mo3275c(boolean z) {
        if (z == this.f9249l) {
            return;
        }
        this.f9249l = z;
        int size = this.f9250m.size();
        for (int i = 0; i < size; i++) {
            this.f9250m.get(i).m3377a(z);
        }
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: d */
    public int mo3274d() {
        return this.f9242e.mo8510p();
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: e */
    public Context mo3273e() {
        if (this.f9239b == null) {
            TypedValue typedValue = new TypedValue();
            this.f9238a.getTheme().resolveAttribute(C3681R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f9239b = new ContextThemeWrapper(this.f9238a, i);
            } else {
                this.f9239b = this.f9238a;
            }
        }
        return this.f9239b;
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: g */
    public void mo3272g(Configuration configuration) {
        m3260v(this.f9238a.getResources().getBoolean(C3681R.bool.abc_action_bar_embed_tabs));
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: i */
    public boolean mo3271i(int i, KeyEvent keyEvent) {
        C0136e c0136e;
        C2693d c2693d = this.f9246i;
        if (c2693d == null || (c0136e = c2693d.f9267d) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        c0136e.setQwertyMode(z);
        return c0136e.performShortcut(i, keyEvent, 0);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: l */
    public void mo3270l(boolean z) {
        if (!this.f9245h) {
            int i = z ? 4 : 0;
            int mo8510p = this.f9242e.mo8510p();
            this.f9245h = true;
            this.f9242e.mo8511o((i & 4) | (mo8510p & (-5)));
        }
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: m */
    public void mo3269m(int i) {
        this.f9242e.mo8507s(i);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: n */
    public void mo3268n(Drawable drawable) {
        this.f9242e.mo8502x(drawable);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: o */
    public void mo3267o(boolean z) {
        C3305g c3305g;
        this.f9258u = z;
        if (z || (c3305g = this.f9257t) == null) {
            return;
        }
        c3305g.m2397a();
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: p */
    public void mo3266p(int i) {
        this.f9242e.setTitle(this.f9238a.getString(i));
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: q */
    public void mo3265q(CharSequence charSequence) {
        this.f9242e.setTitle(charSequence);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: r */
    public void mo3264r(CharSequence charSequence) {
        this.f9242e.setWindowTitle(charSequence);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: s */
    public AbstractC3295a mo3263s(AbstractC3295a.AbstractC3296a abstractC3296a) {
        C2693d c2693d = this.f9246i;
        if (c2693d != null) {
            c2693d.mo2422c();
        }
        this.f9240c.setHideOnContentScrollEnabled(false);
        this.f9243f.m8668h();
        C2693d c2693d2 = new C2693d(this.f9243f.getContext(), abstractC3296a);
        c2693d2.f9267d.m8699y();
        try {
            if (!c2693d2.f9268e.mo2407b(c2693d2, c2693d2.f9267d)) {
                return null;
            }
            this.f9246i = c2693d2;
            c2693d2.mo2416i();
            this.f9243f.m8670f(c2693d2);
            m3262t(true);
            return c2693d2;
        } finally {
            c2693d2.f9267d.m8700x();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* renamed from: t */
    public void m3262t(boolean z) {
        C3611y c3611y;
        C3611y c3611y2;
        if (z) {
            if (!this.f9255r) {
                this.f9255r = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f9240c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                m3259w(false);
            }
        } else if (this.f9255r) {
            this.f9255r = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f9240c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            m3259w(false);
        }
        ActionBarContainer actionBarContainer = this.f9241d;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (!C3589v.C3596g.m2058c(actionBarContainer)) {
            if (z) {
                this.f9242e.mo8516j(4);
                this.f9243f.setVisibility(0);
                return;
            }
            this.f9242e.mo8516j(0);
            this.f9243f.setVisibility(8);
            return;
        }
        if (z) {
            c3611y = this.f9242e.mo8505u(4, 100L);
            c3611y2 = this.f9243f.m8588e(0, 200L);
        } else {
            c3611y2 = this.f9242e.mo8505u(0, 200L);
            c3611y = this.f9243f.m8588e(8, 100L);
        }
        C3305g c3305g = new C3305g();
        c3305g.f11206a.add(c3611y);
        View view = c3611y.f11802a.get();
        ?? duration = view != null ? view.animate().getDuration() : false;
        View view2 = c3611y2.f11802a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration == true ? 1L : 0L);
        }
        c3305g.f11206a.add(c3611y2);
        c3305g.m2396b();
    }

    /* renamed from: u */
    public final void m3261u(View view) {
        AbstractC0230g0 abstractC0230g0;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(C3681R.C3684id.decor_content_parent);
        this.f9240c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        View findViewById = view.findViewById(C3681R.C3684id.action_bar);
        if (findViewById instanceof AbstractC0230g0) {
            abstractC0230g0 = (AbstractC0230g0) findViewById;
        } else if (!(findViewById instanceof Toolbar)) {
            StringBuilder m8752j = C0082b.m8752j("Can't make a decor toolbar out of ");
            m8752j.append(findViewById != null ? findViewById.getClass().getSimpleName() : "null");
            throw new IllegalStateException(m8752j.toString());
        } else {
            abstractC0230g0 = ((Toolbar) findViewById).getWrapper();
        }
        this.f9242e = abstractC0230g0;
        this.f9243f = (ActionBarContextView) view.findViewById(C3681R.C3684id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(C3681R.C3684id.action_bar_container);
        this.f9241d = actionBarContainer;
        AbstractC0230g0 abstractC0230g02 = this.f9242e;
        if (abstractC0230g02 == null || this.f9243f == null || actionBarContainer == null) {
            throw new IllegalStateException(C2689y.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f9238a = abstractC0230g02.getContext();
        boolean z = (this.f9242e.mo8510p() & 4) != 0;
        if (z) {
            this.f9245h = true;
        }
        Context context = this.f9238a;
        this.f9242e.mo8513m((context.getApplicationInfo().targetSdkVersion < 14) || z);
        m3260v(context.getResources().getBoolean(C3681R.bool.abc_action_bar_embed_tabs));
        TypedArray obtainStyledAttributes = this.f9238a.obtainStyledAttributes(null, C3035k.f10214a, C3681R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f9240c;
            if (!actionBarOverlayLayout2.f554h) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f9259v = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            float f = dimensionPixelSize;
            ActionBarContainer actionBarContainer2 = this.f9241d;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3598i.m2032s(actionBarContainer2, f);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: v */
    public final void m3260v(boolean z) {
        this.f9251n = z;
        if (!z) {
            this.f9242e.mo8515k(null);
            this.f9241d.setTabContainer(null);
        } else {
            this.f9241d.setTabContainer(null);
            this.f9242e.mo8515k(null);
        }
        boolean z2 = this.f9242e.mo8506t() == 2;
        this.f9242e.mo8501y(!this.f9251n && z2);
        this.f9240c.setHasNonEmbeddedTabs(!this.f9251n && z2);
    }

    /* renamed from: w */
    public final void m3259w(boolean z) {
        View view;
        int[] iArr;
        View view2;
        View view3;
        int[] iArr2;
        if (!(this.f9255r || !this.f9254q)) {
            if (!this.f9256s) {
                return;
            }
            this.f9256s = false;
            C3305g c3305g = this.f9257t;
            if (c3305g != null) {
                c3305g.m2397a();
            }
            if (this.f9252o != 0 || (!this.f9258u && !z)) {
                this.f9260w.mo1976c(null);
                return;
            }
            this.f9241d.setAlpha(1.0f);
            this.f9241d.setTransitioning(true);
            C3305g c3305g2 = new C3305g();
            float f = -this.f9241d.getHeight();
            float f2 = f;
            if (z) {
                this.f9241d.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            C3611y m2122b = C3589v.m2122b(this.f9241d);
            m2122b.m1978g(f2);
            m2122b.m1979f(this.f9262y);
            if (!c3305g2.f11210e) {
                c3305g2.f11206a.add(m2122b);
            }
            if (this.f9253p && (view = this.f9244g) != null) {
                C3611y m2122b2 = C3589v.m2122b(view);
                m2122b2.m1978g(f2);
                if (!c3305g2.f11210e) {
                    c3305g2.f11206a.add(m2122b2);
                }
            }
            Interpolator interpolator = f9237z;
            boolean z2 = c3305g2.f11210e;
            if (!z2) {
                c3305g2.f11208c = interpolator;
            }
            if (!z2) {
                c3305g2.f11207b = 250L;
            }
            AbstractC3614z abstractC3614z = this.f9260w;
            if (!z2) {
                c3305g2.f11209d = abstractC3614z;
            }
            this.f9257t = c3305g2;
            c3305g2.m2396b();
        } else if (this.f9256s) {
        } else {
            this.f9256s = true;
            C3305g c3305g3 = this.f9257t;
            if (c3305g3 != null) {
                c3305g3.m2397a();
            }
            this.f9241d.setVisibility(0);
            if (this.f9252o != 0 || (!this.f9258u && !z)) {
                this.f9241d.setAlpha(1.0f);
                this.f9241d.setTranslationY(0.0f);
                if (this.f9253p && (view2 = this.f9244g) != null) {
                    view2.setTranslationY(0.0f);
                }
                this.f9261x.mo1976c(null);
            } else {
                this.f9241d.setTranslationY(0.0f);
                float f3 = -this.f9241d.getHeight();
                float f4 = f3;
                if (z) {
                    this.f9241d.getLocationInWindow(new int[]{0, 0});
                    f4 = f3 - iArr2[1];
                }
                this.f9241d.setTranslationY(f4);
                C3305g c3305g4 = new C3305g();
                C3611y m2122b3 = C3589v.m2122b(this.f9241d);
                m2122b3.m1978g(0.0f);
                m2122b3.m1979f(this.f9262y);
                if (!c3305g4.f11210e) {
                    c3305g4.f11206a.add(m2122b3);
                }
                if (this.f9253p && (view3 = this.f9244g) != null) {
                    view3.setTranslationY(f4);
                    C3611y m2122b4 = C3589v.m2122b(this.f9244g);
                    m2122b4.m1978g(0.0f);
                    if (!c3305g4.f11210e) {
                        c3305g4.f11206a.add(m2122b4);
                    }
                }
                Interpolator interpolator2 = f9236A;
                boolean z3 = c3305g4.f11210e;
                if (!z3) {
                    c3305g4.f11208c = interpolator2;
                }
                if (!z3) {
                    c3305g4.f11207b = 250L;
                }
                AbstractC3614z abstractC3614z2 = this.f9261x;
                if (!z3) {
                    c3305g4.f11209d = abstractC3614z2;
                }
                this.f9257t = c3305g4;
                c3305g4.m2396b();
            }
            ActionBarOverlayLayout actionBarOverlayLayout = this.f9240c;
            if (actionBarOverlayLayout == null) {
                return;
            }
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3597h.m2051c(actionBarOverlayLayout);
        }
    }
}
