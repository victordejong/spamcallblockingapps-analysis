package p193e.p194a.p1213s2.p1216h;

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
/* renamed from: e.a.s2.h.o */
/* loaded from: classes5-dex2jar.jar:e/a/s2/h/o.class */
public abstract class AbstractC20225o extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f56971a;

    /* renamed from: b */
    public volatile f f56972b;

    /* renamed from: c */
    public final Object f56973c = new Object();

    /* renamed from: d */
    public boolean f56974d = false;

    /* renamed from: OA */
    public final void m11320OA() {
        if (this.f56971a == null) {
            this.f56971a = new ViewComponentManager$FragmentContextWrapper(AbstractC20225o.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m11319PA() {
        if (!this.f56974d) {
            this.f56974d = true;
            ((AbstractC20219i) m11318Yt()).mo11344V((C20218h) this);
        }
    }

    /* renamed from: Yt */
    public final Object m11318Yt() {
        if (this.f56972b == null) {
            synchronized (this.f56973c) {
                if (this.f56972b == null) {
                    this.f56972b = new f(this);
                }
            }
        }
        return this.f56972b.Yt();
    }

    public Context getContext() {
        if (AbstractC20225o.super.getContext() == null && this.f56971a == null) {
            return null;
        }
        m11320OA();
        return this.f56971a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC20225o.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC20225o.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f56971a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m11320OA();
        m11319PA();
    }

    public void onAttach(Context context) {
        AbstractC20225o.super.onAttach(context);
        m11320OA();
        m11319PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC20225o.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
