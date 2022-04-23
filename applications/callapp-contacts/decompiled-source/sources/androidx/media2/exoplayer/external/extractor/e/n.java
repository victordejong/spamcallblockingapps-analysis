package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.p;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/n.class */
public final class n implements m {

    /* renamed from: c  reason: collision with root package name */
    private static final double[] f3218c = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a  reason: collision with root package name */
    private String f3219a;

    /* renamed from: b  reason: collision with root package name */
    private q f3220b;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3221d;
    private long e;
    private final aj f;
    private final p g;
    private final boolean[] h;
    private final a i;
    private final t j;
    private long k;
    private boolean l;
    private long m;
    private long n;
    private long o;
    private boolean p;
    private boolean q;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/n$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final byte[] f3222a = {0, 0, 1};

        /* renamed from: b  reason: collision with root package name */
        boolean f3223b;

        /* renamed from: c  reason: collision with root package name */
        public int f3224c;

        /* renamed from: d  reason: collision with root package name */
        public int f3225d;
        public byte[] e;

        public a(int i) {
            this.e = new byte[i];
        }

        public final void a(byte[] bArr, int i, int i2) {
            if (this.f3223b) {
                int i3 = i2 - i;
                byte[] bArr2 = this.e;
                int length = bArr2.length;
                int i4 = this.f3224c;
                if (length < i4 + i3) {
                    this.e = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.e, this.f3224c, i3);
                this.f3224c += i3;
            }
        }
    }

    public n() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(aj ajVar) {
        this.f = ajVar;
        this.h = new boolean[4];
        this.i = new a(128);
        if (ajVar != null) {
            this.j = new t(178, 128);
            this.g = new p();
            return;
        }
        this.j = null;
        this.g = null;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        androidx.media2.exoplayer.external.util.n.a(this.h);
        a aVar = this.i;
        aVar.f3223b = false;
        aVar.f3224c = 0;
        aVar.f3225d = 0;
        if (this.f != null) {
            this.j.a();
        }
        this.k = 0L;
        this.l = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        this.m = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(i iVar, ah.d dVar) {
        dVar.a();
        this.f3219a = dVar.c();
        this.f3220b = iVar.a(dVar.b(), 2);
        aj ajVar = this.f;
        if (ajVar != null) {
            for (int i = 0; i < ajVar.f3184b.length; i++) {
                dVar.a();
                q a2 = iVar.a(dVar.b(), 3);
                Format format = ajVar.f3183a.get(i);
                String str = format.sampleMimeType;
                boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
                String valueOf = String.valueOf(str);
                androidx.media2.exoplayer.external.util.a.a(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
                a2.a(Format.createTextSampleFormat(dVar.c(), str, null, -1, format.selectionFlags, format.language, format.accessibilityChannel, null, Long.MAX_VALUE, format.initializationData));
                ajVar.f3184b[i] = a2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ec  */
    @Override // androidx.media2.exoplayer.external.extractor.e.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.media2.exoplayer.external.util.p r14) {
        /*
            Method dump skipped, instructions count: 1053
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.e.n.a(androidx.media2.exoplayer.external.util.p):void");
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
    }
}
