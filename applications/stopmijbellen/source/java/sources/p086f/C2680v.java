package p086f;

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
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.widget.AbstractC0230g0;
import androidx.appcompat.widget.C0213c1;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import p086f.AbstractC2635a;
import p086f.LayoutInflater$Factory2C2654m;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: f.v */
/* loaded from: classes-dex2jar.jar:f/v.class */
public class C2680v extends AbstractC2635a {

    /* renamed from: a */
    public final AbstractC0230g0 f9212a;

    /* renamed from: b */
    public final Window.Callback f9213b;

    /* renamed from: c */
    public final LayoutInflater$Factory2C2654m.AbstractC2657c f9214c;

    /* renamed from: d */
    public boolean f9215d;

    /* renamed from: e */
    public boolean f9216e;

    /* renamed from: f */
    public boolean f9217f;

    /* renamed from: g */
    public ArrayList<AbstractC2635a.AbstractC2637b> f9218g = new ArrayList<>();

    /* renamed from: h */
    public final Runnable f9219h = new RunnableC2681a();

    /* renamed from: f.v$a */
    /* loaded from: classes-dex2jar.jar:f/v$a.class */
    public class RunnableC2681a implements Runnable {
        public RunnableC2681a() {
            C2680v.this = r4;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.lang.Runnable
        public void run() {
            C2680v c2680v = C2680v.this;
            Menu m3280t = c2680v.m3280t();
            C0136e c0136e = m3280t instanceof C0136e ? (C0136e) m3280t : null;
            if (c0136e != null) {
                c0136e.m8699y();
            }
            try {
                m3280t.clear();
                if (!c2680v.f9213b.onCreatePanelMenu(0, m3280t) || !c2680v.f9213b.onPreparePanel(0, null, m3280t)) {
                    m3280t.clear();
                }
                if (c0136e == null) {
                    return;
                }
                c0136e.m8700x();
            } catch (Throwable th) {
                if (c0136e != null) {
                    c0136e.m8700x();
                }
                throw th;
            }
        }
    }

    /* renamed from: f.v$b */
    /* loaded from: classes-dex2jar.jar:f/v$b.class */
    public class C2682b implements Toolbar.AbstractC0190f {
        public C2682b() {
            C2680v.this = r4;
        }
    }

    /* renamed from: f.v$c */
    /* loaded from: classes-dex2jar.jar:f/v$c.class */
    public final class C2683c implements AbstractC0144i.AbstractC0145a {

        /* renamed from: a */
        public boolean f9222a;

        public C2683c() {
            C2680v.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: a */
        public void mo3279a(C0136e c0136e, boolean z) {
            if (this.f9222a) {
                return;
            }
            this.f9222a = true;
            C2680v.this.f9212a.mo8518h();
            C2680v.this.f9213b.onPanelClosed(108, c0136e);
            this.f9222a = false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0144i.AbstractC0145a
        /* renamed from: b */
        public boolean mo3278b(C0136e c0136e) {
            C2680v.this.f9213b.onMenuOpened(108, c0136e);
            return true;
        }
    }

    /* renamed from: f.v$d */
    /* loaded from: classes-dex2jar.jar:f/v$d.class */
    public final class C2684d implements C0136e.AbstractC0137a {
        public C2684d() {
            C2680v.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
        /* renamed from: a */
        public boolean mo2424a(C0136e c0136e, MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
        /* renamed from: b */
        public void mo2423b(C0136e c0136e) {
            if (C2680v.this.f9212a.mo8524b()) {
                C2680v.this.f9213b.onPanelClosed(108, c0136e);
            } else if (!C2680v.this.f9213b.onPreparePanel(0, null, c0136e)) {
            } else {
                C2680v.this.f9213b.onMenuOpened(108, c0136e);
            }
        }
    }

    /* renamed from: f.v$e */
    /* loaded from: classes-dex2jar.jar:f/v$e.class */
    public class C2685e implements LayoutInflater$Factory2C2654m.AbstractC2657c {
        public C2685e() {
            C2680v.this = r4;
        }
    }

    public C2680v(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        C2682b c2682b = new C2682b();
        C0213c1 c0213c1 = new C0213c1(toolbar, false);
        this.f9212a = c0213c1;
        Objects.requireNonNull(callback);
        this.f9213b = callback;
        c0213c1.f885l = callback;
        toolbar.setOnMenuItemClickListener(c2682b);
        if (!c0213c1.f881h) {
            c0213c1.m8562z(charSequence);
        }
        this.f9214c = new C2685e();
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: a */
    public boolean mo3285a() {
        return this.f9212a.mo8521e();
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: b */
    public boolean mo3276b() {
        if (this.f9212a.mo8512n()) {
            this.f9212a.collapseActionView();
            return true;
        }
        return false;
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: c */
    public void mo3275c(boolean z) {
        if (z == this.f9217f) {
            return;
        }
        this.f9217f = z;
        int size = this.f9218g.size();
        for (int i = 0; i < size; i++) {
            this.f9218g.get(i).m3377a(z);
        }
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: d */
    public int mo3274d() {
        return this.f9212a.mo8510p();
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: e */
    public Context mo3273e() {
        return this.f9212a.getContext();
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: f */
    public boolean mo3284f() {
        this.f9212a.mo8514l().removeCallbacks(this.f9219h);
        ViewGroup mo8514l = this.f9212a.mo8514l();
        Runnable runnable = this.f9219h;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2081m(mo8514l, runnable);
        return true;
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: g */
    public void mo3272g(Configuration configuration) {
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: h */
    public void mo3283h() {
        this.f9212a.mo8514l().removeCallbacks(this.f9219h);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: i */
    public boolean mo3271i(int i, KeyEvent keyEvent) {
        Menu m3280t = m3280t();
        if (m3280t != null) {
            boolean z = true;
            if (KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() == 1) {
                z = false;
            }
            m3280t.setQwertyMode(z);
            return m3280t.performShortcut(i, keyEvent, 0);
        }
        return false;
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: j */
    public boolean mo3282j(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            this.f9212a.mo8520f();
            return true;
        }
        return true;
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: k */
    public boolean mo3281k() {
        return this.f9212a.mo8520f();
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: l */
    public void mo3270l(boolean z) {
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: m */
    public void mo3269m(int i) {
        this.f9212a.mo8507s(i);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: n */
    public void mo3268n(Drawable drawable) {
        this.f9212a.mo8502x(drawable);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: o */
    public void mo3267o(boolean z) {
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: p */
    public void mo3266p(int i) {
        AbstractC0230g0 abstractC0230g0 = this.f9212a;
        abstractC0230g0.setTitle(i != 0 ? abstractC0230g0.getContext().getText(i) : null);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: q */
    public void mo3265q(CharSequence charSequence) {
        this.f9212a.setTitle(charSequence);
    }

    @Override // p086f.AbstractC2635a
    /* renamed from: r */
    public void mo3264r(CharSequence charSequence) {
        this.f9212a.setWindowTitle(charSequence);
    }

    /* renamed from: t */
    public final Menu m3280t() {
        if (!this.f9216e) {
            this.f9212a.mo8517i(new C2683c(), new C2684d());
            this.f9216e = true;
        }
        return this.f9212a.mo8509q();
    }
}
