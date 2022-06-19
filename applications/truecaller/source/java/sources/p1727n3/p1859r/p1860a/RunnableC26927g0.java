package p1727n3.p1859r.p1860a;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import p1727n3.p1807k.p1816e.C26508a;
import p1727n3.p1859r.p1860a.C26937m0;
/* renamed from: n3.r.a.g0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/g0.class */
public class RunnableC26927g0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C26937m0.AbstractC26938a f75345a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f75346b;

    /* renamed from: c */
    public final /* synthetic */ C26508a f75347c;

    public RunnableC26927g0(C26937m0.AbstractC26938a abstractC26938a, Fragment fragment, C26508a c26508a) {
        this.f75345a = abstractC26938a;
        this.f75346b = fragment;
        this.f75347c = c26508a;
    }

    @Override // java.lang.Runnable
    public void run() {
        ((FragmentManager.C0167d) this.f75345a).m42877a(this.f75346b, this.f75347c);
    }
}
