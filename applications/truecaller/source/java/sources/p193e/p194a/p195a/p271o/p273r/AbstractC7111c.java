package p193e.p194a.p195a.p271o.p273r;

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
/* renamed from: e.a.a.o.r.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/r/c.class */
public abstract class AbstractC7111c extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f22886a;

    /* renamed from: b */
    public volatile f f22887b;

    /* renamed from: c */
    public final Object f22888c = new Object();

    /* renamed from: d */
    public boolean f22889d = false;

    /* renamed from: OA */
    public final void m30108OA() {
        if (this.f22886a == null) {
            this.f22886a = new ViewComponentManager$FragmentContextWrapper(AbstractC7111c.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m30107PA() {
        if (!this.f22889d) {
            this.f22889d = true;
            ((AbstractC7121f) m30106Yt()).mo11978P0((C7113e) this);
        }
    }

    /* renamed from: Yt */
    public final Object m30106Yt() {
        if (this.f22887b == null) {
            synchronized (this.f22888c) {
                if (this.f22887b == null) {
                    this.f22887b = new f(this);
                }
            }
        }
        return this.f22887b.Yt();
    }

    public Context getContext() {
        if (AbstractC7111c.super.getContext() == null && this.f22886a == null) {
            return null;
        }
        m30108OA();
        return this.f22886a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC7111c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC7111c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f22886a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m30108OA();
        m30107PA();
    }

    public void onAttach(Context context) {
        AbstractC7111c.super.onAttach(context);
        m30108OA();
        m30107PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC7111c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
