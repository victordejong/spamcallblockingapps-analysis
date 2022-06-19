package p1727n3.p1734b.p1735a;

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
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionBarOverlayLayout$d;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.Toolbar;
import com.razorpay.AnalyticsConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1734b.p1741e.C25457f;
import p1727n3.p1734b.p1741e.C25460g;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1743f.AbstractC25551v;
import p1727n3.p1807k.p1821i.AbstractC26560a0;
import p1727n3.p1807k.p1821i.AbstractC26566c0;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.C26625z;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.b.a.v */
/* loaded from: classes-dex2jar.jar:n3/b/a/v.class */
public class C25437v extends AbstractC25393a implements ActionBarOverlayLayout$d {

    /* renamed from: A */
    public static final Interpolator f70983A = new AccelerateInterpolator();

    /* renamed from: B */
    public static final Interpolator f70984B = new DecelerateInterpolator();

    /* renamed from: a */
    public Context f70985a;

    /* renamed from: b */
    public Context f70986b;

    /* renamed from: c */
    public ActionBarOverlayLayout f70987c;

    /* renamed from: d */
    public ActionBarContainer f70988d;

    /* renamed from: e */
    public AbstractC25551v f70989e;

    /* renamed from: f */
    public ActionBarContextView f70990f;

    /* renamed from: g */
    public View f70991g;

    /* renamed from: h */
    public boolean f70992h;

    /* renamed from: i */
    public C25439d f70993i;

    /* renamed from: j */
    public AbstractC25450a f70994j;

    /* renamed from: k */
    public AbstractC25450a.AbstractC25451a f70995k;

    /* renamed from: l */
    public boolean f70996l;

    /* renamed from: n */
    public boolean f70998n;

    /* renamed from: q */
    public boolean f71001q;

    /* renamed from: r */
    public boolean f71002r;

    /* renamed from: s */
    public boolean f71003s;

    /* renamed from: u */
    public C25460g f71005u;

    /* renamed from: v */
    public boolean f71006v;

    /* renamed from: w */
    public boolean f71007w;

    /* renamed from: m */
    public ArrayList<AbstractC25393a.AbstractC25395b> f70997m = new ArrayList<>();

    /* renamed from: o */
    public int f70999o = 0;

    /* renamed from: p */
    public boolean f71000p = true;

    /* renamed from: t */
    public boolean f71004t = true;

    /* renamed from: x */
    public final AbstractC26560a0 f71008x = new a(this);

    /* renamed from: y */
    public final AbstractC26560a0 f71009y = new b(this);

    /* renamed from: z */
    public final AbstractC26566c0 f71010z = new C25438c();

    /* renamed from: n3.b.a.v$c */
    /* loaded from: classes-dex2jar.jar:n3/b/a/v$c.class */
    public class C25438c implements AbstractC26566c0 {
        public C25438c() {
            C25437v.this = r4;
        }
    }

    /* renamed from: n3.b.a.v$d */
    /* loaded from: classes-dex2jar.jar:n3/b/a/v$d.class */
    public class C25439d extends AbstractC25450a implements C25469g.AbstractC25470a {

        /* renamed from: c */
        public final Context f71012c;

        /* renamed from: d */
        public final C25469g f71013d;

        /* renamed from: e */
        public AbstractC25450a.AbstractC25451a f71014e;

        /* renamed from: f */
        public WeakReference<View> f71015f;

        public C25439d(Context context, AbstractC25450a.AbstractC25451a abstractC25451a) {
            C25437v.this = r5;
            this.f71012c = context;
            this.f71014e = abstractC25451a;
            C25469g c25469g = new C25469g(context);
            c25469g.f71227l = 1;
            this.f71013d = c25469g;
            c25469g.f71220e = this;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
        /* renamed from: a */
        public boolean mo3369a(C25469g c25469g, MenuItem menuItem) {
            AbstractC25450a.AbstractC25451a abstractC25451a = this.f71014e;
            if (abstractC25451a != null) {
                return abstractC25451a.mo3501sd(this, menuItem);
            }
            return false;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
        /* renamed from: b */
        public void mo3368b(C25469g c25469g) {
            if (this.f71014e == null) {
                return;
            }
            mo3513i();
            ActionMenuPresenter actionMenuPresenter = C25437v.this.f70990f.f71303d;
            if (actionMenuPresenter == null) {
                return;
            }
            actionMenuPresenter.p();
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: c */
        public void mo3519c() {
            C25437v c25437v = C25437v.this;
            if (c25437v.f70993i != this) {
                return;
            }
            boolean z = c25437v.f71001q;
            boolean z2 = c25437v.f71002r;
            boolean z3 = true;
            if (z || z2) {
                z3 = false;
            }
            if (!z3) {
                c25437v.f70994j = this;
                c25437v.f70995k = this.f71014e;
            } else {
                this.f71014e.mo3500zn(this);
            }
            this.f71014e = null;
            C25437v.this.m3566C(false);
            ActionBarContextView actionBarContextView = C25437v.this.f70990f;
            if (actionBarContextView.f210k == null) {
                actionBarContextView.m43156h();
            }
            C25437v.this.f70989e.mo3271G4().sendAccessibilityEvent(32);
            C25437v c25437v2 = C25437v.this;
            c25437v2.f70987c.setHideOnContentScrollEnabled(c25437v2.f71007w);
            C25437v.this.f70993i = null;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: d */
        public View mo3518d() {
            WeakReference<View> weakReference = this.f71015f;
            return weakReference != null ? weakReference.get() : null;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: e */
        public Menu mo3517e() {
            return this.f71013d;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: f */
        public MenuInflater mo3516f() {
            return new C25457f(this.f71012c);
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: g */
        public CharSequence mo3515g() {
            return C25437v.this.f70990f.getSubtitle();
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: h */
        public CharSequence mo3514h() {
            return C25437v.this.f70990f.getTitle();
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: i */
        public void mo3513i() {
            if (C25437v.this.f70993i != this) {
                return;
            }
            this.f71013d.m3484A();
            try {
                this.f71014e.mo3502gi(this, this.f71013d);
            } finally {
                this.f71013d.m3458z();
            }
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: j */
        public boolean mo3512j() {
            return C25437v.this.f70990f.f218s;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: k */
        public void mo3511k(View view) {
            C25437v.this.f70990f.setCustomView(view);
            this.f71015f = new WeakReference<>(view);
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: l */
        public void mo3510l(int i) {
            C25437v.this.f70990f.setSubtitle(C25437v.this.f70985a.getResources().getString(i));
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: m */
        public void mo3509m(CharSequence charSequence) {
            C25437v.this.f70990f.setSubtitle(charSequence);
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: n */
        public void mo3508n(int i) {
            mo3507o(C25437v.this.f70985a.getResources().getString(i));
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: o */
        public void mo3507o(CharSequence charSequence) {
            C25437v.this.f70990f.setTitle(charSequence);
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a
        /* renamed from: p */
        public void mo3506p(boolean z) {
            this.f71096b = z;
            C25437v.this.f70990f.setTitleOptional(z);
        }
    }

    public C25437v(Activity activity, boolean z) {
        new ArrayList();
        View decorView = activity.getWindow().getDecorView();
        m3565D(decorView);
        if (!z) {
            this.f70991g = decorView.findViewById(16908290);
        }
    }

    public C25437v(Dialog dialog) {
        new ArrayList();
        m3565D(dialog.getWindow().getDecorView());
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: A */
    public void mo3568A() {
        if (this.f71001q) {
            this.f71001q = false;
            m3562G(false);
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: B */
    public AbstractC25450a mo3567B(AbstractC25450a.AbstractC25451a abstractC25451a) {
        C25439d c25439d = this.f70993i;
        if (c25439d != null) {
            c25439d.mo3519c();
        }
        this.f70987c.setHideOnContentScrollEnabled(false);
        this.f70990f.m43156h();
        C25439d c25439d2 = new C25439d(this.f70990f.getContext(), abstractC25451a);
        c25439d2.f71013d.m3484A();
        try {
            if (!c25439d2.f71014e.mo3503c9(c25439d2, c25439d2.f71013d)) {
                return null;
            }
            this.f70993i = c25439d2;
            c25439d2.mo3513i();
            this.f70990f.m43158f(c25439d2);
            m3566C(true);
            this.f70990f.sendAccessibilityEvent(32);
            return c25439d2;
        } finally {
            c25439d2.f71013d.m3458z();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* renamed from: C */
    public void m3566C(boolean z) {
        C26625z c26625z;
        C26625z c26625z2;
        if (z) {
            if (!this.f71003s) {
                this.f71003s = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f70987c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                m3562G(false);
            }
        } else if (this.f71003s) {
            this.f71003s = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f70987c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            m3562G(false);
        }
        ActionBarContainer actionBarContainer = this.f70988d;
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (!actionBarContainer.isLaidOut()) {
            if (z) {
                this.f70989e.setVisibility(4);
                this.f70990f.setVisibility(0);
                return;
            }
            this.f70989e.setVisibility(0);
            this.f70990f.setVisibility(8);
            return;
        }
        if (z) {
            c26625z = this.f70989e.mo3272F4(4, 100L);
            c26625z2 = this.f70990f.m3405e(0, 200L);
        } else {
            c26625z2 = this.f70989e.mo3272F4(0, 200L);
            c26625z = this.f70990f.m3405e(8, 100L);
        }
        C25460g c25460g = new C25460g();
        c25460g.f71155a.add(c26625z);
        View view = c26625z.f74523a.get();
        ?? duration = view != null ? view.animate().getDuration() : false;
        View view2 = c26625z2.f74523a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration == true ? 1L : 0L);
        }
        c25460g.f71155a.add(c26625z2);
        c25460g.m3493b();
    }

    /* renamed from: D */
    public final void m3565D(View view) {
        AbstractC25551v abstractC25551v;
        ActionBarOverlayLayout findViewById = view.findViewById(C0032R.C0034id.decor_content_parent);
        this.f70987c = findViewById;
        if (findViewById != null) {
            findViewById.setActionBarVisibilityCallback(this);
        }
        View findViewById2 = view.findViewById(C0032R.C0034id.action_bar);
        if (findViewById2 instanceof AbstractC25551v) {
            abstractC25551v = (AbstractC25551v) findViewById2;
        } else if (!(findViewById2 instanceof Toolbar)) {
            StringBuilder m8728C = C22128a.m8728C("Can't make a decor toolbar out of ");
            m8728C.append(findViewById2 != null ? findViewById2.getClass().getSimpleName() : AnalyticsConstants.NULL);
            throw new IllegalStateException(m8728C.toString());
        } else {
            abstractC25551v = ((Toolbar) findViewById2).getWrapper();
        }
        this.f70989e = abstractC25551v;
        this.f70990f = (ActionBarContextView) view.findViewById(C0032R.C0034id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(C0032R.C0034id.action_bar_container);
        this.f70988d = actionBarContainer;
        AbstractC25551v abstractC25551v2 = this.f70989e;
        if (abstractC25551v2 == null || this.f70990f == null || actionBarContainer == null) {
            throw new IllegalStateException(C25437v.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f70985a = abstractC25551v2.getContext();
        boolean z = (this.f70989e.mo3276B4() & 4) != 0;
        if (z) {
            this.f70992h = true;
        }
        Context context = this.f70985a;
        this.f70989e.mo3270H4((context.getApplicationInfo().targetSdkVersion < 14) || z);
        m3563F(context.getResources().getBoolean(C0032R.bool.abc_action_bar_embed_tabs));
        TypedArray obtainStyledAttributes = this.f70985a.obtainStyledAttributes(null, C0032R.styleable.ActionBar, C0032R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(C0032R.styleable.ActionBar_hideOnContentScroll, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout = this.f70987c;
            if (!actionBarOverlayLayout.h) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f71007w = true;
            actionBarOverlayLayout.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0032R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            float f = dimensionPixelSize;
            ActionBarContainer actionBarContainer2 = this.f70988d;
            AtomicInteger atomicInteger = C26614s.f74505a;
            actionBarContainer2.setElevation(f);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: E */
    public void m3564E(int i, int i2) {
        int mo3276B4 = this.f70989e.mo3276B4();
        if ((i2 & 4) != 0) {
            this.f70992h = true;
        }
        this.f70989e.mo3256v4((i & i2) | ((i2 ^ (-1)) & mo3276B4));
    }

    /* renamed from: F */
    public final void m3563F(boolean z) {
        this.f70998n = z;
        if (!z) {
            this.f70989e.mo3269I4(null);
            this.f70988d.setTabContainer(null);
        } else {
            this.f70988d.setTabContainer(null);
            this.f70989e.mo3269I4(null);
        }
        boolean z2 = this.f70989e.mo3255w4() == 2;
        this.f70989e.mo3252z4(!this.f70998n && z2);
        this.f70987c.setHasNonEmbeddedTabs(!this.f70998n && z2);
    }

    /* renamed from: G */
    public final void m3562G(boolean z) {
        View view;
        int[] iArr;
        View view2;
        View view3;
        int[] iArr2;
        if (!(this.f71003s || (!this.f71001q && !this.f71002r))) {
            if (!this.f71004t) {
                return;
            }
            this.f71004t = false;
            C25460g c25460g = this.f71005u;
            if (c25460g != null) {
                c25460g.m3494a();
            }
            if (this.f70999o != 0 || (!this.f71006v && !z)) {
                this.f71008x.mo1677b(null);
                return;
            }
            this.f70988d.setAlpha(1.0f);
            this.f70988d.setTransitioning(true);
            C25460g c25460g2 = new C25460g();
            float f = -this.f70988d.getHeight();
            float f2 = f;
            if (z) {
                this.f70988d.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            C26625z m1579b = C26614s.m1579b(this.f70988d);
            m1579b.m1545g(f2);
            m1579b.m1546f(this.f71010z);
            if (!c25460g2.f71159e) {
                c25460g2.f71155a.add(m1579b);
            }
            if (this.f71000p && (view = this.f70991g) != null) {
                C26625z m1579b2 = C26614s.m1579b(view);
                m1579b2.m1545g(f2);
                if (!c25460g2.f71159e) {
                    c25460g2.f71155a.add(m1579b2);
                }
            }
            Interpolator interpolator = f70983A;
            boolean z2 = c25460g2.f71159e;
            if (!z2) {
                c25460g2.f71157c = interpolator;
            }
            if (!z2) {
                c25460g2.f71156b = 250L;
            }
            AbstractC26560a0 abstractC26560a0 = this.f71008x;
            if (!z2) {
                c25460g2.f71158d = abstractC26560a0;
            }
            this.f71005u = c25460g2;
            c25460g2.m3493b();
        } else if (this.f71004t) {
        } else {
            this.f71004t = true;
            C25460g c25460g3 = this.f71005u;
            if (c25460g3 != null) {
                c25460g3.m3494a();
            }
            this.f70988d.setVisibility(0);
            if (this.f70999o != 0 || (!this.f71006v && !z)) {
                this.f70988d.setAlpha(1.0f);
                this.f70988d.setTranslationY(0.0f);
                if (this.f71000p && (view2 = this.f70991g) != null) {
                    view2.setTranslationY(0.0f);
                }
                this.f71009y.mo1677b(null);
            } else {
                this.f70988d.setTranslationY(0.0f);
                float f3 = -this.f70988d.getHeight();
                float f4 = f3;
                if (z) {
                    this.f70988d.getLocationInWindow(new int[]{0, 0});
                    f4 = f3 - iArr2[1];
                }
                this.f70988d.setTranslationY(f4);
                C25460g c25460g4 = new C25460g();
                C26625z m1579b3 = C26614s.m1579b(this.f70988d);
                m1579b3.m1545g(0.0f);
                m1579b3.m1546f(this.f71010z);
                if (!c25460g4.f71159e) {
                    c25460g4.f71155a.add(m1579b3);
                }
                if (this.f71000p && (view3 = this.f70991g) != null) {
                    view3.setTranslationY(f4);
                    C26625z m1579b4 = C26614s.m1579b(this.f70991g);
                    m1579b4.m1545g(0.0f);
                    if (!c25460g4.f71159e) {
                        c25460g4.f71155a.add(m1579b4);
                    }
                }
                Interpolator interpolator2 = f70984B;
                boolean z3 = c25460g4.f71159e;
                if (!z3) {
                    c25460g4.f71157c = interpolator2;
                }
                if (!z3) {
                    c25460g4.f71156b = 250L;
                }
                AbstractC26560a0 abstractC26560a02 = this.f71009y;
                if (!z3) {
                    c25460g4.f71158d = abstractC26560a02;
                }
                this.f71005u = c25460g4;
                c25460g4.m3493b();
            }
            ActionBarOverlayLayout actionBarOverlayLayout = this.f70987c;
            if (actionBarOverlayLayout == null) {
                return;
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            actionBarOverlayLayout.requestApplyInsets();
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: b */
    public boolean mo3561b() {
        AbstractC25551v abstractC25551v = this.f70989e;
        if (abstractC25551v == null || !abstractC25551v.mo3257u4()) {
            return false;
        }
        this.f70989e.collapseActionView();
        return true;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: c */
    public void mo3560c(boolean z) {
        if (z == this.f70996l) {
            return;
        }
        this.f70996l = z;
        int size = this.f70997m.size();
        for (int i = 0; i < size; i++) {
            this.f70997m.get(i).m3676a(z);
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: d */
    public int mo3559d() {
        return this.f70989e.mo3276B4();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: e */
    public Context mo3558e() {
        if (this.f70986b == null) {
            TypedValue typedValue = new TypedValue();
            this.f70985a.getTheme().resolveAttribute(C0032R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f70986b = new ContextThemeWrapper(this.f70985a, i);
            } else {
                this.f70986b = this.f70985a;
            }
        }
        return this.f70986b;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: f */
    public void mo3557f() {
        if (!this.f71001q) {
            this.f71001q = true;
            m3562G(false);
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: h */
    public void mo3556h(Configuration configuration) {
        m3563F(this.f70985a.getResources().getBoolean(C0032R.bool.abc_action_bar_embed_tabs));
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: j */
    public boolean mo3555j(int i, KeyEvent keyEvent) {
        C25469g c25469g;
        C25439d c25439d = this.f70993i;
        if (c25439d == null || (c25469g = c25439d.f71013d) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        c25469g.setQwertyMode(z);
        return c25469g.performShortcut(i, keyEvent, 0);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: m */
    public void mo3554m(boolean z) {
        if (!this.f70992h) {
            m3564E(z ? 4 : 0, 4);
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: n */
    public void mo3553n(boolean z) {
        m3564E(z ? 4 : 0, 4);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: o */
    public void mo3552o(boolean z) {
        m3564E(z ? 2 : 0, 2);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: p */
    public void mo3551p(boolean z) {
        m3564E(z ? 8 : 0, 8);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: q */
    public void mo3550q(float f) {
        ActionBarContainer actionBarContainer = this.f70988d;
        AtomicInteger atomicInteger = C26614s.f74505a;
        actionBarContainer.setElevation(f);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: r */
    public void mo3549r(int i) {
        this.f70989e.mo3254x4(i);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: s */
    public void mo3548s(int i) {
        this.f70989e.mo3267K4(i);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: t */
    public void mo3547t(Drawable drawable) {
        this.f70989e.mo3274D4(drawable);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: u */
    public void mo3546u(boolean z) {
        this.f70989e.mo3270H4(z);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: v */
    public void mo3545v(boolean z) {
        C25460g c25460g;
        this.f71006v = z;
        if (z || (c25460g = this.f71005u) == null) {
            return;
        }
        c25460g.m3494a();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: w */
    public void mo3544w(CharSequence charSequence) {
        this.f70989e.mo3258t4(charSequence);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: x */
    public void mo3543x(int i) {
        this.f70989e.setTitle(this.f70985a.getString(i));
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: y */
    public void mo3542y(CharSequence charSequence) {
        this.f70989e.setTitle(charSequence);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: z */
    public void mo3541z(CharSequence charSequence) {
        this.f70989e.setWindowTitle(charSequence);
    }
}
