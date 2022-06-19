package p193e.p194a.p1195s;

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
/* renamed from: e.a.s.j */
/* loaded from: classes6-dex2jar.jar:e/a/s/j.class */
public abstract class AbstractC20020j extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f56562a;

    /* renamed from: b */
    public volatile f f56563b;

    /* renamed from: c */
    public final Object f56564c = new Object();

    /* renamed from: d */
    public boolean f56565d = false;

    public AbstractC20020j(int i) {
        super(i);
    }

    /* renamed from: OA */
    public final void m11630OA() {
        if (this.f56562a == null) {
            this.f56562a = new ViewComponentManager$FragmentContextWrapper(AbstractC20020j.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m11629PA() {
        if (!this.f56565d) {
            this.f56565d = true;
            ((AbstractC20011d) m11628Yt()).mo11665Z0((C20010c) this);
        }
    }

    /* renamed from: Yt */
    public final Object m11628Yt() {
        if (this.f56563b == null) {
            synchronized (this.f56564c) {
                if (this.f56563b == null) {
                    this.f56563b = new f(this);
                }
            }
        }
        return this.f56563b.Yt();
    }

    public Context getContext() {
        if (AbstractC20020j.super.getContext() == null && this.f56562a == null) {
            return null;
        }
        m11630OA();
        return this.f56562a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC20020j.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC20020j.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f56562a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m11630OA();
        m11629PA();
    }

    public void onAttach(Context context) {
        AbstractC20020j.super.onAttach(context);
        m11630OA();
        m11629PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC20020j.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
