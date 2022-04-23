package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.extractor.a;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/u.class */
final class u extends com.google.android.exoplayer2.extractor.a {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/u$a.class */
    static final class a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final ad f21265a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.u f21266b;

        private a(ad adVar) {
            this.f21265a = adVar;
            this.f21266b = new com.google.android.exoplayer2.util.u();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r15v1, types: [long] */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r20v0 */
        /* JADX WARN: Type inference failed for: r20v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.exoplayer2.extractor.a.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.google.android.exoplayer2.extractor.a.e a(com.google.android.exoplayer2.extractor.i r8, long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 471
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.u.a.a(com.google.android.exoplayer2.extractor.i, long):com.google.android.exoplayer2.extractor.a$e");
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public final void a() {
            com.google.android.exoplayer2.util.u uVar = this.f21266b;
            byte[] bArr = af.f;
            uVar.a(bArr, bArr.length);
        }
    }

    public u(ad adVar, long j, long j2) {
        super(new a.b(), new a(adVar), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    static /* synthetic */ int a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
