package p193e.p194a.p1080o.p1081a.p1094h;

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
/* renamed from: e.a.o.a.h.k */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/h/k.class */
public abstract class AbstractC18652k extends q implements b {

    /* renamed from: a */
    public ContextWrapper f52471a;

    /* renamed from: b */
    public volatile f f52472b;

    /* renamed from: c */
    public final Object f52473c = new Object();

    /* renamed from: d */
    public boolean f52474d = false;

    /* renamed from: OA */
    public final void m14667OA() {
        if (this.f52471a == null) {
            this.f52471a = new ViewComponentManager$FragmentContextWrapper(AbstractC18652k.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m14666PA() {
        if (!this.f52474d) {
            this.f52474d = true;
            ((AbstractC18648g) m14665Yt()).mo11946d1((C18639b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14665Yt() {
        if (this.f52472b == null) {
            synchronized (this.f52473c) {
                if (this.f52472b == null) {
                    this.f52472b = new f(this);
                }
            }
        }
        return this.f52472b.Yt();
    }

    public Context getContext() {
        if (AbstractC18652k.super.getContext() == null && this.f52471a == null) {
            return null;
        }
        m14667OA();
        return this.f52471a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18652k.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18652k.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52471a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14667OA();
        m14666PA();
    }

    public void onAttach(Context context) {
        AbstractC18652k.super.onAttach(context);
        m14667OA();
        m14666PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18652k.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
