package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.extractor.a;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/v.class */
final class v extends androidx.media2.exoplayer.external.extractor.a {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/v$a.class */
    static final class a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final z f3266a;

        /* renamed from: b  reason: collision with root package name */
        private final p f3267b;

        private a(z zVar) {
            this.f3266a = zVar;
            this.f3267b = new p();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v0 */
        /* JADX WARN: Type inference failed for: r15v1, types: [long] */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v3 */
        /* JADX WARN: Type inference failed for: r20v0 */
        /* JADX WARN: Type inference failed for: r20v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.media2.exoplayer.external.extractor.a.f
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.media2.exoplayer.external.extractor.a.e a(androidx.media2.exoplayer.external.extractor.h r8, long r9) throws java.io.IOException, java.lang.InterruptedException {
            /*
                Method dump skipped, instructions count: 471
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.e.v.a.a(androidx.media2.exoplayer.external.extractor.h, long):androidx.media2.exoplayer.external.extractor.a$e");
        }

        @Override // androidx.media2.exoplayer.external.extractor.a.f
        public final void a() {
            p pVar = this.f3267b;
            byte[] bArr = ac.f;
            pVar.a(bArr, bArr.length);
        }
    }

    public v(z zVar, long j, long j2) {
        super(new a.b(), new a(zVar), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    static /* synthetic */ int a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
