package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.aj;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.upstream.b;
import androidx.media2.exoplayer.external.util.ac;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/q.class */
public final class q implements s, s.a {

    /* renamed from: a  reason: collision with root package name */
    public final t f3737a;

    /* renamed from: b  reason: collision with root package name */
    public final t.a f3738b;

    /* renamed from: c  reason: collision with root package name */
    long f3739c;

    /* renamed from: d  reason: collision with root package name */
    public a f3740d;
    long e = -9223372036854775807L;
    private final b f;
    private s g;
    private s.a h;
    private boolean i;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/q$a.class */
    public interface a {
        void a(t.a aVar, IOException iOException);
    }

    public q(t tVar, t.a aVar, b bVar, long j) {
        this.f3738b = aVar;
        this.f = bVar;
        this.f3737a = tVar;
        this.f3739c = j;
    }

    private long d(long j) {
        long j2 = this.e;
        return j2 != -9223372036854775807L ? j2 : j;
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long a(long j, aj ajVar) {
        return ((s) ac.a(this.g)).a(j, ajVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.media2.exoplayer.external.source.s] */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.source.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(androidx.media2.exoplayer.external.trackselection.e[] r9, boolean[] r10, androidx.media2.exoplayer.external.source.al[] r11, boolean[] r12, long r13) {
        /*
            r8 = this;
            r0 = r8
            long r0 = r0.e
            r15 = r0
            r0 = r15
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0027
            r0 = r13
            r1 = r8
            long r1 = r1.f3739c
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0027
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.e = r1
            r0 = r15
            r13 = r0
            goto L_0x0027
        L_0x0027:
            r0 = r8
            androidx.media2.exoplayer.external.source.s r0 = r0.g
            java.lang.Object r0 = androidx.media2.exoplayer.external.util.ac.a(r0)
            androidx.media2.exoplayer.external.source.s r0 = (androidx.media2.exoplayer.external.source.s) r0
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            long r0 = r0.a(r1, r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.q.a(androidx.media2.exoplayer.external.trackselection.e[], boolean[], androidx.media2.exoplayer.external.source.al[], boolean[], long):long");
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final void a(long j) {
        ((s) ac.a(this.g)).a(j);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(long j, boolean z) {
        ((s) ac.a(this.g)).a(j, z);
    }

    @Override // androidx.media2.exoplayer.external.source.am.a
    public final /* bridge */ /* synthetic */ void a(s sVar) {
        ((s.a) ac.a(this.h)).a((s.a) this);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void a(s.a aVar, long j) {
        this.h = aVar;
        s sVar = this.g;
        if (sVar != null) {
            sVar.a(this, d(this.f3739c));
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s.a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void a2(s sVar) {
        ((s.a) ac.a(this.h)).a((s) this);
    }

    public final void a(t.a aVar) {
        long d2 = d(this.f3739c);
        s a2 = this.f3737a.a(aVar, this.f, d2);
        this.g = a2;
        if (this.h != null) {
            a2.a(this, d2);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long b(long j) {
        return ((s) ac.a(this.g)).b(j);
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final TrackGroupArray b() {
        return ((s) ac.a(this.g)).b();
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final long c() {
        return ((s) ac.a(this.g)).c();
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final boolean c(long j) {
        s sVar = this.g;
        return sVar != null && sVar.c(j);
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final long d() {
        return ((s) ac.a(this.g)).d();
    }

    @Override // androidx.media2.exoplayer.external.source.s, androidx.media2.exoplayer.external.source.am
    public final long e() {
        return ((s) ac.a(this.g)).e();
    }

    public final void f() {
        s sVar = this.g;
        if (sVar != null) {
            this.f3737a.a(sVar);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.s
    public final void k_() throws IOException {
        try {
            s sVar = this.g;
            if (sVar != null) {
                sVar.k_();
            } else {
                this.f3737a.f();
            }
        } catch (IOException e) {
            a aVar = this.f3740d;
            if (aVar == null) {
                throw e;
            } else if (!this.i) {
                this.i = true;
                aVar.a(this.f3738b, e);
            }
        }
    }
}
