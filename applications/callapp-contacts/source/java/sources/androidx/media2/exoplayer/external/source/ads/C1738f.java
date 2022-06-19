package androidx.media2.exoplayer.external.source.ads;

import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.source.AbstractC1832o;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.source.ads.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/f.class */
public final class C1738f extends AbstractC1832o {

    /* renamed from: c */
    private final C1731a f6814c;

    public C1738f(AbstractC1383al abstractC1383al, C1731a c1731a) {
        super(abstractC1383al);
        C1993a.m41686b(abstractC1383al.mo42093c() == 1);
        C1993a.m41686b(abstractC1383al.mo42094b() == 1);
        this.f6814c = c1731a;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1832o, androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final AbstractC1383al.C1385a mo42091a(int i, AbstractC1383al.C1385a c1385a, boolean z) {
        this.f7329b.mo42091a(i, c1385a, z);
        c1385a.m43086a(c1385a.f5204a, c1385a.f5205b, c1385a.f5206c, c1385a.f5207d, c1385a.f5208e, this.f6814c);
        return c1385a;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1832o, androidx.media2.exoplayer.external.AbstractC1383al
    /* renamed from: a */
    public final AbstractC1383al.C1386b mo42095a(int i, AbstractC1383al.C1386b c1386b, long j) {
        AbstractC1383al.C1386b mo42095a = super.mo42095a(i, c1386b, j);
        if (mo42095a.f5219j == -9223372036854775807L) {
            mo42095a.f5219j = this.f6814c.f6804f;
        }
        return mo42095a;
    }
}
