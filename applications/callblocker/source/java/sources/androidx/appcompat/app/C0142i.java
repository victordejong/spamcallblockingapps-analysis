package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.Window;
import androidx.appcompat.app.AbstractC0110a;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.widget.AbstractC0368x;
import androidx.core.p026h.C0595u;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.app.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i.class */
public class C0142i extends AbstractC0110a {

    /* renamed from: a */
    AbstractC0368x f442a;

    /* renamed from: b */
    Window.Callback f443b;

    /* renamed from: c */
    private boolean f444c;

    /* renamed from: d */
    private boolean f445d;

    /* renamed from: e */
    private ArrayList<AbstractC0110a.AbstractC0112b> f446e;

    /* renamed from: f */
    private final Runnable f447f;

    /* renamed from: androidx.appcompat.app.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i$a.class */
    public final class C0143a implements AbstractC0214m.AbstractC0215a {

        /* renamed from: b */
        private boolean f449b;

        C0143a() {
            C0142i.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public void mo21353a(C0199g c0199g, boolean z) {
            if (this.f449b) {
                return;
            }
            this.f449b = true;
            C0142i.this.f442a.mo21172n();
            if (C0142i.this.f443b != null) {
                C0142i.this.f443b.onPanelClosed(108, c0199g);
            }
            this.f449b = false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0214m.AbstractC0215a
        /* renamed from: a */
        public boolean mo21354a(C0199g c0199g) {
            boolean z;
            if (C0142i.this.f443b != null) {
                C0142i.this.f443b.onMenuOpened(108, c0199g);
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: androidx.appcompat.app.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i$b.class */
    public final class C0144b implements C0199g.AbstractC0200a {
        C0144b() {
            C0142i.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
        /* renamed from: a */
        public void mo3619a(C0199g c0199g) {
            if (C0142i.this.f443b != null) {
                if (C0142i.this.f442a.mo21177i()) {
                    C0142i.this.f443b.onPanelClosed(108, c0199g);
                } else if (!C0142i.this.f443b.onPreparePanel(0, null, c0199g)) {
                } else {
                    C0142i.this.f443b.onMenuOpened(108, c0199g);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
        /* renamed from: a */
        public boolean mo3618a(C0199g c0199g, MenuItem menuItem) {
            return false;
        }
    }

    /* renamed from: h */
    private Menu m22100h() {
        if (!this.f444c) {
            this.f442a.mo21192a(new C0143a(), new C0144b());
            this.f444c = true;
        }
        return this.f442a.mo21169q();
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public int mo22091a() {
        return this.f442a.mo21171o();
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public void mo22090a(float f) {
        C0595u.m20358a(this.f442a.mo21198a(), f);
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public void mo22087a(Configuration configuration) {
        super.mo22087a(configuration);
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public void mo22084a(CharSequence charSequence) {
        this.f442a.mo21190a(charSequence);
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public void mo22083a(boolean z) {
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public boolean mo22088a(int i, KeyEvent keyEvent) {
        boolean z = false;
        Menu m22100h = m22100h();
        if (m22100h != null) {
            m22100h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            z = m22100h.performShortcut(i, keyEvent, 0);
        }
        return z;
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: a */
    public boolean mo22105a(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            mo22104c();
            return true;
        }
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: b */
    public Context mo22081b() {
        return this.f442a.mo21188b();
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: c */
    public void mo22078c(boolean z) {
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: c */
    public boolean mo22104c() {
        return this.f442a.mo21175k();
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: d */
    public void mo22077d(boolean z) {
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: d */
    public boolean mo22103d() {
        return this.f442a.mo21174l();
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: e */
    public void mo22076e(boolean z) {
        if (z == this.f445d) {
            return;
        }
        this.f445d = z;
        int size = this.f446e.size();
        for (int i = 0; i < size; i++) {
            this.f446e.get(i).m22240a(z);
        }
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: e */
    public boolean mo22102e() {
        this.f442a.mo21198a().removeCallbacks(this.f447f);
        C0595u.m20341a(this.f442a.mo21198a(), this.f447f);
        return true;
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: f */
    public boolean mo22075f() {
        boolean z;
        if (this.f442a.mo21185c()) {
            this.f442a.mo21183d();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // androidx.appcompat.app.AbstractC0110a
    /* renamed from: g */
    public void mo22101g() {
        this.f442a.mo21198a().removeCallbacks(this.f447f);
    }
}
