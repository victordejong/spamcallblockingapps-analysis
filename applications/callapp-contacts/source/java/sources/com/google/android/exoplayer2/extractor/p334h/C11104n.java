package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11628u;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.extractor.h.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/n.class */
public final class C11104n implements AbstractC11094j {

    /* renamed from: a */
    private final C11120z f36306a;

    /* renamed from: b */
    private String f36307b;

    /* renamed from: c */
    private AbstractC11150x f36308c;

    /* renamed from: d */
    private C11105a f36309d;

    /* renamed from: e */
    private boolean f36310e;

    /* renamed from: l */
    private long f36317l;

    /* renamed from: m */
    private long f36318m;

    /* renamed from: f */
    private final boolean[] f36311f = new boolean[3];

    /* renamed from: g */
    private final C11109r f36312g = new C11109r(32, 128);

    /* renamed from: h */
    private final C11109r f36313h = new C11109r(33, 128);

    /* renamed from: i */
    private final C11109r f36314i = new C11109r(34, 128);

    /* renamed from: j */
    private final C11109r f36315j = new C11109r(39, 128);

    /* renamed from: k */
    private final C11109r f36316k = new C11109r(40, 128);

    /* renamed from: n */
    private final C11628u f36319n = new C11628u();

    /* renamed from: com.google.android.exoplayer2.extractor.h.n$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/n$a.class */
    public static final class C11105a {

        /* renamed from: a */
        long f36320a;

        /* renamed from: b */
        boolean f36321b;

        /* renamed from: c */
        int f36322c;

        /* renamed from: d */
        long f36323d;

        /* renamed from: e */
        boolean f36324e;

        /* renamed from: f */
        boolean f36325f;

        /* renamed from: g */
        boolean f36326g;

        /* renamed from: h */
        boolean f36327h;

        /* renamed from: i */
        boolean f36328i;

        /* renamed from: j */
        long f36329j;

        /* renamed from: k */
        long f36330k;

        /* renamed from: l */
        boolean f36331l;

        /* renamed from: m */
        private final AbstractC11150x f36332m;

        public C11105a(AbstractC11150x abstractC11150x) {
            this.f36332m = abstractC11150x;
        }

        /* renamed from: a */
        final void m21472a(int i) {
            boolean z = this.f36331l;
            this.f36332m.mo20835a(this.f36330k, z ? 1 : 0, (int) (this.f36320a - this.f36329j), i, null);
        }

        /* renamed from: a */
        public final void m21471a(byte[] bArr, int i, int i2) {
            if (this.f36324e) {
                int i3 = this.f36322c;
                int i4 = (i + 2) - i3;
                if (i4 >= i2) {
                    this.f36322c = i3 + (i2 - i);
                    return;
                }
                this.f36325f = (bArr[i4] & 128) != 0;
                this.f36324e = false;
            }
        }
    }

    public C11104n(C11120z c11120z) {
        this.f36306a = c11120z;
    }

    @RequiresNonNull({"sampleReader"})
    /* renamed from: a */
    private void m21473a(byte[] bArr, int i, int i2) {
        this.f36309d.m21471a(bArr, i, i2);
        if (!this.f36310e) {
            this.f36312g.m21460a(bArr, i, i2);
            this.f36313h.m21460a(bArr, i, i2);
            this.f36314i.m21460a(bArr, i, i2);
        }
        this.f36315j.m21460a(bArr, i, i2);
        this.f36316k.m21460a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        this.f36317l = 0L;
        C11624s.m19831a(this.f36311f);
        this.f36312g.m21462a();
        this.f36313h.m21462a();
        this.f36314i.m21462a();
        this.f36315j.m21462a();
        this.f36316k.m21462a();
        C11105a c11105a = this.f36309d;
        if (c11105a != null) {
            c11105a.f36324e = false;
            c11105a.f36325f = false;
            c11105a.f36326g = false;
            c11105a.f36327h = false;
            c11105a.f36328i = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36318m = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36307b = c11083d.m21526c();
        AbstractC11150x mo20905a = abstractC11130j.mo20905a(c11083d.m21527b(), 2);
        this.f36308c = mo20905a;
        this.f36309d = new C11105a(mo20905a);
        this.f36306a.m21441a(abstractC11130j, c11083d);
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x0630  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0672  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x078a  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x07a5 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo21464a(com.google.android.exoplayer2.util.C11628u r7) {
        /*
            Method dump skipped, instructions count: 1987
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11104n.mo21464a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }
}
