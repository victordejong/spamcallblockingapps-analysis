package p193e.p194a.p1349x.p1350a;

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
/* renamed from: e.a.x.a.i */
/* loaded from: classes9-dex2jar.jar:e/a/x/a/i.class */
public abstract class AbstractC21322i extends AbstractC21324b implements b {

    /* renamed from: b */
    public ContextWrapper f59712b;

    /* renamed from: c */
    public volatile f f59713c;

    /* renamed from: d */
    public final Object f59714d = new Object();

    /* renamed from: e */
    public boolean f59715e = false;

    /* renamed from: RA */
    public final void m9892RA() {
        if (this.f59712b == null) {
            this.f59712b = new ViewComponentManager$FragmentContextWrapper(AbstractC21322i.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: SA */
    public void m9891SA() {
        if (!this.f59715e) {
            this.f59715e = true;
            ((AbstractC21317d) m9890Yt()).mo9904u((C21311a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m9890Yt() {
        if (this.f59713c == null) {
            synchronized (this.f59714d) {
                if (this.f59713c == null) {
                    this.f59713c = new f(this);
                }
            }
        }
        return this.f59713c.Yt();
    }

    public Context getContext() {
        if (AbstractC21322i.super.getContext() == null && this.f59712b == null) {
            return null;
        }
        m9892RA();
        return this.f59712b;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC21322i.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC21322i.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f59712b;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m9892RA();
        m9891SA();
    }

    public void onAttach(Context context) {
        AbstractC21322i.super.onAttach(context);
        m9892RA();
        m9891SA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC21322i.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
