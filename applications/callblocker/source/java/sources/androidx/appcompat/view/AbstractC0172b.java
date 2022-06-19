package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* renamed from: androidx.appcompat.view.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b.class */
public abstract class AbstractC0172b {

    /* renamed from: a */
    private Object f577a;

    /* renamed from: b */
    private boolean f578b;

    /* renamed from: androidx.appcompat.view.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b$a.class */
    public interface AbstractC0173a {
        /* renamed from: a */
        void mo21964a(AbstractC0172b abstractC0172b);

        /* renamed from: a */
        boolean mo21963a(AbstractC0172b abstractC0172b, Menu menu);

        /* renamed from: a */
        boolean mo21962a(AbstractC0172b abstractC0172b, MenuItem menuItem);

        /* renamed from: b */
        boolean mo21960b(AbstractC0172b abstractC0172b, Menu menu);
    }

    /* renamed from: a */
    public abstract MenuInflater mo21979a();

    /* renamed from: a */
    public abstract void mo21978a(int i);

    /* renamed from: a */
    public abstract void mo21977a(View view);

    /* renamed from: a */
    public abstract void mo21976a(CharSequence charSequence);

    /* renamed from: a */
    public void m21986a(Object obj) {
        this.f577a = obj;
    }

    /* renamed from: a */
    public void mo21975a(boolean z) {
        this.f578b = z;
    }

    /* renamed from: b */
    public abstract Menu mo21974b();

    /* renamed from: b */
    public abstract void mo21973b(int i);

    /* renamed from: b */
    public abstract void mo21972b(CharSequence charSequence);

    /* renamed from: c */
    public abstract void mo21971c();

    /* renamed from: d */
    public abstract void mo21970d();

    /* renamed from: f */
    public abstract CharSequence mo21969f();

    /* renamed from: g */
    public abstract CharSequence mo21968g();

    /* renamed from: h */
    public boolean mo21967h() {
        return false;
    }

    /* renamed from: i */
    public abstract View mo21966i();

    /* renamed from: j */
    public Object m21985j() {
        return this.f577a;
    }

    /* renamed from: k */
    public boolean m21984k() {
        return this.f578b;
    }
}
