package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.view.Window$CallbackC0167i;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.widget.AbstractC0355z;
import androidx.appcompat.widget.C0312at;
import androidx.appcompat.widget.Toolbar;
import androidx.core.p023g.C0552u;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l.class */
public class C0120l extends AbstractC0078a {

    /* renamed from: a */
    AbstractC0355z f372a;

    /* renamed from: b */
    boolean f373b;

    /* renamed from: c */
    Window.Callback f374c;

    /* renamed from: d */
    private boolean f375d;

    /* renamed from: e */
    private boolean f376e;

    /* renamed from: f */
    private ArrayList<AbstractC0078a.AbstractC0080b> f377f = new ArrayList<>();

    /* renamed from: g */
    private final Runnable f378g = new Runnable() { // from class: androidx.appcompat.app.l.1
        @Override // java.lang.Runnable
        public void run() {
            C0120l.this.m7778i();
        }
    };

    /* renamed from: h */
    private final Toolbar.AbstractC0264c f379h = new Toolbar.AbstractC0264c() { // from class: androidx.appcompat.app.l.2
        @Override // androidx.appcompat.widget.Toolbar.AbstractC0264c
        /* renamed from: a */
        public boolean mo7317a(MenuItem menuItem) {
            return C0120l.this.f374c.onMenuItemSelected(0, menuItem);
        }
    };

    /* renamed from: androidx.appcompat.app.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l$a.class */
    public final class C0123a implements AbstractC0197m.AbstractC0198a {

        /* renamed from: b */
        private boolean f383b;

        C0123a() {
            C0120l.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public void mo7435a(C0182g c0182g, boolean z) {
            if (this.f383b) {
                return;
            }
            this.f383b = true;
            C0120l.this.f372a.mo6930n();
            if (C0120l.this.f374c != null) {
                C0120l.this.f374c.onPanelClosed(108, c0182g);
            }
            this.f383b = false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m.AbstractC0198a
        /* renamed from: a */
        public boolean mo7436a(C0182g c0182g) {
            if (C0120l.this.f374c != null) {
                C0120l.this.f374c.onMenuOpened(108, c0182g);
                return true;
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.app.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l$b.class */
    public final class C0124b implements C0182g.AbstractC0183a {
        C0124b() {
            C0120l.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
        public boolean onMenuItemSelected(C0182g c0182g, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
        public void onMenuModeChange(C0182g c0182g) {
            if (C0120l.this.f374c != null) {
                if (C0120l.this.f372a.mo6935i()) {
                    C0120l.this.f374c.onPanelClosed(108, c0182g);
                } else if (!C0120l.this.f374c.onPreparePanel(0, null, c0182g)) {
                } else {
                    C0120l.this.f374c.onMenuOpened(108, c0182g);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.l$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/l$c.class */
    public class C0125c extends Window$CallbackC0167i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0125c(Window.Callback callback) {
            super(callback);
            C0120l.this = r4;
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            return i == 0 ? new View(C0120l.this.f372a.mo6949b()) : super.onCreatePanelView(i);
        }

        @Override // androidx.appcompat.view.Window$CallbackC0167i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel && !C0120l.this.f373b) {
                C0120l.this.f372a.mo6931m();
                C0120l.this.f373b = true;
            }
            return onPreparePanel;
        }
    }

    public C0120l(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f372a = new C0312at(toolbar, false);
        this.f374c = new C0125c(callback);
        this.f372a.mo6954a(this.f374c);
        toolbar.setOnMenuItemClickListener(this.f379h);
        this.f372a.mo6951a(charSequence);
    }

    /* renamed from: j */
    private Menu m7777j() {
        if (!this.f375d) {
            this.f372a.mo6953a(new C0123a(), new C0124b());
            this.f375d = true;
        }
        return this.f372a.mo6927q();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public int mo7768a() {
        return this.f372a.mo6929o();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7767a(float f) {
        C0552u.m6280a(this.f372a.mo6959a(), f);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7766a(int i) {
        this.f372a.mo6941d(i);
    }

    /* renamed from: a */
    public void m7785a(int i, int i2) {
        this.f372a.mo6943c((i & i2) | ((i2 ^ (-1)) & this.f372a.mo6929o()));
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7763a(Configuration configuration) {
        super.mo7763a(configuration);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7762a(Drawable drawable) {
        this.f372a.mo6947b(drawable);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7759a(CharSequence charSequence) {
        this.f372a.mo6946b(charSequence);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public void mo7758a(boolean z) {
        m7785a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public boolean mo7764a(int i, KeyEvent keyEvent) {
        Menu m7777j = m7777j();
        if (m7777j != null) {
            boolean z = true;
            if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
                z = false;
            }
            m7777j.setQwertyMode(z);
            return m7777j.performShortcut(i, keyEvent, 0);
        }
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: a */
    public boolean mo7784a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            mo7783c();
            return true;
        }
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: b */
    public Context mo7756b() {
        return this.f372a.mo6949b();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: b */
    public void mo7754b(CharSequence charSequence) {
        this.f372a.mo6951a(charSequence);
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: b */
    public void mo7753b(boolean z) {
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: c */
    public boolean mo7783c() {
        return this.f372a.mo6933k();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: d */
    public void mo7751d(boolean z) {
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: d */
    public boolean mo7782d() {
        return this.f372a.mo6932l();
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: e */
    public void mo7750e(boolean z) {
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: e */
    public boolean mo7781e() {
        this.f372a.mo6959a().removeCallbacks(this.f378g);
        C0552u.m6265a(this.f372a.mo6959a(), this.f378g);
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: f */
    public void mo7748f(boolean z) {
        if (z == this.f376e) {
            return;
        }
        this.f376e = z;
        int size = this.f377f.size();
        for (int i = 0; i < size; i++) {
            this.f377f.get(i).m7948a(z);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: f */
    public boolean mo7749f() {
        if (this.f372a.mo6944c()) {
            this.f372a.mo6942d();
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AbstractC0078a
    /* renamed from: g */
    public void mo7780g() {
        this.f372a.mo6959a().removeCallbacks(this.f378g);
    }

    /* renamed from: h */
    public Window.Callback m7779h() {
        return this.f374c;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: i */
    void m7778i() {
        Menu m7777j = m7777j();
        C0182g c0182g = m7777j instanceof C0182g ? (C0182g) m7777j : null;
        if (c0182g != null) {
            c0182g.stopDispatchingItemsChanged();
        }
        try {
            m7777j.clear();
            if (!this.f374c.onCreatePanelMenu(0, m7777j) || !this.f374c.onPreparePanel(0, null, m7777j)) {
                m7777j.clear();
            }
            if (c0182g == null) {
                return;
            }
            c0182g.startDispatchingItemsChanged();
        } catch (Throwable th) {
            if (c0182g != null) {
                c0182g.startDispatchingItemsChanged();
            }
            throw th;
        }
    }
}
