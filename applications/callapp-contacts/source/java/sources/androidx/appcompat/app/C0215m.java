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
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.C0142a;
import androidx.appcompat.view.AbstractC0241b;
import androidx.appcompat.view.C0240a;
import androidx.appcompat.view.C0248g;
import androidx.appcompat.view.C0251h;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.widget.AbstractC0406o;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.AbstractC0888ab;
import androidx.core.view.AbstractC0944z;
import androidx.core.view.C0887aa;
import androidx.core.view.C0926v;
import androidx.core.view.C0940y;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: androidx.appcompat.app.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/m.class */
public final class C0215m extends ActionBar implements ActionBarOverlayLayout.AbstractC0298a {

    /* renamed from: s */
    private static final Interpolator f568s = new AccelerateInterpolator();

    /* renamed from: t */
    private static final Interpolator f569t = new DecelerateInterpolator();

    /* renamed from: B */
    private boolean f571B;

    /* renamed from: D */
    private boolean f573D;

    /* renamed from: F */
    private boolean f575F;

    /* renamed from: a */
    Context f576a;

    /* renamed from: b */
    ActionBarOverlayLayout f577b;

    /* renamed from: c */
    ActionBarContainer f578c;

    /* renamed from: d */
    AbstractC0406o f579d;

    /* renamed from: e */
    ActionBarContextView f580e;

    /* renamed from: f */
    View f581f;

    /* renamed from: g */
    ScrollingTabContainerView f582g;

    /* renamed from: h */
    C0219a f583h;

    /* renamed from: i */
    AbstractC0241b f584i;

    /* renamed from: j */
    AbstractC0241b.AbstractC0242a f585j;

    /* renamed from: l */
    boolean f587l;

    /* renamed from: m */
    boolean f588m;

    /* renamed from: n */
    C0251h f589n;

    /* renamed from: o */
    boolean f590o;

    /* renamed from: u */
    private Context f594u;

    /* renamed from: v */
    private Activity f595v;

    /* renamed from: y */
    private boolean f598y;

    /* renamed from: z */
    private boolean f599z;

    /* renamed from: w */
    private ArrayList<Object> f596w = new ArrayList<>();

    /* renamed from: x */
    private int f597x = -1;

    /* renamed from: A */
    private ArrayList<Object> f570A = new ArrayList<>();

    /* renamed from: C */
    private int f572C = 0;

    /* renamed from: k */
    boolean f586k = true;

    /* renamed from: E */
    private boolean f574E = true;

    /* renamed from: p */
    final AbstractC0944z f591p = new C0887aa() { // from class: androidx.appcompat.app.m.1
        @Override // androidx.core.view.C0887aa, androidx.core.view.AbstractC0944z
        /* renamed from: b */
        public final void mo44038b(View view) {
            if (C0215m.this.f586k && C0215m.this.f581f != null) {
                C0215m.this.f581f.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                C0215m.this.f578c.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            C0215m.this.f578c.setVisibility(8);
            C0215m.this.f578c.setTransitioning(false);
            C0215m.this.f589n = null;
            C0215m c0215m = C0215m.this;
            if (c0215m.f585j != null) {
                c0215m.f585j.mo28726a(c0215m.f584i);
                c0215m.f584i = null;
                c0215m.f585j = null;
            }
            if (C0215m.this.f577b != null) {
                C0926v.m44081r(C0215m.this.f577b);
            }
        }
    };

    /* renamed from: q */
    final AbstractC0944z f592q = new C0887aa() { // from class: androidx.appcompat.app.m.2
        @Override // androidx.core.view.C0887aa, androidx.core.view.AbstractC0944z
        /* renamed from: b */
        public final void mo44038b(View view) {
            C0215m.this.f589n = null;
            C0215m.this.f578c.requestLayout();
        }
    };

    /* renamed from: r */
    final AbstractC0888ab f593r = new AbstractC0888ab() { // from class: androidx.appcompat.app.m.3
        @Override // androidx.core.view.AbstractC0888ab
        /* renamed from: a */
        public final void mo44232a() {
            ((View) C0215m.this.f578c.getParent()).invalidate();
        }
    };

    /* renamed from: androidx.appcompat.app.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/m$a.class */
    public final class C0219a extends AbstractC0241b implements C0268g.AbstractC0269a {

        /* renamed from: a */
        final C0268g f603a;

        /* renamed from: e */
        private final Context f605e;

        /* renamed from: f */
        private AbstractC0241b.AbstractC0242a f606f;

        /* renamed from: g */
        private WeakReference<View> f607g;

        public C0219a(Context context, AbstractC0241b.AbstractC0242a abstractC0242a) {
            C0215m.this = r5;
            this.f605e = context;
            this.f606f = abstractC0242a;
            C0268g c0268g = new C0268g(context);
            c0268g.f887e = 1;
            this.f603a = c0268g;
            c0268g.mo46041a(this);
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: a */
        public final MenuInflater mo46166a() {
            return new C0248g(this.f605e);
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: a */
        public final void mo46165a(int i) {
            mo46159b(C0215m.this.f576a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: a */
        public final void mo46164a(View view) {
            C0215m.this.f580e.setCustomView(view);
            this.f607g = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
        /* renamed from: a */
        public final void mo10362a(C0268g c0268g) {
            if (this.f606f == null) {
                return;
            }
            mo46157d();
            C0215m.this.f580e.mo45818a();
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: a */
        public final void mo46163a(CharSequence charSequence) {
            C0215m.this.f580e.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: a */
        public final void mo46162a(boolean z) {
            super.mo46162a(z);
            C0215m.this.f580e.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
        /* renamed from: a */
        public final boolean mo10361a(C0268g c0268g, MenuItem menuItem) {
            AbstractC0241b.AbstractC0242a abstractC0242a = this.f606f;
            if (abstractC0242a != null) {
                return abstractC0242a.mo28724a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: b */
        public final Menu mo46161b() {
            return this.f603a;
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: b */
        public final void mo46160b(int i) {
            mo46163a(C0215m.this.f576a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: b */
        public final void mo46159b(CharSequence charSequence) {
            C0215m.this.f580e.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: c */
        public final void mo46158c() {
            if (C0215m.this.f583h != this) {
                return;
            }
            if (!C0215m.m46236a(C0215m.this.f587l, C0215m.this.f588m, false)) {
                C0215m.this.f584i = this;
                C0215m.this.f585j = this.f606f;
            } else {
                this.f606f.mo28726a(this);
            }
            this.f606f = null;
            C0215m.this.m46223f(false);
            C0215m.this.f580e.m46030b();
            C0215m.this.f579d.mo45655a().sendAccessibilityEvent(32);
            C0215m.this.f577b.setHideOnContentScrollEnabled(C0215m.this.f590o);
            C0215m.this.f583h = null;
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: d */
        public final void mo46157d() {
            if (C0215m.this.f583h != this) {
                return;
            }
            this.f603a.m46088e();
            try {
                this.f606f.mo28723b(this, this.f603a);
            } finally {
                this.f603a.m46087f();
            }
        }

        /* renamed from: e */
        public final boolean m46212e() {
            this.f603a.m46088e();
            try {
                return this.f606f.mo28725a(this, this.f603a);
            } finally {
                this.f603a.m46087f();
            }
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: f */
        public final CharSequence mo46156f() {
            return C0215m.this.f580e.f1006g;
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: g */
        public final CharSequence mo46155g() {
            return C0215m.this.f580e.f1007h;
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: h */
        public final boolean mo46154h() {
            return C0215m.this.f580e.f1008i;
        }

        @Override // androidx.appcompat.view.AbstractC0241b
        /* renamed from: i */
        public final View mo46153i() {
            WeakReference<View> weakReference = this.f607g;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }
    }

    public C0215m(Activity activity, boolean z) {
        this.f595v = activity;
        View decorView = activity.getWindow().getDecorView();
        m46240a(decorView);
        if (!z) {
            this.f581f = decorView.findViewById(16908290);
        }
    }

    public C0215m(Dialog dialog) {
        m46240a(dialog.getWindow().getDecorView());
    }

    public C0215m(View view) {
        m46240a(view);
    }

    /* renamed from: a */
    private void m46240a(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(C0142a.C0148f.decor_content_parent);
        this.f577b = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f579d = m46232b(view.findViewById(C0142a.C0148f.action_bar));
        this.f580e = (ActionBarContextView) view.findViewById(C0142a.C0148f.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(C0142a.C0148f.action_bar_container);
        this.f578c = actionBarContainer;
        AbstractC0406o abstractC0406o = this.f579d;
        if (abstractC0406o == null || this.f580e == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f576a = abstractC0406o.mo45644b();
        if ((this.f579d.mo45626m() & 4) != 0) {
            this.f598y = true;
        }
        C0240a m46173a = C0240a.m46173a(this.f576a);
        m46173a.m46170d();
        m46221g(m46173a.m46172b());
        TypedArray obtainStyledAttributes = this.f576a.obtainStyledAttributes(null, C0142a.C0152j.ActionBar, C0142a.C0143a.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(C0142a.C0152j.ActionBar_hideOnContentScroll, false)) {
            mo46220h();
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0142a.C0152j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            mo46245a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    static boolean m46236a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return !z && !z2;
    }

    /* renamed from: b */
    private static AbstractC0406o m46232b(View view) {
        if (view instanceof AbstractC0406o) {
            return (AbstractC0406o) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).m45833i();
        }
        StringBuilder sb = new StringBuilder("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : JsonReaderKt.NULL);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: g */
    private void m46221g(boolean z) {
        this.f571B = z;
        if (!z) {
            this.f579d.mo45647a((ScrollingTabContainerView) null);
            this.f578c.setTabContainer(this.f582g);
        } else {
            this.f578c.setTabContainer(null);
            this.f579d.mo45647a(this.f582g);
        }
        boolean z2 = m46215q() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.f582g;
        if (scrollingTabContainerView != null) {
            if (z2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f577b;
                if (actionBarOverlayLayout != null) {
                    C0926v.m44081r(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f579d.mo45645a(!this.f571B && z2);
        this.f577b.setHasNonEmbeddedTabs(!this.f571B && z2);
    }

    /* renamed from: h */
    private void m46219h(boolean z) {
        if (m46236a(this.f587l, this.f588m, this.f573D)) {
            if (this.f574E) {
                return;
            }
            this.f574E = true;
            m46218i(z);
        } else if (!this.f574E) {
        } else {
            this.f574E = false;
            m46217j(z);
        }
    }

    /* renamed from: i */
    private void m46218i(boolean z) {
        View view;
        View view2;
        int[] iArr;
        C0251h c0251h = this.f589n;
        if (c0251h != null) {
            c0251h.m46135b();
        }
        this.f578c.setVisibility(0);
        if (this.f572C != 0 || (!this.f575F && !z)) {
            this.f578c.setAlpha(1.0f);
            this.f578c.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            if (this.f586k && (view = this.f581f) != null) {
                view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            this.f592q.mo44038b(null);
        } else {
            this.f578c.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            float f = -this.f578c.getHeight();
            float f2 = f;
            if (z) {
                this.f578c.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            this.f578c.setTranslationY(f2);
            C0251h c0251h2 = new C0251h();
            C0940y m44042b = C0926v.m44086m(this.f578c).m44042b(BitmapDescriptorFactory.HUE_RED);
            m44042b.m44045a(this.f593r);
            c0251h2.m46138a(m44042b);
            if (this.f586k && (view2 = this.f581f) != null) {
                view2.setTranslationY(f2);
                c0251h2.m46138a(C0926v.m44086m(this.f581f).m44042b(BitmapDescriptorFactory.HUE_RED));
            }
            c0251h2.m46139a(f569t);
            c0251h2.m46134c();
            c0251h2.m46136a(this.f592q);
            this.f589n = c0251h2;
            c0251h2.m46140a();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f577b;
        if (actionBarOverlayLayout != null) {
            C0926v.m44081r(actionBarOverlayLayout);
        }
    }

    /* renamed from: j */
    private void m46217j(boolean z) {
        View view;
        int[] iArr;
        C0251h c0251h = this.f589n;
        if (c0251h != null) {
            c0251h.m46135b();
        }
        if (this.f572C != 0 || (!this.f575F && !z)) {
            this.f591p.mo44038b(null);
            return;
        }
        this.f578c.setAlpha(1.0f);
        this.f578c.setTransitioning(true);
        C0251h c0251h2 = new C0251h();
        float f = -this.f578c.getHeight();
        float f2 = f;
        if (z) {
            this.f578c.getLocationInWindow(new int[]{0, 0});
            f2 = f - iArr[1];
        }
        C0940y m44042b = C0926v.m44086m(this.f578c).m44042b(f2);
        m44042b.m44045a(this.f593r);
        c0251h2.m46138a(m44042b);
        if (this.f586k && (view = this.f581f) != null) {
            c0251h2.m46138a(C0926v.m44086m(view).m44042b(f2));
        }
        c0251h2.m46139a(f568s);
        c0251h2.m46134c();
        c0251h2.m46136a(this.f591p);
        this.f589n = c0251h2;
        c0251h2.m46140a();
    }

    /* renamed from: q */
    private int m46215q() {
        return this.f579d.mo45625n();
    }

    /* renamed from: r */
    private void m46214r() {
        if (!this.f573D) {
            this.f573D = true;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f577b;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(true);
            }
            m46219h(false);
        }
    }

    /* renamed from: s */
    private void m46213s() {
        if (this.f573D) {
            this.f573D = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f577b;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m46219h(false);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final AbstractC0241b mo46239a(AbstractC0241b.AbstractC0242a abstractC0242a) {
        C0219a c0219a = this.f583h;
        if (c0219a != null) {
            c0219a.mo46158c();
        }
        this.f577b.setHideOnContentScrollEnabled(false);
        this.f580e.m46029c();
        C0219a c0219a2 = new C0219a(this.f580e.getContext(), abstractC0242a);
        if (c0219a2.m46212e()) {
            this.f583h = c0219a2;
            c0219a2.mo46157d();
            this.f580e.m46031a(c0219a2);
            m46223f(true);
            this.f580e.sendAccessibilityEvent(32);
            return c0219a2;
        }
        return null;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46246a() {
        this.f598y = true;
        this.f579d.mo45639c(20);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46245a(float f) {
        C0926v.m44138a(this.f578c, f);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46244a(int i) {
        this.f579d.mo45650a(LayoutInflater.from(mo46222g()).inflate(i, this.f579d.mo45655a(), false));
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46242a(Configuration configuration) {
        m46221g(C0240a.m46173a(this.f576a).m46172b());
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46241a(Drawable drawable) {
        this.f578c.setPrimaryBackground(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46238a(CharSequence charSequence) {
        this.f579d.mo45641b(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46237a(boolean z) {
        int i = z ? 4 : 0;
        int mo45626m = this.f579d.mo45626m();
        this.f598y = true;
        this.f579d.mo45639c((i & 4) | (mo45626m & (-5)));
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final boolean mo46243a(int i, KeyEvent keyEvent) {
        C0268g c0268g;
        C0219a c0219a = this.f583h;
        if (c0219a == null || (c0268g = c0219a.f603a) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        c0268g.setQwertyMode(z);
        return c0268g.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final View mo46235b() {
        return this.f579d.mo45624o();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo46234b(int i) {
        this.f579d.mo45636d(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo46233b(Drawable drawable) {
        this.f579d.mo45642b(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo46231b(CharSequence charSequence) {
        this.f579d.mo45646a(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo46230b(boolean z) {
        if (!this.f598y) {
            mo46237a(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: c */
    public final CharSequence mo46229c() {
        return this.f579d.mo45635e();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0298a
    /* renamed from: c */
    public final void mo46022c(int i) {
        this.f572C = i;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: c */
    public final void mo46228c(boolean z) {
        C0251h c0251h;
        this.f575F = z;
        if (z || (c0251h = this.f589n) == null) {
            return;
        }
        c0251h.m46135b();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: d */
    public final int mo46227d() {
        return this.f579d.mo45626m();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: d */
    public final void mo46226d(boolean z) {
        if (z == this.f599z) {
            return;
        }
        this.f599z = z;
        int size = this.f570A.size();
        for (int i = 0; i < size; i++) {
            this.f570A.get(i);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: e */
    public final void mo46225e() {
        if (this.f587l) {
            this.f587l = false;
            m46219h(false);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0298a
    /* renamed from: e */
    public final void mo46021e(boolean z) {
        this.f586k = z;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: f */
    public final void mo46224f() {
        if (!this.f587l) {
            this.f587l = true;
            m46219h(false);
        }
    }

    /* renamed from: f */
    public final void m46223f(boolean z) {
        C0940y c0940y;
        C0940y c0940y2;
        if (z) {
            m46214r();
        } else {
            m46213s();
        }
        if (!C0926v.m44157B(this.f578c)) {
            if (z) {
                this.f579d.mo45634e(4);
                this.f580e.setVisibility(0);
                return;
            }
            this.f579d.mo45634e(0);
            this.f580e.setVisibility(8);
            return;
        }
        if (z) {
            c0940y2 = this.f579d.mo45653a(4, 100L);
            c0940y = this.f580e.mo45816a(0, 200L);
        } else {
            c0940y = this.f579d.mo45653a(0, 200L);
            c0940y2 = this.f580e.mo45816a(8, 100L);
        }
        C0251h c0251h = new C0251h();
        c0251h.m46137a(c0940y2, c0940y);
        c0251h.m46140a();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: g */
    public final Context mo46222g() {
        if (this.f594u == null) {
            TypedValue typedValue = new TypedValue();
            this.f576a.getTheme().resolveAttribute(C0142a.C0143a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f594u = new ContextThemeWrapper(this.f576a, i);
            } else {
                this.f594u = this.f576a;
            }
        }
        return this.f594u;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: h */
    public final void mo46220h() {
        if (this.f577b.f1027b) {
            this.f590o = true;
            this.f577b.setHideOnContentScrollEnabled(true);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: l */
    public final boolean mo46216l() {
        AbstractC0406o abstractC0406o = this.f579d;
        if (abstractC0406o == null || !abstractC0406o.mo45640c()) {
            return false;
        }
        this.f579d.mo45637d();
        return true;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0298a
    /* renamed from: n */
    public final void mo46020n() {
        if (this.f588m) {
            this.f588m = false;
            m46219h(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0298a
    /* renamed from: o */
    public final void mo46019o() {
        if (!this.f588m) {
            this.f588m = true;
            m46219h(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.AbstractC0298a
    /* renamed from: p */
    public final void mo46018p() {
        C0251h c0251h = this.f589n;
        if (c0251h != null) {
            c0251h.m46135b();
            this.f589n = null;
        }
    }
}
