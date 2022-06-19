package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.text.p071a.C1869f;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.ab */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ab.class */
public final class C1539ab {

    /* renamed from: a */
    private final List<Format> f5941a;

    /* renamed from: b */
    private final AbstractC1641q[] f5942b;

    public C1539ab(List<Format> list) {
        this.f5941a = list;
        this.f5942b = new AbstractC1641q[list.size()];
    }

    /* renamed from: a */
    public final void m42728a(long j, C2018p c2018p) {
        C1869f.m41979a(j, c2018p, this.f5942b);
    }

    /* renamed from: a */
    public final void m42727a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        for (int i = 0; i < this.f5942b.length; i++) {
            c1552d.m42708a();
            AbstractC1641q mo42213a = abstractC1601i.mo42213a(c1552d.m42707b(), 3);
            Format format = this.f5941a.get(i);
            String str = format.sampleMimeType;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            String valueOf = String.valueOf(str);
            C1993a.m41687a(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
            mo42213a.mo42192a(Format.createTextSampleFormat(format.f5072id != null ? format.f5072id : c1552d.m42706c(), str, null, -1, format.selectionFlags, format.language, format.accessibilityChannel, null, Long.MAX_VALUE, format.initializationData));
            this.f5942b[i] = mo42213a;
        }
    }
}
