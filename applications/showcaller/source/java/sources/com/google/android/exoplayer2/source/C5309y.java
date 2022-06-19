package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.C5302x;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
/* renamed from: com.google.android.exoplayer2.source.y */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/y.class */
public final class C5309y extends AbstractC5275l implements C5302x.AbstractC5305c {

    /* renamed from: f */
    private final Uri f16869f;

    /* renamed from: g */
    private final AbstractC5478j.AbstractC5479a f16870g;

    /* renamed from: h */
    private final AbstractC4982l f16871h;

    /* renamed from: i */
    private final AbstractC5040k<?> f16872i;

    /* renamed from: j */
    private final AbstractC5493u f16873j;

    /* renamed from: k */
    private final String f16874k;

    /* renamed from: l */
    private final int f16875l;

    /* renamed from: m */
    private final Object f16876m;

    /* renamed from: n */
    private long f16877n = -9223372036854775807L;

    /* renamed from: o */
    private boolean f16878o;

    /* renamed from: p */
    private boolean f16879p;

    /* renamed from: q */
    private AbstractC5497x f16880q;

    public C5309y(Uri uri, AbstractC5478j.AbstractC5479a abstractC5479a, AbstractC4982l abstractC4982l, AbstractC5040k<?> abstractC5040k, AbstractC5493u abstractC5493u, String str, int i, Object obj) {
        this.f16869f = uri;
        this.f16870g = abstractC5479a;
        this.f16871h = abstractC4982l;
        this.f16872i = abstractC5040k;
        this.f16873j = abstractC5493u;
        this.f16874k = str;
        this.f16875l = i;
        this.f16876m = obj;
    }

    /* renamed from: t */
    private void m19720t(long j, boolean z, boolean z2) {
        this.f16877n = j;
        this.f16878o = z;
        this.f16879p = z2;
        m19872r(new C5214d0(this.f16877n, this.f16878o, false, this.f16879p, null, this.f16876m));
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: a */
    public AbstractC5292u mo19726a(AbstractC5294v.C5295a c5295a, AbstractC5472e abstractC5472e, long j) {
        AbstractC5478j mo18976a = this.f16870g.mo18976a();
        AbstractC5497x abstractC5497x = this.f16880q;
        if (abstractC5497x != null) {
            mo18976a.mo18950a(abstractC5497x);
        }
        return new C5302x(this.f16869f, mo18976a, this.f16871h.mo20721a(), this.f16872i, this.f16873j, m19874m(c5295a), this, abstractC5472e, this.f16874k, this.f16875l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    @Override // com.google.android.exoplayer2.source.C5302x.AbstractC5305c
    /* renamed from: g */
    public void mo19725g(long j, boolean z, boolean z2) {
        char c = j;
        if (j == -9223372036854775807L) {
            c = this.f16877n;
        }
        if (this.f16877n == c && this.f16878o == z && this.f16879p == z2) {
            return;
        }
        m19720t(c, z, z2);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: h */
    public void mo19724h() {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: i */
    public void mo19723i(AbstractC5292u abstractC5292u) {
        ((C5302x) abstractC5292u).m19767a0();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5275l
    /* renamed from: q */
    protected void mo19722q(AbstractC5497x abstractC5497x) {
        this.f16880q = abstractC5497x;
        this.f16872i.mo20773c();
        m19720t(this.f16877n, this.f16878o, this.f16879p);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5275l
    /* renamed from: s */
    protected void mo19721s() {
        this.f16872i.mo20774b();
    }
}
