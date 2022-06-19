package p193e.p194a.p1080o.p1081a.p1089g.p1093j;

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
/* renamed from: e.a.o.a.g.j.c */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/j/c.class */
public abstract class AbstractC18626c<PV extends AbstractC18598f, Presenter extends AbstractC18597e<PV>> extends AbstractC18584a<PV, Presenter> implements Object {

    /* renamed from: e */
    public ContextWrapper f52429e;

    /* renamed from: f */
    public volatile f f52430f;

    /* renamed from: g */
    public final Object f52431g = new Object();

    /* renamed from: h */
    public boolean f52432h = false;

    /* renamed from: TA */
    public final void m14713TA() {
        if (this.f52429e == null) {
            this.f52429e = new ViewComponentManager$FragmentContextWrapper(super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: UA */
    public void m14712UA() {
        if (!this.f52432h) {
            this.f52432h = true;
            ((AbstractC18631f) m14711Yt()).mo11976Q((C18628e) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14711Yt() {
        if (this.f52430f == null) {
            synchronized (this.f52431g) {
                if (this.f52430f == null) {
                    this.f52430f = new f(this);
                }
            }
        }
        return this.f52430f.Yt();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    public Context getContext() {
        if (super.getContext() == null && this.f52429e == null) {
            return null;
        }
        m14713TA();
        return this.f52429e;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18626c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18626c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52429e;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14713TA();
        m14712UA();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    public void onAttach(Context context) {
        super.onAttach(context);
        m14713TA();
        m14712UA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18626c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
