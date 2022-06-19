package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11628u;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.extractor.h.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/i.class */
public final class C11093i implements AbstractC11094j {

    /* renamed from: a */
    private final List<AbstractC11079ad.C11080a> f36203a;

    /* renamed from: b */
    private final AbstractC11150x[] f36204b;

    /* renamed from: c */
    private boolean f36205c;

    /* renamed from: d */
    private int f36206d;

    /* renamed from: e */
    private int f36207e;

    /* renamed from: f */
    private long f36208f;

    public C11093i(List<AbstractC11079ad.C11080a> list) {
        this.f36203a = list;
        this.f36204b = new AbstractC11150x[list.size()];
    }

    /* renamed from: a */
    private boolean m21487a(C11628u c11628u, int i) {
        if (c11628u.m19812a() == 0) {
            return false;
        }
        if (c11628u.m19804c() != i) {
            this.f36205c = false;
        }
        this.f36206d--;
        return this.f36205c;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        this.f36205c = false;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f36205c = true;
        this.f36208f = j;
        this.f36207e = 0;
        this.f36206d = 2;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        for (int i = 0; i < this.f36204b.length; i++) {
            AbstractC11079ad.C11080a c11080a = this.f36203a.get(i);
            c11083d.m21528a();
            AbstractC11150x mo20905a = abstractC11130j.mo20905a(c11083d.m21527b(), 3);
            Format.C10828a c10828a = new Format.C10828a();
            c10828a.f34782a = c11083d.m21526c();
            c10828a.f34792k = "application/dvbsubs";
            c10828a.f34794m = Collections.singletonList(c11080a.f36114c);
            c10828a.f34784c = c11080a.f36112a;
            mo20905a.mo20831a(c10828a.m22321a());
            this.f36204b[i] = mo20905a;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21464a(C11628u c11628u) {
        AbstractC11150x[] abstractC11150xArr;
        if (this.f36205c) {
            if (this.f36206d == 2 && !m21487a(c11628u, 32)) {
                return;
            }
            if (this.f36206d == 1 && !m21487a(c11628u, 0)) {
                return;
            }
            int i = c11628u.f38734b;
            int m19812a = c11628u.m19812a();
            for (AbstractC11150x abstractC11150x : this.f36204b) {
                c11628u.m19801d(i);
                abstractC11150x.mo20819b(c11628u, m19812a);
            }
            this.f36207e += m19812a;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
        if (this.f36205c) {
            for (AbstractC11150x abstractC11150x : this.f36204b) {
                abstractC11150x.mo20835a(this.f36208f, 1, this.f36207e, 0, null);
            }
            this.f36205c = false;
        }
    }
}
