package p193e.p194a.p294b.p345k.p351d.p353b;

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
/* renamed from: e.a.b.k.d.b.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/f.class */
public abstract class AbstractC8017f extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f24733a;

    /* renamed from: b */
    public volatile f f24734b;

    /* renamed from: c */
    public final Object f24735c = new Object();

    /* renamed from: d */
    public boolean f24736d = false;

    /* renamed from: OA */
    public final void m28972OA() {
        if (this.f24733a == null) {
            this.f24733a = new ViewComponentManager$FragmentContextWrapper(AbstractC8017f.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m28971PA() {
        if (!this.f24736d) {
            this.f24736d = true;
            ((AbstractC8015d) m28970Yt()).mo11927k1((C8009c) this);
        }
    }

    /* renamed from: Yt */
    public final Object m28970Yt() {
        if (this.f24734b == null) {
            synchronized (this.f24735c) {
                if (this.f24734b == null) {
                    this.f24734b = new f(this);
                }
            }
        }
        return this.f24734b.Yt();
    }

    public Context getContext() {
        if (AbstractC8017f.super.getContext() == null && this.f24733a == null) {
            return null;
        }
        m28972OA();
        return this.f24733a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC8017f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC8017f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f24733a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m28972OA();
        m28971PA();
    }

    public void onAttach(Context context) {
        AbstractC8017f.super.onAttach(context);
        m28972OA();
        m28971PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC8017f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
