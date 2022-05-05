package p081h.p203i.p402h.p403j.p404b;

import p081h.p203i.p402h.p405k.C10548a;
/* renamed from: h.i.h.j.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/h/j/b/b.class */
public final class C10541b extends AbstractC10547g {

    /* renamed from: c */
    public final short f23961c;

    /* renamed from: d */
    public final short f23962d;

    public C10541b(AbstractC10547g gVar, int i, int i2) {
        super(gVar);
        this.f23961c = (short) i;
        this.f23962d = (short) i2;
    }

    @Override // p081h.p203i.p402h.p403j.p404b.AbstractC10547g
    /* renamed from: a */
    public void mo11460a(C10548a aVar, byte[] bArr) {
        int i = 0;
        while (true) {
            short s = this.f23962d;
            if (i < s) {
                if (i == 0 || (i == 31 && s <= 62)) {
                    aVar.m11457a(31, 5);
                    short s2 = this.f23962d;
                    if (s2 > 62) {
                        aVar.m11457a(s2 - 31, 16);
                    } else if (i == 0) {
                        aVar.m11457a(Math.min((int) s2, 31), 5);
                    } else {
                        aVar.m11457a(s2 - 31, 5);
                    }
                }
                aVar.m11457a(bArr[this.f23961c + i], 8);
                i++;
            } else {
                return;
            }
        }
    }

    public String toString() {
        return "<" + ((int) this.f23961c) + "::" + ((this.f23961c + this.f23962d) - 1) + '>';
    }
}
