package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.upstream.h;
import androidx.media2.exoplayer.external.upstream.w;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/p.class */
final class p implements f {

    /* renamed from: a  reason: collision with root package name */
    private final f f3733a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3734b;

    /* renamed from: c  reason: collision with root package name */
    private final a f3735c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f3736d;
    private int e;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/p$a.class */
    public interface a {
        void a(androidx.media2.exoplayer.external.util.p pVar);
    }

    public p(f fVar, int i, a aVar) {
        androidx.media2.exoplayer.external.util.a.a(i > 0);
        this.f3733a = fVar;
        this.f3734b = i;
        this.f3735c = aVar;
        this.f3736d = new byte[1];
        this.e = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0086, code lost:
        if (r16 <= 0) goto L_0x0099;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0090, code lost:
        if (r0[r16 - 1] != 0) goto L_0x0099;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0093, code lost:
        r16 = r16 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009b, code lost:
        if (r16 <= 0) goto L_0x00b2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009e, code lost:
        r6.f3735c.a(new androidx.media2.exoplayer.external.util.p(r0, r16));
     */
    @Override // androidx.media2.exoplayer.external.upstream.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(byte[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.p.a(byte[], int, int):int");
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final long a(h hVar) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        return this.f3733a.a();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void a(w wVar) {
        this.f3733a.a(wVar);
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Map<String, List<String>> b() {
        return this.f3733a.b();
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void c() throws IOException {
        throw new UnsupportedOperationException();
    }
}
