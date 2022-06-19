package p193e.p194a.p195a;

import p193e.p194a.p1129p5.AbstractC19230g;
import s1.z.c.l;
/* renamed from: e.a.a.l0 */
/* loaded from: classes10-dex2jar.jar:e/a/a/l0.class */
public final class C6775l0 implements AbstractC6755k0 {

    /* renamed from: a */
    public final AbstractC19230g f22321a;

    /* renamed from: b */
    public final AbstractC6392i0 f22322b;

    public C6775l0(AbstractC19230g abstractC19230g, AbstractC6392i0 abstractC6392i0) {
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC6392i0, "settings");
        this.f22321a = abstractC19230g;
        this.f22322b = abstractC6392i0;
    }

    @Override // p193e.p194a.p195a.AbstractC6755k0
    /* renamed from: a */
    public boolean mo30444a() {
        boolean z = false;
        if (!this.f22321a.mo13802B()) {
            int mo31093c2 = this.f22322b.mo31093c2();
            this.f22322b.mo31133V((mo31093c2 + 1) % 5);
            z = false;
            if (mo31093c2 == 0) {
                z = true;
            }
        }
        return z;
    }
}
