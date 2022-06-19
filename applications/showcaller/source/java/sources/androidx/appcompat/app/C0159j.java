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
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.widget.AbstractC0316p;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p020b.p021a.C1423a;
import p020b.p021a.C1428f;
import p020b.p021a.C1432j;
import p020b.p021a.p028o.AbstractC1455b;
import p020b.p021a.p028o.C1454a;
import p020b.p021a.p028o.C1462g;
import p020b.p021a.p028o.C1465h;
import p020b.p041h.p050l.AbstractC1608b0;
import p020b.p041h.p050l.AbstractC1613d0;
import p020b.p041h.p050l.C1601a0;
import p020b.p041h.p050l.C1611c0;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.appcompat.app.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j.class */
public class C0159j extends ActionBar implements ActionBarOverlayLayout.AbstractC0208d {

    /* renamed from: a */
    private static final Interpolator f469a = new AccelerateInterpolator();

    /* renamed from: b */
    private static final Interpolator f470b = new DecelerateInterpolator();

    /* renamed from: A */
    C1465h f471A;

    /* renamed from: B */
    private boolean f472B;

    /* renamed from: C */
    boolean f473C;

    /* renamed from: c */
    Context f477c;

    /* renamed from: d */
    private Context f478d;

    /* renamed from: e */
    private Activity f479e;

    /* renamed from: f */
    ActionBarOverlayLayout f480f;

    /* renamed from: g */
    ActionBarContainer f481g;

    /* renamed from: h */
    AbstractC0316p f482h;

    /* renamed from: i */
    ActionBarContextView f483i;

    /* renamed from: j */
    View f484j;

    /* renamed from: k */
    ScrollingTabContainerView f485k;

    /* renamed from: n */
    private boolean f488n;

    /* renamed from: o */
    C0163d f489o;

    /* renamed from: p */
    AbstractC1455b f490p;

    /* renamed from: q */
    AbstractC1455b.AbstractC1456a f491q;

    /* renamed from: r */
    private boolean f492r;

    /* renamed from: t */
    private boolean f494t;

    /* renamed from: w */
    boolean f497w;

    /* renamed from: x */
    boolean f498x;

    /* renamed from: y */
    private boolean f499y;

    /* renamed from: l */
    private ArrayList<?> f486l = new ArrayList<>();

    /* renamed from: m */
    private int f487m = -1;

    /* renamed from: s */
    private ArrayList<ActionBar.AbstractC0105a> f493s = new ArrayList<>();

    /* renamed from: u */
    private int f495u = 0;

    /* renamed from: v */
    boolean f496v = true;

    /* renamed from: z */
    private boolean f500z = true;

    /* renamed from: D */
    final AbstractC1608b0 f474D = new C0160a();

    /* renamed from: E */
    final AbstractC1608b0 f475E = new C0161b();

    /* renamed from: F */
    final AbstractC1613d0 f476F = new C0162c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$a.class */
    public class C0160a extends C1611c0 {
        C0160a() {
            C0159j.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: b */
        public void mo29619b(View view) {
            View view2;
            C0159j c0159j = C0159j.this;
            if (c0159j.f496v && (view2 = c0159j.f484j) != null) {
                view2.setTranslationY(0.0f);
                C0159j.this.f481g.setTranslationY(0.0f);
            }
            C0159j.this.f481g.setVisibility(8);
            C0159j.this.f481g.setTransitioning(false);
            C0159j c0159j2 = C0159j.this;
            c0159j2.f471A = null;
            c0159j2.m35458w();
            ActionBarOverlayLayout actionBarOverlayLayout = C0159j.this.f480f;
            if (actionBarOverlayLayout != null) {
                C1679w.m29279o0(actionBarOverlayLayout);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$b.class */
    public class C0161b extends C1611c0 {
        C0161b() {
            C0159j.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: b */
        public void mo29619b(View view) {
            C0159j c0159j = C0159j.this;
            c0159j.f471A = null;
            c0159j.f481g.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$c.class */
    public class C0162c implements AbstractC1613d0 {
        C0162c() {
            C0159j.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1613d0
        /* renamed from: a */
        public void mo29602a(View view) {
            ((View) C0159j.this.f481g.getParent()).invalidate();
        }
    }

    /* renamed from: androidx.appcompat.app.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$d.class */
    public class C0163d extends AbstractC1455b implements C0178g.AbstractC0179a {

        /* renamed from: f */
        private final Context f504f;

        /* renamed from: g */
        private final C0178g f505g;

        /* renamed from: h */
        private AbstractC1455b.AbstractC1456a f506h;

        /* renamed from: i */
        private WeakReference<View> f507i;

        public C0163d(Context context, AbstractC1455b.AbstractC1456a abstractC1456a) {
            C0159j.this = r5;
            this.f504f = context;
            this.f506h = abstractC1456a;
            C0178g m35398W = new C0178g(context).m35398W(1);
            this.f505g = m35398W;
            m35398W.mo35302V(this);
        }

        @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
        /* renamed from: a */
        public boolean mo4426a(C0178g c0178g, MenuItem menuItem) {
            AbstractC1455b.AbstractC1456a abstractC1456a = this.f506h;
            if (abstractC1456a != null) {
                return abstractC1456a.mo30019d(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
        /* renamed from: b */
        public void mo4425b(C0178g c0178g) {
            if (this.f506h == null) {
                return;
            }
            mo30030k();
            C0159j.this.f483i.m35289l();
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: c */
        public void mo30036c() {
            C0159j c0159j = C0159j.this;
            if (c0159j.f489o != this) {
                return;
            }
            if (!C0159j.m35459v(c0159j.f497w, c0159j.f498x, false)) {
                C0159j c0159j2 = C0159j.this;
                c0159j2.f490p = this;
                c0159j2.f491q = this.f506h;
            } else {
                this.f506h.mo30022a(this);
            }
            this.f506h = null;
            C0159j.this.m35460u(false);
            C0159j.this.f483i.m35294g();
            C0159j.this.f482h.mo34783m().sendAccessibilityEvent(32);
            C0159j c0159j3 = C0159j.this;
            c0159j3.f480f.setHideOnContentScrollEnabled(c0159j3.f473C);
            C0159j.this.f489o = null;
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: d */
        public View mo30035d() {
            WeakReference<View> weakReference = this.f507i;
            return weakReference != null ? weakReference.get() : null;
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: e */
        public Menu mo30034e() {
            return this.f505g;
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: f */
        public MenuInflater mo30033f() {
            return new C1462g(this.f504f);
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: g */
        public CharSequence mo30032g() {
            return C0159j.this.f483i.getSubtitle();
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: i */
        public CharSequence mo30031i() {
            return C0159j.this.f483i.getTitle();
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: k */
        public void mo30030k() {
            if (C0159j.this.f489o != this) {
                return;
            }
            this.f505g.m35382h0();
            try {
                this.f506h.mo30020c(this, this.f505g);
            } finally {
                this.f505g.m35383g0();
            }
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: l */
        public boolean mo30029l() {
            return C0159j.this.f483i.m35291j();
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: m */
        public void mo30028m(View view) {
            C0159j.this.f483i.setCustomView(view);
            this.f507i = new WeakReference<>(view);
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: n */
        public void mo30027n(int i) {
            mo30026o(C0159j.this.f477c.getResources().getString(i));
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: o */
        public void mo30026o(CharSequence charSequence) {
            C0159j.this.f483i.setSubtitle(charSequence);
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: q */
        public void mo30025q(int i) {
            mo30024r(C0159j.this.f477c.getResources().getString(i));
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: r */
        public void mo30024r(CharSequence charSequence) {
            C0159j.this.f483i.setTitle(charSequence);
        }

        @Override // p020b.p021a.p028o.AbstractC1455b
        /* renamed from: s */
        public void mo30023s(boolean z) {
            super.mo30023s(z);
            C0159j.this.f483i.setTitleOptional(z);
        }

        /* renamed from: t */
        public boolean m35454t() {
            this.f505g.m35382h0();
            try {
                return this.f506h.mo30021b(this, this.f505g);
            } finally {
                this.f505g.m35383g0();
            }
        }
    }

    public C0159j(Activity activity, boolean z) {
        this.f479e = activity;
        View decorView = activity.getWindow().getDecorView();
        m35480C(decorView);
        if (!z) {
            this.f484j = decorView.findViewById(16908290);
        }
    }

    public C0159j(Dialog dialog) {
        m35480C(dialog.getWindow().getDecorView());
    }

    /* renamed from: B */
    private void m35481B() {
        if (this.f499y) {
            this.f499y = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f480f;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m35471L(false);
        }
    }

    /* renamed from: C */
    private void m35480C(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(C1428f.decor_content_parent);
        this.f480f = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f482h = m35455z(view.findViewById(C1428f.action_bar));
        this.f483i = (ActionBarContextView) view.findViewById(C1428f.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(C1428f.action_bar_container);
        this.f481g = actionBarContainer;
        AbstractC0316p abstractC0316p = this.f482h;
        if (abstractC0316p == null || this.f483i == null || actionBarContainer == null) {
            throw new IllegalStateException(C0159j.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f477c = abstractC0316p.getContext();
        boolean z = (this.f482h.mo34781o() & 4) != 0;
        if (z) {
            this.f488n = true;
        }
        C1454a m30053b = C1454a.m30053b(this.f477c);
        m35474I(m30053b.m30054a() || z);
        m35476G(m30053b.m30048g());
        TypedArray obtainStyledAttributes = this.f477c.obtainStyledAttributes(null, C1432j.ActionBar, C1423a.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(C1432j.ActionBar_hideOnContentScroll, false)) {
            m35475H(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C1432j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            m35477F(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: G */
    private void m35476G(boolean z) {
        this.f494t = z;
        if (!z) {
            this.f482h.mo34789g(null);
            this.f481g.setTabContainer(this.f485k);
        } else {
            this.f481g.setTabContainer(null);
            this.f482h.mo34789g(this.f485k);
        }
        boolean z2 = m35482A() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.f485k;
        if (scrollingTabContainerView != null) {
            if (z2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f480f;
                if (actionBarOverlayLayout != null) {
                    C1679w.m29279o0(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f482h.mo34778r(!this.f494t && z2);
        this.f480f.setHasNonEmbeddedTabs(!this.f494t && z2);
    }

    /* renamed from: J */
    private boolean m35473J() {
        return C1679w.m29313V(this.f481g);
    }

    /* renamed from: K */
    private void m35472K() {
        if (!this.f499y) {
            this.f499y = true;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f480f;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(true);
            }
            m35471L(false);
        }
    }

    /* renamed from: L */
    private void m35471L(boolean z) {
        if (m35459v(this.f497w, this.f498x, this.f499y)) {
            if (this.f500z) {
                return;
            }
            this.f500z = true;
            m35456y(z);
        } else if (!this.f500z) {
        } else {
            this.f500z = false;
            m35457x(z);
        }
    }

    /* renamed from: v */
    static boolean m35459v(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return !z && !z2;
    }

    /* renamed from: z */
    private AbstractC0316p m35455z(View view) {
        if (view instanceof AbstractC0316p) {
            return (AbstractC0316p) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: A */
    public int m35482A() {
        return this.f482h.mo34785k();
    }

    /* renamed from: D */
    public void m35479D(boolean z) {
        m35478E(z ? 4 : 0, 4);
    }

    /* renamed from: E */
    public void m35478E(int i, int i2) {
        int mo34781o = this.f482h.mo34781o();
        if ((i2 & 4) != 0) {
            this.f488n = true;
        }
        this.f482h.mo34787i((i & i2) | ((i2 ^ (-1)) & mo34781o));
    }

    /* renamed from: F */
    public void m35477F(float f) {
        C1679w.m29259y0(this.f481g, f);
    }

    /* renamed from: H */
    public void m35475H(boolean z) {
        if (!z || this.f480f.m35281u()) {
            this.f473C = z;
            this.f480f.setHideOnContentScrollEnabled(z);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    /* renamed from: I */
    public void m35474I(boolean z) {
        this.f482h.mo34782n(z);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0208d
    /* renamed from: a */
    public void mo35275a() {
        if (this.f498x) {
            this.f498x = false;
            m35471L(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0208d
    /* renamed from: b */
    public void mo35274b() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0208d
    /* renamed from: c */
    public void mo35273c(boolean z) {
        this.f496v = z;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0208d
    /* renamed from: d */
    public void mo35272d() {
        if (!this.f498x) {
            this.f498x = true;
            m35471L(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0208d
    /* renamed from: e */
    public void mo35271e() {
        C1465h c1465h = this.f471A;
        if (c1465h != null) {
            c1465h.m30004a();
            this.f471A = null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: g */
    public boolean mo35470g() {
        AbstractC0316p abstractC0316p = this.f482h;
        if (abstractC0316p == null || !abstractC0316p.mo34788h()) {
            return false;
        }
        this.f482h.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: h */
    public void mo35469h(boolean z) {
        if (z == this.f492r) {
            return;
        }
        this.f492r = z;
        int size = this.f493s.size();
        for (int i = 0; i < size; i++) {
            this.f493s.get(i).m35706a(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: i */
    public int mo35468i() {
        return this.f482h.mo34781o();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: j */
    public Context mo35467j() {
        if (this.f478d == null) {
            TypedValue typedValue = new TypedValue();
            this.f477c.getTheme().resolveAttribute(C1423a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f478d = new ContextThemeWrapper(this.f477c, i);
            } else {
                this.f478d = this.f477c;
            }
        }
        return this.f478d;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: l */
    public void mo35466l(Configuration configuration) {
        m35476G(C1454a.m30053b(this.f477c).m30048g());
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: n */
    public boolean mo35465n(int i, KeyEvent keyEvent) {
        Menu mo30034e;
        C0163d c0163d = this.f489o;
        if (c0163d == null || (mo30034e = c0163d.mo30034e()) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        mo30034e.setQwertyMode(z);
        return mo30034e.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0208d
    public void onWindowVisibilityChanged(int i) {
        this.f495u = i;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: q */
    public void mo35464q(boolean z) {
        if (!this.f488n) {
            m35479D(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: r */
    public void mo35463r(boolean z) {
        C1465h c1465h;
        this.f472B = z;
        if (z || (c1465h = this.f471A) == null) {
            return;
        }
        c1465h.m30004a();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: s */
    public void mo35462s(CharSequence charSequence) {
        this.f482h.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: t */
    public AbstractC1455b mo35461t(AbstractC1455b.AbstractC1456a abstractC1456a) {
        C0163d c0163d = this.f489o;
        if (c0163d != null) {
            c0163d.mo30036c();
        }
        this.f480f.setHideOnContentScrollEnabled(false);
        this.f483i.m35290k();
        C0163d c0163d2 = new C0163d(this.f483i.getContext(), abstractC1456a);
        if (c0163d2.m35454t()) {
            this.f489o = c0163d2;
            c0163d2.mo30030k();
            this.f483i.m35293h(c0163d2);
            m35460u(true);
            this.f483i.sendAccessibilityEvent(32);
            return c0163d2;
        }
        return null;
    }

    /* renamed from: u */
    public void m35460u(boolean z) {
        C1601a0 c1601a0;
        C1601a0 c1601a02;
        if (z) {
            m35472K();
        } else {
            m35481B();
        }
        if (!m35473J()) {
            if (z) {
                this.f482h.setVisibility(4);
                this.f483i.setVisibility(0);
                return;
            }
            this.f482h.setVisibility(0);
            this.f483i.setVisibility(8);
            return;
        }
        if (z) {
            c1601a02 = this.f482h.mo34784l(4, 100L);
            c1601a0 = this.f483i.mo34991f(0, 200L);
        } else {
            c1601a0 = this.f482h.mo34784l(0, 200L);
            c1601a02 = this.f483i.mo34991f(8, 100L);
        }
        C1465h c1465h = new C1465h();
        c1465h.m30001d(c1601a02, c1601a0);
        c1465h.m29997h();
    }

    /* renamed from: w */
    void m35458w() {
        AbstractC1455b.AbstractC1456a abstractC1456a = this.f491q;
        if (abstractC1456a != null) {
            abstractC1456a.mo30022a(this.f490p);
            this.f490p = null;
            this.f491q = null;
        }
    }

    /* renamed from: x */
    public void m35457x(boolean z) {
        View view;
        int[] iArr;
        C1465h c1465h = this.f471A;
        if (c1465h != null) {
            c1465h.m30004a();
        }
        if (this.f495u != 0 || (!this.f472B && !z)) {
            this.f474D.mo29619b(null);
            return;
        }
        this.f481g.setAlpha(1.0f);
        this.f481g.setTransitioning(true);
        C1465h c1465h2 = new C1465h();
        float f = -this.f481g.getHeight();
        float f2 = f;
        if (z) {
            this.f481g.getLocationInWindow(new int[]{0, 0});
            f2 = f - iArr[1];
        }
        C1601a0 m29632k = C1679w.m29302d(this.f481g).m29632k(f2);
        m29632k.m29634i(this.f476F);
        c1465h2.m30002c(m29632k);
        if (this.f496v && (view = this.f484j) != null) {
            c1465h2.m30002c(C1679w.m29302d(view).m29632k(f2));
        }
        c1465h2.m29999f(f469a);
        c1465h2.m30000e(250L);
        c1465h2.m29998g(this.f474D);
        this.f471A = c1465h2;
        c1465h2.m29997h();
    }

    /* renamed from: y */
    public void m35456y(boolean z) {
        View view;
        View view2;
        int[] iArr;
        C1465h c1465h = this.f471A;
        if (c1465h != null) {
            c1465h.m30004a();
        }
        this.f481g.setVisibility(0);
        if (this.f495u != 0 || (!this.f472B && !z)) {
            this.f481g.setAlpha(1.0f);
            this.f481g.setTranslationY(0.0f);
            if (this.f496v && (view = this.f484j) != null) {
                view.setTranslationY(0.0f);
            }
            this.f475E.mo29619b(null);
        } else {
            this.f481g.setTranslationY(0.0f);
            float f = -this.f481g.getHeight();
            float f2 = f;
            if (z) {
                this.f481g.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            this.f481g.setTranslationY(f2);
            C1465h c1465h2 = new C1465h();
            C1601a0 m29632k = C1679w.m29302d(this.f481g).m29632k(0.0f);
            m29632k.m29634i(this.f476F);
            c1465h2.m30002c(m29632k);
            if (this.f496v && (view2 = this.f484j) != null) {
                view2.setTranslationY(f2);
                c1465h2.m30002c(C1679w.m29302d(this.f484j).m29632k(0.0f));
            }
            c1465h2.m29999f(f470b);
            c1465h2.m30000e(250L);
            c1465h2.m29998g(this.f475E);
            this.f471A = c1465h2;
            c1465h2.m29997h();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f480f;
        if (actionBarOverlayLayout != null) {
            C1679w.m29279o0(actionBarOverlayLayout);
        }
    }
}
