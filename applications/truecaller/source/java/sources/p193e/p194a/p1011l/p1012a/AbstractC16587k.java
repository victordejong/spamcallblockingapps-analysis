package p193e.p194a.p1011l.p1012a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import n3.r.a.k;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.l.a.k */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/k.class */
public abstract class AbstractC16587k extends k implements b {

    /* renamed from: a */
    public ContextWrapper f46606a;

    /* renamed from: b */
    public volatile f f46607b;

    /* renamed from: c */
    public final Object f46608c = new Object();

    /* renamed from: d */
    public boolean f46609d = false;

    /* renamed from: OA */
    public final void m17220OA() {
        if (this.f46606a == null) {
            this.f46606a = new ViewComponentManager$FragmentContextWrapper(AbstractC16587k.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m17219PA() {
        if (!this.f46609d) {
            this.f46609d = true;
            ((AbstractC16583i) m17218Yt()).mo11894w((C16555a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m17218Yt() {
        if (this.f46607b == null) {
            synchronized (this.f46608c) {
                if (this.f46607b == null) {
                    this.f46607b = new f(this);
                }
            }
        }
        return this.f46607b.Yt();
    }

    public Context getContext() {
        if (AbstractC16587k.super.getContext() == null && this.f46606a == null) {
            return null;
        }
        m17220OA();
        return this.f46606a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC16587k.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC16587k.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f46606a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m17220OA();
        m17219PA();
    }

    public void onAttach(Context context) {
        AbstractC16587k.super.onAttach(context);
        m17220OA();
        m17219PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC16587k.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
