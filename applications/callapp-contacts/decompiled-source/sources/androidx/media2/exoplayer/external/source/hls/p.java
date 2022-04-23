package androidx.media2.exoplayer.external.source.hls;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.z;
import java.io.IOException;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/p.class */
public final class p implements g {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3677a = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3678b = Pattern.compile("MPEGTS:(\\d+)");

    /* renamed from: c  reason: collision with root package name */
    private final String f3679c;

    /* renamed from: d  reason: collision with root package name */
    private final z f3680d;
    private i f;
    private int h;
    private final androidx.media2.exoplayer.external.util.p e = new androidx.media2.exoplayer.external.util.p();
    private byte[] g = new byte[1024];

    public p(String str, z zVar) {
        this.f3679c = str;
        this.f3680d = zVar;
    }

    private q a(long j) {
        q a2 = this.f.a(0, 3);
        a2.a(Format.createTextSampleFormat((String) null, "text/vtt", (String) null, -1, 0, this.f3679c, (DrmInitData) null, j));
        this.f.a();
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(androidx.media2.exoplayer.external.extractor.h r9, androidx.media2.exoplayer.external.extractor.n r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.p.a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        throw new IllegalStateException();
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.f = iVar;
        iVar.a(new o.b(-9223372036854775807L));
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final boolean a(h hVar) throws IOException, InterruptedException {
        hVar.b(this.g, 0, 6, false);
        this.e.a(this.g, 6);
        if (androidx.media2.exoplayer.external.text.h.h.b(this.e)) {
            return true;
        }
        hVar.b(this.g, 6, 3, false);
        this.e.a(this.g, 9);
        return androidx.media2.exoplayer.external.text.h.h.b(this.e);
    }
}
