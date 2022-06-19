package p193e.p194a.p1080o.p1081a.p1087c;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.o.a.c.d */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/c/d.class */
public abstract class AbstractC18559d extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f52326a;

    /* renamed from: b */
    public volatile f f52327b;

    /* renamed from: c */
    public final Object f52328c = new Object();

    /* renamed from: d */
    public boolean f52329d = false;

    public AbstractC18559d(int i) {
        super(i);
    }

    /* renamed from: OA */
    public final void m14786OA() {
        if (this.f52326a == null) {
            this.f52326a = new ViewComponentManager$FragmentContextWrapper(AbstractC18559d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m14785PA() {
        if (!this.f52329d) {
            this.f52329d = true;
            ((AbstractC18563h) m14784Yt()).mo11885z0((C18550a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14784Yt() {
        if (this.f52327b == null) {
            synchronized (this.f52328c) {
                if (this.f52327b == null) {
                    this.f52327b = new f(this);
                }
            }
        }
        return this.f52327b.Yt();
    }

    public Context getContext() {
        if (AbstractC18559d.super.getContext() == null && this.f52326a == null) {
            return null;
        }
        m14786OA();
        return this.f52326a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18559d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18559d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52326a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14786OA();
        m14785PA();
    }

    public void onAttach(Context context) {
        AbstractC18559d.super.onAttach(context);
        m14786OA();
        m14785PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18559d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
