package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.q.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/g.class */
public class C6870g {

    /* renamed from: a */
    public final Object f16843a;

    public C6870g(Activity activity) {
        C7021t.m21289a(activity, "Activity must not be null");
        this.f16843a = activity;
    }

    @NonNull
    /* renamed from: a */
    public Activity m21681a() {
        return (Activity) this.f16843a;
    }

    @NonNull
    /* renamed from: b */
    public FragmentActivity m21680b() {
        return (FragmentActivity) this.f16843a;
    }

    /* renamed from: c */
    public boolean m21679c() {
        return this.f16843a instanceof FragmentActivity;
    }

    /* renamed from: d */
    public final boolean m21678d() {
        return this.f16843a instanceof Activity;
    }
}
