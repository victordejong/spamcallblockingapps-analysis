package androidx.core.p023g;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: androidx.core.g.b */
/* loaded from: classes-dex2jar.jar:androidx/core/g/b.class */
public abstract class AbstractC0530b {

    /* renamed from: a */
    private final Context f1861a;

    /* renamed from: b */
    private AbstractC0531a f1862b;

    /* renamed from: c */
    private AbstractC0532b f1863c;

    /* renamed from: androidx.core.g.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/b$a.class */
    public interface AbstractC0531a {
        /* renamed from: c */
        void mo6346c(boolean z);
    }

    /* renamed from: androidx.core.g.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/b$b.class */
    public interface AbstractC0532b {
        /* renamed from: a */
        void mo6345a(boolean z);
    }

    public AbstractC0530b(Context context) {
        this.f1861a = context;
    }

    /* renamed from: a */
    public abstract View mo6357a();

    /* renamed from: a */
    public View mo6356a(MenuItem menuItem) {
        return mo6357a();
    }

    /* renamed from: a */
    public void mo6355a(SubMenu subMenu) {
    }

    /* renamed from: a */
    public void m6354a(AbstractC0531a abstractC0531a) {
        this.f1862b = abstractC0531a;
    }

    /* renamed from: a */
    public void mo6353a(AbstractC0532b abstractC0532b) {
        if (this.f1863c != null && abstractC0532b != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f1863c = abstractC0532b;
    }

    /* renamed from: a */
    public void m6352a(boolean z) {
        AbstractC0531a abstractC0531a = this.f1862b;
        if (abstractC0531a != null) {
            abstractC0531a.mo6346c(z);
        }
    }

    /* renamed from: b */
    public boolean mo6351b() {
        return false;
    }

    /* renamed from: c */
    public boolean mo6350c() {
        return false;
    }

    /* renamed from: d */
    public boolean mo6349d() {
        return false;
    }

    /* renamed from: e */
    public boolean mo6348e() {
        return true;
    }

    /* renamed from: f */
    public void m6347f() {
        this.f1863c = null;
        this.f1862b = null;
    }
}
