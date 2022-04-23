package p081h.p444n.p445a;

import android.graphics.Bitmap;
import p081h.p444n.p445a.C10798u;
/* renamed from: h.n.a.k */
/* loaded from: classes2-dex2jar.jar:h/n/a/k.class */
public class C10783k extends AbstractC10751a<Object> {

    /* renamed from: m */
    public final Object f24618m = new Object();

    /* renamed from: n */
    public AbstractC10769e f24619n;

    public C10783k(C10798u uVar, C10811x xVar, int i, int i2, Object obj, String str, AbstractC10769e eVar) {
        super(uVar, null, xVar, i, i2, 0, null, str, obj, false);
        this.f24619n = eVar;
    }

    @Override // p081h.p444n.p445a.AbstractC10751a
    /* renamed from: a */
    public void mo10632a() {
        super.mo10632a();
        this.f24619n = null;
    }

    @Override // p081h.p444n.p445a.AbstractC10751a
    /* renamed from: a */
    public void mo10631a(Bitmap bitmap, C10798u.EnumC10804e eVar) {
        AbstractC10769e eVar2 = this.f24619n;
        if (eVar2 != null) {
            eVar2.onSuccess();
        }
    }

    @Override // p081h.p444n.p445a.AbstractC10751a
    /* renamed from: a */
    public void mo10630a(Exception exc) {
        AbstractC10769e eVar = this.f24619n;
        if (eVar != null) {
            eVar.m10682a(exc);
        }
    }

    @Override // p081h.p444n.p445a.AbstractC10751a
    /* renamed from: i */
    public Object mo10634i() {
        return this.f24618m;
    }
}
