package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
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
import androidx.appcompat.C0051a;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.view.AbstractC0155b;
import androidx.appcompat.view.C0154a;
import androidx.appcompat.view.C0162g;
import androidx.appcompat.view.C0165h;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.widget.AbstractC0355z;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.C0299al;
import androidx.appcompat.widget.Toolbar;
import androidx.core.p023g.AbstractC0528ab;
import androidx.core.p023g.AbstractC0568z;
import androidx.core.p023g.C0527aa;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0564y;
import com.google.android.flexbox.FlexItem;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.app.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/o.class */
public class C0129o extends AbstractC0078a implements ActionBarOverlayLayout.AbstractC0212a {

    /* renamed from: s */
    static final /* synthetic */ boolean f400s = !C0129o.class.desiredAssertionStatus();

    /* renamed from: t */
    private static final Interpolator f401t = new AccelerateInterpolator();

    /* renamed from: u */
    private static final Interpolator f402u = new DecelerateInterpolator();

    /* renamed from: A */
    private boolean f403A;

    /* renamed from: B */
    private boolean f404B;

    /* renamed from: D */
    private boolean f406D;

    /* renamed from: F */
    private boolean f408F;

    /* renamed from: H */
    private boolean f410H;

    /* renamed from: a */
    Context f411a;

    /* renamed from: b */
    ActionBarOverlayLayout f412b;

    /* renamed from: c */
    ActionBarContainer f413c;

    /* renamed from: d */
    AbstractC0355z f414d;

    /* renamed from: e */
    ActionBarContextView f415e;

    /* renamed from: f */
    View f416f;

    /* renamed from: g */
    C0299al f417g;

    /* renamed from: h */
    C0133a f418h;

    /* renamed from: i */
    AbstractC0155b f419i;

    /* renamed from: j */
    AbstractC0155b.AbstractC0156a f420j;

    /* renamed from: l */
    boolean f422l;

    /* renamed from: m */
    boolean f423m;

    /* renamed from: n */
    C0165h f424n;

    /* renamed from: o */
    boolean f425o;

    /* renamed from: v */
    private Context f429v;

    /* renamed from: w */
    private Activity f430w;

    /* renamed from: x */
    private Dialog f431x;

    /* renamed from: y */
    private ArrayList<Object> f432y = new ArrayList<>();

    /* renamed from: z */
    private int f433z = -1;

    /* renamed from: C */
    private ArrayList<AbstractC0078a.AbstractC0080b> f405C = new ArrayList<>();

    /* renamed from: E */
    private int f407E = 0;

    /* renamed from: k */
    boolean f421k = true;

    /* renamed from: G */
    private boolean f409G = true;

    /* renamed from: p */
    final AbstractC0568z f426p = new C0527aa() { // from class: androidx.appcompat.app.o.1
        @Override // androidx.core.p023g.C0527aa, androidx.core.p023g.AbstractC0568z
        /* renamed from: b */
        public void mo3962b(View view) {
            if (C0129o.this.f421k && C0129o.this.f416f != null) {
                C0129o.this.f416f.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
                C0129o.this.f413c.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
            }
            C0129o.this.f413c.setVisibility(8);
            C0129o.this.f413c.setTransitioning(false);
            C0129o c0129o = C0129o.this;
            c0129o.f424n = null;
            c0129o.m7747h();
            if (C0129o.this.f412b != null) {
                C0552u.m6228s(C0129o.this.f412b);
            }
        }
    };

    /* renamed from: q */
    final AbstractC0568z f427q = new C0527aa() { // from class: androidx.appcompat.app.o.2
        @Override // androidx.core.p023g.C0527aa, androidx.core.p023g.AbstractC0568z
        /* renamed from: b */
        public void mo3962b(View view) {
            C0129o c0129o = C0129o.this;
            c0129o.f424n = null;
            c0129o.f413c.requestLayout();
        }
    };

    /* renamed from: r */
    final AbstractC0528ab f428r = new AbstractC0528ab() { // from class: androidx.appcompat.app.o.3
        @Override // androidx.core.p023g.AbstractC0528ab
        /* renamed from: a */
        public void mo6368a(View view) {
            ((View) C0129o.this.f413c.getParent()).invalidate();
        }
    };

    /* renamed from: androidx.appcompat.app.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/o$a.class */
    public class C0133a extends AbstractC0155b implements C0182g.AbstractC0183a {

        /* renamed from: b */
        private final Context f438b;

        /* renamed from: c */
        private final C0182g f439c;

        /* renamed from: d */
        private AbstractC0155b.AbstractC0156a f440d;

        /* renamed from: e */
        private WeakReference<View> f441e;

        public C0133a(Context context, AbstractC0155b.AbstractC0156a abstractC0156a) {
            C0129o.this = r6;
            this.f438b = context;
            this.f440d = abstractC0156a;
            this.f439c = new C0182g(context).setDefaultShowAsAction(1);
            this.f439c.setCallback(this);
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: a */
        public MenuInflater mo7648a() {
            return new C0162g(this.f438b);
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: a */
        public void mo7647a(int i) {
            mo7641b(C0129o.this.f411a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: a */
        public void mo7646a(View view) {
            C0129o.this.f415e.setCustomView(view);
            this.f441e = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: a */
        public void mo7645a(CharSequence charSequence) {
            C0129o.this.f415e.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: a */
        public void mo7644a(boolean z) {
            super.mo7644a(z);
            C0129o.this.f415e.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: b */
        public Menu mo7643b() {
            return this.f439c;
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: b */
        public void mo7642b(int i) {
            mo7645a((CharSequence) C0129o.this.f411a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: b */
        public void mo7641b(CharSequence charSequence) {
            C0129o.this.f415e.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: c */
        public void mo7640c() {
            if (C0129o.this.f418h != this) {
                return;
            }
            if (!C0129o.m7757a(C0129o.this.f422l, C0129o.this.f423m, false)) {
                C0129o c0129o = C0129o.this;
                c0129o.f419i = this;
                c0129o.f420j = this.f440d;
            } else {
                this.f440d.mo7633a(this);
            }
            this.f440d = null;
            C0129o.this.m7743j(false);
            C0129o.this.f415e.m7505b();
            C0129o.this.f414d.mo6959a().sendAccessibilityEvent(32);
            C0129o.this.f412b.setHideOnContentScrollEnabled(C0129o.this.f425o);
            C0129o.this.f418h = null;
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: d */
        public void mo7639d() {
            if (C0129o.this.f418h != this) {
                return;
            }
            this.f439c.stopDispatchingItemsChanged();
            try {
                this.f440d.mo7629b(this, this.f439c);
            } finally {
                this.f439c.startDispatchingItemsChanged();
            }
        }

        /* renamed from: e */
        public boolean m7737e() {
            this.f439c.stopDispatchingItemsChanged();
            try {
                return this.f440d.mo7632a(this, this.f439c);
            } finally {
                this.f439c.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: f */
        public CharSequence mo7638f() {
            return C0129o.this.f415e.getTitle();
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: g */
        public CharSequence mo7637g() {
            return C0129o.this.f415e.getSubtitle();
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: h */
        public boolean mo7636h() {
            return C0129o.this.f415e.m7503d();
        }

        @Override // androidx.appcompat.view.AbstractC0155b
        /* renamed from: i */
        public View mo7635i() {
            WeakReference<View> weakReference = this.f441e;
            return weakReference != null ? weakReference.get() : null;
        }

        @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
        public boolean onMenuItemSelected(C0182g c0182g, MenuItem menuItem) {
            AbstractC0155b.AbstractC0156a abstractC0156a = this.f440d;
            if (abstractC0156a != null) {
                return abstractC0156a.mo7631a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
        public void onMenuModeChange(C0182g c0182g) {
            if (this.f440d == null) {
                return;
            }
            mo7639d();
            C0129o.this.f415e.mo7314a();
        }
    }

    public C0129o(Activity activity, boolean z) {
        this.f430w = activity;
        View decorView = activity.getWindow().getDecorView();
        m7761a(decorView);
        if (!z) {
            this.f416f = decorView.findViewById(16908290);
        }
    }

    public C0129o(Dialog dialog) {
        this.f431x = dialog;
        m7761a(dialog.getWindow().getDecorView());
    }

    /* renamed from: a */
    private void m7761a(View view) {
        this.f412b = (ActionBarOverlayLayout) view.findViewById(C0051a.C0057f.decor_content_parent);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f412b;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f414d = m7755b(view.findViewById(C0051a.C0057f.action_bar));
        this.f415e = (ActionBarContextView) view.findViewById(C0051a.C0057f.action_context_bar);
        this.f413c = (ActionBarContainer) view.findViewById(C0051a.C0057f.action_bar_container);
        AbstractC0355z abstractC0355z = this.f414d;
        if (abstractC0355z == null || this.f415e == null || this.f413c == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f411a = abstractC0355z.mo6949b();
        boolean z = (this.f414d.mo6929o() & 4) != 0;
        if (z) {
            this.f403A = true;
        }
        C0154a m7662a = C0154a.m7662a(this.f411a);
        mo7753b(m7662a.m7657f() || z);
        m7742k(m7662a.m7659d());
        TypedArray obtainStyledAttributes = this.f411a.obtainStyledAttributes(null, C0051a.C0061j.ActionBar, C0051a.C0052a.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(C0051a.C0061j.ActionBar_hideOnContentScroll, false)) {
            mo7752c(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0051a.C0061j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            mo7767a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    static boolean m7757a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return !z && !z2;
    }

    /* renamed from: b */
    private AbstractC0355z m7755b(View view) {
        if (view instanceof AbstractC0355z) {
            return (AbstractC0355z) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: k */
    private void m7742k(boolean z) {
        this.f406D = z;
        if (!this.f406D) {
            this.f414d.mo6952a((C0299al) null);
            this.f413c.setTabContainer(this.f417g);
        } else {
            this.f413c.setTabContainer(null);
            this.f414d.mo6952a(this.f417g);
        }
        boolean z2 = m7745i() == 2;
        C0299al c0299al = this.f417g;
        if (c0299al != null) {
            if (z2) {
                c0299al.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f412b;
                if (actionBarOverlayLayout != null) {
                    C0552u.m6228s(actionBarOverlayLayout);
                }
            } else {
                c0299al.setVisibility(8);
            }
        }
        this.f414d.mo6950a(!this.f406D && z2);
        this.f412b.setHasNonEmbeddedTabs(!this.f406D && z2);
    }

    /* renamed from: l */
    private void m7741l(boolean z) {
        if (m7757a(this.f422l, this.f423m, this.f408F)) {
            if (this.f409G) {
                return;
            }
            this.f409G = true;
            m7746h(z);
        } else if (!this.f409G) {
        } else {
            this.f409G = false;
            m7744i(z);
        }
    }

    /* renamed from: n */
    private void m7740n() {
        if (!this.f408F) {
            this.f408F = true;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f412b;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(true);
            }
            m7741l(false);
        }
    }

    /* renamed from: o */
    private void m7739o() {
        if (this.f408F) {
            this.f408F = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f412b;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m7741l(false);
        }
    }

    /* renamed from: p */
    private boolean m7738p() {
        return C0552u.m6295A(this.f413c);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public int mo7768a() {
        return this.f414d.mo6929o();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public AbstractC0155b mo7760a(AbstractC0155b.AbstractC0156a abstractC0156a) {
        C0133a c0133a = this.f418h;
        if (c0133a != null) {
            c0133a.mo7640c();
        }
        this.f412b.setHideOnContentScrollEnabled(false);
        this.f415e.m7504c();
        C0133a c0133a2 = new C0133a(this.f415e.getContext(), abstractC0156a);
        if (c0133a2.m7737e()) {
            this.f418h = c0133a2;
            c0133a2.mo7639d();
            this.f415e.m7506a(c0133a2);
            m7743j(true);
            this.f415e.sendAccessibilityEvent(32);
            return c0133a2;
        }
        return null;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7767a(float f) {
        C0552u.m6280a(this.f413c, f);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7766a(int i) {
        this.f414d.mo6941d(i);
    }

    /* renamed from: a */
    public void m7765a(int i, int i2) {
        int mo6929o = this.f414d.mo6929o();
        if ((i2 & 4) != 0) {
            this.f403A = true;
        }
        this.f414d.mo6943c((i & i2) | ((i2 ^ (-1)) & mo6929o));
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7763a(Configuration configuration) {
        m7742k(C0154a.m7662a(this.f411a).m7659d());
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7762a(Drawable drawable) {
        this.f414d.mo6947b(drawable);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7759a(CharSequence charSequence) {
        this.f414d.mo6946b(charSequence);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7758a(boolean z) {
        m7765a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public boolean mo7764a(int i, KeyEvent keyEvent) {
        Menu mo7643b;
        C0133a c0133a = this.f418h;
        if (c0133a == null || (mo7643b = c0133a.mo7643b()) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        mo7643b.setQwertyMode(z);
        return mo7643b.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: b */
    public Context mo7756b() {
        if (this.f429v == null) {
            TypedValue typedValue = new TypedValue();
            this.f411a.getTheme().resolveAttribute(C0051a.C0052a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f429v = new ContextThemeWrapper(this.f411a, i);
            } else {
                this.f429v = this.f411a;
            }
        }
        return this.f429v;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0212a
    /* renamed from: b */
    public void mo7488b(int i) {
        this.f407E = i;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: b */
    public void mo7754b(CharSequence charSequence) {
        this.f414d.mo6951a(charSequence);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: b */
    public void mo7753b(boolean z) {
        this.f414d.mo6945b(z);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: c */
    public void mo7752c(boolean z) {
        if (!z || this.f412b.m7501a()) {
            this.f425o = z;
            this.f412b.setHideOnContentScrollEnabled(z);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: d */
    public void mo7751d(boolean z) {
        if (!this.f403A) {
            mo7758a(z);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: e */
    public void mo7750e(boolean z) {
        C0165h c0165h;
        this.f410H = z;
        if (z || (c0165h = this.f424n) == null) {
            return;
        }
        c0165h.m7609c();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: f */
    public void mo7748f(boolean z) {
        if (z == this.f404B) {
            return;
        }
        this.f404B = z;
        int size = this.f405C.size();
        for (int i = 0; i < size; i++) {
            this.f405C.get(i).m7948a(z);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: f */
    public boolean mo7749f() {
        AbstractC0355z abstractC0355z = this.f414d;
        if (abstractC0355z == null || !abstractC0355z.mo6944c()) {
            return false;
        }
        this.f414d.mo6942d();
        return true;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0212a
    /* renamed from: g */
    public void mo7487g(boolean z) {
        this.f421k = z;
    }

    /* renamed from: h */
    void m7747h() {
        AbstractC0155b.AbstractC0156a abstractC0156a = this.f420j;
        if (abstractC0156a != null) {
            abstractC0156a.mo7633a(this.f419i);
            this.f419i = null;
            this.f420j = null;
        }
    }

    /* renamed from: h */
    public void m7746h(boolean z) {
        View view;
        View view2;
        int[] iArr;
        C0165h c0165h = this.f424n;
        if (c0165h != null) {
            c0165h.m7609c();
        }
        this.f413c.setVisibility(0);
        if (this.f407E != 0 || (!this.f410H && !z)) {
            this.f413c.setAlpha(1.0f);
            this.f413c.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
            if (this.f421k && (view = this.f416f) != null) {
                view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
            }
            this.f427q.mo3962b(null);
        } else {
            this.f413c.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
            float f = -this.f413c.getHeight();
            float f2 = f;
            if (z) {
                this.f413c.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            this.f413c.setTranslationY(f2);
            C0165h c0165h2 = new C0165h();
            C0564y m6178c = C0552u.m6233n(this.f413c).m6178c(FlexItem.FLEX_GROW_DEFAULT);
            m6178c.m6184a(this.f428r);
            c0165h2.m7613a(m6178c);
            if (this.f421k && (view2 = this.f416f) != null) {
                view2.setTranslationY(f2);
                c0165h2.m7613a(C0552u.m6233n(this.f416f).m6178c(FlexItem.FLEX_GROW_DEFAULT));
            }
            c0165h2.m7614a(f402u);
            c0165h2.m7615a(250L);
            c0165h2.m7611a(this.f427q);
            this.f424n = c0165h2;
            c0165h2.m7616a();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f412b;
        if (actionBarOverlayLayout != null) {
            C0552u.m6228s(actionBarOverlayLayout);
        }
    }

    /* renamed from: i */
    public int m7745i() {
        return this.f414d.mo6928p();
    }

    /* renamed from: i */
    public void m7744i(boolean z) {
        View view;
        int[] iArr;
        C0165h c0165h = this.f424n;
        if (c0165h != null) {
            c0165h.m7609c();
        }
        if (this.f407E != 0 || (!this.f410H && !z)) {
            this.f426p.mo3962b(null);
            return;
        }
        this.f413c.setAlpha(1.0f);
        this.f413c.setTransitioning(true);
        C0165h c0165h2 = new C0165h();
        float f = -this.f413c.getHeight();
        float f2 = f;
        if (z) {
            this.f413c.getLocationInWindow(new int[]{0, 0});
            f2 = f - iArr[1];
        }
        C0564y m6178c = C0552u.m6233n(this.f413c).m6178c(f2);
        m6178c.m6184a(this.f428r);
        c0165h2.m7613a(m6178c);
        if (this.f421k && (view = this.f416f) != null) {
            c0165h2.m7613a(C0552u.m6233n(view).m6178c(f2));
        }
        c0165h2.m7614a(f401t);
        c0165h2.m7615a(250L);
        c0165h2.m7611a(this.f426p);
        this.f424n = c0165h2;
        c0165h2.m7616a();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0212a
    /* renamed from: j */
    public void mo7486j() {
        if (this.f423m) {
            this.f423m = false;
            m7741l(true);
        }
    }

    /* renamed from: j */
    public void m7743j(boolean z) {
        C0564y c0564y;
        C0564y c0564y2;
        if (z) {
            m7740n();
        } else {
            m7739o();
        }
        if (!m7738p()) {
            if (z) {
                this.f414d.mo6939e(4);
                this.f415e.setVisibility(0);
                return;
            }
            this.f414d.mo6939e(0);
            this.f415e.setVisibility(8);
            return;
        }
        if (z) {
            c0564y2 = this.f414d.mo6957a(4, 100L);
            c0564y = this.f415e.mo7312a(0, 200L);
        } else {
            c0564y = this.f414d.mo6957a(0, 200L);
            c0564y2 = this.f415e.mo7312a(8, 100L);
        }
        C0165h c0165h = new C0165h();
        c0165h.m7612a(c0564y2, c0564y);
        c0165h.m7616a();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0212a
    /* renamed from: k */
    public void mo7485k() {
        if (!this.f423m) {
            this.f423m = true;
            m7741l(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0212a
    /* renamed from: l */
    public void mo7484l() {
        C0165h c0165h = this.f424n;
        if (c0165h != null) {
            c0165h.m7609c();
            this.f424n = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0212a
    /* renamed from: m */
    public void mo7483m() {
    }
}
