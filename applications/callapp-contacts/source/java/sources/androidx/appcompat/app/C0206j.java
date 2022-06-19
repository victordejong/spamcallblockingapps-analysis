package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.Window$CallbackC0253i;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.widget.AbstractC0406o;
import androidx.appcompat.widget.C0371ac;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.C0926v;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.app.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j.class */
public final class C0206j extends ActionBar {

    /* renamed from: a */
    AbstractC0406o f540a;

    /* renamed from: b */
    boolean f541b;

    /* renamed from: c */
    Window.Callback f542c;

    /* renamed from: d */
    private boolean f543d;

    /* renamed from: e */
    private boolean f544e;

    /* renamed from: f */
    private ArrayList<Object> f545f = new ArrayList<>();

    /* renamed from: g */
    private final Runnable f546g = new Runnable() { // from class: androidx.appcompat.app.j.1
        /* JADX WARN: Finally extract failed */
        @Override // java.lang.Runnable
        public final void run() {
            C0206j c0206j = C0206j.this;
            Menu m46250n = c0206j.m46250n();
            C0268g c0268g = m46250n instanceof C0268g ? (C0268g) m46250n : null;
            if (c0268g != null) {
                c0268g.m46088e();
            }
            try {
                m46250n.clear();
                if (!c0206j.f542c.onCreatePanelMenu(0, m46250n) || !c0206j.f542c.onPreparePanel(0, null, m46250n)) {
                    m46250n.clear();
                }
                if (c0268g == null) {
                    return;
                }
                c0268g.m46087f();
            } catch (Throwable th) {
                if (c0268g != null) {
                    c0268g.m46087f();
                }
                throw th;
            }
        }
    };

    /* renamed from: h */
    private final Toolbar.AbstractC0365b f547h;

    /* renamed from: androidx.appcompat.app.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$a.class */
    public final class C0209a implements AbstractC0283m.AbstractC0284a {

        /* renamed from: b */
        private boolean f551b;

        C0209a() {
            C0206j.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final void mo45990a(C0268g c0268g, boolean z) {
            if (this.f551b) {
                return;
            }
            this.f551b = true;
            C0206j.this.f540a.mo45627l();
            if (C0206j.this.f542c != null) {
                C0206j.this.f542c.onPanelClosed(108, c0268g);
            }
            this.f551b = false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0283m.AbstractC0284a
        /* renamed from: a */
        public final boolean mo45991a(C0268g c0268g) {
            if (C0206j.this.f542c != null) {
                C0206j.this.f542c.onMenuOpened(108, c0268g);
                return true;
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.app.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$b.class */
    public final class C0210b implements C0268g.AbstractC0269a {
        C0210b() {
            C0206j.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
        /* renamed from: a */
        public final void mo10362a(C0268g c0268g) {
            if (C0206j.this.f542c != null) {
                if (C0206j.this.f540a.mo45632g()) {
                    C0206j.this.f542c.onPanelClosed(108, c0268g);
                } else if (!C0206j.this.f542c.onPreparePanel(0, null, c0268g)) {
                } else {
                    C0206j.this.f542c.onMenuOpened(108, c0268g);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
        /* renamed from: a */
        public final boolean mo10361a(C0268g c0268g, MenuItem menuItem) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$c.class */
    public final class C0211c extends Window$CallbackC0253i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0211c(Window.Callback callback) {
            super(callback);
            C0206j.this = r4;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final View onCreatePanelView(int i) {
            return i == 0 ? new View(C0206j.this.f540a.mo45644b()) : super.onCreatePanelView(i);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0253i, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel && !C0206j.this.f541b) {
                C0206j.this.f540a.mo45628k();
                C0206j.this.f541b = true;
            }
            return onPreparePanel;
        }
    }

    public C0206j(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        Toolbar.AbstractC0365b abstractC0365b = new Toolbar.AbstractC0365b() { // from class: androidx.appcompat.app.j.2
            @Override // androidx.appcompat.widget.Toolbar.AbstractC0365b
            /* renamed from: a */
            public final boolean mo45820a(MenuItem menuItem) {
                return C0206j.this.f542c.onMenuItemSelected(0, menuItem);
            }
        };
        this.f547h = abstractC0365b;
        this.f540a = new C0371ac(toolbar, false);
        C0211c c0211c = new C0211c(callback);
        this.f542c = c0211c;
        this.f540a.mo45649a(c0211c);
        toolbar.setOnMenuItemClickListener(abstractC0365b);
        this.f540a.mo45646a(charSequence);
    }

    /* renamed from: a */
    private void m46256a(int i, int i2) {
        this.f540a.mo45639c((i & i2) | ((i2 ^ (-1)) & this.f540a.mo45626m()));
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46246a() {
        m46256a(20, -1);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46245a(float f) {
        C0926v.m44138a(this.f540a.mo45655a(), f);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46244a(int i) {
        View inflate = LayoutInflater.from(this.f540a.mo45644b()).inflate(i, this.f540a.mo45655a(), false);
        ActionBar.LayoutParams layoutParams = new ActionBar.LayoutParams(-2, -2);
        if (inflate != null) {
            inflate.setLayoutParams(layoutParams);
        }
        this.f540a.mo45650a(inflate);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46242a(Configuration configuration) {
        super.mo46242a(configuration);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46241a(Drawable drawable) {
        this.f540a.mo45638c(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46238a(CharSequence charSequence) {
        this.f540a.mo45641b(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final void mo46237a(boolean z) {
        m46256a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final boolean mo46243a(int i, KeyEvent keyEvent) {
        Menu m46250n = m46250n();
        if (m46250n != null) {
            boolean z = true;
            if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
                z = false;
            }
            m46250n.setQwertyMode(z);
            return m46250n.performShortcut(i, keyEvent, 0);
        }
        return false;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: a */
    public final boolean mo46255a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            mo46254i();
            return true;
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final View mo46235b() {
        return this.f540a.mo45624o();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo46234b(int i) {
        this.f540a.mo45636d(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo46233b(Drawable drawable) {
        this.f540a.mo45642b(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo46231b(CharSequence charSequence) {
        this.f540a.mo45646a(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: b */
    public final void mo46230b(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: c */
    public final CharSequence mo46229c() {
        return this.f540a.mo45635e();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: c */
    public final void mo46228c(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: d */
    public final int mo46227d() {
        return this.f540a.mo45626m();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: d */
    public final void mo46226d(boolean z) {
        if (z == this.f544e) {
            return;
        }
        this.f544e = z;
        int size = this.f545f.size();
        for (int i = 0; i < size; i++) {
            this.f545f.get(i);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: e */
    public final void mo46225e() {
        this.f540a.mo45634e(0);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: f */
    public final void mo46224f() {
        this.f540a.mo45634e(8);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: g */
    public final Context mo46222g() {
        return this.f540a.mo45644b();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: i */
    public final boolean mo46254i() {
        return this.f540a.mo45630i();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: j */
    public final boolean mo46253j() {
        return this.f540a.mo45629j();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: k */
    public final boolean mo46252k() {
        this.f540a.mo45655a().removeCallbacks(this.f546g);
        C0926v.m44117a(this.f540a.mo45655a(), this.f546g);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: l */
    public final boolean mo46216l() {
        if (this.f540a.mo45640c()) {
            this.f540a.mo45637d();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: m */
    public final void mo46251m() {
        this.f540a.mo45655a().removeCallbacks(this.f546g);
    }

    /* renamed from: n */
    final Menu m46250n() {
        if (!this.f543d) {
            this.f540a.mo45648a(new C0209a(), new C0210b());
            this.f543d = true;
        }
        return this.f540a.mo45623p();
    }
}
