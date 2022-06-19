package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.h.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/t.class */
public final class C11111t implements AbstractC11079ad {

    /* renamed from: a */
    private final AbstractC11094j f36380a;

    /* renamed from: b */
    private final C11627t f36381b = new C11627t(new byte[10]);

    /* renamed from: c */
    private int f36382c = 0;

    /* renamed from: d */
    private int f36383d;

    /* renamed from: e */
    private C11597ad f36384e;

    /* renamed from: f */
    private boolean f36385f;

    /* renamed from: g */
    private boolean f36386g;

    /* renamed from: h */
    private boolean f36387h;

    /* renamed from: i */
    private int f36388i;

    /* renamed from: j */
    private int f36389j;

    /* renamed from: k */
    private boolean f36390k;

    /* renamed from: l */
    private long f36391l;

    public C11111t(AbstractC11094j abstractC11094j) {
        this.f36380a = abstractC11094j;
    }

    /* renamed from: a */
    private void m21458a(int i) {
        this.f36382c = i;
        this.f36383d = 0;
    }

    /* renamed from: a */
    private boolean m21457a(C11628u c11628u, byte[] bArr, int i) {
        int min = Math.min(c11628u.m19812a(), i - this.f36383d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            c11628u.m19799e(min);
        } else {
            c11628u.m19807a(bArr, this.f36383d, min);
        }
        int i2 = this.f36383d + min;
        this.f36383d = i2;
        return i2 == i;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad
    /* renamed from: a */
    public final void mo21445a() {
        this.f36382c = 0;
        this.f36383d = 0;
        this.f36387h = false;
        this.f36380a.mo21467a();
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad
    /* renamed from: a */
    public final void mo21444a(C11597ad c11597ad, AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        this.f36384e = c11597ad;
        this.f36380a.mo21465a(abstractC11130j, c11083d);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x010f -> B:42:0x0119). Please submit an issue!!! */
    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo21443a(com.google.android.exoplayer2.util.C11628u r9, int r10) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11111t.mo21443a(com.google.android.exoplayer2.util.u, int):void");
    }
}
