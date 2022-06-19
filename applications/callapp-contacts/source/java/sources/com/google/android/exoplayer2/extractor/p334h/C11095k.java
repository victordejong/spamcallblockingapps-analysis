package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11628u;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.extractor.h.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/k.class */
public final class C11095k implements AbstractC11094j {

    /* renamed from: c */
    private static final double[] f36209c = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a */
    private String f36210a;

    /* renamed from: b */
    private AbstractC11150x f36211b;

    /* renamed from: d */
    private final C11085af f36212d;

    /* renamed from: e */
    private final C11628u f36213e;

    /* renamed from: f */
    private final C11109r f36214f;

    /* renamed from: g */
    private final boolean[] f36215g;

    /* renamed from: h */
    private final C11096a f36216h;

    /* renamed from: i */
    private long f36217i;

    /* renamed from: j */
    private boolean f36218j;

    /* renamed from: k */
    private boolean f36219k;

    /* renamed from: l */
    private long f36220l;

    /* renamed from: m */
    private long f36221m;

    /* renamed from: n */
    private long f36222n;

    /* renamed from: o */
    private long f36223o;

    /* renamed from: p */
    private boolean f36224p;

    /* renamed from: q */
    private boolean f36225q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.h.k$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/k$a.class */
    public static final class C11096a {

        /* renamed from: a */
        static final byte[] f36226a = {0, 0, 1};

        /* renamed from: b */
        boolean f36227b;

        /* renamed from: c */
        public int f36228c;

        /* renamed from: d */
        public int f36229d;

        /* renamed from: e */
        public byte[] f36230e;

        public C11096a(int i) {
            this.f36230e = new byte[i];
        }

        /* renamed from: a */
        public final void m21486a(byte[] bArr, int i, int i2) {
            if (!this.f36227b) {
                return;
            }
            int i3 = i2 - i;
            byte[] bArr2 = this.f36230e;
            int length = bArr2.length;
            int i4 = this.f36228c;
            if (length < i4 + i3) {
                this.f36230e = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f36230e, this.f36228c, i3);
            this.f36228c += i3;
        }
    }

    public C11095k() {
        this(null);
    }

    public C11095k(C11085af c11085af) {
        this.f36212d = c11085af;
        this.f36215g = new boolean[4];
        this.f36216h = new C11096a(128);
        if (c11085af != null) {
            this.f36214f = new C11109r(178, 128);
            this.f36213e = new C11628u();
            return;
        }
        this.f36214f = null;
        this.f36213e = null;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        C11624s.m19831a(this.f36215g);
        C11096a c11096a = this.f36216h;
        c11096a.f36227b = false;
        c11096a.f36228c = 0;
        c11096a.f36229d = 0;
        C11109r c11109r = this.f36214f;
        if (c11109r != null) {
            c11109r.m21462a();
        }
        this.f36217i = 0L;
        this.f36218j = false;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36221m = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36210a = c11083d.m21526c();
        this.f36211b = abstractC11130j.mo20905a(c11083d.m21527b(), 2);
        C11085af c11085af = this.f36212d;
        if (c11085af != null) {
            c11085af.m21520a(abstractC11130j, c11083d);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x021b  */
    /* JADX WARN: Type inference failed for: r0v169 */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [double] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo21464a(com.google.android.exoplayer2.util.C11628u r9) {
        /*
            Method dump skipped, instructions count: 1051
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11095k.mo21464a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }
}
