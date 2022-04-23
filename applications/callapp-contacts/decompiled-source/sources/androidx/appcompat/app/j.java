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
import androidx.appcompat.view.i;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ac;
import androidx.appcompat.widget.o;
import androidx.core.view.v;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j.class */
public final class j extends ActionBar {

    /* renamed from: a  reason: collision with root package name */
    o f669a;

    /* renamed from: b  reason: collision with root package name */
    boolean f670b;

    /* renamed from: c  reason: collision with root package name */
    Window.Callback f671c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f672d;
    private boolean e;
    private ArrayList<Object> f = new ArrayList<>();
    private final Runnable g = new Runnable() { // from class: androidx.appcompat.app.j.1
        @Override // java.lang.Runnable
        public final void run() {
            j jVar = j.this;
            Menu n = jVar.n();
            g gVar = n instanceof g ? (g) n : null;
            if (gVar != null) {
                gVar.e();
            }
            try {
                n.clear();
                if (!jVar.f671c.onCreatePanelMenu(0, n) || !jVar.f671c.onPreparePanel(0, null, n)) {
                    n.clear();
                }
                if (gVar != null) {
                    gVar.f();
                }
            } catch (Throwable th) {
                if (gVar != null) {
                    gVar.f();
                }
                throw th;
            }
        }
    };
    private final Toolbar.b h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$a.class */
    public final class a implements m.a {

        /* renamed from: b  reason: collision with root package name */
        private boolean f676b;

        a() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final void a(g gVar, boolean z) {
            if (!this.f676b) {
                this.f676b = true;
                j.this.f669a.l();
                if (j.this.f671c != null) {
                    j.this.f671c.onPanelClosed(108, gVar);
                }
                this.f676b = false;
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public final boolean a(g gVar) {
            if (j.this.f671c == null) {
                return false;
            }
            j.this.f671c.onMenuOpened(108, gVar);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$b.class */
    public final class b implements g.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public final void a(g gVar) {
            if (j.this.f671c == null) {
                return;
            }
            if (j.this.f669a.g()) {
                j.this.f671c.onPanelClosed(108, gVar);
            } else if (j.this.f671c.onPreparePanel(0, null, gVar)) {
                j.this.f671c.onMenuOpened(108, gVar);
            }
        }

        @Override // androidx.appcompat.view.menu.g.a
        public final boolean a(g gVar, MenuItem menuItem) {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/j$c.class */
    final class c extends i {
        public c(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final View onCreatePanelView(int i) {
            return i == 0 ? new View(j.this.f669a.b()) : super.onCreatePanelView(i);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel && !j.this.f670b) {
                j.this.f669a.k();
                j.this.f670b = true;
            }
            return onPreparePanel;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        Toolbar.b bVar = new Toolbar.b() { // from class: androidx.appcompat.app.j.2
            @Override // androidx.appcompat.widget.Toolbar.b
            public final boolean a(MenuItem menuItem) {
                return j.this.f671c.onMenuItemSelected(0, menuItem);
            }
        };
        this.h = bVar;
        this.f669a = new ac(toolbar, false);
        c cVar = new c(callback);
        this.f671c = cVar;
        this.f669a.a(cVar);
        toolbar.setOnMenuItemClickListener(bVar);
        this.f669a.a(charSequence);
    }

    private void a(int i, int i2) {
        this.f669a.c((i & i2) | ((i2 ^ (-1)) & this.f669a.m()));
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a() {
        a(20, -1);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(float f) {
        v.a(this.f669a.a(), f);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(int i) {
        View inflate = LayoutInflater.from(this.f669a.b()).inflate(i, this.f669a.a(), false);
        ActionBar.LayoutParams layoutParams = new ActionBar.LayoutParams(-2, -2);
        if (inflate != null) {
            inflate.setLayoutParams(layoutParams);
        }
        this.f669a.a(inflate);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(Configuration configuration) {
        super.a(configuration);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(Drawable drawable) {
        this.f669a.c(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(CharSequence charSequence) {
        this.f669a.b(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void a(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean a(int i, KeyEvent keyEvent) {
        Menu n = n();
        if (n == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        n.setQwertyMode(z);
        return n.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1) {
            return true;
        }
        i();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final View b() {
        return this.f669a.o();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void b(int i) {
        this.f669a.d(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void b(Drawable drawable) {
        this.f669a.b(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void b(CharSequence charSequence) {
        this.f669a.a(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void b(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public final CharSequence c() {
        return this.f669a.e();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void c(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public final int d() {
        return this.f669a.m();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void d(boolean z) {
        if (z != this.e) {
            this.e = z;
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                this.f.get(i);
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void e() {
        this.f669a.e(0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void f() {
        this.f669a.e(8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final Context g() {
        return this.f669a.b();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean i() {
        return this.f669a.i();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean j() {
        return this.f669a.j();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean k() {
        this.f669a.a().removeCallbacks(this.g);
        v.a(this.f669a.a(), this.g);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean l() {
        if (!this.f669a.c()) {
            return false;
        }
        this.f669a.d();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.app.ActionBar
    public final void m() {
        this.f669a.a().removeCallbacks(this.g);
    }

    final Menu n() {
        if (!this.f672d) {
            this.f669a.a(new a(), new b());
            this.f672d = true;
        }
        return this.f669a.p();
    }
}
