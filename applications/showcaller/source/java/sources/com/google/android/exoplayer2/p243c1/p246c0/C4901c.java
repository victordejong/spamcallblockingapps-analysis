package com.google.android.exoplayer2.p243c1.p246c0;

import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4983m;
import com.google.android.exoplayer2.p243c1.C4985n;
import com.google.android.exoplayer2.p243c1.C4987o;
import com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5522l;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.c1.c0.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/c.class */
public final class C4901c extends AbstractC4908i {

    /* renamed from: n */
    private C5522l f15040n;

    /* renamed from: o */
    private C4902a f15041o;

    /* renamed from: com.google.android.exoplayer2.c1.c0.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/c$a.class */
    private class C4902a implements AbstractC4906g {

        /* renamed from: a */
        private long f15042a = -1;

        /* renamed from: b */
        private long f15043b = -1;

        public C4902a() {
            C4901c.this = r5;
        }

        @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4906g
        /* renamed from: a */
        public AbstractC4992t mo21215a() {
            C5508e.m18910f(this.f15042a != -1);
            return new C4987o(C4901c.this.f15040n, this.f15042a);
        }

        @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4906g
        /* renamed from: b */
        public long mo21214b(AbstractC4979i abstractC4979i) {
            long j = this.f15043b;
            if (j >= 0) {
                long j2 = -(j + 2);
                this.f15043b = -1L;
                return j2;
            }
            return -1L;
        }

        @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4906g
        /* renamed from: c */
        public void mo21213c(long j) {
            C5508e.m18911e(C4901c.this.f15040n.f17905k);
            long[] jArr = C4901c.this.f15040n.f17905k.f17907a;
            this.f15043b = jArr[C5515h0.m18835f(jArr, j, true, true)];
        }

        /* renamed from: d */
        public void m21237d(long j) {
            this.f15042a = j;
        }
    }

    /* renamed from: m */
    private int m21240m(C5536v c5536v) {
        int i = (c5536v.f17941a[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            c5536v.m18679N(4);
            c5536v.m18686G();
        }
        int m20988j = C4983m.m20988j(c5536v, i);
        c5536v.m18680M(0);
        return m20988j;
    }

    /* renamed from: n */
    private static boolean m21239n(byte[] bArr) {
        boolean z = false;
        if (bArr[0] == -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: o */
    public static boolean m21238o(C5536v c5536v) {
        return c5536v.m18678a() >= 5 && c5536v.m18653z() == 127 && c5536v.m18691B() == 1179402563;
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: e */
    protected long mo21211e(C5536v c5536v) {
        if (!m21239n(c5536v.f17941a)) {
            return -1L;
        }
        return m21240m(c5536v);
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: h */
    protected boolean mo21210h(C5536v c5536v, long j, AbstractC4908i.C4910b c4910b) {
        byte[] bArr = c5536v.f17941a;
        if (this.f15040n == null) {
            this.f15040n = new C5522l(bArr, 17);
            c4910b.f15080a = this.f15040n.m18768i(Arrays.copyOfRange(bArr, 9, c5536v.m18675d()), null);
            return true;
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            this.f15041o = new C4902a();
            this.f15040n = this.f15040n.m18774c(C4985n.m20980h(c5536v));
            return true;
        } else if (!m21239n(bArr)) {
            return true;
        } else {
            C4902a c4902a = this.f15041o;
            if (c4902a == null) {
                return false;
            }
            c4902a.m21237d(j);
            c4910b.f15081b = this.f15041o;
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4908i
    /* renamed from: j */
    public void mo21209j(boolean z) {
        super.mo21209j(z);
        if (z) {
            this.f15040n = null;
            this.f15041o = null;
        }
    }
}
