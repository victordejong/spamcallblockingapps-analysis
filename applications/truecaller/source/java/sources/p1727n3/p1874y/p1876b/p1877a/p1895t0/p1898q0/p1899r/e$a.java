package p1727n3.p1874y.p1876b.p1877a.p1895t0.p1898q0.p1899r;

import androidx.media2.exoplayer.external.drm.DrmInitData;
/* renamed from: n3.y.b.a.t0.q0.r.e$a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/t0/q0/r/e$a.class */
public final class e$a implements Comparable<Long> {

    /* renamed from: a */
    public final String f77020a;

    /* renamed from: b */
    public final e$a f77021b;

    /* renamed from: c */
    public final long f77022c;

    /* renamed from: d */
    public final int f77023d;

    /* renamed from: e */
    public final long f77024e;

    /* renamed from: f */
    public final DrmInitData f77025f;

    /* renamed from: g */
    public final String f77026g;

    /* renamed from: h */
    public final String f77027h;

    /* renamed from: i */
    public final long f77028i;

    /* renamed from: j */
    public final long f77029j;

    /* renamed from: k */
    public final boolean f77030k;

    public e$a(String str, e$a e_a, String str2, long j, int i, long j2, DrmInitData drmInitData, String str3, String str4, long j3, long j4, boolean z) {
        this.f77020a = str;
        this.f77021b = e_a;
        this.f77022c = j;
        this.f77023d = i;
        this.f77024e = j2;
        this.f77025f = drmInitData;
        this.f77026g = str3;
        this.f77027h = str4;
        this.f77028i = j3;
        this.f77029j = j4;
        this.f77030k = z;
    }

    @Override // java.lang.Comparable
    public int compareTo(Long l) {
        Long l2 = l;
        return this.f77024e > l2.longValue() ? 1 : this.f77024e < l2.longValue() ? -1 : 0;
    }
}
