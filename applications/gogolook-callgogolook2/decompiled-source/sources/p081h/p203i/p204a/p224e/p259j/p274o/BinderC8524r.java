package p081h.p203i.p204a.p224e.p259j.p274o;

import android.location.Location;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6878i;
import p081h.p203i.p204a.p224e.p280k.AbstractBinderC8839m0;
import p081h.p203i.p204a.p224e.p280k.AbstractC8825g;
/* renamed from: h.i.a.e.j.o.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/r.class */
public final class BinderC8524r extends AbstractBinderC8839m0 {

    /* renamed from: a */
    public final C6878i<AbstractC8825g> f19552a;

    public BinderC8524r(C6878i<AbstractC8825g> iVar) {
        this.f19552a = iVar;
    }

    /* renamed from: G0 */
    public final void m17873G0() {
        synchronized (this) {
            this.f19552a.m21668a();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p280k.AbstractC8837l0
    public final void onLocationChanged(Location location) {
        synchronized (this) {
            this.f19552a.m21667a(new C8525s(this, location));
        }
    }
}
