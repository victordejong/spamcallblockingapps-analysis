package p193e.p194a.p288a0.p289a;

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
/* renamed from: e.a.a0.a.d */
/* loaded from: classes12-dex2jar.jar:e/a/a0/a/d.class */
public abstract class AbstractC7370d extends e implements b {

    /* renamed from: a */
    public ContextWrapper f23486a;

    /* renamed from: b */
    public volatile f f23487b;

    /* renamed from: c */
    public final Object f23488c = new Object();

    /* renamed from: d */
    public boolean f23489d = false;

    /* renamed from: OA */
    public final void m29727OA() {
        if (this.f23486a == null) {
            this.f23486a = new ViewComponentManager$FragmentContextWrapper(AbstractC7370d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m29726PA() {
        if (!this.f23489d) {
            this.f23489d = true;
            ((AbstractC7378l) m29725Yt()).mo11956a0((C7358a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m29725Yt() {
        if (this.f23487b == null) {
            synchronized (this.f23488c) {
                if (this.f23487b == null) {
                    this.f23487b = new f(this);
                }
            }
        }
        return this.f23487b.Yt();
    }

    public Context getContext() {
        if (AbstractC7370d.super.getContext() == null && this.f23486a == null) {
            return null;
        }
        m29727OA();
        return this.f23486a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC7370d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC7370d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f23486a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m29727OA();
        m29726PA();
    }

    public void onAttach(Context context) {
        AbstractC7370d.super.onAttach(context);
        m29727OA();
        m29726PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC7370d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
