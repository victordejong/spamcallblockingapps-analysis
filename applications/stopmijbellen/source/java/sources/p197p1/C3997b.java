package p197p1;

import androidx.lifecycle.C0530o;
import androidx.lifecycle.LiveData;
import p162m.C3542a;
import p186o1.AbstractC3829k;
import p302z1.C5035c;
/* renamed from: p1.b */
/* loaded from: classes-dex2jar.jar:p1/b.class */
public class C3997b implements AbstractC3829k {

    /* renamed from: c */
    public final C0530o<AbstractC3829k.AbstractC3831b> f12548c = new C0530o<>();

    /* renamed from: d */
    public final C5035c<AbstractC3829k.AbstractC3831b.C3834c> f12549d = new C5035c<>();

    public C3997b() {
        m1552a(AbstractC3829k.f12321b);
    }

    /* renamed from: a */
    public void m1552a(AbstractC3829k.AbstractC3831b abstractC3831b) {
        boolean z;
        C0530o<AbstractC3829k.AbstractC3831b> c0530o = this.f12548c;
        synchronized (c0530o.f1995a) {
            z = c0530o.f2000f == LiveData.f1994k;
            c0530o.f2000f = abstractC3831b;
        }
        if (z) {
            C3542a.m2201M().f11709a.mo2200I(c0530o.f2004j);
        }
        if (abstractC3831b instanceof AbstractC3829k.AbstractC3831b.C3834c) {
            this.f12549d.m117k((AbstractC3829k.AbstractC3831b.C3834c) abstractC3831b);
        } else if (!(abstractC3831b instanceof AbstractC3829k.AbstractC3831b.C3832a)) {
        } else {
            this.f12549d.m116l(((AbstractC3829k.AbstractC3831b.C3832a) abstractC3831b).f12322a);
        }
    }
}
