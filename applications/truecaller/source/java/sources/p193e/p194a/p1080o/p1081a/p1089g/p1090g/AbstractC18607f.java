package p193e.p194a.p1080o.p1081a.p1089g.p1090g;

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
/* renamed from: e.a.o.a.g.g.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/g/f.class */
public abstract class AbstractC18607f<PV extends AbstractC18598f, Presenter extends AbstractC18597e<PV>> extends AbstractC18584a<PV, Presenter> implements Object {

    /* renamed from: e */
    public ContextWrapper f52392e;

    /* renamed from: f */
    public volatile f f52393f;

    /* renamed from: g */
    public final Object f52394g = new Object();

    /* renamed from: h */
    public boolean f52395h = false;

    /* renamed from: TA */
    public final void m14733TA() {
        if (this.f52392e == null) {
            this.f52392e = new ViewComponentManager$FragmentContextWrapper(super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: UA */
    public void m14732UA() {
        if (!this.f52395h) {
            this.f52395h = true;
            ((AbstractC18602b) m14731Yt()).mo11981O0((C18599a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14731Yt() {
        if (this.f52393f == null) {
            synchronized (this.f52394g) {
                if (this.f52393f == null) {
                    this.f52393f = new f(this);
                }
            }
        }
        return this.f52393f.Yt();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    public Context getContext() {
        if (super.getContext() == null && this.f52392e == null) {
            return null;
        }
        m14733TA();
        return this.f52392e;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18607f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18607f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52392e;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14733TA();
        m14732UA();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    public void onAttach(Context context) {
        super.onAttach(context);
        m14733TA();
        m14732UA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18607f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
