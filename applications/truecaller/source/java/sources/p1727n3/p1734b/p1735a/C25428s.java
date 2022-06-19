package p1727n3.p1734b.p1735a;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1741e.Window$CallbackC25461h;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1743f.AbstractC25551v;
import p1727n3.p1734b.p1743f.C25546t0;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.b.a.s */
/* loaded from: classes-dex2jar.jar:n3/b/a/s.class */
public class C25428s extends AbstractC25393a {

    /* renamed from: a */
    public AbstractC25551v f70959a;

    /* renamed from: b */
    public boolean f70960b;

    /* renamed from: c */
    public Window.Callback f70961c;

    /* renamed from: d */
    public boolean f70962d;

    /* renamed from: e */
    public boolean f70963e;

    /* renamed from: f */
    public ArrayList<AbstractC25393a.AbstractC25395b> f70964f = new ArrayList<>();

    /* renamed from: g */
    public final Runnable f70965g = new RunnableC25429a();

    /* renamed from: h */
    public final Toolbar.AbstractC0082f f70966h;

    /* renamed from: n3.b.a.s$a */
    /* loaded from: classes-dex2jar.jar:n3/b/a/s$a.class */
    public class RunnableC25429a implements Runnable {
        public RunnableC25429a() {
            C25428s.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.lang.Runnable
        public void run() {
            C25428s c25428s = C25428s.this;
            Menu m3576C = c25428s.m3576C();
            C25469g c25469g = m3576C instanceof C25469g ? (C25469g) m3576C : null;
            if (c25469g != null) {
                c25469g.m3484A();
            }
            try {
                m3576C.clear();
                if (!c25428s.f70961c.onCreatePanelMenu(0, m3576C) || !c25428s.f70961c.onPreparePanel(0, null, m3576C)) {
                    m3576C.clear();
                }
                if (c25469g == null) {
                    return;
                }
                c25469g.m3458z();
            } catch (Throwable th) {
                if (c25469g != null) {
                    c25469g.m3458z();
                }
                throw th;
            }
        }
    }

    /* renamed from: n3.b.a.s$b */
    /* loaded from: classes-dex2jar.jar:n3/b/a/s$b.class */
    public class C25430b implements Toolbar.AbstractC0082f {
        public C25430b() {
            C25428s.this = r4;
        }

        @Override // androidx.appcompat.widget.Toolbar.AbstractC0082f
        public boolean onMenuItemClick(MenuItem menuItem) {
            return C25428s.this.f70961c.onMenuItemSelected(0, menuItem);
        }
    }

    /* renamed from: n3.b.a.s$c */
    /* loaded from: classes-dex2jar.jar:n3/b/a/s$c.class */
    public final class C25431c implements AbstractC25483m.AbstractC25484a {

        /* renamed from: a */
        public boolean f70969a;

        public C25431c() {
            C25428s.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
        /* renamed from: a */
        public void mo3413a(C25469g c25469g, boolean z) {
            if (this.f70969a) {
                return;
            }
            this.f70969a = true;
            C25428s.this.f70959a.mo3277A4();
            Window.Callback callback = C25428s.this.f70961c;
            if (callback != null) {
                callback.onPanelClosed(108, c25469g);
            }
            this.f70969a = false;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m.AbstractC25484a
        /* renamed from: b */
        public boolean mo3412b(C25469g c25469g) {
            Window.Callback callback = C25428s.this.f70961c;
            if (callback != null) {
                callback.onMenuOpened(108, c25469g);
                return true;
            }
            return false;
        }
    }

    /* renamed from: n3.b.a.s$d */
    /* loaded from: classes-dex2jar.jar:n3/b/a/s$d.class */
    public final class C25432d implements C25469g.AbstractC25470a {
        public C25432d() {
            C25428s.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
        /* renamed from: a */
        public boolean mo3369a(C25469g c25469g, MenuItem menuItem) {
            return false;
        }

        @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
        /* renamed from: b */
        public void mo3368b(C25469g c25469g) {
            C25428s c25428s = C25428s.this;
            if (c25428s.f70961c != null) {
                if (c25428s.f70959a.mo3263c()) {
                    C25428s.this.f70961c.onPanelClosed(108, c25469g);
                } else if (!C25428s.this.f70961c.onPreparePanel(0, null, c25469g)) {
                } else {
                    C25428s.this.f70961c.onMenuOpened(108, c25469g);
                }
            }
        }
    }

    /* renamed from: n3.b.a.s$e */
    /* loaded from: classes-dex2jar.jar:n3/b/a/s$e.class */
    public class C25433e extends Window$CallbackC25461h {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C25433e(Window.Callback callback) {
            super(callback);
            C25428s.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.Window$CallbackC25461h, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            return i == 0 ? new View(C25428s.this.f70959a.getContext()) : this.f71161a.onCreatePanelView(i);
        }

        @Override // android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = this.f71161a.onPreparePanel(i, view, menu);
            if (onPreparePanel) {
                C25428s c25428s = C25428s.this;
                if (!c25428s.f70960b) {
                    c25428s.f70959a.mo3260f();
                    C25428s.this.f70960b = true;
                }
            }
            return onPreparePanel;
        }
    }

    public C25428s(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        C25430b c25430b = new C25430b();
        this.f70966h = c25430b;
        this.f70959a = new C25546t0(toolbar, false);
        C25433e c25433e = new C25433e(callback);
        this.f70961c = c25433e;
        this.f70959a.setWindowCallback(c25433e);
        toolbar.setOnMenuItemClickListener(c25430b);
        this.f70959a.setWindowTitle(charSequence);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: A */
    public void mo3568A() {
        this.f70959a.setVisibility(0);
    }

    /* renamed from: C */
    public final Menu m3576C() {
        if (!this.f70962d) {
            this.f70959a.mo3266L4(new C25431c(), new C25432d());
            this.f70962d = true;
        }
        return this.f70959a.mo3273E4();
    }

    /* renamed from: D */
    public void m3575D(int i, int i2) {
        this.f70959a.mo3256v4((i & i2) | ((i2 ^ (-1)) & this.f70959a.mo3276B4()));
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: a */
    public boolean mo3574a() {
        return this.f70959a.mo3262d();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: b */
    public boolean mo3561b() {
        if (this.f70959a.mo3257u4()) {
            this.f70959a.collapseActionView();
            return true;
        }
        return false;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: c */
    public void mo3560c(boolean z) {
        if (z == this.f70963e) {
            return;
        }
        this.f70963e = z;
        int size = this.f70964f.size();
        for (int i = 0; i < size; i++) {
            this.f70964f.get(i).m3676a(z);
        }
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: d */
    public int mo3559d() {
        return this.f70959a.mo3276B4();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: e */
    public Context mo3558e() {
        return this.f70959a.getContext();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: f */
    public void mo3557f() {
        this.f70959a.setVisibility(8);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: g */
    public boolean mo3573g() {
        this.f70959a.mo3271G4().removeCallbacks(this.f70965g);
        ViewGroup mo3271G4 = this.f70959a.mo3271G4();
        Runnable runnable = this.f70965g;
        AtomicInteger atomicInteger = C26614s.f74505a;
        mo3271G4.postOnAnimation(runnable);
        return true;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: h */
    public void mo3556h(Configuration configuration) {
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: i */
    public void mo3572i() {
        this.f70959a.mo3271G4().removeCallbacks(this.f70965g);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: j */
    public boolean mo3555j(int i, KeyEvent keyEvent) {
        Menu m3576C = m3576C();
        if (m3576C != null) {
            boolean z = true;
            if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
                z = false;
            }
            m3576C.setQwertyMode(z);
            return m3576C.performShortcut(i, keyEvent, 0);
        }
        return false;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: k */
    public boolean mo3571k(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            this.f70959a.mo3264b();
            return true;
        }
        return true;
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: l */
    public boolean mo3570l() {
        return this.f70959a.mo3264b();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: m */
    public void mo3554m(boolean z) {
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: n */
    public void mo3553n(boolean z) {
        m3575D(z ? 4 : 0, 4);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: o */
    public void mo3552o(boolean z) {
        m3575D(z ? 2 : 0, 2);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: p */
    public void mo3551p(boolean z) {
        m3575D(z ? 8 : 0, 8);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: q */
    public void mo3550q(float f) {
        ViewGroup mo3271G4 = this.f70959a.mo3271G4();
        AtomicInteger atomicInteger = C26614s.f74505a;
        mo3271G4.setElevation(f);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: r */
    public void mo3549r(int i) {
        this.f70959a.mo3254x4(i);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: s */
    public void mo3548s(int i) {
        this.f70959a.mo3267K4(i);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: t */
    public void mo3547t(Drawable drawable) {
        this.f70959a.mo3274D4(drawable);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: u */
    public void mo3546u(boolean z) {
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: v */
    public void mo3545v(boolean z) {
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: w */
    public void mo3544w(CharSequence charSequence) {
        this.f70959a.mo3258t4(charSequence);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: x */
    public void mo3543x(int i) {
        AbstractC25551v abstractC25551v = this.f70959a;
        abstractC25551v.setTitle(i != 0 ? abstractC25551v.getContext().getText(i) : null);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: y */
    public void mo3542y(CharSequence charSequence) {
        this.f70959a.setTitle(charSequence);
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25393a
    /* renamed from: z */
    public void mo3541z(CharSequence charSequence) {
        this.f70959a.setWindowTitle(charSequence);
    }
}
