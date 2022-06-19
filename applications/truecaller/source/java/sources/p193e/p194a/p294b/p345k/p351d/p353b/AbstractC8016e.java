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
/* renamed from: e.a.b.k.d.b.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/e.class */
public abstract class AbstractC8016e extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f24729a;

    /* renamed from: b */
    public volatile f f24730b;

    /* renamed from: c */
    public final Object f24731c = new Object();

    /* renamed from: d */
    public boolean f24732d = false;

    /* renamed from: OA */
    public final void m28975OA() {
        if (this.f24729a == null) {
            this.f24729a = new ViewComponentManager$FragmentContextWrapper(AbstractC8016e.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m28974PA() {
        if (!this.f24732d) {
            this.f24732d = true;
            ((AbstractC8008b) m28973Yt()).mo11912p1((C8003a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m28973Yt() {
        if (this.f24730b == null) {
            synchronized (this.f24731c) {
                if (this.f24730b == null) {
                    this.f24730b = new f(this);
                }
            }
        }
        return this.f24730b.Yt();
    }

    public Context getContext() {
        if (AbstractC8016e.super.getContext() == null && this.f24729a == null) {
            return null;
        }
        m28975OA();
        return this.f24729a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC8016e.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC8016e.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f24729a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m28975OA();
        m28974PA();
    }

    public void onAttach(Context context) {
        AbstractC8016e.super.onAttach(context);
        m28975OA();
        m28974PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC8016e.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
