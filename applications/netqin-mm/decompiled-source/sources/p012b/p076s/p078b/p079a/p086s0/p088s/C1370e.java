package p012b.p076s.p078b.p079a.p086s0.p088s;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader;
import p012b.p076s.p078b.p079a.p080a1.C1180n;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p081b1.C1199a;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
/* renamed from: b.s.b.a.s0.s.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/s/e.class */
public final class C1370e extends TagPayloadReader {

    /* renamed from: b */
    public final C1184p f5409b = new C1184p(C1180n.f4714a);

    /* renamed from: c */
    public final C1184p f5410c = new C1184p(4);

    /* renamed from: d */
    public int f5411d;

    /* renamed from: e */
    public boolean f5412e;

    /* renamed from: f */
    public int f5413f;

    public C1370e(AbstractC1362q qVar) {
        super(qVar);
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: a */
    public boolean mo33574a(C1184p pVar) throws TagPayloadReader.UnsupportedFormatException {
        int r = pVar.m34344r();
        int i = (r >> 4) & 15;
        int i2 = r & 15;
        if (i2 == 7) {
            this.f5413f = i;
            return i != 5;
        }
        StringBuilder sb = new StringBuilder(39);
        sb.append("Video format not supported: ");
        sb.append(i2);
        throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: b */
    public void mo33573b(C1184p pVar, long j) throws ParserException {
        int r = pVar.m34344r();
        long g = pVar.m34355g();
        if (r == 0 && !this.f5412e) {
            C1184p pVar2 = new C1184p(new byte[pVar.m34372a()]);
            pVar.m34366a(pVar2.f4738a, 0, pVar.m34372a());
            C1199a b = C1199a.m34269b(pVar2);
            this.f5411d = b.f4796b;
            this.f1671a.mo32623a(Format.m38184a((String) null, "video/avc", (String) null, -1, -1, b.f4797c, b.f4798d, -1.0f, b.f4795a, -1, b.f4799e, (DrmInitData) null));
            this.f5412e = true;
        } else if (r == 1 && this.f5412e) {
            byte[] bArr = this.f5410c.f4738a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            int i = this.f5411d;
            int i2 = 0;
            while (pVar.m34372a() > 0) {
                pVar.m34366a(this.f5410c.f4738a, 4 - i, this.f5411d);
                this.f5410c.m34358e(0);
                int v = this.f5410c.m34340v();
                this.f5409b.m34358e(0);
                this.f1671a.mo32827a(this.f5409b, 4);
                this.f1671a.mo32827a(pVar, v);
                i2 = i2 + 4 + v;
            }
            this.f1671a.mo32832a(j + (g * 1000), this.f5413f == 1 ? 1 : 0, i2, 0, null);
        }
    }
}
