package p020b.p041h.p050l;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: b.h.l.b */
/* loaded from: classes-dex2jar.jar:b/h/l/b.class */
public abstract class AbstractC1605b {

    /* renamed from: a */
    private final Context f6210a;

    /* renamed from: b */
    private AbstractC1606a f6211b;

    /* renamed from: c */
    private AbstractC1607b f6212c;

    /* renamed from: b.h.l.b$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/b$a.class */
    public interface AbstractC1606a {
        /* renamed from: a */
        void mo29620a(boolean z);
    }

    /* renamed from: b.h.l.b$b */
    /* loaded from: classes-dex2jar.jar:b/h/l/b$b.class */
    public interface AbstractC1607b {
        void onActionProviderVisibilityChanged(boolean z);
    }

    public AbstractC1605b(Context context) {
        this.f6210a = context;
    }

    /* renamed from: a */
    public boolean mo29631a() {
        return false;
    }

    /* renamed from: b */
    public boolean mo29630b() {
        return true;
    }

    /* renamed from: c */
    public abstract View mo29629c();

    /* renamed from: d */
    public View mo29628d(MenuItem menuItem) {
        return mo29629c();
    }

    /* renamed from: e */
    public boolean mo29627e() {
        return false;
    }

    /* renamed from: f */
    public void mo29626f(SubMenu subMenu) {
    }

    /* renamed from: g */
    public boolean mo29625g() {
        return false;
    }

    /* renamed from: h */
    public void m29624h() {
        this.f6212c = null;
        this.f6211b = null;
    }

    /* renamed from: i */
    public void m29623i(AbstractC1606a abstractC1606a) {
        this.f6211b = abstractC1606a;
    }

    /* renamed from: j */
    public void mo29622j(AbstractC1607b abstractC1607b) {
        if (this.f6212c != null && abstractC1607b != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f6212c = abstractC1607b;
    }

    /* renamed from: k */
    public void m29621k(boolean z) {
        AbstractC1606a abstractC1606a = this.f6211b;
        if (abstractC1606a != null) {
            abstractC1606a.mo29620a(z);
        }
    }
}
