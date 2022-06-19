package p193e.p194a.p1011l.p1012a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import n3.r.a.k;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.l.a.l */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/l.class */
public abstract class AbstractC16589l extends k implements b {

    /* renamed from: a */
    public ContextWrapper f46612a;

    /* renamed from: b */
    public volatile f f46613b;

    /* renamed from: c */
    public final Object f46614c = new Object();

    /* renamed from: d */
    public boolean f46615d = false;

    /* renamed from: OA */
    public final void m17216OA() {
        if (this.f46612a == null) {
            this.f46612a = new ViewComponentManager$FragmentContextWrapper(AbstractC16589l.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m17215PA() {
        if (!this.f46615d) {
            this.f46615d = true;
            ((AbstractC16585j) m17214Yt()).mo12005G((C16559b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m17214Yt() {
        if (this.f46613b == null) {
            synchronized (this.f46614c) {
                if (this.f46613b == null) {
                    this.f46613b = new f(this);
                }
            }
        }
        return this.f46613b.Yt();
    }

    public Context getContext() {
        if (AbstractC16589l.super.getContext() == null && this.f46612a == null) {
            return null;
        }
        m17216OA();
        return this.f46612a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC16589l.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC16589l.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f46612a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m17216OA();
        m17215PA();
    }

    public void onAttach(Context context) {
        AbstractC16589l.super.onAttach(context);
        m17216OA();
        m17215PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC16589l.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
