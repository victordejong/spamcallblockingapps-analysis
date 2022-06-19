package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* renamed from: androidx.appcompat.view.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b.class */
public abstract class AbstractC0155b {

    /* renamed from: a */
    private Object f525a;

    /* renamed from: b */
    private boolean f526b;

    /* renamed from: androidx.appcompat.view.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b$a.class */
    public interface AbstractC0156a {
        /* renamed from: a */
        void mo7633a(AbstractC0155b abstractC0155b);

        /* renamed from: a */
        boolean mo7632a(AbstractC0155b abstractC0155b, Menu menu);

        /* renamed from: a */
        boolean mo7631a(AbstractC0155b abstractC0155b, MenuItem menuItem);

        /* renamed from: b */
        boolean mo7629b(AbstractC0155b abstractC0155b, Menu menu);
    }

    /* renamed from: a */
    public abstract MenuInflater mo7648a();

    /* renamed from: a */
    public abstract void mo7647a(int i);

    /* renamed from: a */
    public abstract void mo7646a(View view);

    /* renamed from: a */
    public abstract void mo7645a(CharSequence charSequence);

    /* renamed from: a */
    public void m7655a(Object obj) {
        this.f525a = obj;
    }

    /* renamed from: a */
    public void mo7644a(boolean z) {
        this.f526b = z;
    }

    /* renamed from: b */
    public abstract Menu mo7643b();

    /* renamed from: b */
    public abstract void mo7642b(int i);

    /* renamed from: b */
    public abstract void mo7641b(CharSequence charSequence);

    /* renamed from: c */
    public abstract void mo7640c();

    /* renamed from: d */
    public abstract void mo7639d();

    /* renamed from: f */
    public abstract CharSequence mo7638f();

    /* renamed from: g */
    public abstract CharSequence mo7637g();

    /* renamed from: h */
    public boolean mo7636h() {
        return false;
    }

    /* renamed from: i */
    public abstract View mo7635i();

    /* renamed from: j */
    public Object m7654j() {
        return this.f525a;
    }

    /* renamed from: k */
    public boolean m7653k() {
        return this.f526b;
    }
}
