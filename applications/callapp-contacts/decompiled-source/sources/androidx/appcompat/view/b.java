package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b.class */
public abstract class b {

    /* renamed from: c  reason: collision with root package name */
    Object f730c;

    /* renamed from: d  reason: collision with root package name */
    boolean f731d;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b$a.class */
    public interface a {
        void a(b bVar);

        boolean a(b bVar, Menu menu);

        boolean a(b bVar, MenuItem menuItem);

        boolean b(b bVar, Menu menu);
    }

    public abstract MenuInflater a();

    public abstract void a(int i);

    public abstract void a(View view);

    public abstract void a(CharSequence charSequence);

    public void a(boolean z) {
        this.f731d = z;
    }

    public abstract Menu b();

    public abstract void b(int i);

    public abstract void b(CharSequence charSequence);

    public abstract void c();

    public abstract void d();

    public abstract CharSequence f();

    public abstract CharSequence g();

    public boolean h() {
        return false;
    }

    public abstract View i();
}
