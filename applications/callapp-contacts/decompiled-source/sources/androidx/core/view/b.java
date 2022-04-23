package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/core/view/b.class */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1988a;

    /* renamed from: d  reason: collision with root package name */
    public a f1989d;
    public AbstractC0054b e;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/b$a.class */
    public interface a {
        void b(boolean z);
    }

    /* renamed from: androidx.core.view.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/b$b.class */
    public interface AbstractC0054b {
        void a();
    }

    public b(Context context) {
        this.f1988a = context;
    }

    public abstract View a();

    public View a(MenuItem menuItem) {
        return a();
    }

    public void a(SubMenu subMenu) {
    }

    public void a(AbstractC0054b bVar) {
        if (this.e != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.e = bVar;
    }

    public final void a(boolean z) {
        a aVar = this.f1989d;
        if (aVar != null) {
            aVar.b(z);
        }
    }

    public boolean b() {
        return false;
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return true;
    }
}
