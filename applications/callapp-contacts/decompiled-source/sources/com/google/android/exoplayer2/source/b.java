package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.extractor.e.d;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.util.a;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/b.class */
final class b implements v {

    /* renamed from: a  reason: collision with root package name */
    private final l f21588a;

    /* renamed from: b  reason: collision with root package name */
    private h f21589b;

    /* renamed from: c  reason: collision with root package name */
    private i f21590c;

    public b(l lVar) {
        this.f21588a = lVar;
    }

    @Override // com.google.android.exoplayer2.source.v
    public final int a(u uVar) throws IOException {
        return ((h) a.b(this.f21589b)).a((i) a.b(this.f21590c), uVar);
    }

    @Override // com.google.android.exoplayer2.source.v
    public final void a() {
        if (this.f21589b != null) {
            this.f21589b = null;
        }
        this.f21590c = null;
    }

    @Override // com.google.android.exoplayer2.source.v
    public final void a(long j, long j2) {
        ((h) a.b(this.f21589b)).a(j, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x009b, code lost:
        if (r0.c() != r12) goto L_0x00e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00db, code lost:
        if (r0.c() != r12) goto L_0x00e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e1, code lost:
        r0 = false;
     */
    @Override // com.google.android.exoplayer2.source.v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.android.exoplayer2.upstream.e r9, android.net.Uri r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11, long r12, long r14, com.google.android.exoplayer2.extractor.j r16) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.b.a(com.google.android.exoplayer2.upstream.e, android.net.Uri, java.util.Map, long, long, com.google.android.exoplayer2.extractor.j):void");
    }

    @Override // com.google.android.exoplayer2.source.v
    public final void b() {
        h hVar = this.f21589b;
        if (hVar instanceof d) {
            ((d) hVar).f21000b = true;
        }
    }

    @Override // com.google.android.exoplayer2.source.v
    public final long c() {
        i iVar = this.f21590c;
        if (iVar != null) {
            return iVar.c();
        }
        return -1L;
    }
}
