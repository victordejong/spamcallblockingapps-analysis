package p193e.p194a.p1349x.p1355k0;

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
import p193e.p194a.p1349x.AbstractC21324b;
/* renamed from: e.a.x.k0.g */
/* loaded from: classes9-dex2jar.jar:e/a/x/k0/g.class */
public abstract class AbstractC21372g extends AbstractC21324b implements b {

    /* renamed from: b */
    public ContextWrapper f59819b;

    /* renamed from: c */
    public volatile f f59820c;

    /* renamed from: d */
    public final Object f59821d = new Object();

    /* renamed from: e */
    public boolean f59822e = false;

    /* renamed from: RA */
    public final void m9838RA() {
        if (this.f59819b == null) {
            this.f59819b = new ViewComponentManager$FragmentContextWrapper(AbstractC21372g.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: SA */
    public void m9837SA() {
        if (!this.f59822e) {
            this.f59822e = true;
            ((AbstractC21368c) m9836Yt()).mo9859f0((C21362a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m9836Yt() {
        if (this.f59820c == null) {
            synchronized (this.f59821d) {
                if (this.f59820c == null) {
                    this.f59820c = new f(this);
                }
            }
        }
        return this.f59820c.Yt();
    }

    public Context getContext() {
        if (AbstractC21372g.super.getContext() == null && this.f59819b == null) {
            return null;
        }
        m9838RA();
        return this.f59819b;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC21372g.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC21372g.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f59819b;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m9838RA();
        m9837SA();
    }

    public void onAttach(Context context) {
        AbstractC21372g.super.onAttach(context);
        m9838RA();
        m9837SA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC21372g.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
