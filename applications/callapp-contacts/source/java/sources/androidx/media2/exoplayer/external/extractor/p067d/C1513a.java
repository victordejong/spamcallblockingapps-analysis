package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1640p;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.d.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/a.class */
public final class C1513a implements AbstractC1522g {

    /* renamed from: a */
    final long f5827a;

    /* renamed from: b */
    final long f5828b;

    /* renamed from: c */
    final AbstractC1524i f5829c;

    /* renamed from: d */
    long f5830d;

    /* renamed from: e */
    private final C1521f f5831e = new C1521f();

    /* renamed from: f */
    private int f5832f;

    /* renamed from: g */
    private long f5833g;

    /* renamed from: h */
    private long f5834h;

    /* renamed from: i */
    private long f5835i;

    /* renamed from: j */
    private long f5836j;

    /* renamed from: k */
    private long f5837k;

    /* renamed from: l */
    private long f5838l;

    /* renamed from: androidx.media2.exoplayer.external.extractor.d.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/a$a.class */
    final class C1515a implements AbstractC1637o {
        private C1515a() {
            C1513a.this = r4;
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: a */
        public final AbstractC1637o.C1638a mo42504a(long j) {
            return new AbstractC1637o.C1638a(new C1640p(j, C1996ac.m41671a((C1513a.this.f5827a + ((C1513a.this.f5829c.m42749b(j) * (C1513a.this.f5828b - C1513a.this.f5827a)) / C1513a.this.f5830d)) - 30000, C1513a.this.f5827a, C1513a.this.f5828b - 1)));
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: b */
        public final long mo42503b() {
            return C1513a.this.f5829c.m42754a(C1513a.this.f5830d);
        }

        @Override // androidx.media2.exoplayer.external.extractor.AbstractC1637o
        /* renamed from: j_ */
        public final boolean mo42502j_() {
            return true;
        }
    }

    public C1513a(AbstractC1524i abstractC1524i, long j, long j2, long j3, long j4, boolean z) {
        C1993a.m41688a(j >= 0 && j2 > j);
        this.f5829c = abstractC1524i;
        this.f5827a = j;
        this.f5828b = j2;
        if (j3 != j2 - j && !z) {
            this.f5832f = 0;
            return;
        }
        this.f5830d = j4;
        this.f5832f = 4;
    }

    /* renamed from: a */
    private boolean m42766a(AbstractC1600h abstractC1600h, long j) throws IOException, InterruptedException {
        int i;
        long min = Math.min(j + 3, this.f5828b);
        int i2 = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            int i3 = 0;
            if (abstractC1600h.mo42603c() + i2 > min) {
                int mo42603c = (int) (min - abstractC1600h.mo42603c());
                i2 = mo42603c;
                if (mo42603c < 4) {
                    return false;
                }
            }
            abstractC1600h.mo42604b(bArr, 0, i2, false);
            while (true) {
                i = i2 - 3;
                if (i3 < i) {
                    if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                        abstractC1600h.mo42606b(i3);
                        return true;
                    }
                    i3++;
                }
            }
            abstractC1600h.mo42606b(i);
        }
    }

    /* renamed from: b */
    private void m42765b(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        this.f5831e.m42757a(abstractC1600h, false);
        while (this.f5831e.f5859c <= this.f5834h) {
            abstractC1600h.mo42606b(this.f5831e.f5864h + this.f5831e.f5865i);
            this.f5835i = abstractC1600h.mo42603c();
            this.f5837k = this.f5831e.f5859c;
            this.f5831e.m42757a(abstractC1600h, false);
        }
        abstractC1600h.mo42612a();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0153  */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1522g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo42747a(androidx.media2.exoplayer.external.extractor.AbstractC1600h r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p067d.C1513a.mo42747a(androidx.media2.exoplayer.external.extractor.h):long");
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1522g
    /* renamed from: a */
    public final /* synthetic */ AbstractC1637o mo42748a() {
        if (this.f5830d != 0) {
            return new C1515a();
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1522g
    /* renamed from: a_ */
    public final void mo42746a_(long j) {
        this.f5834h = C1996ac.m41671a(j, 0L, this.f5830d - 1);
        this.f5832f = 2;
        this.f5835i = this.f5827a;
        this.f5836j = this.f5828b;
        this.f5837k = 0L;
        this.f5838l = this.f5830d;
    }
}
