package androidx.media2.exoplayer.external.extractor.b;

import androidx.media2.exoplayer.external.extractor.h;
import java.io.IOException;
import java.util.ArrayDeque;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/a.class */
final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f3029a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<C0078a> f3030b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final g f3031c = new g();

    /* renamed from: d  reason: collision with root package name */
    private b f3032d;
    private int e;
    private int f;
    private long g;

    /* renamed from: androidx.media2.exoplayer.external.extractor.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/a$a.class */
    static final class C0078a {

        /* renamed from: a  reason: collision with root package name */
        final int f3033a;

        /* renamed from: b  reason: collision with root package name */
        final long f3034b;

        private C0078a(int i, long j) {
            this.f3033a = i;
            this.f3034b = j;
        }
    }

    private long a(h hVar, int i) throws IOException, InterruptedException {
        hVar.b(this.f3029a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f3029a[i2] & 255);
        }
        return j;
    }

    private static String b(h hVar, int i) throws IOException, InterruptedException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        hVar.b(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override // androidx.media2.exoplayer.external.extractor.b.c
    public final void a() {
        this.e = 0;
        this.f3030b.clear();
        this.f3031c.a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.b.c
    public final void a(b bVar) {
        this.f3032d = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.extractor.b.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(androidx.media2.exoplayer.external.extractor.h r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 741
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.b.a.a(androidx.media2.exoplayer.external.extractor.h):boolean");
    }
}
