package p193e.p194a.p1138q.p1139a.p1140b;

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
/* renamed from: e.a.q.a.b.i */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/b/i.class */
public abstract class AbstractC19372i extends e implements b {

    /* renamed from: a */
    public ContextWrapper f53863a;

    /* renamed from: b */
    public volatile f f53864b;

    /* renamed from: c */
    public final Object f53865c = new Object();

    /* renamed from: d */
    public boolean f53866d = false;

    /* renamed from: OA */
    public final void m13398OA() {
        if (this.f53863a == null) {
            this.f53863a = new ViewComponentManager$FragmentContextWrapper(AbstractC19372i.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m13397PA() {
        if (!this.f53866d) {
            this.f53866d = true;
            ((AbstractC19367d) m13396Yt()).mo11908r((C19358a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m13396Yt() {
        if (this.f53864b == null) {
            synchronized (this.f53865c) {
                if (this.f53864b == null) {
                    this.f53864b = new f(this);
                }
            }
        }
        return this.f53864b.Yt();
    }

    public Context getContext() {
        if (AbstractC19372i.super.getContext() == null && this.f53863a == null) {
            return null;
        }
        m13398OA();
        return this.f53863a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC19372i.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC19372i.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f53863a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m13398OA();
        m13397PA();
    }

    public void onAttach(Context context) {
        AbstractC19372i.super.onAttach(context);
        m13398OA();
        m13397PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC19372i.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
