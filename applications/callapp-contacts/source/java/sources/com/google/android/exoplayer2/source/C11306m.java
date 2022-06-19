package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.C10855ai;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.source.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/m.class */
public final class C11306m implements AbstractC11312p, AbstractC11312p.AbstractC11313a {

    /* renamed from: a */
    public final AbstractC11315r.C11316a f37119a;

    /* renamed from: b */
    final long f37120b;

    /* renamed from: c */
    public AbstractC11307a f37121c;

    /* renamed from: d */
    long f37122d = -9223372036854775807L;

    /* renamed from: e */
    private final AbstractC11533b f37123e;

    /* renamed from: f */
    private AbstractC11315r f37124f;

    /* renamed from: g */
    private AbstractC11312p f37125g;

    /* renamed from: h */
    private AbstractC11312p.AbstractC11313a f37126h;

    /* renamed from: i */
    private boolean f37127i;

    /* renamed from: com.google.android.exoplayer2.source.m$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/m$a.class */
    public interface AbstractC11307a {
        /* renamed from: a */
        void mo20960a(AbstractC11315r.C11316a c11316a);

        /* renamed from: a */
        void mo20959a(AbstractC11315r.C11316a c11316a, IOException iOException);
    }

    public C11306m(AbstractC11315r.C11316a c11316a, AbstractC11533b abstractC11533b, long j) {
        this.f37119a = c11316a;
        this.f37123e = abstractC11533b;
        this.f37120b = j;
    }

    /* renamed from: d */
    private long m20962d(long j) {
        long j2 = this.f37122d;
        return j2 != -9223372036854775807L ? j2 : j;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: D_ */
    public final void mo20908D_() throws IOException {
        try {
            AbstractC11312p abstractC11312p = this.f37125g;
            if (abstractC11312p != null) {
                abstractC11312p.mo20908D_();
                return;
            }
            AbstractC11315r abstractC11315r = this.f37124f;
            if (abstractC11315r == null) {
                return;
            }
            abstractC11315r.mo20855f();
        } catch (IOException e) {
            AbstractC11307a abstractC11307a = this.f37121c;
            if (abstractC11307a == null) {
                throw e;
            }
            if (this.f37127i) {
                return;
            }
            this.f37127i = true;
            abstractC11307a.mo20959a(this.f37119a, e);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final long mo20903a(long j, C10855ai c10855ai) {
        return ((AbstractC11312p) C11599af.m19974a(this.f37125g)).mo20903a(j, c10855ai);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.exoplayer2.source.p] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final long mo20895a(AbstractC11436c[] abstractC11436cArr, boolean[] zArr, AbstractC11269aa[] abstractC11269aaArr, boolean[] zArr2, long j) {
        ?? r0 = this.f37122d;
        ?? r13 = j;
        if (r0 != -9223372036854775807L) {
            int i = (j > this.f37120b ? 1 : (j == this.f37120b ? 0 : -1));
            r13 = j;
            if (i == 0) {
                this.f37122d = -9223372036854775807L;
                r13 = r0;
            }
        }
        return ((AbstractC11312p) C11599af.m19974a(this.f37125g)).mo20895a(abstractC11436cArr, zArr, abstractC11269aaArr, zArr2, r13);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: a */
    public final void mo20904a(long j) {
        ((AbstractC11312p) C11599af.m19974a(this.f37125g)).mo20904a(j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20902a(long j, boolean z) {
        ((AbstractC11312p) C11599af.m19974a(this.f37125g)).mo20902a(j, z);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab.AbstractC11271a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo20916a(AbstractC11312p abstractC11312p) {
        ((AbstractC11312p.AbstractC11313a) C11599af.m19974a(this.f37126h)).mo20916a((AbstractC11312p.AbstractC11313a) this);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20900a(AbstractC11312p.AbstractC11313a abstractC11313a, long j) {
        this.f37126h = abstractC11313a;
        AbstractC11312p abstractC11312p = this.f37125g;
        if (abstractC11312p != null) {
            abstractC11312p.mo20900a(this, m20962d(this.f37120b));
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p.AbstractC11313a
    /* renamed from: a */
    public final void mo20915a(AbstractC11312p abstractC11312p) {
        ((AbstractC11312p.AbstractC11313a) C11599af.m19974a(this.f37126h)).mo20915a((AbstractC11312p) this);
        AbstractC11307a abstractC11307a = this.f37121c;
        if (abstractC11307a != null) {
            abstractC11307a.mo20960a(this.f37119a);
        }
    }

    /* renamed from: a */
    public final void m20964a(AbstractC11315r.C11316a c11316a) {
        long m20962d = m20962d(this.f37120b);
        AbstractC11312p mo20859a = ((AbstractC11315r) C11593a.m20020b(this.f37124f)).mo20859a(c11316a, this.f37123e, m20962d);
        this.f37125g = mo20859a;
        if (this.f37126h != null) {
            mo20859a.mo20900a(this, m20962d);
        }
    }

    /* renamed from: a */
    public final void m20963a(AbstractC11315r abstractC11315r) {
        C11593a.m20019b(this.f37124f == null);
        this.f37124f = abstractC11315r;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    public final long mo20891b(long j) {
        return ((AbstractC11312p) C11599af.m19974a(this.f37125g)).mo20891b(j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    public final TrackGroupArray mo20893b() {
        return ((AbstractC11312p) C11599af.m19974a(this.f37125g)).mo20893b();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: c */
    public final long mo20888c() {
        return ((AbstractC11312p) C11599af.m19974a(this.f37125g)).mo20888c();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: c */
    public final boolean mo20887c(long j) {
        AbstractC11312p abstractC11312p = this.f37125g;
        return abstractC11312p != null && abstractC11312p.mo20887c(j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: d */
    public final long mo20885d() {
        return ((AbstractC11312p) C11599af.m19974a(this.f37125g)).mo20885d();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: e */
    public final long mo20883e() {
        return ((AbstractC11312p) C11599af.m19974a(this.f37125g)).mo20883e();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: f */
    public final boolean mo20881f() {
        AbstractC11312p abstractC11312p = this.f37125g;
        return abstractC11312p != null && abstractC11312p.mo20881f();
    }

    /* renamed from: g */
    public final void m20961g() {
        if (this.f37125g != null) {
            ((AbstractC11315r) C11593a.m20020b(this.f37124f)).mo20860a(this.f37125g);
        }
    }
}
