package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzho;
import com.google.android.gms.internal.ads.zzhq;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zzkf;
import com.google.android.gms.internal.ads.zzni;
import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpq;
/* renamed from: c.d.b.d.g.a.qe0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/qe0.class */
public final class qe0 {

    /* renamed from: i */
    public int f14808i;

    /* renamed from: j */
    public int f14809j;

    /* renamed from: k */
    public int f14810k;

    /* renamed from: l */
    public int f14811l;

    /* renamed from: q */
    public zzho f14816q;

    /* renamed from: a */
    public int f14800a = 1000;

    /* renamed from: b */
    public int[] f14801b = new int[1000];

    /* renamed from: c */
    public long[] f14802c = new long[1000];

    /* renamed from: f */
    public long[] f14805f = new long[1000];

    /* renamed from: e */
    public int[] f14804e = new int[1000];

    /* renamed from: d */
    public int[] f14803d = new int[1000];

    /* renamed from: g */
    public zzkf[] f14806g = new zzkf[1000];

    /* renamed from: h */
    public zzho[] f14807h = new zzho[1000];

    /* renamed from: m */
    public long f14812m = Long.MIN_VALUE;

    /* renamed from: n */
    public long f14813n = Long.MIN_VALUE;

    /* renamed from: p */
    public boolean f14815p = true;

    /* renamed from: o */
    public boolean f14814o = true;

    /* renamed from: a */
    public final int m26470a(zzhq zzhqVar, zzjk zzjkVar, boolean z, boolean z2, zzho zzhoVar, zzni zzniVar) {
        synchronized (this) {
            if (m26466e()) {
                if (!z && this.f14807h[this.f14810k] == zzhoVar) {
                    if (zzjkVar.f28409c == null) {
                        return -3;
                    }
                    zzjkVar.f28410d = this.f14805f[this.f14810k];
                    zzjkVar.m11915a(this.f14804e[this.f14810k]);
                    zzniVar.f28677a = this.f14803d[this.f14810k];
                    zzniVar.f28678b = this.f14802c[this.f14810k];
                    zzniVar.f28680d = this.f14806g[this.f14810k];
                    this.f14812m = Math.max(this.f14812m, zzjkVar.f28410d);
                    this.f14808i--;
                    int i = this.f14810k + 1;
                    this.f14810k = i;
                    this.f14809j++;
                    if (i == this.f14800a) {
                        this.f14810k = 0;
                    }
                    zzniVar.f28679c = this.f14808i > 0 ? this.f14802c[this.f14810k] : zzniVar.f28678b + zzniVar.f28677a;
                    return -4;
                }
                zzhqVar.f28293a = this.f14807h[this.f14810k];
                return -5;
            } else if (z2) {
                zzjkVar.m11915a(4);
                return -4;
            } else if (this.f14816q == null || (!z && this.f14816q == zzhoVar)) {
                return -3;
            } else {
                zzhqVar.f28293a = this.f14816q;
                return -5;
            }
        }
    }

    /* renamed from: a */
    public final long m26475a() {
        long max;
        synchronized (this) {
            max = Math.max(this.f14812m, this.f14813n);
        }
        return max;
    }

    /* renamed from: a */
    public final long m26472a(long j, boolean z) {
        synchronized (this) {
            if (m26466e() && j >= this.f14805f[this.f14810k]) {
                if (j > this.f14813n && !z) {
                    return -1L;
                }
                int i = 0;
                int i2 = this.f14810k;
                int i3 = -1;
                while (i2 != this.f14811l && this.f14805f[i2] <= j) {
                    if ((this.f14804e[i2] & 1) != 0) {
                        i3 = i;
                    }
                    i2 = (i2 + 1) % this.f14800a;
                    i++;
                }
                if (i3 == -1) {
                    return -1L;
                }
                int i4 = (this.f14810k + i3) % this.f14800a;
                this.f14810k = i4;
                this.f14809j += i3;
                this.f14808i -= i3;
                return this.f14802c[i4];
            }
            return -1L;
        }
    }

    /* renamed from: a */
    public final void m26474a(long j) {
        synchronized (this) {
            this.f14813n = Math.max(this.f14813n, j);
        }
    }

    /* renamed from: a */
    public final void m26473a(long j, int i, long j2, int i2, zzkf zzkfVar) {
        synchronized (this) {
            if (this.f14814o) {
                if ((i & 1) != 0) {
                    this.f14814o = false;
                } else {
                    return;
                }
            }
            zzoz.m11694b(!this.f14815p);
            m26474a(j);
            this.f14805f[this.f14811l] = j;
            this.f14802c[this.f14811l] = j2;
            this.f14803d[this.f14811l] = i2;
            this.f14804e[this.f14811l] = i;
            this.f14806g[this.f14811l] = zzkfVar;
            this.f14807h[this.f14811l] = this.f14816q;
            this.f14801b[this.f14811l] = 0;
            int i3 = this.f14808i + 1;
            this.f14808i = i3;
            if (i3 == this.f14800a) {
                int i4 = this.f14800a + 1000;
                int[] iArr = new int[i4];
                long[] jArr = new long[i4];
                long[] jArr2 = new long[i4];
                int[] iArr2 = new int[i4];
                int[] iArr3 = new int[i4];
                zzkf[] zzkfVarArr = new zzkf[i4];
                zzho[] zzhoVarArr = new zzho[i4];
                int i5 = this.f14800a - this.f14810k;
                System.arraycopy(this.f14802c, this.f14810k, jArr, 0, i5);
                System.arraycopy(this.f14805f, this.f14810k, jArr2, 0, i5);
                System.arraycopy(this.f14804e, this.f14810k, iArr2, 0, i5);
                System.arraycopy(this.f14803d, this.f14810k, iArr3, 0, i5);
                System.arraycopy(this.f14806g, this.f14810k, zzkfVarArr, 0, i5);
                System.arraycopy(this.f14807h, this.f14810k, zzhoVarArr, 0, i5);
                System.arraycopy(this.f14801b, this.f14810k, iArr, 0, i5);
                int i6 = this.f14810k;
                System.arraycopy(this.f14802c, 0, jArr, i5, i6);
                System.arraycopy(this.f14805f, 0, jArr2, i5, i6);
                System.arraycopy(this.f14804e, 0, iArr2, i5, i6);
                System.arraycopy(this.f14803d, 0, iArr3, i5, i6);
                System.arraycopy(this.f14806g, 0, zzkfVarArr, i5, i6);
                System.arraycopy(this.f14807h, 0, zzhoVarArr, i5, i6);
                System.arraycopy(this.f14801b, 0, iArr, i5, i6);
                this.f14802c = jArr;
                this.f14805f = jArr2;
                this.f14804e = iArr2;
                this.f14803d = iArr3;
                this.f14806g = zzkfVarArr;
                this.f14807h = zzhoVarArr;
                this.f14801b = iArr;
                this.f14810k = 0;
                this.f14811l = this.f14800a;
                this.f14808i = this.f14800a;
                this.f14800a = i4;
                return;
            }
            int i7 = this.f14811l + 1;
            this.f14811l = i7;
            if (i7 == this.f14800a) {
                this.f14811l = 0;
            }
        }
    }

    /* renamed from: a */
    public final boolean m26471a(zzho zzhoVar) {
        synchronized (this) {
            if (zzhoVar == null) {
                this.f14815p = true;
                return false;
            }
            this.f14815p = false;
            if (zzpq.m11624a(zzhoVar, this.f14816q)) {
                return false;
            }
            this.f14816q = zzhoVar;
            return true;
        }
    }

    /* renamed from: b */
    public final void m26469b() {
        this.f14809j = 0;
        this.f14810k = 0;
        this.f14811l = 0;
        this.f14808i = 0;
        this.f14814o = true;
    }

    /* renamed from: c */
    public final void m26468c() {
        this.f14812m = Long.MIN_VALUE;
        this.f14813n = Long.MIN_VALUE;
    }

    /* renamed from: d */
    public final int m26467d() {
        return this.f14809j + this.f14808i;
    }

    /* renamed from: e */
    public final boolean m26466e() {
        boolean z;
        synchronized (this) {
            z = this.f14808i != 0;
        }
        return z;
    }

    /* renamed from: f */
    public final zzho m26465f() {
        synchronized (this) {
            if (this.f14815p) {
                return null;
            }
            return this.f14816q;
        }
    }

    /* renamed from: g */
    public final long m26464g() {
        synchronized (this) {
            if (!m26466e()) {
                return -1L;
            }
            int i = ((this.f14810k + this.f14808i) - 1) % this.f14800a;
            this.f14810k = (this.f14810k + this.f14808i) % this.f14800a;
            this.f14809j += this.f14808i;
            this.f14808i = 0;
            return this.f14802c[i] + this.f14803d[i];
        }
    }
}
