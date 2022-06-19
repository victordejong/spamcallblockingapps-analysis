package androidx.fragment.app;

import androidx.fragment.app.AbstractC0397a0;
import androidx.fragment.app.C0459p0;
import p120i0.C3056b;
/* renamed from: androidx.fragment.app.l0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/l0.class */
public class RunnableC0450l0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C0459p0.AbstractC0460a f1858a;

    /* renamed from: b */
    public final /* synthetic */ Fragment f1859b;

    /* renamed from: c */
    public final /* synthetic */ C3056b f1860c;

    public RunnableC0450l0(C0459p0.AbstractC0460a abstractC0460a, Fragment fragment, C3056b c3056b) {
        this.f1858a = abstractC0460a;
        this.f1859b = fragment;
        this.f1860c = c3056b;
    }

    @Override // java.lang.Runnable
    public void run() {
        ((AbstractC0397a0.C0401d) this.f1858a).m8141a(this.f1859b, this.f1860c);
    }
}
