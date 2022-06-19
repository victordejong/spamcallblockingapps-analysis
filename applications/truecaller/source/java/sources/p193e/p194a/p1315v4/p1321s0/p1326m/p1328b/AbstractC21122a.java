package p193e.p194a.p1315v4.p1321s0.p1326m.p1328b;

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
/* renamed from: e.a.v4.s0.m.b.a */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/m/b/a.class */
public abstract class AbstractC21122a extends k implements b {

    /* renamed from: a */
    public ContextWrapper f59266a;

    /* renamed from: b */
    public volatile f f59267b;

    /* renamed from: c */
    public final Object f59268c = new Object();

    /* renamed from: d */
    public boolean f59269d = false;

    /* renamed from: OA */
    public final void m10271OA() {
        if (this.f59266a == null) {
            this.f59266a = new ViewComponentManager$FragmentContextWrapper(AbstractC21122a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m10270PA() {
        if (!this.f59269d) {
            this.f59269d = true;
            ((AbstractC21130f) m10269Yt()).mo10254V0((C21127e) this);
        }
    }

    /* renamed from: Yt */
    public final Object m10269Yt() {
        if (this.f59267b == null) {
            synchronized (this.f59268c) {
                if (this.f59267b == null) {
                    this.f59267b = new f(this);
                }
            }
        }
        return this.f59267b.Yt();
    }

    public Context getContext() {
        if (AbstractC21122a.super.getContext() == null && this.f59266a == null) {
            return null;
        }
        m10271OA();
        return this.f59266a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC21122a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC21122a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f59266a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m10271OA();
        m10270PA();
    }

    public void onAttach(Context context) {
        AbstractC21122a.super.onAttach(context);
        m10271OA();
        m10270PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC21122a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
