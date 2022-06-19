package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.h.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/o.class */
public final class C11106o implements AbstractC11094j {

    /* renamed from: a */
    private final C11628u f36333a = new C11628u(10);

    /* renamed from: b */
    private AbstractC11150x f36334b;

    /* renamed from: c */
    private boolean f36335c;

    /* renamed from: d */
    private long f36336d;

    /* renamed from: e */
    private int f36337e;

    /* renamed from: f */
    private int f36338f;

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        this.f36335c = false;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f36335c = true;
        this.f36336d = j;
        this.f36337e = 0;
        this.f36338f = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        AbstractC11150x mo20905a = abstractC11130j.mo20905a(c11083d.m21527b(), 5);
        this.f36334b = mo20905a;
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34782a = c11083d.m21526c();
        c10828a.f34792k = "application/id3";
        mo20905a.mo20831a(c10828a.m22321a());
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21464a(C11628u c11628u) {
        C11593a.m20024a(this.f36334b);
        if (!this.f36335c) {
            return;
        }
        int m19812a = c11628u.m19812a();
        int i = this.f36338f;
        if (i < 10) {
            int min = Math.min(m19812a, 10 - i);
            System.arraycopy(c11628u.f38733a, c11628u.f38734b, this.f36333a.f38733a, this.f36338f, min);
            if (this.f36338f + min == 10) {
                this.f36333a.m19801d(0);
                if (73 != this.f36333a.m19804c() || 68 != this.f36333a.m19804c() || 51 != this.f36333a.m19804c()) {
                    C11617n.m19863a("Id3Reader", "Discarding invalid ID3 tag");
                    this.f36335c = false;
                    return;
                }
                this.f36333a.m19799e(3);
                this.f36337e = this.f36333a.m19788n() + 10;
            }
        }
        int min2 = Math.min(m19812a, this.f36337e - this.f36338f);
        this.f36334b.mo20819b(c11628u, min2);
        this.f36338f += min2;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
        int i;
        C11593a.m20024a(this.f36334b);
        if (!this.f36335c || (i = this.f36337e) == 0 || this.f36338f != i) {
            return;
        }
        this.f36334b.mo20835a(this.f36336d, 1, i, 0, null);
        this.f36335c = false;
    }
}
