package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.C10855ai;
import com.google.android.exoplayer2.C11258q;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.AbstractC11312p;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.source.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/c.class */
public final class C11291c implements AbstractC11312p, AbstractC11312p.AbstractC11313a {

    /* renamed from: a */
    public final AbstractC11312p f37074a;

    /* renamed from: b */
    long f37075b;

    /* renamed from: c */
    long f37076c;

    /* renamed from: d */
    private AbstractC11312p.AbstractC11313a f37077d;

    /* renamed from: e */
    private C11292a[] f37078e = new C11292a[0];

    /* renamed from: f */
    private long f37079f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.source.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/c$a.class */
    public final class C11292a implements AbstractC11269aa {

        /* renamed from: a */
        public final AbstractC11269aa f37080a;

        /* renamed from: b */
        boolean f37081b;

        public C11292a(AbstractC11269aa abstractC11269aa) {
            C11291c.this = r4;
            this.f37080a = abstractC11269aa;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final int mo20864a(long j) {
            if (C11291c.this.m20981g()) {
                return -3;
            }
            return this.f37080a.mo20864a(j);
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final int mo20863a(C11258q c11258q, DecoderInputBuffer decoderInputBuffer, boolean z) {
            if (C11291c.this.m20981g()) {
                return -3;
            }
            if (this.f37081b) {
                decoderInputBuffer.f35344a = 4;
                return -4;
            }
            int mo20863a = this.f37080a.mo20863a(c11258q, decoderInputBuffer, z);
            if (mo20863a != -5) {
                if (C11291c.this.f37076c == Long.MIN_VALUE || ((mo20863a != -4 || decoderInputBuffer.f35338e < C11291c.this.f37076c) && !(mo20863a == -3 && C11291c.this.mo20885d() == Long.MIN_VALUE && !decoderInputBuffer.f35337d))) {
                    return mo20863a;
                }
                decoderInputBuffer.mo20663a();
                decoderInputBuffer.f35344a = 4;
                this.f37081b = true;
                return -4;
            }
            Format format = (Format) C11593a.m20020b(c11258q.f36928b);
            if (format.encoderDelay == 0 && format.encoderPadding == 0) {
                return -5;
            }
            int i = 0;
            int i2 = C11291c.this.f37075b != 0 ? 0 : format.encoderDelay;
            if (C11291c.this.f37076c == Long.MIN_VALUE) {
                i = format.encoderPadding;
            }
            Format.C10828a buildUpon = format.buildUpon();
            buildUpon.f34778A = i2;
            buildUpon.f34779B = i;
            c11258q.f36928b = buildUpon.m22321a();
            return -5;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: a */
        public final boolean mo20865a() {
            return !C11291c.this.m20981g() && this.f37080a.mo20865a();
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11269aa
        /* renamed from: b */
        public final void mo20862b() throws IOException {
            this.f37080a.mo20862b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C11291c(AbstractC11312p abstractC11312p, boolean z, long j, long j2) {
        this.f37074a = abstractC11312p;
        this.f37079f = z ? j : (char) 1;
        this.f37075b = j;
        this.f37076c = j2;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: D_ */
    public final void mo20908D_() throws IOException {
        this.f37074a.mo20908D_();
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final long mo20903a(long j, C10855ai c10855ai) {
        long j2 = this.f37075b;
        if (j == j2) {
            return j2;
        }
        long m19993a = C11599af.m19993a(c10855ai.f34921f, 0L, j - this.f37075b);
        long j3 = c10855ai.f34922g;
        long j4 = this.f37076c;
        long m19993a2 = C11599af.m19993a(j3, 0L, j4 == Long.MIN_VALUE ? (char) 65535 : j4 - j);
        if (m19993a != c10855ai.f34921f || m19993a2 != c10855ai.f34922g) {
            c10855ai = new C10855ai(m19993a, m19993a2);
        }
        return this.f37074a.mo20903a(j, c10855ai);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0128  */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo20895a(com.google.android.exoplayer2.trackselection.AbstractC11436c[] r9, boolean[] r10, com.google.android.exoplayer2.source.AbstractC11269aa[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11291c.mo20895a(com.google.android.exoplayer2.trackselection.c[], boolean[], com.google.android.exoplayer2.source.aa[], boolean[], long):long");
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: a */
    public final void mo20904a(long j) {
        this.f37074a.mo20904a(j);
    }

    /* renamed from: a */
    public final void m20982a(long j, long j2) {
        this.f37075b = j;
        this.f37076c = j2;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20902a(long j, boolean z) {
        this.f37074a.mo20902a(j, z);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab.AbstractC11271a
    /* renamed from: a */
    public final /* synthetic */ void mo20916a(AbstractC11312p abstractC11312p) {
        ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37077d)).mo20916a((AbstractC11312p.AbstractC11313a) this);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: a */
    public final void mo20900a(AbstractC11312p.AbstractC11313a abstractC11313a, long j) {
        this.f37077d = abstractC11313a;
        this.f37074a.mo20900a(this, j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p.AbstractC11313a
    /* renamed from: a */
    public final void mo20915a(AbstractC11312p abstractC11312p) {
        ((AbstractC11312p.AbstractC11313a) C11593a.m20020b(this.f37077d)).mo20915a((AbstractC11312p) this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
        if (r0 <= r0) goto L17;
     */
    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo20891b(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f37079f = r1
            r0 = r5
            com.google.android.exoplayer2.source.c$a[] r0 = r0.f37078e
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L16:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L34
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L2e
            r0 = r12
            r1 = 0
            r0.f37081b = r1
        L2e:
            int r11 = r11 + 1
            goto L16
        L34:
            r0 = r5
            com.google.android.exoplayer2.source.p r0 = r0.f37074a
            r1 = r6
            long r0 = r0.mo20891b(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6d
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r5
            long r1 = r1.f37075b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L70
            r0 = r5
            long r0 = r0.f37076c
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6d
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L70
        L6d:
            r0 = 1
            r15 = r0
        L70:
            r0 = r15
            com.google.android.exoplayer2.util.C11593a.m20019b(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C11291c.mo20891b(long):long");
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: b */
    public final TrackGroupArray mo20893b() {
        return this.f37074a.mo20893b();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p
    /* renamed from: c */
    public final long mo20888c() {
        if (m20981g()) {
            long j = this.f37079f;
            this.f37079f = -9223372036854775807L;
            long mo20888c = mo20888c();
            return mo20888c != -9223372036854775807L ? mo20888c : j;
        }
        long mo20888c2 = this.f37074a.mo20888c();
        if (mo20888c2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        C11593a.m20019b(mo20888c2 >= this.f37075b);
        long j2 = this.f37076c;
        boolean z = true;
        if (j2 != Long.MIN_VALUE) {
            z = mo20888c2 <= j2;
        }
        C11593a.m20019b(z);
        return mo20888c2;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: c */
    public final boolean mo20887c(long j) {
        return this.f37074a.mo20887c(j);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: d */
    public final long mo20885d() {
        long mo20885d = this.f37074a.mo20885d();
        if (mo20885d != Long.MIN_VALUE) {
            long j = this.f37076c;
            if (j != Long.MIN_VALUE && mo20885d >= j) {
                return Long.MIN_VALUE;
            }
            return mo20885d;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: e */
    public final long mo20883e() {
        long mo20883e = this.f37074a.mo20883e();
        if (mo20883e != Long.MIN_VALUE) {
            long j = this.f37076c;
            if (j != Long.MIN_VALUE && mo20883e >= j) {
                return Long.MIN_VALUE;
            }
            return mo20883e;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11312p, com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: f */
    public final boolean mo20881f() {
        return this.f37074a.mo20881f();
    }

    /* renamed from: g */
    final boolean m20981g() {
        return this.f37079f != -9223372036854775807L;
    }
}
