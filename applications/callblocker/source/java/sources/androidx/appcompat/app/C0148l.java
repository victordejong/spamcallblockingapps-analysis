package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
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
import androidx.appcompat.C0083a;
import androidx.appcompat.app.AbstractC0110a;
import androidx.appcompat.view.AbstractC0172b;
import androidx.appcompat.view.C0171a;
import androidx.appcompat.view.C0179g;
import androidx.appcompat.view.C0182h;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.widget.AbstractC0368x;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.C0305ai;
import androidx.appcompat.widget.Toolbar;
import androidx.core.p026h.AbstractC0571ab;
import androidx.core.p026h.AbstractC0611z;
import androidx.core.p026h.C0570aa;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.C0607y;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.app.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l.class */
public class C0148l extends AbstractC0110a implements ActionBarOverlayLayout.AbstractC0229a {

    /* renamed from: s */
    static final /* synthetic */ boolean f465s;

    /* renamed from: t */
    private static final Interpolator f466t;

    /* renamed from: u */
    private static final Interpolator f467u;

    /* renamed from: A */
    private boolean f468A;

    /* renamed from: B */
    private boolean f469B;

    /* renamed from: D */
    private boolean f471D;

    /* renamed from: F */
    private boolean f473F;

    /* renamed from: H */
    private boolean f475H;

    /* renamed from: a */
    Context f476a;

    /* renamed from: b */
    ActionBarOverlayLayout f477b;

    /* renamed from: c */
    ActionBarContainer f478c;

    /* renamed from: d */
    AbstractC0368x f479d;

    /* renamed from: e */
    ActionBarContextView f480e;

    /* renamed from: f */
    View f481f;

    /* renamed from: g */
    C0305ai f482g;

    /* renamed from: h */
    C0152a f483h;

    /* renamed from: i */
    AbstractC0172b f484i;

    /* renamed from: j */
    AbstractC0172b.AbstractC0173a f485j;

    /* renamed from: l */
    boolean f487l;

    /* renamed from: m */
    boolean f488m;

    /* renamed from: n */
    C0182h f489n;

    /* renamed from: o */
    boolean f490o;

    /* renamed from: v */
    private Context f494v;

    /* renamed from: w */
    private Activity f495w;

    /* renamed from: x */
    private Dialog f496x;

    /* renamed from: y */
    private ArrayList<Object> f497y = new ArrayList<>();

    /* renamed from: z */
    private int f498z = -1;

    /* renamed from: C */
    private ArrayList<AbstractC0110a.AbstractC0112b> f470C = new ArrayList<>();

    /* renamed from: E */
    private int f472E = 0;

    /* renamed from: k */
    boolean f486k = true;

    /* renamed from: G */
    private boolean f474G = true;

    /* renamed from: p */
    final AbstractC0611z f491p = new C0570aa() { // from class: androidx.appcompat.app.l.1
        @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
        /* renamed from: b */
        public void mo20244b(View view) {
            if (C0148l.this.f486k && C0148l.this.f481f != null) {
                C0148l.this.f481f.setTranslationY(0.0f);
                C0148l.this.f478c.setTranslationY(0.0f);
            }
            C0148l.this.f478c.setVisibility(8);
            C0148l.this.f478c.setTransitioning(false);
            C0148l.this.f489n = null;
            C0148l.this.m22073h();
            if (C0148l.this.f477b != null) {
                C0595u.m20307q(C0148l.this.f477b);
            }
        }
    };

    /* renamed from: q */
    final AbstractC0611z f492q = new C0570aa() { // from class: androidx.appcompat.app.l.2
        @Override // androidx.core.p026h.C0570aa, androidx.core.p026h.AbstractC0611z
        /* renamed from: b */
        public void mo20244b(View view) {
            C0148l.this.f489n = null;
            C0148l.this.f478c.requestLayout();
        }
    };

    /* renamed from: r */
    final AbstractC0571ab f493r = new AbstractC0571ab() { // from class: androidx.appcompat.app.l.3
        @Override // androidx.core.p026h.AbstractC0571ab
        /* renamed from: a */
        public void mo20443a(View view) {
            ((View) C0148l.this.f478c.getParent()).invalidate();
        }
    };

    /* renamed from: androidx.appcompat.app.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l$a.class */
    public class C0152a extends AbstractC0172b implements C0199g.AbstractC0200a {

        /* renamed from: b */
        private final Context f503b;

        /* renamed from: c */
        private final C0199g f504c;

        /* renamed from: d */
        private AbstractC0172b.AbstractC0173a f505d;

        /* renamed from: e */
        private WeakReference<View> f506e;

        public C0152a(Context context, AbstractC0172b.AbstractC0173a abstractC0173a) {
            C0148l.this = r6;
            this.f503b = context;
            this.f505d = abstractC0173a;
            this.f504c = new C0199g(context).m21897a(1);
            this.f504c.mo21788a(this);
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: a */
        public MenuInflater mo21979a() {
            return new C0179g(this.f503b);
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: a */
        public void mo21978a(int i) {
            mo21972b(C0148l.this.f476a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: a */
        public void mo21977a(View view) {
            C0148l.this.f480e.setCustomView(view);
            this.f506e = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
        /* renamed from: a */
        public void mo3619a(C0199g c0199g) {
            if (this.f505d == null) {
                return;
            }
            mo21970d();
            C0148l.this.f480e.mo21569a();
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: a */
        public void mo21976a(CharSequence charSequence) {
            C0148l.this.f480e.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: a */
        public void mo21975a(boolean z) {
            super.mo21975a(z);
            C0148l.this.f480e.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
        /* renamed from: a */
        public boolean mo3618a(C0199g c0199g, MenuItem menuItem) {
            return this.f505d != null ? this.f505d.mo21962a(this, menuItem) : false;
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: b */
        public Menu mo21974b() {
            return this.f504c;
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: b */
        public void mo21973b(int i) {
            mo21976a((CharSequence) C0148l.this.f476a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: b */
        public void mo21972b(CharSequence charSequence) {
            C0148l.this.f480e.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: c */
        public void mo21971c() {
            if (C0148l.this.f483h != this) {
                return;
            }
            if (!C0148l.m22082a(C0148l.this.f487l, C0148l.this.f488m, false)) {
                C0148l.this.f484i = this;
                C0148l.this.f485j = this.f505d;
            } else {
                this.f505d.mo21964a(this);
            }
            this.f505d = null;
            C0148l.this.m22069j(false);
            C0148l.this.f480e.m21776b();
            C0148l.this.f479d.mo21198a().sendAccessibilityEvent(32);
            C0148l.this.f477b.setHideOnContentScrollEnabled(C0148l.this.f490o);
            C0148l.this.f483h = null;
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: d */
        public void mo21970d() {
            if (C0148l.this.f483h != this) {
                return;
            }
            this.f504c.m21858h();
            try {
                this.f505d.mo21960b(this, this.f504c);
            } finally {
                this.f504c.m21857i();
            }
        }

        /* renamed from: e */
        public boolean m22063e() {
            this.f504c.m21858h();
            try {
                return this.f505d.mo21963a(this, this.f504c);
            } finally {
                this.f504c.m21857i();
            }
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: f */
        public CharSequence mo21969f() {
            return C0148l.this.f480e.getTitle();
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: g */
        public CharSequence mo21968g() {
            return C0148l.this.f480e.getSubtitle();
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: h */
        public boolean mo21967h() {
            return C0148l.this.f480e.m21774d();
        }

        @Override // androidx.appcompat.view.AbstractC0172b
        /* renamed from: i */
        public View mo21966i() {
            return this.f506e != null ? this.f506e.get() : null;
        }
    }

    static {
        f465s = !C0148l.class.desiredAssertionStatus();
        f466t = new AccelerateInterpolator();
        f467u = new DecelerateInterpolator();
    }

    public C0148l(Activity activity, boolean z) {
        this.f495w = activity;
        View decorView = activity.getWindow().getDecorView();
        m22086a(decorView);
        if (!z) {
            this.f481f = decorView.findViewById(16908290);
        }
    }

    public C0148l(Dialog dialog) {
        this.f496x = dialog;
        m22086a(dialog.getWindow().getDecorView());
    }

    /* renamed from: a */
    private void m22086a(View view) {
        this.f477b = (ActionBarOverlayLayout) view.findViewById(C0083a.C0089f.decor_content_parent);
        if (this.f477b != null) {
            this.f477b.setActionBarVisibilityCallback(this);
        }
        this.f479d = m22080b(view.findViewById(C0083a.C0089f.action_bar));
        this.f480e = (ActionBarContextView) view.findViewById(C0083a.C0089f.action_context_bar);
        this.f478c = (ActionBarContainer) view.findViewById(C0083a.C0089f.action_bar_container);
        if (this.f479d == null || this.f480e == null || this.f478c == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f476a = this.f479d.mo21188b();
        boolean z = (this.f479d.mo21171o() & 4) != 0;
        if (z) {
            this.f468A = true;
        }
        C0171a m21993a = C0171a.m21993a(this.f476a);
        mo22083a(m21993a.m21988f() || z);
        m22068k(m21993a.m21990d());
        TypedArray obtainStyledAttributes = this.f476a.obtainStyledAttributes(null, C0083a.C0093j.ActionBar, C0083a.C0084a.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(C0083a.C0093j.ActionBar_hideOnContentScroll, false)) {
            mo22079b(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0083a.C0093j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            mo22090a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0011, code lost:
        if (r3 != false) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean m22082a(boolean r2, boolean r3, boolean r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto La
            r0 = r5
            r2 = r0
        L8:
            r0 = r2
            return r0
        La:
            r0 = r2
            if (r0 != 0) goto L14
            r0 = r5
            r2 = r0
            r0 = r3
            if (r0 == 0) goto L8
        L14:
            r0 = 0
            r2 = r0
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.C0148l.m22082a(boolean, boolean, boolean):boolean");
    }

    /* renamed from: b */
    private AbstractC0368x m22080b(View view) {
        AbstractC0368x wrapper;
        if (view instanceof AbstractC0368x) {
            wrapper = (AbstractC0368x) view;
        } else if (!(view instanceof Toolbar)) {
            throw new IllegalStateException("Can't make a decor toolbar out of " + (view != null ? view.getClass().getSimpleName() : "null"));
        } else {
            wrapper = ((Toolbar) view).getWrapper();
        }
        return wrapper;
    }

    /* renamed from: k */
    private void m22068k(boolean z) {
        this.f471D = z;
        if (!this.f471D) {
            this.f479d.mo21191a((C0305ai) null);
            this.f478c.setTabContainer(this.f482g);
        } else {
            this.f478c.setTabContainer(null);
            this.f479d.mo21191a(this.f482g);
        }
        boolean z2 = m22071i() == 2;
        if (this.f482g != null) {
            if (z2) {
                this.f482g.setVisibility(0);
                if (this.f477b != null) {
                    C0595u.m20307q(this.f477b);
                }
            } else {
                this.f482g.setVisibility(8);
            }
        }
        this.f479d.mo21189a(!this.f471D && z2);
        this.f477b.setHasNonEmbeddedTabs(!this.f471D && z2);
    }

    /* renamed from: l */
    private void m22067l(boolean z) {
        if (m22082a(this.f487l, this.f488m, this.f473F)) {
            if (this.f474G) {
                return;
            }
            this.f474G = true;
            m22072h(z);
        } else if (!this.f474G) {
        } else {
            this.f474G = false;
            m22070i(z);
        }
    }

    /* renamed from: n */
    private void m22066n() {
        if (!this.f473F) {
            this.f473F = true;
            if (this.f477b != null) {
                this.f477b.setShowingForActionMode(true);
            }
            m22067l(false);
        }
    }

    /* renamed from: o */
    private void m22065o() {
        if (this.f473F) {
            this.f473F = false;
            if (this.f477b != null) {
                this.f477b.setShowingForActionMode(false);
            }
            m22067l(false);
        }
    }

    /* renamed from: p */
    private boolean m22064p() {
        return C0595u.m20299y(this.f478c);
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public int mo22091a() {
        return this.f479d.mo21171o();
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public AbstractC0172b mo22085a(AbstractC0172b.AbstractC0173a abstractC0173a) {
        if (this.f483h != null) {
            this.f483h.mo21971c();
        }
        this.f477b.setHideOnContentScrollEnabled(false);
        this.f480e.m21775c();
        C0152a c0152a = new C0152a(this.f480e.getContext(), abstractC0173a);
        if (c0152a.m22063e()) {
            this.f483h = c0152a;
            c0152a.mo21970d();
            this.f480e.m21777a(c0152a);
            m22069j(true);
            this.f480e.sendAccessibilityEvent(32);
        } else {
            c0152a = null;
        }
        return c0152a;
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public void mo22090a(float f) {
        C0595u.m20358a(this.f478c, f);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0229a
    /* renamed from: a */
    public void mo21759a(int i) {
        this.f472E = i;
    }

    /* renamed from: a */
    public void m22089a(int i, int i2) {
        int mo21171o = this.f479d.mo21171o();
        if ((i2 & 4) != 0) {
            this.f468A = true;
        }
        this.f479d.mo21184c((mo21171o & (i2 ^ (-1))) | (i & i2));
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public void mo22087a(Configuration configuration) {
        m22068k(C0171a.m21993a(this.f476a).m21990d());
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public void mo22084a(CharSequence charSequence) {
        this.f479d.mo21190a(charSequence);
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public void mo22083a(boolean z) {
        this.f479d.mo21186b(z);
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public boolean mo22088a(int i, KeyEvent keyEvent) {
        Menu mo21974b;
        boolean z = false;
        if (this.f483h != null && (mo21974b = this.f483h.mo21974b()) != null) {
            mo21974b.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            z = mo21974b.performShortcut(i, keyEvent, 0);
        }
        return z;
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: b */
    public Context mo22081b() {
        if (this.f494v == null) {
            TypedValue typedValue = new TypedValue();
            this.f476a.getTheme().resolveAttribute(C0083a.C0084a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f494v = new ContextThemeWrapper(this.f476a, i);
            } else {
                this.f494v = this.f476a;
            }
        }
        return this.f494v;
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: b */
    public void mo22079b(boolean z) {
        if (!z || this.f477b.m21772a()) {
            this.f490o = z;
            this.f477b.setHideOnContentScrollEnabled(z);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: c */
    public void mo22078c(boolean z) {
        if (!this.f468A) {
            m22074f(z);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: d */
    public void mo22077d(boolean z) {
        this.f475H = z;
        if (z || this.f489n == null) {
            return;
        }
        this.f489n.m21940c();
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: e */
    public void mo22076e(boolean z) {
        if (z == this.f469B) {
            return;
        }
        this.f469B = z;
        int size = this.f470C.size();
        for (int i = 0; i < size; i++) {
            this.f470C.get(i).m22240a(z);
        }
    }

    /* renamed from: f */
    public void m22074f(boolean z) {
        m22089a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: f */
    public boolean mo22075f() {
        boolean z;
        if (this.f479d == null || !this.f479d.mo21185c()) {
            z = false;
        } else {
            this.f479d.mo21183d();
            z = true;
        }
        return z;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0229a
    /* renamed from: g */
    public void mo21758g(boolean z) {
        this.f486k = z;
    }

    /* renamed from: h */
    void m22073h() {
        if (this.f485j != null) {
            this.f485j.mo21964a(this.f484i);
            this.f484i = null;
            this.f485j = null;
        }
    }

    /* renamed from: h */
    public void m22072h(boolean z) {
        int[] iArr;
        if (this.f489n != null) {
            this.f489n.m21940c();
        }
        this.f478c.setVisibility(0);
        if (this.f472E != 0 || (!this.f475H && !z)) {
            this.f478c.setAlpha(1.0f);
            this.f478c.setTranslationY(0.0f);
            if (this.f486k && this.f481f != null) {
                this.f481f.setTranslationY(0.0f);
            }
            this.f492q.mo20244b(null);
        } else {
            this.f478c.setTranslationY(0.0f);
            float f = -this.f478c.getHeight();
            float f2 = f;
            if (z) {
                this.f478c.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            this.f478c.setTranslationY(f2);
            C0182h c0182h = new C0182h();
            C0607y m20248b = C0595u.m20311m(this.f478c).m20248b(0.0f);
            m20248b.m20251a(this.f493r);
            c0182h.m21944a(m20248b);
            if (this.f486k && this.f481f != null) {
                this.f481f.setTranslationY(f2);
                c0182h.m21944a(C0595u.m20311m(this.f481f).m20248b(0.0f));
            }
            c0182h.m21945a(f467u);
            c0182h.m21946a(250L);
            c0182h.m21942a(this.f492q);
            this.f489n = c0182h;
            c0182h.m21947a();
        }
        if (this.f477b != null) {
            C0595u.m20307q(this.f477b);
        }
    }

    /* renamed from: i */
    public int m22071i() {
        return this.f479d.mo21170p();
    }

    /* renamed from: i */
    public void m22070i(boolean z) {
        int[] iArr;
        if (this.f489n != null) {
            this.f489n.m21940c();
        }
        if (this.f472E != 0 || (!this.f475H && !z)) {
            this.f491p.mo20244b(null);
            return;
        }
        this.f478c.setAlpha(1.0f);
        this.f478c.setTransitioning(true);
        C0182h c0182h = new C0182h();
        float f = -this.f478c.getHeight();
        float f2 = f;
        if (z) {
            this.f478c.getLocationInWindow(new int[]{0, 0});
            f2 = f - iArr[1];
        }
        C0607y m20248b = C0595u.m20311m(this.f478c).m20248b(f2);
        m20248b.m20251a(this.f493r);
        c0182h.m21944a(m20248b);
        if (this.f486k && this.f481f != null) {
            c0182h.m21944a(C0595u.m20311m(this.f481f).m20248b(f2));
        }
        c0182h.m21945a(f466t);
        c0182h.m21946a(250L);
        c0182h.m21942a(this.f491p);
        this.f489n = c0182h;
        c0182h.m21947a();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0229a
    /* renamed from: j */
    public void mo21757j() {
        if (this.f488m) {
            this.f488m = false;
            m22067l(true);
        }
    }

    /* renamed from: j */
    public void m22069j(boolean z) {
        C0607y mo21196a;
        C0607y mo21567a;
        if (z) {
            m22066n();
        } else {
            m22065o();
        }
        if (!m22064p()) {
            if (z) {
                this.f479d.mo21182d(4);
                this.f480e.setVisibility(0);
                return;
            }
            this.f479d.mo21182d(0);
            this.f480e.setVisibility(8);
            return;
        }
        if (z) {
            mo21567a = this.f479d.mo21196a(4, 100L);
            mo21196a = this.f480e.mo21567a(0, 200L);
        } else {
            mo21196a = this.f479d.mo21196a(0, 200L);
            mo21567a = this.f480e.mo21567a(8, 100L);
        }
        C0182h c0182h = new C0182h();
        c0182h.m21943a(mo21567a, mo21196a);
        c0182h.m21947a();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0229a
    /* renamed from: k */
    public void mo21756k() {
        if (!this.f488m) {
            this.f488m = true;
            m22067l(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0229a
    /* renamed from: l */
    public void mo21755l() {
        if (this.f489n != null) {
            this.f489n.m21940c();
            this.f489n = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0229a
    /* renamed from: m */
    public void mo21754m() {
    }
}
