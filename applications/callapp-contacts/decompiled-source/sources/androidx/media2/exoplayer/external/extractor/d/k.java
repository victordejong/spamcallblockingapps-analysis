package androidx.media2.exoplayer.external.extractor.d;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.d.l;
import androidx.media2.exoplayer.external.util.p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/k.class */
final class k extends i {

    /* renamed from: a  reason: collision with root package name */
    private a f3116a;

    /* renamed from: d  reason: collision with root package name */
    private int f3117d;
    private boolean e;
    private l.d f;
    private l.b g;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/k$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final l.d f3118a;

        /* renamed from: b  reason: collision with root package name */
        public final l.b f3119b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f3120c;

        /* renamed from: d  reason: collision with root package name */
        public final l.c[] f3121d;
        public final int e;

        public a(l.d dVar, l.b bVar, byte[] bArr, l.c[] cVarArr, int i) {
            this.f3118a = dVar;
            this.f3119b = bVar;
            this.f3120c = bArr;
            this.f3121d = cVarArr;
            this.e = i;
        }
    }

    public static boolean a(p pVar) {
        try {
            return l.a(1, pVar, true);
        } catch (ParserException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.extractor.d.i
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.f3116a = null;
            this.f = null;
            this.g = null;
        }
        this.f3117d = 0;
        this.e = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x03a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x03a3  */
    @Override // androidx.media2.exoplayer.external.extractor.d.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final boolean a(androidx.media2.exoplayer.external.util.p r18, long r19, androidx.media2.exoplayer.external.extractor.d.i.a r21) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.d.k.a(androidx.media2.exoplayer.external.util.p, long, androidx.media2.exoplayer.external.extractor.d.i$a):boolean");
    }

    @Override // androidx.media2.exoplayer.external.extractor.d.i
    protected final long b(p pVar) {
        int i = 0;
        if ((pVar.f4166a[0] & 1) == 1) {
            return -1L;
        }
        byte b2 = pVar.f4166a[0];
        a aVar = this.f3116a;
        int i2 = !aVar.f3121d[(b2 >> 1) & (255 >>> (8 - aVar.e))].f3129a ? aVar.f3118a.g : aVar.f3118a.h;
        if (this.e) {
            i = (this.f3117d + i2) / 4;
        }
        long j = i;
        pVar.b(pVar.f4168c + 4);
        pVar.f4166a[pVar.f4168c - 4] = (byte) (j & 255);
        pVar.f4166a[pVar.f4168c - 3] = (byte) ((j >>> 8) & 255);
        pVar.f4166a[pVar.f4168c - 2] = (byte) ((j >>> 16) & 255);
        pVar.f4166a[pVar.f4168c - 1] = (byte) ((j >>> 24) & 255);
        this.e = true;
        this.f3117d = i2;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.extractor.d.i
    public final void c(long j) {
        super.c(j);
        int i = 0;
        this.e = j != 0;
        l.d dVar = this.f;
        if (dVar != null) {
            i = dVar.g;
        }
        this.f3117d = i;
    }
}
