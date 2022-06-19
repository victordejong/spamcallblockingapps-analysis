package p193e.p194a.p1195s.p1196a;

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
/* renamed from: e.a.s.a.f */
/* loaded from: classes6-dex2jar.jar:e/a/s/a/f.class */
public abstract class AbstractC20008f extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f56537a;

    /* renamed from: b */
    public volatile f f56538b;

    /* renamed from: c */
    public final Object f56539c = new Object();

    /* renamed from: d */
    public boolean f56540d = false;

    /* renamed from: OA */
    public final void m11669OA() {
        if (this.f56537a == null) {
            this.f56537a = new ViewComponentManager$FragmentContextWrapper(AbstractC20008f.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m11668PA() {
        if (!this.f56540d) {
            this.f56540d = true;
            ((AbstractC20000b) m11667Yt()).mo11676h1((C19997a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m11667Yt() {
        if (this.f56538b == null) {
            synchronized (this.f56539c) {
                if (this.f56538b == null) {
                    this.f56538b = new f(this);
                }
            }
        }
        return this.f56538b.Yt();
    }

    public Context getContext() {
        if (AbstractC20008f.super.getContext() == null && this.f56537a == null) {
            return null;
        }
        m11669OA();
        return this.f56537a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC20008f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC20008f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f56537a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m11669OA();
        m11668PA();
    }

    public void onAttach(Context context) {
        AbstractC20008f.super.onAttach(context);
        m11669OA();
        m11668PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC20008f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
