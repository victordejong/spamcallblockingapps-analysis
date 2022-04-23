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
import androidx.appcompat.a;
import androidx.appcompat.view.b;
import androidx.appcompat.view.h;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.o;
import androidx.core.view.aa;
import androidx.core.view.ab;
import androidx.core.view.v;
import androidx.core.view.y;
import androidx.core.view.z;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/m.class */
public final class m extends ActionBar implements ActionBarOverlayLayout.a {
    private static final Interpolator s = new AccelerateInterpolator();
    private static final Interpolator t = new DecelerateInterpolator();
    private boolean B;
    private boolean D;
    private boolean F;

    /* renamed from: a  reason: collision with root package name */
    Context f691a;

    /* renamed from: b  reason: collision with root package name */
    ActionBarOverlayLayout f692b;

    /* renamed from: c  reason: collision with root package name */
    ActionBarContainer f693c;

    /* renamed from: d  reason: collision with root package name */
    o f694d;
    ActionBarContextView e;
    View f;
    ScrollingTabContainerView g;
    a h;
    b i;
    b.a j;
    boolean l;
    boolean m;
    h n;
    boolean o;
    private Context u;
    private Activity v;
    private boolean y;
    private boolean z;
    private ArrayList<Object> w = new ArrayList<>();
    private int x = -1;
    private ArrayList<Object> A = new ArrayList<>();
    private int C = 0;
    boolean k = true;
    private boolean E = true;
    final z p = new aa() { // from class: androidx.appcompat.app.m.1
        @Override // androidx.core.view.aa, androidx.core.view.z
        public final void b(View view) {
            if (m.this.k && m.this.f != null) {
                m.this.f.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                m.this.f693c.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            m.this.f693c.setVisibility(8);
            m.this.f693c.setTransitioning(false);
            m.this.n = null;
            m mVar = m.this;
            if (mVar.j != null) {
                mVar.j.a(mVar.i);
                mVar.i = null;
                mVar.j = null;
            }
            if (m.this.f692b != null) {
                v.r(m.this.f692b);
            }
        }
    };
    final z q = new aa() { // from class: androidx.appcompat.app.m.2
        @Override // androidx.core.view.aa, androidx.core.view.z
        public final void b(View view) {
            m.this.n = null;
            m.this.f693c.requestLayout();
        }
    };
    final ab r = new ab() { // from class: androidx.appcompat.app.m.3
        @Override // androidx.core.view.ab
        public final void a() {
            ((View) m.this.f693c.getParent()).invalidate();
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/m$a.class */
    public final class a extends b implements g.a {

        /* renamed from: a  reason: collision with root package name */
        final g f698a;
        private final Context e;
        private b.a f;
        private WeakReference<View> g;

        public a(Context context, b.a aVar) {
            this.e = context;
            this.f = aVar;
            g gVar = new g(context);
            gVar.e = 1;
            this.f698a = gVar;
            gVar.a(this);
        }

        @Override // androidx.appcompat.view.b
        public final MenuInflater a() {
            return new androidx.appcompat.view.g(this.e);
        }

        @Override // androidx.appcompat.view.b
        public final void a(int i) {
            b(m.this.f691a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.b
        public final void a(View view) {
            m.this.e.setCustomView(view);
            this.g = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.menu.g.a
        public final void a(g gVar) {
            if (this.f != null) {
                d();
                m.this.e.a();
            }
        }

        @Override // androidx.appcompat.view.b
        public final void a(CharSequence charSequence) {
            m.this.e.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public final void a(boolean z) {
            super.a(z);
            m.this.e.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.menu.g.a
        public final boolean a(g gVar, MenuItem menuItem) {
            b.a aVar = this.f;
            if (aVar != null) {
                return aVar.a(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.b
        public final Menu b() {
            return this.f698a;
        }

        @Override // androidx.appcompat.view.b
        public final void b(int i) {
            a(m.this.f691a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.b
        public final void b(CharSequence charSequence) {
            m.this.e.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public final void c() {
            if (m.this.h == this) {
                if (!m.a(m.this.l, m.this.m, false)) {
                    m.this.i = this;
                    m.this.j = this.f;
                } else {
                    this.f.a(this);
                }
                this.f = null;
                m.this.f(false);
                m.this.e.b();
                m.this.f694d.a().sendAccessibilityEvent(32);
                m.this.f692b.setHideOnContentScrollEnabled(m.this.o);
                m.this.h = null;
            }
        }

        @Override // androidx.appcompat.view.b
        public final void d() {
            if (m.this.h == this) {
                this.f698a.e();
                try {
                    this.f.b(this, this.f698a);
                } finally {
                    this.f698a.f();
                }
            }
        }

        public final boolean e() {
            this.f698a.e();
            try {
                return this.f.a(this, this.f698a);
            } finally {
                this.f698a.f();
            }
        }

        @Override // androidx.appcompat.view.b
        public final CharSequence f() {
            return m.this.e.g;
        }

        @Override // androidx.appcompat.view.b
        public final CharSequence g() {
            return m.this.e.h;
        }

        @Override // androidx.appcompat.view.b
        public final boolean h() {
            return m.this.e.i;
        }

        @Override // androidx.appcompat.view.b
        public final View i() {
            WeakReference<View> weakReference = this.g;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }
    }

    public m(Activity activity, boolean z) {
        this.v = activity;
        View decorView = activity.getWindow().getDecorView();
        a(decorView);
        if (!z) {
            this.f = decorView.findViewById(16908290);
        }
    }

    public m(Dialog dialog) {
        a(dialog.getWindow().getDecorView());
    }

    public m(View view) {
        a(view);
    }

    private void a(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(a.f.decor_content_parent);
        this.f692b = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f694d = b(view.findViewById(a.f.action_bar));
        this.e = (ActionBarContextView) view.findViewById(a.f.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(a.f.action_bar_container);
        this.f693c = actionBarContainer;
        o oVar = this.f694d;
        if (oVar == null || this.e == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f691a = oVar.b();
        if ((this.f694d.m() & 4) != 0) {
            this.y = true;
        }
        androidx.appcompat.view.a a2 = androidx.appcompat.view.a.a(this.f691a);
        a2.d();
        g(a2.b());
        TypedArray obtainStyledAttributes = this.f691a.obtainStyledAttributes(null, a.j.ActionBar, a.C0018a.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(a.j.ActionBar_hideOnContentScroll, false)) {
            h();
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            a(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    static boolean a(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return !z && !z2;
    }

    private static o b(View view) {
        if (view instanceof o) {
            return (o) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).i();
        }
        StringBuilder sb = new StringBuilder("Can't make a decor toolbar out of ");
        sb.append(view != null ? view.getClass().getSimpleName() : JsonReaderKt.NULL);
        throw new IllegalStateException(sb.toString());
    }

    private void g(boolean z) {
        this.B = z;
        if (!z) {
            this.f694d.a((ScrollingTabContainerView) null);
            this.f693c.setTabContainer(this.g);
        } else {
            this.f693c.setTabContainer(null);
            this.f694d.a(this.g);
        }
        boolean z2 = true;
        boolean z3 = q() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.g;
        if (scrollingTabContainerView != null) {
            if (z3) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f692b;
                if (actionBarOverlayLayout != null) {
                    v.r(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f694d.a(!this.B && z3);
        ActionBarOverlayLayout actionBarOverlayLayout2 = this.f692b;
        if (this.B || !z3) {
            z2 = false;
        }
        actionBarOverlayLayout2.setHasNonEmbeddedTabs(z2);
    }

    private void h(boolean z) {
        if (a(this.l, this.m, this.D)) {
            if (!this.E) {
                this.E = true;
                i(z);
            }
        } else if (this.E) {
            this.E = false;
            j(z);
        }
    }

    private void i(boolean z) {
        View view;
        View view2;
        int[] iArr;
        h hVar = this.n;
        if (hVar != null) {
            hVar.b();
        }
        this.f693c.setVisibility(0);
        if (this.C != 0 || (!this.F && !z)) {
            this.f693c.setAlpha(1.0f);
            this.f693c.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            if (this.k && (view = this.f) != null) {
                view.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
            this.q.b(null);
        } else {
            this.f693c.setTranslationY(BitmapDescriptorFactory.HUE_RED);
            float f = -this.f693c.getHeight();
            float f2 = f;
            if (z) {
                this.f693c.getLocationInWindow(new int[]{0, 0});
                f2 = f - iArr[1];
            }
            this.f693c.setTranslationY(f2);
            h hVar2 = new h();
            y b2 = v.m(this.f693c).b(BitmapDescriptorFactory.HUE_RED);
            b2.a(this.r);
            hVar2.a(b2);
            if (this.k && (view2 = this.f) != null) {
                view2.setTranslationY(f2);
                hVar2.a(v.m(this.f).b(BitmapDescriptorFactory.HUE_RED));
            }
            hVar2.a(t);
            hVar2.c();
            hVar2.a(this.q);
            this.n = hVar2;
            hVar2.a();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f692b;
        if (actionBarOverlayLayout != null) {
            v.r(actionBarOverlayLayout);
        }
    }

    private void j(boolean z) {
        View view;
        int[] iArr;
        h hVar = this.n;
        if (hVar != null) {
            hVar.b();
        }
        if (this.C != 0 || (!this.F && !z)) {
            this.p.b(null);
            return;
        }
        this.f693c.setAlpha(1.0f);
        this.f693c.setTransitioning(true);
        h hVar2 = new h();
        float f = -this.f693c.getHeight();
        float f2 = f;
        if (z) {
            this.f693c.getLocationInWindow(new int[]{0, 0});
            f2 = f - iArr[1];
        }
        y b2 = v.m(this.f693c).b(f2);
        b2.a(this.r);
        hVar2.a(b2);
        if (this.k && (view = this.f) != null) {
            hVar2.a(v.m(view).b(f2));
        }
        hVar2.a(s);
        hVar2.c();
        hVar2.a(this.p);
        this.n = hVar2;
        hVar2.a();
    }

    private int q() {
        return this.f694d.n();
    }

    private void r() {
        if (!this.D) {
            this.D = true;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f692b;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(true);
            }
            h(false);
        }
    }

    private void s() {
        if (this.D) {
            this.D = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f692b;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            h(false);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final b a(b.a aVar) {
        a aVar2 = this.h;
        if (aVar2 != null) {
            aVar2.c();
        }
        this.f692b.setHideOnContentScrollEnabled(false);
        this.e.c();
        a aVar3 = new a(this.e.getContext(), aVar);
        if (!aVar3.e()) {
            return null;
        }
        this.h = aVar3;
        aVar3.d();
        this.e.a(aVar3);
        f(true);
        this.e.sendAccessibilityEvent(32);
        return aVar3;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a() {
        this.y = true;
        this.f694d.c(20);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(float f) {
        v.a(this.f693c, f);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(int i) {
        this.f694d.a(LayoutInflater.from(g()).inflate(i, this.f694d.a(), false));
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(Configuration configuration) {
        g(androidx.appcompat.view.a.a(this.f691a).b());
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(Drawable drawable) {
        this.f693c.setPrimaryBackground(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(CharSequence charSequence) {
        this.f694d.b(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(boolean z) {
        int i = z ? 4 : 0;
        int m = this.f694d.m();
        this.y = true;
        this.f694d.c((i & 4) | (m & (-5)));
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean a(int i, KeyEvent keyEvent) {
        g gVar;
        a aVar = this.h;
        if (aVar == null || (gVar = aVar.f698a) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        gVar.setQwertyMode(z);
        return gVar.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final View b() {
        return this.f694d.o();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void b(int i) {
        this.f694d.d(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void b(Drawable drawable) {
        this.f694d.b(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void b(CharSequence charSequence) {
        this.f694d.a(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void b(boolean z) {
        if (!this.y) {
            a(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final CharSequence c() {
        return this.f694d.e();
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public final void c(int i) {
        this.C = i;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void c(boolean z) {
        h hVar;
        this.F = z;
        if (!z && (hVar = this.n) != null) {
            hVar.b();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final int d() {
        return this.f694d.m();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void d(boolean z) {
        if (z != this.z) {
            this.z = z;
            int size = this.A.size();
            for (int i = 0; i < size; i++) {
                this.A.get(i);
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void e() {
        if (this.l) {
            this.l = false;
            h(false);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public final void e(boolean z) {
        this.k = z;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void f() {
        if (!this.l) {
            this.l = true;
            h(false);
        }
    }

    public final void f(boolean z) {
        y yVar;
        y yVar2;
        if (z) {
            r();
        } else {
            s();
        }
        if (v.B(this.f693c)) {
            if (z) {
                yVar2 = this.f694d.a(4, 100L);
                yVar = this.e.a(0, 200L);
            } else {
                yVar = this.f694d.a(0, 200L);
                yVar2 = this.e.a(8, 100L);
            }
            h hVar = new h();
            hVar.a(yVar2, yVar);
            hVar.a();
        } else if (z) {
            this.f694d.e(4);
            this.e.setVisibility(0);
        } else {
            this.f694d.e(0);
            this.e.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final Context g() {
        if (this.u == null) {
            TypedValue typedValue = new TypedValue();
            this.f691a.getTheme().resolveAttribute(a.C0018a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.u = new ContextThemeWrapper(this.f691a, i);
            } else {
                this.u = this.f691a;
            }
        }
        return this.u;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void h() {
        if (this.f692b.f851b) {
            this.o = true;
            this.f692b.setHideOnContentScrollEnabled(true);
            return;
        }
        throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean l() {
        o oVar = this.f694d;
        if (oVar == null || !oVar.c()) {
            return false;
        }
        this.f694d.d();
        return true;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public final void n() {
        if (this.m) {
            this.m = false;
            h(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public final void o() {
        if (!this.m) {
            this.m = true;
            h(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.a
    public final void p() {
        h hVar = this.n;
        if (hVar != null) {
            hVar.b();
            this.n = null;
        }
    }
}
