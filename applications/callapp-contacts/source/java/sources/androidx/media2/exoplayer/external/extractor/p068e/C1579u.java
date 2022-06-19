package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.u */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/u.class */
public final class C1579u implements AbstractC1548ah {

    /* renamed from: a */
    private final AbstractC1566m f6225a;

    /* renamed from: b */
    private final C2017o f6226b = new C2017o(new byte[10]);

    /* renamed from: c */
    private int f6227c = 0;

    /* renamed from: d */
    private int f6228d;

    /* renamed from: e */
    private C2030z f6229e;

    /* renamed from: f */
    private boolean f6230f;

    /* renamed from: g */
    private boolean f6231g;

    /* renamed from: h */
    private boolean f6232h;

    /* renamed from: i */
    private int f6233i;

    /* renamed from: j */
    private int f6234j;

    /* renamed from: k */
    private boolean f6235k;

    /* renamed from: l */
    private long f6236l;

    public C1579u(AbstractC1566m abstractC1566m) {
        this.f6225a = abstractC1566m;
    }

    /* renamed from: a */
    private void m42645a(int i) {
        this.f6227c = i;
        this.f6228d = 0;
    }

    /* renamed from: a */
    private boolean m42643a(C2018p c2018p, byte[] bArr, int i) {
        int min = Math.min(c2018p.m41536b(), i - this.f6228d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            c2018p.m41531d(min);
        } else {
            c2018p.m41537a(bArr, this.f6228d, min);
        }
        int i2 = this.f6228d + min;
        this.f6228d = i2;
        return i2 == i;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah
    /* renamed from: a */
    public final void mo42646a() {
        this.f6227c = 0;
        this.f6228d = 0;
        this.f6232h = false;
        this.f6225a.mo42655a();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0112 -> B:42:0x011c). Please submit an issue!!! */
    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo42644a(androidx.media2.exoplayer.external.util.C2018p r9, int r10) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 902
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p068e.C1579u.mo42644a(androidx.media2.exoplayer.external.util.p, int):void");
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah
    /* renamed from: a */
    public final void mo42642a(C2030z c2030z, AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        this.f6229e = c2030z;
        this.f6225a.mo42653a(abstractC1601i, c1552d);
    }
}
