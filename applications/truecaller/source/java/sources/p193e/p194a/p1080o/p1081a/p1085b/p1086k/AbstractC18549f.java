package p193e.p194a.p1080o.p1081a.p1085b.p1086k;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import n3.b.a.q;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.o.a.b.k.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/b/k/f.class */
public abstract class AbstractC18549f extends q implements b {

    /* renamed from: a */
    public ContextWrapper f52305a;

    /* renamed from: b */
    public volatile f f52306b;

    /* renamed from: c */
    public final Object f52307c = new Object();

    /* renamed from: d */
    public boolean f52308d = false;

    /* renamed from: OA */
    public final void m14792OA() {
        if (this.f52305a == null) {
            this.f52305a = new ViewComponentManager$FragmentContextWrapper(AbstractC18549f.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m14791PA() {
        if (!this.f52308d) {
            this.f52308d = true;
            ((AbstractC18545b) m14790Yt()).mo12010E0((C18540a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14790Yt() {
        if (this.f52306b == null) {
            synchronized (this.f52307c) {
                if (this.f52306b == null) {
                    this.f52306b = new f(this);
                }
            }
        }
        return this.f52306b.Yt();
    }

    public Context getContext() {
        if (AbstractC18549f.super.getContext() == null && this.f52305a == null) {
            return null;
        }
        m14792OA();
        return this.f52305a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18549f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18549f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52305a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14792OA();
        m14791PA();
    }

    public void onAttach(Context context) {
        AbstractC18549f.super.onAttach(context);
        m14792OA();
        m14791PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18549f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
