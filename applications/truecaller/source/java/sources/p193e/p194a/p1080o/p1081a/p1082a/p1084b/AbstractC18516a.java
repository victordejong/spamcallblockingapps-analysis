package p193e.p194a.p1080o.p1081a.p1082a.p1084b;

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
/* renamed from: e.a.o.a.a.b.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/a/b/a.class */
public abstract class AbstractC18516a extends e implements b {

    /* renamed from: a */
    public ContextWrapper f52246a;

    /* renamed from: b */
    public volatile f f52247b;

    /* renamed from: c */
    public final Object f52248c = new Object();

    /* renamed from: d */
    public boolean f52249d = false;

    /* renamed from: OA */
    public final void m14826OA() {
        if (this.f52246a == null) {
            this.f52246a = new ViewComponentManager$FragmentContextWrapper(AbstractC18516a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m14825PA() {
        if (!this.f52249d) {
            this.f52249d = true;
            ((AbstractC18527h) m14824Yt()).mo12020B((C18517b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14824Yt() {
        if (this.f52247b == null) {
            synchronized (this.f52248c) {
                if (this.f52247b == null) {
                    this.f52247b = new f(this);
                }
            }
        }
        return this.f52247b.Yt();
    }

    public Context getContext() {
        if (AbstractC18516a.super.getContext() == null && this.f52246a == null) {
            return null;
        }
        m14826OA();
        return this.f52246a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18516a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18516a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52246a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14826OA();
        m14825PA();
    }

    public void onAttach(Context context) {
        AbstractC18516a.super.onAttach(context);
        m14826OA();
        m14825PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18516a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
