package p193e.p194a.p1080o.p1081a.p1089g.p1091h;

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
/* renamed from: e.a.o.a.g.h.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/h/f.class */
public abstract class AbstractC18614f<PV extends AbstractC18598f, Presenter extends AbstractC18597e<PV>> extends AbstractC18584a<PV, Presenter> implements Object {

    /* renamed from: e */
    public ContextWrapper f52404e;

    /* renamed from: f */
    public volatile f f52405f;

    /* renamed from: g */
    public final Object f52406g = new Object();

    /* renamed from: h */
    public boolean f52407h = false;

    /* renamed from: TA */
    public final void m14726TA() {
        if (this.f52404e == null) {
            this.f52404e = new ViewComponentManager$FragmentContextWrapper(super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: UA */
    public void m14725UA() {
        if (!this.f52407h) {
            this.f52407h = true;
            ((AbstractC18609b) m14724Yt()).mo11918n1((C18608a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14724Yt() {
        if (this.f52405f == null) {
            synchronized (this.f52406g) {
                if (this.f52405f == null) {
                    this.f52405f = new f(this);
                }
            }
        }
        return this.f52405f.Yt();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    public Context getContext() {
        if (super.getContext() == null && this.f52404e == null) {
            return null;
        }
        m14726TA();
        return this.f52404e;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18614f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18614f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52404e;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14726TA();
        m14725UA();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    public void onAttach(Context context) {
        super.onAttach(context);
        m14726TA();
        m14725UA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18614f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
