package androidx.core.p026h;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: androidx.core.h.b */
/* loaded from: classes-dex2jar.jar:androidx/core/h/b.class */
public abstract class AbstractC0573b {

    /* renamed from: a */
    private final Context f2070a;

    /* renamed from: b */
    private AbstractC0574a f2071b;

    /* renamed from: c */
    private AbstractC0575b f2072c;

    /* renamed from: androidx.core.h.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/b$a.class */
    public interface AbstractC0574a {
        /* renamed from: d */
        void mo20423d(boolean z);
    }

    /* renamed from: androidx.core.h.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/b$b.class */
    public interface AbstractC0575b {
        /* renamed from: a */
        void mo20422a(boolean z);
    }

    public AbstractC0573b(Context context) {
        this.f2070a = context;
    }

    /* renamed from: a */
    public abstract View mo20434a();

    /* renamed from: a */
    public View mo20433a(MenuItem menuItem) {
        return mo20434a();
    }

    /* renamed from: a */
    public void mo20432a(SubMenu subMenu) {
    }

    /* renamed from: a */
    public void m20431a(AbstractC0574a abstractC0574a) {
        this.f2071b = abstractC0574a;
    }

    /* renamed from: a */
    public void mo20430a(AbstractC0575b abstractC0575b) {
        if (this.f2072c != null && abstractC0575b != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f2072c = abstractC0575b;
    }

    /* renamed from: a */
    public void m20429a(boolean z) {
        if (this.f2071b != null) {
            this.f2071b.mo20423d(z);
        }
    }

    /* renamed from: b */
    public boolean mo20428b() {
        return false;
    }

    /* renamed from: c */
    public boolean mo20427c() {
        return false;
    }

    /* renamed from: d */
    public boolean mo20426d() {
        return false;
    }

    /* renamed from: e */
    public boolean mo20425e() {
        return true;
    }

    /* renamed from: f */
    public void m20424f() {
        this.f2072c = null;
        this.f2071b = null;
    }
}
