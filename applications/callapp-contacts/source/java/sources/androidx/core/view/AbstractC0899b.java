package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: androidx.core.view.b */
/* loaded from: classes-dex2jar.jar:androidx/core/view/b.class */
public abstract class AbstractC0899b {

    /* renamed from: a */
    private final Context f3712a;

    /* renamed from: d */
    public AbstractC0900a f3713d;

    /* renamed from: e */
    public AbstractC0901b f3714e;

    /* renamed from: androidx.core.view.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/b$a.class */
    public interface AbstractC0900a {
        /* renamed from: b */
        void mo44198b(boolean z);
    }

    /* renamed from: androidx.core.view.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/b$b.class */
    public interface AbstractC0901b {
        /* renamed from: a */
        void mo44197a();
    }

    public AbstractC0899b(Context context) {
        this.f3712a = context;
    }

    /* renamed from: a */
    public abstract View mo44207a();

    /* renamed from: a */
    public View mo44206a(MenuItem menuItem) {
        return mo44207a();
    }

    /* renamed from: a */
    public void mo44205a(SubMenu subMenu) {
    }

    /* renamed from: a */
    public void mo44204a(AbstractC0901b abstractC0901b) {
        if (this.f3714e != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f3714e = abstractC0901b;
    }

    /* renamed from: a */
    public final void m44203a(boolean z) {
        AbstractC0900a abstractC0900a = this.f3713d;
        if (abstractC0900a != null) {
            abstractC0900a.mo44198b(z);
        }
    }

    /* renamed from: b */
    public boolean mo44202b() {
        return false;
    }

    /* renamed from: c */
    public boolean mo44201c() {
        return false;
    }

    /* renamed from: d */
    public boolean mo44200d() {
        return false;
    }

    /* renamed from: e */
    public boolean mo44199e() {
        return true;
    }
}
