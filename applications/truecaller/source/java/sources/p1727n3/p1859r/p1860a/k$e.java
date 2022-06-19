package p1727n3.p1859r.p1860a;

import android.view.View;
/* renamed from: n3.r.a.k$e */
/* loaded from: classes-dex2jar.jar:n3/r/a/k$e.class */
public class k$e extends AbstractC26955r {

    /* renamed from: a */
    public final /* synthetic */ AbstractC26955r f75369a;

    /* renamed from: b */
    public final /* synthetic */ k f75370b;

    public k$e(k kVar, AbstractC26955r abstractC26955r) {
        this.f75370b = kVar;
        this.f75369a = abstractC26955r;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26955r
    /* renamed from: b */
    public View mo1072b(int i) {
        return this.f75369a.mo1071c() ? this.f75369a.mo1072b(i) : this.f75370b.onFindViewById(i);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26955r
    /* renamed from: c */
    public boolean mo1071c() {
        return this.f75369a.mo1071c() || this.f75370b.onHasView();
    }
}
