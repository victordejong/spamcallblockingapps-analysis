package com.google.android.exoplayer2.extractor.p333g;

import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11134m;
import com.google.android.exoplayer2.extractor.C11136n;
import com.google.android.exoplayer2.extractor.C11138o;
import com.google.android.exoplayer2.extractor.C11139p;
import com.google.android.exoplayer2.extractor.p333g.AbstractC11065h;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.extractor.g.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/b.class */
public final class C11058b extends AbstractC11065h {

    /* renamed from: j */
    private C11139p f36015j;

    /* renamed from: k */
    private C11059a f36016k;

    /* renamed from: com.google.android.exoplayer2.extractor.g.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/g/b$a.class */
    static final class C11059a implements AbstractC11063f {

        /* renamed from: b */
        private C11139p f36018b;

        /* renamed from: c */
        private C11139p.C11140a f36019c;

        /* renamed from: a */
        long f36017a = -1;

        /* renamed from: d */
        private long f36020d = -1;

        public C11059a(C11139p c11139p, C11139p.C11140a c11140a) {
            this.f36018b = c11139p;
            this.f36019c = c11140a;
        }

        @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11063f
        /* renamed from: a */
        public final long mo21553a(AbstractC11121i abstractC11121i) {
            long j = this.f36020d;
            if (j >= 0) {
                long j2 = -(j + 2);
                this.f36020d = -1L;
                return j2;
            }
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11063f
        /* renamed from: a */
        public final AbstractC11146v mo21555a() {
            C11593a.m20019b(this.f36017a != -1);
            return new C11138o(this.f36018b, this.f36017a);
        }

        @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11063f
        /* renamed from: a */
        public final void mo21554a(long j) {
            long[] jArr = this.f36019c.f36490a;
            this.f36020d = jArr[C11599af.m19956a(jArr, j, true)];
        }
    }

    /* renamed from: a */
    public static boolean m21573a(C11628u c11628u) {
        return c11628u.m19812a() >= 5 && c11628u.m19804c() == 127 && c11628u.m19794h() == 1179402563;
    }

    /* renamed from: a */
    private static boolean m21572a(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    /* renamed from: a */
    public final void mo21550a(boolean z) {
        super.mo21550a(z);
        if (z) {
            this.f36015j = null;
            this.f36016k = null;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: a */
    protected final boolean mo21551a(C11628u c11628u, long j, AbstractC11065h.C11067a c11067a) {
        byte[] bArr = c11628u.f38733a;
        C11139p c11139p = this.f36015j;
        if (c11139p == null) {
            C11139p c11139p2 = new C11139p(bArr, 17);
            this.f36015j = c11139p2;
            c11067a.f36056a = c11139p2.m21408a(Arrays.copyOfRange(bArr, 9, c11628u.f38735c), (Metadata) null);
            return true;
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            C11139p.C11140a m21416a = C11136n.m21416a(c11628u);
            C11139p m21411a = c11139p.m21411a(m21416a);
            this.f36015j = m21411a;
            this.f36016k = new C11059a(m21411a, m21416a);
            return true;
        } else if (!m21572a(bArr)) {
            return true;
        } else {
            C11059a c11059a = this.f36016k;
            if (c11059a != null) {
                c11059a.f36017a = j;
                c11067a.f36057b = this.f36016k;
            }
            C11593a.m20020b(c11067a.f36056a);
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p333g.AbstractC11065h
    /* renamed from: b */
    protected final long mo21549b(C11628u c11628u) {
        if (!m21572a(c11628u.f38733a)) {
            return -1L;
        }
        int i = (c11628u.f38733a[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            c11628u.m19799e(4);
            c11628u.m19781u();
        }
        int m21420a = C11134m.m21420a(c11628u, i);
        c11628u.m19801d(0);
        return m21420a;
    }
}
