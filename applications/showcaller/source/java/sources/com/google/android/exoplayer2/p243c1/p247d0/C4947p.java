package com.google.android.exoplayer2.p243c1.p247d0;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5531s;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.c1.d0.p */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/p.class */
public final class C4947p implements AbstractC4946o {

    /* renamed from: a */
    private static final double[] f15252a = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: b */
    private String f15253b;

    /* renamed from: c */
    private AbstractC4996v f15254c;

    /* renamed from: d */
    private boolean f15255d;

    /* renamed from: e */
    private long f15256e;

    /* renamed from: f */
    private final C4941j0 f15257f;

    /* renamed from: g */
    private final C5536v f15258g;

    /* renamed from: h */
    private final boolean[] f15259h;

    /* renamed from: i */
    private final C4948a f15260i;

    /* renamed from: j */
    private final C4958v f15261j;

    /* renamed from: k */
    private long f15262k;

    /* renamed from: l */
    private boolean f15263l;

    /* renamed from: m */
    private long f15264m;

    /* renamed from: n */
    private long f15265n;

    /* renamed from: o */
    private long f15266o;

    /* renamed from: p */
    private boolean f15267p;

    /* renamed from: q */
    private boolean f15268q;

    /* renamed from: com.google.android.exoplayer2.c1.d0.p$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/p$a.class */
    public static final class C4948a {

        /* renamed from: a */
        private static final byte[] f15269a = {0, 0, 1};

        /* renamed from: b */
        private boolean f15270b;

        /* renamed from: c */
        public int f15271c;

        /* renamed from: d */
        public int f15272d;

        /* renamed from: e */
        public byte[] f15273e;

        public C4948a(int i) {
            this.f15273e = new byte[i];
        }

        /* renamed from: a */
        public void m21113a(byte[] bArr, int i, int i2) {
            if (!this.f15270b) {
                return;
            }
            int i3 = i2 - i;
            byte[] bArr2 = this.f15273e;
            int length = bArr2.length;
            int i4 = this.f15271c;
            if (length < i4 + i3) {
                this.f15273e = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f15273e, this.f15271c, i3);
            this.f15271c += i3;
        }

        /* renamed from: b */
        public boolean m21112b(int i, int i2) {
            if (this.f15270b) {
                int i3 = this.f15271c - i2;
                this.f15271c = i3;
                if (this.f15272d != 0 || i != 181) {
                    this.f15270b = false;
                    return true;
                }
                this.f15272d = i3;
            } else if (i == 179) {
                this.f15270b = true;
            }
            byte[] bArr = f15269a;
            m21113a(bArr, 0, bArr.length);
            return false;
        }

        /* renamed from: c */
        public void m21111c() {
            this.f15270b = false;
            this.f15271c = 0;
            this.f15272d = 0;
        }
    }

    public C4947p() {
        this(null);
    }

    public C4947p(C4941j0 c4941j0) {
        this.f15257f = c4941j0;
        this.f15259h = new boolean[4];
        this.f15260i = new C4948a(128);
        if (c4941j0 != null) {
            this.f15261j = new C4958v(178, 128);
            this.f15258g = new C5536v();
            return;
        }
        this.f15261j = null;
        this.f15258g = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c5  */
    /* JADX WARN: Type inference failed for: r0v34, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [double] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v34, types: [double] */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<com.google.android.exoplayer2.Format, java.lang.Long> m21114a(com.google.android.exoplayer2.p243c1.p247d0.C4947p.C4948a r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p243c1.p247d0.C4947p.m21114a(com.google.android.exoplayer2.c1.d0.p$a, java.lang.String):android.util.Pair");
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: b */
    public void mo21073b(C5536v c5536v) {
        int i;
        int m18676c = c5536v.m18676c();
        int m18675d = c5536v.m18675d();
        byte[] bArr = c5536v.f17941a;
        this.f15262k += c5536v.m18678a();
        this.f15254c.mo19985b(c5536v, c5536v.m18678a());
        while (true) {
            int m18720c = C5531s.m18720c(bArr, m18676c, m18675d, this.f15259h);
            if (m18720c == m18675d) {
                break;
            }
            int i2 = m18720c + 3;
            int i3 = c5536v.f17941a[i2] & 255;
            int i4 = m18720c - m18676c;
            boolean z = false;
            if (!this.f15255d) {
                if (i4 > 0) {
                    this.f15260i.m21113a(bArr, m18676c, m18720c);
                }
                if (this.f15260i.m21112b(i3, i4 < 0 ? -i4 : 0)) {
                    Pair<Format, Long> m21114a = m21114a(this.f15260i, this.f15253b);
                    this.f15254c.mo19983d((Format) m21114a.first);
                    this.f15256e = ((Long) m21114a.second).longValue();
                    this.f15255d = true;
                }
            }
            if (this.f15257f != null) {
                if (i4 > 0) {
                    this.f15261j.m21066a(bArr, m18676c, m18720c);
                    i = 0;
                } else {
                    i = -i4;
                }
                if (this.f15261j.m21065b(i)) {
                    C4958v c4958v = this.f15261j;
                    this.f15258g.m18682K(this.f15261j.f15391d, C5531s.m18712k(c4958v.f15391d, c4958v.f15392e));
                    this.f15257f.m21143a(this.f15266o, this.f15258g);
                }
                if (i3 == 178 && c5536v.f17941a[m18720c + 2] == 1) {
                    this.f15261j.m21062e(i3);
                }
            }
            if (i3 == 0 || i3 == 179) {
                int i5 = m18675d - m18720c;
                if (this.f15263l && this.f15268q && this.f15255d) {
                    this.f15254c.mo19984c(this.f15266o, this.f15267p ? 1 : 0, ((int) (this.f15262k - this.f15265n)) - i5, i5, null);
                }
                boolean z2 = this.f15263l;
                if (!z2 || this.f15268q) {
                    this.f15265n = this.f15262k - i5;
                    char c = this.f15264m;
                    int i6 = (c > (-9223372036854775807L) ? 1 : (c == (-9223372036854775807L) ? 0 : -1));
                    char c2 = c;
                    if (i6 == 0) {
                        c2 = z2 ? this.f15266o + this.f15256e : (char) 0;
                    }
                    this.f15266o = c2;
                    this.f15267p = false;
                    this.f15264m = -9223372036854775807L;
                    this.f15263l = true;
                }
                if (i3 == 0) {
                    z = true;
                }
                this.f15268q = z;
            } else if (i3 == 184) {
                this.f15267p = true;
            }
            m18676c = i2;
        }
        if (!this.f15255d) {
            this.f15260i.m21113a(bArr, m18676c, m18675d);
        }
        if (this.f15257f != null) {
            this.f15261j.m21066a(bArr, m18676c, m18675d);
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: c */
    public void mo21072c() {
        C5531s.m18722a(this.f15259h);
        this.f15260i.m21111c();
        if (this.f15257f != null) {
            this.f15261j.m21063d();
        }
        this.f15262k = 0L;
        this.f15263l = false;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: d */
    public void mo21071d() {
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: e */
    public void mo21070e(AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        c4937d.m21159a();
        this.f15253b = c4937d.m21158b();
        this.f15254c = abstractC4980j.mo19748t(c4937d.m21157c(), 2);
        C4941j0 c4941j0 = this.f15257f;
        if (c4941j0 != null) {
            c4941j0.m21142b(abstractC4980j, c4937d);
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4946o
    /* renamed from: f */
    public void mo21069f(long j, int i) {
        this.f15264m = j;
    }
}
