package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.decoder.f;
import com.google.android.exoplayer2.util.a;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i.class */
public abstract class i extends f implements e {

    /* renamed from: d  reason: collision with root package name */
    private e f21859d;
    private long e;

    @Override // com.google.android.exoplayer2.text.e
    public final int a(long j) {
        return ((e) a.b(this.f21859d)).a(j - this.e);
    }

    @Override // com.google.android.exoplayer2.decoder.a
    public final void a() {
        super.a();
        this.f21859d = null;
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
    public final void a(long r6, com.google.android.exoplayer2.text.e r8, long r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r0.f20841b = r1
            r0 = r5
            r1 = r8
            r0.f21859d = r1
            r0 = r9
            r6 = r0
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001b
            r0 = r5
            long r0 = r0.f20841b
            r6 = r0
        L_0x001b:
            r0 = r5
            r1 = r6
            r0.e = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.i.a(long, com.google.android.exoplayer2.text.e, long):void");
    }

    @Override // com.google.android.exoplayer2.text.e
    public final int b() {
        return ((e) a.b(this.f21859d)).b();
    }

    @Override // com.google.android.exoplayer2.text.e
    public final List<b> b(long j) {
        return ((e) a.b(this.f21859d)).b(j - this.e);
    }

    @Override // com.google.android.exoplayer2.text.e
    public final long b_(int i) {
        return ((e) a.b(this.f21859d)).b_(i) + this.e;
    }
}
