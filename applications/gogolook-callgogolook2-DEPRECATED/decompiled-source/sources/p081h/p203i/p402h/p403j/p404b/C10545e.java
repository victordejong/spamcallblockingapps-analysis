package p081h.p203i.p402h.p403j.p404b;

import p081h.p203i.p402h.p405k.C10548a;
/* renamed from: h.i.h.j.b.e */
/* loaded from: classes2-dex2jar.jar:h/i/h/j/b/e.class */
public final class C10545e extends AbstractC10547g {

    /* renamed from: c */
    public final short f23969c;

    /* renamed from: d */
    public final short f23970d;

    public C10545e(AbstractC10547g gVar, int i, int i2) {
        super(gVar);
        this.f23969c = (short) i;
        this.f23970d = (short) i2;
    }

    @Override // p081h.p203i.p402h.p403j.p404b.AbstractC10547g
    /* renamed from: a */
    public void mo11460a(C10548a aVar, byte[] bArr) {
        aVar.m11457a(this.f23969c, this.f23970d);
    }

    public String toString() {
        short s = this.f23969c;
        short s2 = this.f23970d;
        return "<" + Integer.toBinaryString((s & ((1 << s2) - 1)) | (1 << s2) | (1 << this.f23970d)).substring(1) + '>';
    }
}
