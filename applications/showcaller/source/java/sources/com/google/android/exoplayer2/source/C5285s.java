package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.drm.C5039j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.C4976f;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
import com.google.android.exoplayer2.upstream.C5491s;
@Deprecated
/* renamed from: com.google.android.exoplayer2.source.s */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/s.class */
public final class C5285s extends AbstractC5278n<Void> {

    /* renamed from: i */
    private final C5309y f16760i;

    @Deprecated
    /* renamed from: com.google.android.exoplayer2.source.s$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/s$b.class */
    public static final class C5287b {

        /* renamed from: a */
        private final AbstractC5478j.AbstractC5479a f16761a;

        /* renamed from: b */
        private AbstractC4982l f16762b;

        /* renamed from: c */
        private String f16763c;

        /* renamed from: d */
        private Object f16764d;

        /* renamed from: e */
        private AbstractC5493u f16765e = new C5491s();

        /* renamed from: f */
        private int f16766f = 1048576;

        /* renamed from: g */
        private boolean f16767g;

        public C5287b(AbstractC5478j.AbstractC5479a abstractC5479a) {
            this.f16761a = abstractC5479a;
        }

        /* renamed from: a */
        public C5285s m19851a(Uri uri) {
            this.f16767g = true;
            if (this.f16762b == null) {
                this.f16762b = new C4976f();
            }
            return new C5285s(uri, this.f16761a, this.f16762b, this.f16765e, this.f16763c, this.f16766f, this.f16764d);
        }
    }

    private C5285s(Uri uri, AbstractC5478j.AbstractC5479a abstractC5479a, AbstractC4982l abstractC4982l, AbstractC5493u abstractC5493u, String str, int i, Object obj) {
        this.f16760i = new C5309y(uri, abstractC5479a, abstractC4982l, C5039j.m20776d(), abstractC5493u, str, i, obj);
    }

    /* renamed from: B */
    public void mo19852y(Void r4, AbstractC5294v abstractC5294v, AbstractC5585y0 abstractC5585y0) {
        m19872r(abstractC5585y0);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: a */
    public AbstractC5292u mo19726a(AbstractC5294v.C5295a c5295a, AbstractC5472e abstractC5472e, long j) {
        return this.f16760i.mo19726a(c5295a, abstractC5472e, j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: i */
    public void mo19723i(AbstractC5292u abstractC5292u) {
        this.f16760i.mo19723i(abstractC5292u);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5278n, com.google.android.exoplayer2.source.AbstractC5275l
    /* renamed from: q */
    public void mo19722q(AbstractC5497x abstractC5497x) {
        super.mo19722q(abstractC5497x);
        m19857z(null, this.f16760i);
    }
}
