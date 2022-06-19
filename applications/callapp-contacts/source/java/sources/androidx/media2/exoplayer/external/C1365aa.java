package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.aa */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/aa.class */
final class C1365aa {

    /* renamed from: a */
    public final AbstractC1842t.C1843a f5102a;

    /* renamed from: b */
    public final long f5103b;

    /* renamed from: c */
    public final long f5104c;

    /* renamed from: d */
    public final long f5105d;

    /* renamed from: e */
    public final long f5106e;

    /* renamed from: f */
    public final boolean f5107f;

    /* renamed from: g */
    public final boolean f5108g;

    public C1365aa(AbstractC1842t.C1843a c1843a, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f5102a = c1843a;
        this.f5103b = j;
        this.f5104c = j2;
        this.f5105d = j3;
        this.f5106e = j4;
        this.f5107f = z;
        this.f5108g = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1365aa c1365aa = (C1365aa) obj;
        return this.f5103b == c1365aa.f5103b && this.f5104c == c1365aa.f5104c && this.f5105d == c1365aa.f5105d && this.f5106e == c1365aa.f5106e && this.f5107f == c1365aa.f5107f && this.f5108g == c1365aa.f5108g && C1996ac.m41658a(this.f5102a, c1365aa.f5102a);
    }

    public final int hashCode() {
        return ((((((((((((this.f5102a.hashCode() + 527) * 31) + ((int) this.f5103b)) * 31) + ((int) this.f5104c)) * 31) + ((int) this.f5105d)) * 31) + ((int) this.f5106e)) * 31) + (this.f5107f ? 1 : 0)) * 31) + (this.f5108g ? 1 : 0);
    }
}
