package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.source.p */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/p.class */
final class C1833p implements AbstractC1968f {

    /* renamed from: a */
    private final AbstractC1968f f7330a;

    /* renamed from: b */
    private final int f7331b;

    /* renamed from: c */
    private final AbstractC1834a f7332c;

    /* renamed from: d */
    private final byte[] f7333d;

    /* renamed from: e */
    private int f7334e;

    /* renamed from: androidx.media2.exoplayer.external.source.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/p$a.class */
    public interface AbstractC1834a {
        /* renamed from: a */
        void mo42107a(C2018p c2018p);
    }

    public C1833p(AbstractC1968f abstractC1968f, int i, AbstractC1834a abstractC1834a) {
        C1993a.m41688a(i > 0);
        this.f7330a = abstractC1968f;
        this.f7331b = i;
        this.f7332c = abstractC1834a;
        this.f7333d = new byte[1];
        this.f7334e = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0086, code lost:
        if (r16 <= 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0090, code lost:
        if (r0[r16 - 1] != 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0093, code lost:
        r16 = r16 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009b, code lost:
        if (r16 <= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009e, code lost:
        r6.f7332c.mo42107a(new androidx.media2.exoplayer.external.util.C2018p(r0, r16));
     */
    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo41197a(byte[] r7, int r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.C1833p.mo41197a(byte[], int, int):int");
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final long mo41199a(C1971h c1971h) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        return this.f7330a.mo41200a();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final void mo41697a(AbstractC1990w abstractC1990w) {
        this.f7330a.mo41697a(abstractC1990w);
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: b */
    public final Map<String, List<String>> mo41696b() {
        return this.f7330a.mo41696b();
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    public final void mo41196c() throws IOException {
        throw new UnsupportedOperationException();
    }
}
