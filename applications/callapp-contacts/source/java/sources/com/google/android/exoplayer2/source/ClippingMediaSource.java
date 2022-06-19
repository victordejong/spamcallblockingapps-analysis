package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.util.C11593a;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ClippingMediaSource.class */
public final class ClippingMediaSource extends AbstractC11293d<Void> {

    /* renamed from: a */
    private final AbstractC11315r f36933a;

    /* renamed from: b */
    private final long f36934b;

    /* renamed from: c */
    private final long f36935c;

    /* renamed from: d */
    private final boolean f36936d;

    /* renamed from: e */
    private final boolean f36937e;

    /* renamed from: f */
    private final boolean f36938f;

    /* renamed from: g */
    private final ArrayList<C11291c> f36939g;

    /* renamed from: h */
    private final AbstractC10864al.C10867b f36940h;

    /* renamed from: i */
    private C11262a f36941i;

    /* renamed from: j */
    private IllegalClippingException f36942j;

    /* renamed from: k */
    private long f36943k;

    /* renamed from: l */
    private long f36944l;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException.class */
    public static final class IllegalClippingException extends IOException {

        /* renamed from: a */
        public final int f36945a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public IllegalClippingException(int r5) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                java.lang.String r2 = "Illegal clipping: "
                r1.<init>(r2)
                r6 = r0
                r0 = r5
                if (r0 == 0) goto L2a
                r0 = r5
                r1 = 1
                if (r0 == r1) goto L24
                r0 = r5
                r1 = 2
                if (r0 == r1) goto L1e
                java.lang.String r0 = "unknown"
                r7 = r0
                goto L2d
            L1e:
                java.lang.String r0 = "start exceeds end"
                r7 = r0
                goto L2d
            L24:
                java.lang.String r0 = "not seekable to start"
                r7 = r0
                goto L2d
            L2a:
                java.lang.String r0 = "invalid period count"
                r7 = r0
            L2d:
                r0 = r6
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r6
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r4
                r1 = r5
                r0.f36945a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException.<init>(int):void");
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.ClippingMediaSource$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ClippingMediaSource$a.class */
    public static final class C11262a extends AbstractC11302j {

        /* renamed from: c */
        private final long f36946c;

        /* renamed from: d */
        private final long f36947d;

        /* renamed from: e */
        private final long f36948e;

        /* renamed from: f */
        private final boolean f36949f;

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00eb, code lost:
            if (r10 == r0.f35021q) goto L37;
         */
        /* JADX WARN: Type inference failed for: r0v38, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* JADX WARN: Type inference failed for: r0v49, types: [long] */
        /* JADX WARN: Type inference failed for: r0v51, types: [long] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C11262a(com.google.android.exoplayer2.AbstractC10864al r7, long r8, long r10) throws com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException {
            /*
                Method dump skipped, instructions count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.C11262a.<init>(com.google.android.exoplayer2.al, long, long):void");
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [long] */
        @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final AbstractC10864al.C10866a mo20947a(int i, AbstractC10864al.C10866a c10866a, boolean z) {
            this.f37105a.mo20947a(0, c10866a, z);
            long j = c10866a.f35002e - this.f36946c;
            long j2 = this.f36948e;
            return c10866a.m22173a(c10866a.f34998a, c10866a.f34999b, j2 == -9223372036854775807L ? (char) 1 : j2 - j, j);
        }

        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        @Override // com.google.android.exoplayer2.source.AbstractC11302j, com.google.android.exoplayer2.AbstractC10864al
        /* renamed from: a */
        public final AbstractC10864al.C10867b mo20853a(int i, AbstractC10864al.C10867b c10867b, long j) {
            this.f37105a.mo20853a(0, c10867b, 0L);
            c10867b.f35022r += this.f36946c;
            c10867b.f35021q = this.f36948e;
            c10867b.f35014j = this.f36949f;
            if (c10867b.f35020p != -9223372036854775807L) {
                c10867b.f35020p = Math.max(c10867b.f35020p, this.f36946c);
                long j2 = this.f36947d;
                char c = c10867b.f35020p;
                if (j2 != -9223372036854775807L) {
                    c = Math.min((long) c, this.f36947d);
                }
                c10867b.f35020p = c;
                c10867b.f35020p -= this.f36946c;
            }
            long m21374a = C11158f.m21374a(this.f36946c);
            if (c10867b.f35010f != -9223372036854775807L) {
                c10867b.f35010f += m21374a;
            }
            if (c10867b.f35011g != -9223372036854775807L) {
                c10867b.f35011g += m21374a;
            }
            return c10867b;
        }
    }

    public ClippingMediaSource(AbstractC11315r abstractC11315r, long j) {
        this(abstractC11315r, 0L, j, true, false, true);
    }

    public ClippingMediaSource(AbstractC11315r abstractC11315r, long j, long j2) {
        this(abstractC11315r, j, j2, true, false, false);
    }

    public ClippingMediaSource(AbstractC11315r abstractC11315r, long j, long j2, boolean z, boolean z2, boolean z3) {
        C11593a.m20022a(j >= 0);
        this.f36933a = (AbstractC11315r) C11593a.m20020b(abstractC11315r);
        this.f36934b = j;
        this.f36935c = j2;
        this.f36936d = z;
        this.f36937e = z2;
        this.f36938f = z3;
        this.f36939g = new ArrayList<>();
        this.f36940h = new AbstractC10864al.C10867b();
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* renamed from: b */
    private void m21015b(AbstractC10864al abstractC10864al) {
        char c;
        char c2;
        abstractC10864al.mo20853a(0, this.f36940h, 0L);
        long j = this.f36940h.f35022r;
        char c3 = 0;
        if (this.f36941i == null || this.f36939g.isEmpty() || this.f36937e) {
            ?? r0 = this.f36934b;
            ?? r02 = this.f36935c;
            c2 = r0;
            c = r02;
            if (this.f36938f) {
                long j2 = this.f36940h.f35020p;
                c2 = r0 + j2;
                c = r02 + j2;
            }
            this.f36943k = j + c2;
            if (this.f36935c != Long.MIN_VALUE) {
                c3 = j + c;
            }
            this.f36944l = c3;
            int size = this.f36939g.size();
            for (int i = 0; i < size; i++) {
                this.f36939g.get(i).m20982a(this.f36943k, this.f36944l);
            }
        } else {
            long j3 = this.f36943k;
            c = this.f36935c == Long.MIN_VALUE ? (char) 0 : this.f36944l - j;
            c2 = j3 - j;
        }
        try {
            C11262a c11262a = new C11262a(abstractC10864al, c2, c);
            this.f36941i = c11262a;
            m21013a((AbstractC10864al) c11262a);
        } catch (IllegalClippingException e) {
            this.f36942j = e;
        }
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11293d
    /* renamed from: a */
    protected final /* synthetic */ long mo20979a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long m21374a = C11158f.m21374a(this.f36934b);
        ?? max = Math.max(0L, j - m21374a);
        long j2 = this.f36935c;
        char c = max;
        if (j2 != Long.MIN_VALUE) {
            c = Math.min(C11158f.m21374a(j2) - m21374a, (long) max);
        }
        return c;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final AbstractC11312p mo20859a(AbstractC11315r.C11316a c11316a, AbstractC11533b abstractC11533b, long j) {
        C11291c c11291c = new C11291c(this.f36933a.mo20859a(c11316a, abstractC11533b, j), this.f36936d, this.f36943k, this.f36944l);
        this.f36939g.add(c11291c);
        return c11291c;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20860a(AbstractC11312p abstractC11312p) {
        C11593a.m20019b(this.f36939g.remove(abstractC11312p));
        this.f36933a.mo20860a(((C11291c) abstractC11312p).f37074a);
        if (!this.f36939g.isEmpty() || this.f36937e) {
            return;
        }
        m21015b(((C11262a) C11593a.m20020b(this.f36941i)).f37105a);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: a */
    public final void mo20858a(AbstractC11590v abstractC11590v) {
        super.mo20858a(abstractC11590v);
        m20977a((ClippingMediaSource) null, this.f36933a);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d
    /* renamed from: a */
    protected final /* synthetic */ void mo20957a(Void r4, AbstractC11315r abstractC11315r, AbstractC10864al abstractC10864al) {
        if (this.f36942j == null) {
            m21015b(abstractC10864al);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11266a
    /* renamed from: c */
    public final void mo20857c() {
        super.mo20857c();
        this.f36942j = null;
        this.f36941i = null;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: e */
    public final MediaItem mo20856e() {
        return this.f36933a.mo20856e();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11293d, com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: f */
    public final void mo20855f() throws IOException {
        IllegalClippingException illegalClippingException = this.f36942j;
        if (illegalClippingException == null) {
            super.mo20855f();
            return;
        }
        throw illegalClippingException;
    }
}
