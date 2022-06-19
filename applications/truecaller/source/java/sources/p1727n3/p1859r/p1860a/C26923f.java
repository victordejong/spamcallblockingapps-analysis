package p1727n3.p1859r.p1860a;

import android.view.View;
import android.view.ViewGroup;
import p1727n3.p1807k.p1816e.C26508a;
import p1727n3.p1859r.p1860a.C26909b;
/* renamed from: n3.r.a.f */
/* loaded from: classes-dex2jar.jar:n3/r/a/f.class */
public class C26923f implements C26508a.AbstractC26509a {

    /* renamed from: a */
    public final /* synthetic */ View f75314a;

    /* renamed from: b */
    public final /* synthetic */ ViewGroup f75315b;

    /* renamed from: c */
    public final /* synthetic */ C26909b.C26911b f75316c;

    public C26923f(C26909b c26909b, View view, ViewGroup viewGroup, C26909b.C26911b c26911b) {
        this.f75314a = view;
        this.f75315b = viewGroup;
        this.f75316c = c26911b;
    }

    @Override // p1727n3.p1807k.p1816e.C26508a.AbstractC26509a
    /* renamed from: f0 */
    public void mo1049f0() {
        this.f75314a.clearAnimation();
        this.f75315b.endViewTransition(this.f75314a);
        this.f75316c.m1171a();
    }
}
