package androidx.media2.exoplayer.external.text;

import androidx.media2.exoplayer.external.b.f;
import androidx.media2.exoplayer.external.util.a;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h.class */
public abstract class h extends f implements d {

    /* renamed from: d  reason: collision with root package name */
    private d f3909d;
    private long e;

    @Override // androidx.media2.exoplayer.external.text.d
    public final int a(long j) {
        return ((d) a.a(this.f3909d)).a(j - this.e);
    }

    @Override // androidx.media2.exoplayer.external.b.a
    public final void a() {
        super.a();
        this.f3909d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r6, androidx.media2.exoplayer.external.text.d r8, long r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r0.f2951b = r1
            r0 = r5
            r1 = r8
            r0.f3909d = r1
            r0 = r9
            r6 = r0
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001b
            r0 = r5
            long r0 = r0.f2951b
            r6 = r0
        L_0x001b:
            r0 = r5
            r1 = r6
            r0.e = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.h.a(long, androidx.media2.exoplayer.external.text.d, long):void");
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final long a_(int i) {
        return ((d) a.a(this.f3909d)).a_(i) + this.e;
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final int b() {
        return ((d) a.a(this.f3909d)).b();
    }

    @Override // androidx.media2.exoplayer.external.text.d
    public final List<a> b(long j) {
        return ((d) a.a(this.f3909d)).b(j - this.e);
    }

    @Override // androidx.media2.exoplayer.external.b.f
    public abstract void f();
}
