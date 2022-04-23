package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.text.a.f;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.p;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ab.class */
public final class ab {

    /* renamed from: a  reason: collision with root package name */
    private final List<Format> f3149a;

    /* renamed from: b  reason: collision with root package name */
    private final q[] f3150b;

    public ab(List<Format> list) {
        this.f3149a = list;
        this.f3150b = new q[list.size()];
    }

    public final void a(long j, p pVar) {
        f.a(j, pVar, this.f3150b);
    }

    public final void a(i iVar, ah.d dVar) {
        for (int i = 0; i < this.f3150b.length; i++) {
            dVar.a();
            q a2 = iVar.a(dVar.b(), 3);
            Format format = this.f3149a.get(i);
            String str = format.sampleMimeType;
            boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
            String valueOf = String.valueOf(str);
            a.a(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
            a2.a(Format.createTextSampleFormat(format.id != null ? format.id : dVar.c(), str, null, -1, format.selectionFlags, format.language, format.accessibilityChannel, null, Long.MAX_VALUE, format.initializationData));
            this.f3150b[i] = a2;
        }
    }
}
