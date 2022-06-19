package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.io.Serializable;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23890n;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23760c;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s;
/* renamed from: e.k.a.c.l0.s.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/d.class */
public final class C23780d extends C23760c implements Serializable {

    /* renamed from: u */
    public final C23760c f65876u;

    /* renamed from: v */
    public final Class<?>[] f65877v;

    public C23780d(C23760c c23760c, Class<?>[] clsArr) {
        super(c23760c, c23760c.f65836c);
        this.f65876u = c23760c;
        this.f65877v = clsArr;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.C23760c
    /* renamed from: h */
    public void mo6074h(AbstractC23890n<Object> abstractC23890n) {
        this.f65876u.mo6074h(abstractC23890n);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.C23760c
    /* renamed from: i */
    public void mo6053i(AbstractC23890n<Object> abstractC23890n) {
        this.f65876u.mo6053i(abstractC23890n);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.C23760c
    /* renamed from: j */
    public C23760c mo6052j(AbstractC23929s abstractC23929s) {
        return new C23780d(this.f65876u.mo6052j(abstractC23929s), this.f65877v);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.C23760c
    /* renamed from: k */
    public void mo6073k(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws Exception {
        if (m6075o(abstractC23425a0.f64992b)) {
            this.f65876u.mo6073k(obj, abstractC23372g, abstractC23425a0);
        } else {
            this.f65876u.m6104n(abstractC23372g, abstractC23425a0);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.C23760c
    /* renamed from: l */
    public void mo6051l(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws Exception {
        if (m6075o(abstractC23425a0.f64992b)) {
            this.f65876u.mo6051l(obj, abstractC23372g, abstractC23425a0);
        } else {
            this.f65876u.m6105m(abstractC23372g);
        }
    }

    /* renamed from: o */
    public final boolean m6075o(Class<?> cls) {
        if (cls == null) {
            return true;
        }
        int length = this.f65877v.length;
        for (int i = 0; i < length; i++) {
            if (this.f65877v[i].isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }
}
