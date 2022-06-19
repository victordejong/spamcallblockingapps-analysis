package p193e.p194a.p1138q.p1139a;

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
/* renamed from: e.a.q.a.k */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/k.class */
public abstract class AbstractC19386k extends e implements b {

    /* renamed from: a */
    public ContextWrapper f53893a;

    /* renamed from: b */
    public volatile f f53894b;

    /* renamed from: c */
    public final Object f53895c = new Object();

    /* renamed from: d */
    public boolean f53896d = false;

    /* renamed from: OA */
    public final void m13384OA() {
        if (this.f53893a == null) {
            this.f53893a = new ViewComponentManager$FragmentContextWrapper(AbstractC19386k.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m13383PA() {
        if (!this.f53896d) {
            this.f53896d = true;
            ((AbstractC19378d) m13382Yt()).mo11939g0((C19354a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m13382Yt() {
        if (this.f53894b == null) {
            synchronized (this.f53895c) {
                if (this.f53894b == null) {
                    this.f53894b = new f(this);
                }
            }
        }
        return this.f53894b.Yt();
    }

    public Context getContext() {
        if (AbstractC19386k.super.getContext() == null && this.f53893a == null) {
            return null;
        }
        m13384OA();
        return this.f53893a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC19386k.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC19386k.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f53893a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m13384OA();
        m13383PA();
    }

    public void onAttach(Context context) {
        AbstractC19386k.super.onAttach(context);
        m13384OA();
        m13383PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC19386k.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
