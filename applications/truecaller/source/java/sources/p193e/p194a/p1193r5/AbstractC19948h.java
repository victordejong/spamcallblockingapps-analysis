package p193e.p194a.p1193r5;

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
/* renamed from: e.a.r5.h */
/* loaded from: classes8-dex2jar.jar:e/a/r5/h.class */
public abstract class AbstractC19948h extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f56406a;

    /* renamed from: b */
    public volatile f f56407b;

    /* renamed from: c */
    public final Object f56408c = new Object();

    /* renamed from: d */
    public boolean f56409d = false;

    /* renamed from: OA */
    public final void m11789OA() {
        if (this.f56406a == null) {
            this.f56406a = new ViewComponentManager$FragmentContextWrapper(AbstractC19948h.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m11788PA() {
        if (!this.f56409d) {
            this.f56409d = true;
            ((AbstractC19993w) m11787Yt()).mo11683H((C19984v) this);
        }
    }

    /* renamed from: Yt */
    public final Object m11787Yt() {
        if (this.f56407b == null) {
            synchronized (this.f56408c) {
                if (this.f56407b == null) {
                    this.f56407b = new f(this);
                }
            }
        }
        return this.f56407b.Yt();
    }

    public Context getContext() {
        if (AbstractC19948h.super.getContext() == null && this.f56406a == null) {
            return null;
        }
        m11789OA();
        return this.f56406a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC19948h.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC19948h.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f56406a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m11789OA();
        m11788PA();
    }

    public void onAttach(Context context) {
        AbstractC19948h.super.onAttach(context);
        m11789OA();
        m11788PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC19948h.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
