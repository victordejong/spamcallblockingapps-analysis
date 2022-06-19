package p193e.p194a.p195a.p271o;

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
/* renamed from: e.a.a.o.d */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/d.class */
public abstract class AbstractC7082d extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f22819a;

    /* renamed from: b */
    public volatile f f22820b;

    /* renamed from: c */
    public final Object f22821c = new Object();

    /* renamed from: d */
    public boolean f22822d = false;

    /* renamed from: OA */
    public final void m30165OA() {
        if (this.f22819a == null) {
            this.f22819a = new ViewComponentManager$FragmentContextWrapper(AbstractC7082d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m30164PA() {
        if (!this.f22822d) {
            this.f22822d = true;
            ((AbstractC7095i) m30163Yt()).mo11950c0((C7086h) this);
        }
    }

    /* renamed from: Yt */
    public final Object m30163Yt() {
        if (this.f22820b == null) {
            synchronized (this.f22821c) {
                if (this.f22820b == null) {
                    this.f22820b = new f(this);
                }
            }
        }
        return this.f22820b.Yt();
    }

    public Context getContext() {
        if (AbstractC7082d.super.getContext() == null && this.f22819a == null) {
            return null;
        }
        m30165OA();
        return this.f22819a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC7082d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC7082d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f22819a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m30165OA();
        m30164PA();
    }

    public void onAttach(Context context) {
        AbstractC7082d.super.onAttach(context);
        m30165OA();
        m30164PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC7082d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
