package p081h.p203i.p402h.p409m;

import java.util.Map;
import p081h.p203i.p402h.AbstractC10537h;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.i.h.m.o */
/* loaded from: classes2-dex2jar.jar:h/i/h/m/o.class */
public final class C10584o implements AbstractC10537h {

    /* renamed from: a */
    public final C10579j f24080a = new C10579j();

    @Override // p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (aVar == EnumC10529a.UPC_A) {
            return this.f24080a.mo11288a("0".concat(String.valueOf(str)), EnumC10529a.EAN_13, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC-A, but got ".concat(String.valueOf(aVar)));
    }
}
