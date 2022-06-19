package p193e.p194a.p1011l.p1013c;

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
/* renamed from: e.a.l.c.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/d.class */
public abstract class AbstractC16804d extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f47092a;

    /* renamed from: b */
    public volatile f f47093b;

    /* renamed from: c */
    public final Object f47094c = new Object();

    /* renamed from: d */
    public boolean f47095d = false;

    /* renamed from: OA */
    public final void m17036OA() {
        if (this.f47092a == null) {
            this.f47092a = new ViewComponentManager$FragmentContextWrapper(AbstractC16804d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m17035PA() {
        if (!this.f47095d) {
            this.f47095d = true;
            ((AbstractC16806f) m17034Yt()).mo11975Q0((C16784b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m17034Yt() {
        if (this.f47093b == null) {
            synchronized (this.f47094c) {
                if (this.f47093b == null) {
                    this.f47093b = new f(this);
                }
            }
        }
        return this.f47093b.Yt();
    }

    public Context getContext() {
        if (AbstractC16804d.super.getContext() == null && this.f47092a == null) {
            return null;
        }
        m17036OA();
        return this.f47092a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC16804d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC16804d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f47092a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m17036OA();
        m17035PA();
    }

    public void onAttach(Context context) {
        AbstractC16804d.super.onAttach(context);
        m17036OA();
        m17035PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC16804d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
