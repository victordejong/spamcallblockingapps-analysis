package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.extractor.p331e.C11015d;
import com.google.android.exoplayer2.util.C11593a;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.source.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/b.class */
final class C11290b implements AbstractC11325v {

    /* renamed from: a */
    private final AbstractC11133l f37071a;

    /* renamed from: b */
    private AbstractC11071h f37072b;

    /* renamed from: c */
    private AbstractC11121i f37073c;

    public C11290b(AbstractC11133l abstractC11133l) {
        this.f37071a = abstractC11133l;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11325v
    /* renamed from: a */
    public final int mo20912a(C11145u c11145u) throws IOException {
        return ((AbstractC11071h) C11593a.m20020b(this.f37072b)).mo21437a((AbstractC11121i) C11593a.m20020b(this.f37073c), c11145u);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11325v
    /* renamed from: a */
    public final void mo20914a() {
        if (this.f37072b != null) {
            this.f37072b = null;
        }
        this.f37073c = null;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11325v
    /* renamed from: a */
    public final void mo20913a(long j, long j2) {
        ((AbstractC11071h) C11593a.m20020b(this.f37072b)).mo21439a(j, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0077, code lost:
        if (r0.mo21398c() == r12) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009b, code lost:
        if (r0.mo21398c() != r12) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b6, code lost:
        if (r0.mo21398c() == r12) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00db, code lost:
        if (r0.mo21398c() != r12) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e1, code lost:
        r0 = false;
     */
    @Override // com.google.android.exoplayer2.source.AbstractC11325v
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo20911a(com.google.android.exoplayer2.upstream.AbstractC11563e r9, android.net.Uri r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11, long r12, long r14, com.google.android.exoplayer2.extractor.AbstractC11130j r16) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11290b.mo20911a(com.google.android.exoplayer2.upstream.e, android.net.Uri, java.util.Map, long, long, com.google.android.exoplayer2.extractor.j):void");
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11325v
    /* renamed from: b */
    public final void mo20910b() {
        AbstractC11071h abstractC11071h = this.f37072b;
        if (abstractC11071h instanceof C11015d) {
            ((C11015d) abstractC11071h).f35751b = true;
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11325v
    /* renamed from: c */
    public final long mo20909c() {
        AbstractC11121i abstractC11121i = this.f37073c;
        if (abstractC11121i != null) {
            return abstractC11121i.mo21398c();
        }
        return -1L;
    }
}
