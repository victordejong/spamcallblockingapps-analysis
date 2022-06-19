package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.p067d.C1531l;
import androidx.media2.exoplayer.external.util.C2018p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.extractor.d.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/k.class */
public final class C1529k extends AbstractC1524i {

    /* renamed from: a */
    private C1530a f5889a;

    /* renamed from: d */
    private int f5890d;

    /* renamed from: e */
    private boolean f5891e;

    /* renamed from: f */
    private C1531l.C1535d f5892f;

    /* renamed from: g */
    private C1531l.C1533b f5893g;

    /* renamed from: androidx.media2.exoplayer.external.extractor.d.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/k$a.class */
    static final class C1530a {

        /* renamed from: a */
        public final C1531l.C1535d f5894a;

        /* renamed from: b */
        public final C1531l.C1533b f5895b;

        /* renamed from: c */
        public final byte[] f5896c;

        /* renamed from: d */
        public final C1531l.C1534c[] f5897d;

        /* renamed from: e */
        public final int f5898e;

        public C1530a(C1531l.C1535d c1535d, C1531l.C1533b c1533b, byte[] bArr, C1531l.C1534c[] c1534cArr, int i) {
            this.f5894a = c1535d;
            this.f5895b = c1533b;
            this.f5896c = bArr;
            this.f5897d = c1534cArr;
            this.f5898e = i;
        }
    }

    /* renamed from: a */
    public static boolean m42741a(C2018p c2018p) {
        try {
            return C1531l.m42734a(1, c2018p, true);
        } catch (ParserException e) {
            return false;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: a */
    public final void mo42739a(boolean z) {
        super.mo42739a(z);
        if (z) {
            this.f5889a = null;
            this.f5892f = null;
            this.f5893g = null;
        }
        this.f5890d = 0;
        this.f5891e = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x03a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x03a3  */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final boolean mo42740a(androidx.media2.exoplayer.external.util.C2018p r18, long r19, androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i.C1526a r21) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1026
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p067d.C1529k.mo42740a(androidx.media2.exoplayer.external.util.p, long, androidx.media2.exoplayer.external.extractor.d.i$a):boolean");
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: b */
    protected final long mo42738b(C2018p c2018p) {
        int i = 0;
        if ((c2018p.f8131a[0] & 1) == 1) {
            return -1L;
        }
        byte b = c2018p.f8131a[0];
        C1530a c1530a = this.f5889a;
        int i2 = !c1530a.f5897d[(b >> 1) & (255 >>> (8 - c1530a.f5898e))].f5907a ? c1530a.f5894a.f5917g : c1530a.f5894a.f5918h;
        if (this.f5891e) {
            i = (this.f5890d + i2) / 4;
        }
        long j = i;
        c2018p.m41535b(c2018p.f8133c + 4);
        c2018p.f8131a[c2018p.f8133c - 4] = (byte) (j & 255);
        c2018p.f8131a[c2018p.f8133c - 3] = (byte) ((j >>> 8) & 255);
        c2018p.f8131a[c2018p.f8133c - 2] = (byte) ((j >>> 16) & 255);
        c2018p.f8131a[c2018p.f8133c - 1] = (byte) ((j >>> 24) & 255);
        this.f5891e = true;
        this.f5890d = i2;
        return j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p067d.AbstractC1524i
    /* renamed from: c */
    public final void mo42737c(long j) {
        super.mo42737c(j);
        int i = 0;
        this.f5891e = j != 0;
        C1531l.C1535d c1535d = this.f5892f;
        if (c1535d != null) {
            i = c1535d.f5917g;
        }
        this.f5890d = i;
    }
}
