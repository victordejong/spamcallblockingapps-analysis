package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* renamed from: androidx.appcompat.view.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b.class */
public abstract class AbstractC0241b {

    /* renamed from: c */
    Object f691c;

    /* renamed from: d */
    boolean f692d;

    /* renamed from: androidx.appcompat.view.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b$a.class */
    public interface AbstractC0242a {
        /* renamed from: a */
        void mo28726a(AbstractC0241b abstractC0241b);

        /* renamed from: a */
        boolean mo28725a(AbstractC0241b abstractC0241b, Menu menu);

        /* renamed from: a */
        boolean mo28724a(AbstractC0241b abstractC0241b, MenuItem menuItem);

        /* renamed from: b */
        boolean mo28723b(AbstractC0241b abstractC0241b, Menu menu);
    }

    /* renamed from: a */
    public abstract MenuInflater mo46166a();

    /* renamed from: a */
    public abstract void mo46165a(int i);

    /* renamed from: a */
    public abstract void mo46164a(View view);

    /* renamed from: a */
    public abstract void mo46163a(CharSequence charSequence);

    /* renamed from: a */
    public void mo46162a(boolean z) {
        this.f692d = z;
    }

    /* renamed from: b */
    public abstract Menu mo46161b();

    /* renamed from: b */
    public abstract void mo46160b(int i);

    /* renamed from: b */
    public abstract void mo46159b(CharSequence charSequence);

    /* renamed from: c */
    public abstract void mo46158c();

    /* renamed from: d */
    public abstract void mo46157d();

    /* renamed from: f */
    public abstract CharSequence mo46156f();

    /* renamed from: g */
    public abstract CharSequence mo46155g();

    /* renamed from: h */
    public boolean mo46154h() {
        return false;
    }

    /* renamed from: i */
    public abstract View mo46153i();
}
