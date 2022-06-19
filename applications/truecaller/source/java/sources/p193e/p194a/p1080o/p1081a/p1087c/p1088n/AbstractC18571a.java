package p193e.p194a.p1080o.p1081a.p1087c.p1088n;

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
/* renamed from: e.a.o.a.c.n.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/c/n/a.class */
public abstract class AbstractC18571a extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f52348a;

    /* renamed from: b */
    public volatile f f52349b;

    /* renamed from: c */
    public final Object f52350c = new Object();

    /* renamed from: d */
    public boolean f52351d = false;

    public AbstractC18571a(int i) {
        super(i);
    }

    /* renamed from: OA */
    public final void m14762OA() {
        if (this.f52348a == null) {
            this.f52348a = new ViewComponentManager$FragmentContextWrapper(AbstractC18571a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m14761PA() {
        if (!this.f52351d) {
            this.f52351d = true;
            ((AbstractC18577c) m14760Yt()).mo11952b1((C18572b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m14760Yt() {
        if (this.f52349b == null) {
            synchronized (this.f52350c) {
                if (this.f52349b == null) {
                    this.f52349b = new f(this);
                }
            }
        }
        return this.f52349b.Yt();
    }

    public Context getContext() {
        if (AbstractC18571a.super.getContext() == null && this.f52348a == null) {
            return null;
        }
        m14762OA();
        return this.f52348a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC18571a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC18571a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f52348a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m14762OA();
        m14761PA();
    }

    public void onAttach(Context context) {
        AbstractC18571a.super.onAttach(context);
        m14762OA();
        m14761PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC18571a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
