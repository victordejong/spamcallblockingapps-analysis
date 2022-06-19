package p193e.p194a.p1080o.p1081a.p1082a.p1083a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import e.m.a.g.e.e;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.o.a.a.a.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/b.class */
public abstract class AbstractC18508b extends e implements b {

    /* renamed from: a */
    public ContextWrapper f52228a;

    /* renamed from: b */
    public volatile f f52229b;

    /* renamed from: c */
    public final Object f52230c = new Object();

    /* renamed from: d */
    public boolean f52231d = false;

    /* renamed from: OA */
    public final void m14851OA() {
        if (this.f52228a == null) {
            this.f52228a = new ViewComponentManager$FragmentContextWrapper(AbstractC18508b.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m14850PA() {
        if (!this.f52231d) {
            this.f52231d = true;
            ((AbstractC18510d) m14849Yt()).mo11904s0((C18500a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14849Yt() {
        if (this.f52229b == null) {
            synchronized (this.f52230c) {
                if (this.f52229b == null) {
                    this.f52229b = new f(this);
                }
            }
        }
        return this.f52229b.Yt();
    }

    public Context getContext() {
        if (AbstractC18508b.super.getContext() == null && this.f52228a == null) {
            return null;
        }
        m14851OA();
        return this.f52228a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18508b.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18508b.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52228a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14851OA();
        m14850PA();
    }

    public void onAttach(Context context) {
        AbstractC18508b.super.onAttach(context);
        m14851OA();
        m14850PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18508b.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
