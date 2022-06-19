package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C10880a;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.h.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/p.class */
public final class C11107p implements AbstractC11094j {

    /* renamed from: a */
    private final String f36339a;

    /* renamed from: b */
    private final C11628u f36340b;

    /* renamed from: c */
    private final C11627t f36341c;

    /* renamed from: d */
    private AbstractC11150x f36342d;

    /* renamed from: e */
    private String f36343e;

    /* renamed from: f */
    private Format f36344f;

    /* renamed from: g */
    private int f36345g;

    /* renamed from: h */
    private int f36346h;

    /* renamed from: i */
    private int f36347i;

    /* renamed from: j */
    private int f36348j;

    /* renamed from: k */
    private long f36349k;

    /* renamed from: l */
    private boolean f36350l;

    /* renamed from: m */
    private int f36351m;

    /* renamed from: n */
    private int f36352n;

    /* renamed from: o */
    private int f36353o;

    /* renamed from: p */
    private boolean f36354p;

    /* renamed from: q */
    private long f36355q;

    /* renamed from: r */
    private int f36356r;

    /* renamed from: s */
    private long f36357s;

    /* renamed from: t */
    private int f36358t;

    /* renamed from: u */
    private String f36359u;

    public C11107p(String str) {
        this.f36339a = str;
        C11628u c11628u = new C11628u(1024);
        this.f36340b = c11628u;
        this.f36341c = new C11627t(c11628u.f38733a);
    }

    /* renamed from: a */
    private int m21470a(C11627t c11627t) throws ParserException {
        int m19827a = c11627t.m19827a();
        C10880a.C10882a m22087a = C10880a.m22087a(c11627t, true);
        this.f36359u = m22087a.f35118c;
        this.f36356r = m22087a.f35116a;
        this.f36358t = m22087a.f35117b;
        return m19827a - c11627t.m19827a();
    }

    /* renamed from: b */
    private int m21469b(C11627t c11627t) throws ParserException {
        int m19819c;
        int i;
        if (this.f36353o == 0) {
            int i2 = 0;
            do {
                m19819c = c11627t.m19819c(8);
                i = i2 + m19819c;
                i2 = i;
            } while (m19819c == 255);
            return i;
        }
        throw new ParserException();
    }

    /* renamed from: c */
    private static long m21468c(C11627t c11627t) {
        return c11627t.m19819c((c11627t.m19819c(2) + 1) * 8);
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        this.f36345g = 0;
        this.f36350l = false;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36349k = j;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36342d = abstractC11130j.mo20905a(c11083d.m21527b(), 1);
        this.f36343e = c11083d.m21526c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0247, code lost:
        if (r8.f36350l != false) goto L76;
     */
    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo21464a(com.google.android.exoplayer2.util.C11628u r9) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 897
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11107p.mo21464a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }
}
