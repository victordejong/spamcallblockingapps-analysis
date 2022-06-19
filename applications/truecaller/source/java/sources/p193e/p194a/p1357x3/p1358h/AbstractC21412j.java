package p193e.p194a.p1357x3.p1358h;

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
/* renamed from: e.a.x3.h.j */
/* loaded from: classes9-dex2jar.jar:e/a/x3/h/j.class */
public abstract class AbstractC21412j extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f59880a;

    /* renamed from: b */
    public volatile f f59881b;

    /* renamed from: c */
    public final Object f59882c = new Object();

    /* renamed from: d */
    public boolean f59883d = false;

    /* renamed from: OA */
    public final void m9757OA() {
        if (this.f59880a == null) {
            this.f59880a = new ViewComponentManager$FragmentContextWrapper(AbstractC21412j.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m9756PA() {
        if (!this.f59883d) {
            this.f59883d = true;
            ((AbstractC21408f) m9755Yt()).mo9760A((View$OnClickListenerC21407e) this);
        }
    }

    /* renamed from: Yt */
    public final Object m9755Yt() {
        if (this.f59881b == null) {
            synchronized (this.f59882c) {
                if (this.f59881b == null) {
                    this.f59881b = new f(this);
                }
            }
        }
        return this.f59881b.Yt();
    }

    public Context getContext() {
        if (AbstractC21412j.super.getContext() == null && this.f59880a == null) {
            return null;
        }
        m9757OA();
        return this.f59880a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC21412j.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC21412j.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f59880a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m9757OA();
        m9756PA();
    }

    public void onAttach(Context context) {
        AbstractC21412j.super.onAttach(context);
        m9757OA();
        m9756PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC21412j.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
