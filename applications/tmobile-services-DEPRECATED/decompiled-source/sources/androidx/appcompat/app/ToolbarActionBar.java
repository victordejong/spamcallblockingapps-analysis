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
import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ToolbarActionBar.class */
public class ToolbarActionBar extends ActionBar {

    /* renamed from: a */
    DecorToolbar f281a;

    /* renamed from: b */
    boolean f282b;

    /* renamed from: c */
    Window.Callback f283c;

    /* renamed from: d */
    private boolean f284d;

    /* renamed from: e */
    private boolean f285e;

    /* renamed from: f */
    private ArrayList<ActionBar.OnMenuVisibilityListener> f286f = new ArrayList<>();

    /* renamed from: g */
    private final Runnable f287g = new Runnable() { // from class: androidx.appcompat.app.ToolbarActionBar.1
        @Override // java.lang.Runnable
        public void run() {
            ToolbarActionBar.this.m22130F();
        }
    };

    /* renamed from: h */
    private final Toolbar.OnMenuItemClickListener f288h = new Toolbar.OnMenuItemClickListener() { // from class: androidx.appcompat.app.ToolbarActionBar.2
        @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return ToolbarActionBar.this.f283c.onMenuItemSelected(0, menuItem);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback.class */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {

        /* renamed from: f */
        private boolean f291f;

        ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: c */
        public void mo21698c(@NonNull MenuBuilder menuBuilder, boolean z) {
            if (!this.f291f) {
                this.f291f = true;
                ToolbarActionBar.this.f281a.mo21191f();
                Window.Callback callback = ToolbarActionBar.this.f283c;
                if (callback != null) {
                    callback.onPanelClosed(108, menuBuilder);
                }
                this.f291f = false;
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        /* renamed from: d */
        public boolean mo21697d(@NonNull MenuBuilder menuBuilder) {
            Window.Callback callback = ToolbarActionBar.this.f283c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback.class */
    public final class MenuBuilderCallback implements MenuBuilder.Callback {
        MenuBuilderCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        /* renamed from: a */
        public boolean mo9407a(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        /* renamed from: b */
        public void mo9406b(@NonNull MenuBuilder menuBuilder) {
            ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
            if (toolbarActionBar.f283c == null) {
                return;
            }
            if (toolbarActionBar.f281a.mo21196a()) {
                ToolbarActionBar.this.f283c.onPanelClosed(108, menuBuilder);
            } else if (ToolbarActionBar.this.f283c.onPreparePanel(0, null, menuBuilder)) {
                ToolbarActionBar.this.f283c.onMenuOpened(108, menuBuilder);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ToolbarActionBar$ToolbarCallbackWrapper.class */
    private class ToolbarCallbackWrapper extends WindowCallbackWrapper {
        public ToolbarCallbackWrapper(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            return i == 0 ? new View(ToolbarActionBar.this.f281a.getContext()) : super.onCreatePanelView(i);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel) {
                ToolbarActionBar toolbarActionBar = ToolbarActionBar.this;
                if (!toolbarActionBar.f282b) {
                    toolbarActionBar.f281a.setMenuPrepared();
                    ToolbarActionBar.this.f282b = true;
                }
            }
            return onPreparePanel;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ToolbarActionBar(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f281a = new ToolbarWidgetWrapper(toolbar, false);
        ToolbarCallbackWrapper toolbarCallbackWrapper = new ToolbarCallbackWrapper(callback);
        this.f283c = toolbarCallbackWrapper;
        this.f281a.setWindowCallback(toolbarCallbackWrapper);
        toolbar.setOnMenuItemClickListener(this.f288h);
        this.f281a.setWindowTitle(charSequence);
    }

    /* renamed from: D */
    private Menu m22132D() {
        if (!this.f284d) {
            this.f281a.mo21182o(new ActionMenuPresenterCallback(), new MenuBuilderCallback());
            this.f284d = true;
        }
        return this.f281a.mo21186k();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: A */
    public void mo22115A(CharSequence charSequence) {
        this.f281a.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: B */
    public void mo22114B(CharSequence charSequence) {
        this.f281a.setWindowTitle(charSequence);
    }

    /* renamed from: E */
    public Window.Callback m22131E() {
        return this.f283c;
    }

    /* renamed from: F */
    void m22130F() {
        Menu D = m22132D();
        MenuBuilder menuBuilder = D instanceof MenuBuilder ? (MenuBuilder) D : null;
        if (menuBuilder != null) {
            menuBuilder.m21863h0();
        }
        try {
            D.clear();
            if (!this.f283c.onCreatePanelMenu(0, D) || !this.f283c.onPreparePanel(0, null, D)) {
                D.clear();
            }
            if (menuBuilder != null) {
                menuBuilder.m21864g0();
            }
        } catch (Throwable th) {
            if (menuBuilder != null) {
                menuBuilder.m21864g0();
            }
            throw th;
        }
    }

    /* renamed from: G */
    public void m22129G(int i, int i2) {
        this.f281a.mo21188i((i & i2) | ((i2 ^ (-1)) & this.f281a.mo21179r()));
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: g */
    public boolean mo22128g() {
        return this.f281a.mo21193d();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: h */
    public boolean mo22095h() {
        if (!this.f281a.mo21189h()) {
            return false;
        }
        this.f281a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: i */
    public void mo22094i(boolean z) {
        if (z != this.f285e) {
            this.f285e = z;
            int size = this.f286f.size();
            for (int i = 0; i < size; i++) {
                this.f286f.get(i).m22323a(z);
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: j */
    public int mo22093j() {
        return this.f281a.mo21179r();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: k */
    public Context mo22092k() {
        return this.f281a.getContext();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: l */
    public boolean mo22127l() {
        this.f281a.mo21181p().removeCallbacks(this.f287g);
        ViewCompat.m19199f0(this.f281a.mo21181p(), this.f287g);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: m */
    public void mo22091m(Configuration configuration) {
        super.mo22091m(configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: n */
    public void mo22126n() {
        this.f281a.mo21181p().removeCallbacks(this.f287g);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: o */
    public boolean mo22090o(int i, KeyEvent keyEvent) {
        Menu D = m22132D();
        if (D == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
            z = false;
        }
        D.setQwertyMode(z);
        return D.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: p */
    public boolean mo22125p(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1) {
            return true;
        }
        mo22124q();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: q */
    public boolean mo22124q() {
        return this.f281a.mo21192e();
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: r */
    public void mo22089r(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: s */
    public void mo22088s(boolean z) {
        m22129G(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: t */
    public void mo22087t(boolean z) {
        m22129G(z ? 2 : 0, 2);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: u */
    public void mo22086u(float f) {
        ViewCompat.m19169u0(this.f281a.mo21181p(), f);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: v */
    public void mo22085v(int i) {
        this.f281a.mo21178s(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: w */
    public void mo22084w(CharSequence charSequence) {
        this.f281a.mo21187j(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: x */
    public void mo22083x(Drawable drawable) {
        this.f281a.mo21175v(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: y */
    public void mo22082y(boolean z) {
    }

    @Override // androidx.appcompat.app.ActionBar
    /* renamed from: z */
    public void mo22081z(int i) {
        DecorToolbar decorToolbar = this.f281a;
        decorToolbar.setTitle(i != 0 ? decorToolbar.getContext().getText(i) : null);
    }
}
