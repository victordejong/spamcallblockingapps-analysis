package p193e.p194a.p1052m;

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
import p193e.p194a.p682e.AbstractC13329x0;
/* renamed from: e.a.m.w */
/* loaded from: classes7-dex2jar.jar:e/a/m/w.class */
public abstract class AbstractC17884w extends AbstractC13329x0 implements b {

    /* renamed from: e */
    public ContextWrapper f50872e;

    /* renamed from: f */
    public volatile f f50873f;

    /* renamed from: g */
    public final Object f50874g = new Object();

    /* renamed from: h */
    public boolean f50875h = false;

    /* renamed from: WA */
    public final void m15720WA() {
        if (this.f50872e == null) {
            this.f50872e = new ViewComponentManager$FragmentContextWrapper(AbstractC17884w.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: XA */
    public void m15719XA() {
        if (!this.f50875h) {
            this.f50875h = true;
            ((AbstractC17864e) m15718Yt()).mo11932j((C17861d) this);
        }
    }

    /* renamed from: Yt */
    public final Object m15718Yt() {
        if (this.f50873f == null) {
            synchronized (this.f50874g) {
                if (this.f50873f == null) {
                    this.f50873f = new f(this);
                }
            }
        }
        return this.f50873f.Yt();
    }

    public Context getContext() {
        if (AbstractC17884w.super.getContext() == null && this.f50872e == null) {
            return null;
        }
        m15720WA();
        return this.f50872e;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC17884w.super.getDefaultViewModelProviderFactory());
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f50872e;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m15720WA();
        m15719XA();
    }

    public void onAttach(Context context) {
        AbstractC17884w.super.onAttach(context);
        m15720WA();
        m15719XA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC17884w.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
