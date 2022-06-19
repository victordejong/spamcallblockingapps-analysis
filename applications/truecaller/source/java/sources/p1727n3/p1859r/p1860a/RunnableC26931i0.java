package p1727n3.p1859r.p1860a;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import p1727n3.p1807k.p1816e.C26508a;
import p1727n3.p1859r.p1860a.C26937m0;
/* renamed from: n3.r.a.i0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/i0.class */
public class RunnableC26931i0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C26937m0.AbstractC26938a f75353a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f75354b;

    /* renamed from: c */
    public final /* synthetic */ C26508a f75355c;

    public RunnableC26931i0(C26937m0.AbstractC26938a abstractC26938a, Fragment fragment, C26508a c26508a) {
        this.f75353a = abstractC26938a;
        this.f75354b = fragment;
        this.f75355c = c26508a;
    }

    @Override // java.lang.Runnable
    public void run() {
        ((FragmentManager.C0167d) this.f75353a).m42877a(this.f75354b, this.f75355c);
    }
}
