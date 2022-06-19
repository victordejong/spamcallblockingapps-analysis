package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2014n;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/n.class */
public final class C1567n implements AbstractC1566m {

    /* renamed from: c */
    private static final double[] f6084c = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a */
    private String f6085a;

    /* renamed from: b */
    private AbstractC1641q f6086b;

    /* renamed from: d */
    private boolean f6087d;

    /* renamed from: e */
    private long f6088e;

    /* renamed from: f */
    private final C1554aj f6089f;

    /* renamed from: g */
    private final C2018p f6090g;

    /* renamed from: h */
    private final boolean[] f6091h;

    /* renamed from: i */
    private final C1568a f6092i;

    /* renamed from: j */
    private final C1578t f6093j;

    /* renamed from: k */
    private long f6094k;

    /* renamed from: l */
    private boolean f6095l;

    /* renamed from: m */
    private long f6096m;

    /* renamed from: n */
    private long f6097n;

    /* renamed from: o */
    private long f6098o;

    /* renamed from: p */
    private boolean f6099p;

    /* renamed from: q */
    private boolean f6100q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.e.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/n$a.class */
    public static final class C1568a {

        /* renamed from: a */
        static final byte[] f6101a = {0, 0, 1};

        /* renamed from: b */
        boolean f6102b;

        /* renamed from: c */
        public int f6103c;

        /* renamed from: d */
        public int f6104d;

        /* renamed from: e */
        public byte[] f6105e;

        public C1568a(int i) {
            this.f6105e = new byte[i];
        }

        /* renamed from: a */
        public final void m42670a(byte[] bArr, int i, int i2) {
            if (!this.f6102b) {
                return;
            }
            int i3 = i2 - i;
            byte[] bArr2 = this.f6105e;
            int length = bArr2.length;
            int i4 = this.f6103c;
            if (length < i4 + i3) {
                this.f6105e = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f6105e, this.f6103c, i3);
            this.f6103c += i3;
        }
    }

    public C1567n() {
        this(null);
    }

    public C1567n(C1554aj c1554aj) {
        this.f6089f = c1554aj;
        this.f6091h = new boolean[4];
        this.f6092i = new C1568a(128);
        if (c1554aj != null) {
            this.f6093j = new C1578t(178, 128);
            this.f6090g = new C2018p();
            return;
        }
        this.f6093j = null;
        this.f6090g = null;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        C2014n.m41559a(this.f6091h);
        C1568a c1568a = this.f6092i;
        c1568a.f6102b = false;
        c1568a.f6103c = 0;
        c1568a.f6104d = 0;
        if (this.f6089f != null) {
            this.f6093j.m42650a();
        }
        this.f6094k = 0L;
        this.f6095l = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        this.f6096m = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        this.f6085a = c1552d.m42706c();
        this.f6086b = abstractC1601i.mo42213a(c1552d.m42707b(), 2);
        C1554aj c1554aj = this.f6089f;
        if (c1554aj != null) {
            for (int i = 0; i < c1554aj.f5997b.length; i++) {
                c1552d.m42708a();
                AbstractC1641q mo42213a = abstractC1601i.mo42213a(c1552d.m42707b(), 3);
                Format format = c1554aj.f5996a.get(i);
                String str = format.sampleMimeType;
                boolean z = "application/cea-608".equals(str) || "application/cea-708".equals(str);
                String valueOf = String.valueOf(str);
                C1993a.m41687a(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
                mo42213a.mo42192a(Format.createTextSampleFormat(c1552d.m42706c(), str, null, -1, format.selectionFlags, format.language, format.accessibilityChannel, null, Long.MAX_VALUE, format.initializationData));
                c1554aj.f5997b[i] = mo42213a;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ec  */
    /* JADX WARN: Type inference failed for: r0v169 */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [double] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo42652a(androidx.media2.exoplayer.external.util.C2018p r14) {
        /*
            Method dump skipped, instructions count: 1053
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p068e.C1567n.mo42652a(androidx.media2.exoplayer.external.util.p):void");
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
    }
}
