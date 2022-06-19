package p193e.p194a.p1011l;

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
/* renamed from: e.a.l.w */
/* loaded from: classes12-dex2jar.jar:e/a/l/w.class */
public abstract class AbstractC17296w extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f48526a;

    /* renamed from: b */
    public volatile f f48527b;

    /* renamed from: c */
    public final Object f48528c = new Object();

    /* renamed from: d */
    public boolean f48529d = false;

    /* renamed from: OA */
    public final void m16275OA() {
        if (this.f48526a == null) {
            this.f48526a = new ViewComponentManager$FragmentContextWrapper(AbstractC17296w.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m16274PA() {
        if (!this.f48529d) {
            this.f48529d = true;
            ((AbstractC16947k1) m16273Yt()).mo11996J0((C16614b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m16273Yt() {
        if (this.f48527b == null) {
            synchronized (this.f48528c) {
                if (this.f48527b == null) {
                    this.f48527b = new f(this);
                }
            }
        }
        return this.f48527b.Yt();
    }

    public Context getContext() {
        if (AbstractC17296w.super.getContext() == null && this.f48526a == null) {
            return null;
        }
        m16275OA();
        return this.f48526a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC17296w.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC17296w.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f48526a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m16275OA();
        m16274PA();
    }

    public void onAttach(Context context) {
        AbstractC17296w.super.onAttach(context);
        m16275OA();
        m16274PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC17296w.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
