package p193e.p194a.p1011l.p1017d.p1018a;

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
/* renamed from: e.a.l.d.a.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/d/a/b.class */
public abstract class AbstractC16836b extends e implements b {

    /* renamed from: a */
    public ContextWrapper f47215a;

    /* renamed from: b */
    public volatile f f47216b;

    /* renamed from: c */
    public final Object f47217c = new Object();

    /* renamed from: d */
    public boolean f47218d = false;

    /* renamed from: OA */
    public final void m16934OA() {
        if (this.f47215a == null) {
            this.f47215a = new ViewComponentManager$FragmentContextWrapper(AbstractC16836b.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m16933PA() {
        if (!this.f47218d) {
            this.f47218d = true;
            ((AbstractC16838d) m16932Yt()).mo11955a1((C16833a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m16932Yt() {
        if (this.f47216b == null) {
            synchronized (this.f47217c) {
                if (this.f47216b == null) {
                    this.f47216b = new f(this);
                }
            }
        }
        return this.f47216b.Yt();
    }

    public Context getContext() {
        if (AbstractC16836b.super.getContext() == null && this.f47215a == null) {
            return null;
        }
        m16934OA();
        return this.f47215a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC16836b.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC16836b.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f47215a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m16934OA();
        m16933PA();
    }

    public void onAttach(Context context) {
        AbstractC16836b.super.onAttach(context);
        m16934OA();
        m16933PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC16836b.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
