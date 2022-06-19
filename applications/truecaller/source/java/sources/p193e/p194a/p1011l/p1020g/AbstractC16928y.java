package p193e.p194a.p1011l.p1020g;

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
/* renamed from: e.a.l.g.y */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/y.class */
public abstract class AbstractC16928y extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f47523a;

    /* renamed from: b */
    public volatile f f47524b;

    /* renamed from: c */
    public final Object f47525c = new Object();

    /* renamed from: d */
    public boolean f47526d = false;

    /* renamed from: OA */
    public final void m16766OA() {
        if (this.f47523a == null) {
            this.f47523a = new ViewComponentManager$FragmentContextWrapper(AbstractC16928y.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m16765PA() {
        if (!this.f47526d) {
            this.f47526d = true;
            ((AbstractC16889h) m16764Yt()).mo11929k((C16888g) this);
        }
    }

    /* renamed from: Yt */
    public final Object m16764Yt() {
        if (this.f47524b == null) {
            synchronized (this.f47525c) {
                if (this.f47524b == null) {
                    this.f47524b = new f(this);
                }
            }
        }
        return this.f47524b.Yt();
    }

    public Context getContext() {
        if (AbstractC16928y.super.getContext() == null && this.f47523a == null) {
            return null;
        }
        m16766OA();
        return this.f47523a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC16928y.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC16928y.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f47523a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m16766OA();
        m16765PA();
    }

    public void onAttach(Context context) {
        AbstractC16928y.super.onAttach(context);
        m16766OA();
        m16765PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC16928y.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
