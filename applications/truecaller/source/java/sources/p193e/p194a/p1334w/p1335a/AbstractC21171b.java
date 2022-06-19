package p193e.p194a.p1334w.p1335a;

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
/* renamed from: e.a.w.a.b */
/* loaded from: classes12-dex2jar.jar:e/a/w/a/b.class */
public abstract class AbstractC21171b extends e implements b {

    /* renamed from: a */
    public ContextWrapper f59341a;

    /* renamed from: b */
    public volatile f f59342b;

    /* renamed from: c */
    public final Object f59343c = new Object();

    /* renamed from: d */
    public boolean f59344d = false;

    /* renamed from: OA */
    public final void m10177OA() {
        if (this.f59341a == null) {
            this.f59341a = new ViewComponentManager$FragmentContextWrapper(AbstractC21171b.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m10176PA() {
        if (!this.f59344d) {
            this.f59344d = true;
            ((AbstractC21172c) m10175Yt()).mo10174y0((C21167a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m10175Yt() {
        if (this.f59342b == null) {
            synchronized (this.f59343c) {
                if (this.f59342b == null) {
                    this.f59342b = new f(this);
                }
            }
        }
        return this.f59342b.Yt();
    }

    public Context getContext() {
        if (AbstractC21171b.super.getContext() == null && this.f59341a == null) {
            return null;
        }
        m10177OA();
        return this.f59341a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC21171b.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC21171b.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f59341a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m10177OA();
        m10176PA();
    }

    public void onAttach(Context context) {
        AbstractC21171b.super.onAttach(context);
        m10177OA();
        m10176PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC21171b.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
