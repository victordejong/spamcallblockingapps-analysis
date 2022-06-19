package p193e.p194a.p1052m;

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
import p193e.p194a.p682e.AbstractC13329x0;
/* renamed from: e.a.m.z */
/* loaded from: classes7-dex2jar.jar:e/a/m/z.class */
public abstract class AbstractC17887z extends AbstractC13329x0 implements b {

    /* renamed from: e */
    public ContextWrapper f50880e;

    /* renamed from: f */
    public volatile f f50881f;

    /* renamed from: g */
    public final Object f50882g = new Object();

    /* renamed from: h */
    public boolean f50883h = false;

    /* renamed from: WA */
    public final void m15716WA() {
        if (this.f50880e == null) {
            this.f50880e = new ViewComponentManager$FragmentContextWrapper(AbstractC17887z.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: XA */
    public void m15715XA() {
        if (!this.f50883h) {
            this.f50883h = true;
            ((AbstractC17875o) m15714Yt()).mo11985N((C17844a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m15714Yt() {
        if (this.f50881f == null) {
            synchronized (this.f50882g) {
                if (this.f50881f == null) {
                    this.f50881f = new f(this);
                }
            }
        }
        return this.f50881f.Yt();
    }

    public Context getContext() {
        if (AbstractC17887z.super.getContext() == null && this.f50880e == null) {
            return null;
        }
        m15716WA();
        return this.f50880e;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC17887z.super.getDefaultViewModelProviderFactory());
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f50880e;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m15716WA();
        m15715XA();
    }

    public void onAttach(Context context) {
        AbstractC17887z.super.onAttach(context);
        m15716WA();
        m15715XA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC17887z.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
