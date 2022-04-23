package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.ai;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/m.class */
public final class m implements p, p.a {

    /* renamed from: a  reason: collision with root package name */
    public final r.a f21622a;

    /* renamed from: b  reason: collision with root package name */
    final long f21623b;

    /* renamed from: c  reason: collision with root package name */
    public a f21624c;

    /* renamed from: d  reason: collision with root package name */
    long f21625d = -9223372036854775807L;
    private final b e;
    private r f;
    private p g;
    private p.a h;
    private boolean i;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/m$a.class */
    public interface a {
        void a(r.a aVar);

        void a(r.a aVar, IOException iOException);
    }

    public m(r.a aVar, b bVar, long j) {
        this.f21622a = aVar;
        this.e = bVar;
        this.f21623b = j;
    }

    private long d(long j) {
        long j2 = this.f21625d;
        return j2 != -9223372036854775807L ? j2 : j;
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void D_() throws IOException {
        try {
            p pVar = this.g;
            if (pVar != null) {
                pVar.D_();
                return;
            }
            r rVar = this.f;
            if (rVar != null) {
                rVar.f();
            }
        } catch (IOException e) {
            a aVar = this.f21624c;
            if (aVar == null) {
                throw e;
            } else if (!this.i) {
                this.i = true;
                aVar.a(this.f21622a, e);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long a(long j, ai aiVar) {
        return ((p) af.a(this.g)).a(j, aiVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.exoplayer2.source.p] */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.source.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.exoplayer2.trackselection.c[] r9, boolean[] r10, com.google.android.exoplayer2.source.aa[] r11, boolean[] r12, long r13) {
        /*
            r8 = this;
            r0 = r8
            long r0 = r0.f21625d
            r15 = r0
            r0 = r15
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0027
            r0 = r13
            r1 = r8
            long r1 = r1.f21623b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0027
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f21625d = r1
            r0 = r15
            r13 = r0
            goto L_0x0027
        L_0x0027:
            r0 = r8
            com.google.android.exoplayer2.source.p r0 = r0.g
            java.lang.Object r0 = com.google.android.exoplayer2.util.af.a(r0)
            com.google.android.exoplayer2.source.p r0 = (com.google.android.exoplayer2.source.p) r0
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            long r0 = r0.a(r1, r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.m.a(com.google.android.exoplayer2.trackselection.c[], boolean[], com.google.android.exoplayer2.source.aa[], boolean[], long):long");
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final void a(long j) {
        ((p) af.a(this.g)).a(j);
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(long j, boolean z) {
        ((p) af.a(this.g)).a(j, z);
    }

    @Override // com.google.android.exoplayer2.source.ab.a
    public final /* bridge */ /* synthetic */ void a(p pVar) {
        ((p.a) af.a(this.h)).a((p.a) this);
    }

    @Override // com.google.android.exoplayer2.source.p
    public final void a(p.a aVar, long j) {
        this.h = aVar;
        p pVar = this.g;
        if (pVar != null) {
            pVar.a(this, d(this.f21623b));
        }
    }

    @Override // com.google.android.exoplayer2.source.p.a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void a2(p pVar) {
        ((p.a) af.a(this.h)).a((p) this);
        a aVar = this.f21624c;
        if (aVar != null) {
            aVar.a(this.f21622a);
        }
    }

    public final void a(r.a aVar) {
        long d2 = d(this.f21623b);
        p a2 = ((r) com.google.android.exoplayer2.util.a.b(this.f)).a(aVar, this.e, d2);
        this.g = a2;
        if (this.h != null) {
            a2.a(this, d2);
        }
    }

    public final void a(r rVar) {
        com.google.android.exoplayer2.util.a.b(this.f == null);
        this.f = rVar;
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long b(long j) {
        return ((p) af.a(this.g)).b(j);
    }

    @Override // com.google.android.exoplayer2.source.p
    public final TrackGroupArray b() {
        return ((p) af.a(this.g)).b();
    }

    @Override // com.google.android.exoplayer2.source.p
    public final long c() {
        return ((p) af.a(this.g)).c();
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean c(long j) {
        p pVar = this.g;
        return pVar != null && pVar.c(j);
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final long d() {
        return ((p) af.a(this.g)).d();
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final long e() {
        return ((p) af.a(this.g)).e();
    }

    @Override // com.google.android.exoplayer2.source.p, com.google.android.exoplayer2.source.ab
    public final boolean f() {
        p pVar = this.g;
        return pVar != null && pVar.f();
    }

    public final void g() {
        if (this.g != null) {
            ((r) com.google.android.exoplayer2.util.a.b(this.f)).a(this.g);
        }
    }
}
