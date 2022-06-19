package p193e.p194a.p1080o.p1081a.p1089g.p1092i;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import o3.b.a.c.c.f;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18597e;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18598f;
/* renamed from: e.a.o.a.g.i.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/i/a.class */
public abstract class AbstractC18615a<PV extends AbstractC18598f, Presenter extends AbstractC18597e<PV>> extends AbstractC18584a<PV, Presenter> implements Object {

    /* renamed from: e */
    public ContextWrapper f52408e;

    /* renamed from: f */
    public volatile f f52409f;

    /* renamed from: g */
    public final Object f52410g = new Object();

    /* renamed from: h */
    public boolean f52411h = false;

    /* renamed from: TA */
    public final void m14723TA() {
        if (this.f52408e == null) {
            this.f52408e = new ViewComponentManager$FragmentContextWrapper(super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: UA */
    public void m14722UA() {
        if (!this.f52411h) {
            this.f52411h = true;
            ((AbstractC18619c) m14721Yt()).mo11943e1((C18616b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14721Yt() {
        if (this.f52409f == null) {
            synchronized (this.f52410g) {
                if (this.f52409f == null) {
                    this.f52409f = new f(this);
                }
            }
        }
        return this.f52409f.Yt();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    public Context getContext() {
        if (super.getContext() == null && this.f52408e == null) {
            return null;
        }
        m14723TA();
        return this.f52408e;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18615a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18615a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52408e;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14723TA();
        m14722UA();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    public void onAttach(Context context) {
        super.onAttach(context);
        m14723TA();
        m14722UA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18615a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
