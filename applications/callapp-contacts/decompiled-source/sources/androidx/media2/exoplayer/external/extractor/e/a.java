package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.n;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/a.class */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f3141a = b.f3185a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3142b = new c();

    /* renamed from: c  reason: collision with root package name */
    private final p f3143c = new p(2786);

    /* renamed from: d  reason: collision with root package name */
    private boolean f3144d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] a() {
        return new g[]{new a()};
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final int a(h hVar, n nVar) throws IOException, InterruptedException {
        int a2 = hVar.a(this.f3143c.f4166a, 0, 2786);
        if (a2 == -1) {
            return -1;
        }
        this.f3143c.c(0);
        this.f3143c.b(a2);
        if (!this.f3144d) {
            this.f3142b.f3186a = 0L;
            this.f3144d = true;
        }
        this.f3142b.a(this.f3143c);
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        this.f3144d = false;
        this.f3142b.a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.f3142b.a(iVar, new ah.d(0, 1));
        iVar.a();
        iVar.a(new o.b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0074, code lost:
        r6.a();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0084, code lost:
        if ((r9 - r8) < 8192) goto L_0x0089;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0087, code lost:
        return false;
     */
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(androidx.media2.exoplayer.external.extractor.h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            androidx.media2.exoplayer.external.util.p r0 = new androidx.media2.exoplayer.external.util.p
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000c:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f4166a
            r2 = 0
            r3 = 10
            r0.c(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.c(r1)
            r0 = r7
            int r0 = r0.f()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 != r1) goto L_0x0045
            r0 = r7
            r1 = 3
            r0.d(r1)
            r0 = r7
            int r0 = r0.m()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.c(r1)
            goto L_0x000c
        L_0x0045:
            r0 = r6
            r0.a()
            r0 = r6
            r1 = r8
            r0.c(r1)
            r0 = r8
            r9 = r0
        L_0x0055:
            r0 = 0
            r10 = r0
        L_0x0058:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f4166a
            r2 = 0
            r3 = 6
            r0.c(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.c(r1)
            r0 = r7
            int r0 = r0.d()
            r1 = 2935(0xb77, float:4.113E-42)
            if (r0 == r1) goto L_0x0094
            r0 = r6
            r0.a()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x0089
            r0 = 0
            return r0
        L_0x0089:
            r0 = r6
            r1 = r9
            r0.c(r1)
            goto L_0x0055
        L_0x0094:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L_0x009f
            r0 = 1
            return r0
        L_0x009f:
            r0 = r7
            byte[] r0 = r0.f4166a
            int r0 = androidx.media2.exoplayer.external.audio.a.a(r0)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x00b0
            r0 = 0
            return r0
        L_0x00b0:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.c(r1)
            goto L_0x0058
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.e.a.a(androidx.media2.exoplayer.external.extractor.h):boolean");
    }
}
