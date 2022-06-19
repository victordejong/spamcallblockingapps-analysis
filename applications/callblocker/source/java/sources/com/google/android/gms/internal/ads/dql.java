package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dql.class */
final class dql {

    /* renamed from: i */
    private int f15399i;

    /* renamed from: j */
    private int f15400j;

    /* renamed from: k */
    private int f15401k;

    /* renamed from: l */
    private int f15402l;

    /* renamed from: q */
    private dlf f15407q;

    /* renamed from: a */
    private int f15391a = 1000;

    /* renamed from: b */
    private int[] f15392b = new int[this.f15391a];

    /* renamed from: c */
    private long[] f15393c = new long[this.f15391a];

    /* renamed from: f */
    private long[] f15396f = new long[this.f15391a];

    /* renamed from: e */
    private int[] f15395e = new int[this.f15391a];

    /* renamed from: d */
    private int[] f15394d = new int[this.f15391a];

    /* renamed from: g */
    private dnr[] f15397g = new dnr[this.f15391a];

    /* renamed from: h */
    private dlf[] f15398h = new dlf[this.f15391a];

    /* renamed from: m */
    private long f15403m = Long.MIN_VALUE;

    /* renamed from: n */
    private long f15404n = Long.MIN_VALUE;

    /* renamed from: p */
    private boolean f15406p = true;

    /* renamed from: o */
    private boolean f15405o = true;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* renamed from: a */
    public final int m8878a(dlg dlgVar, dmx dmxVar, boolean z, boolean z2, dlf dlfVar, dqk dqkVar) {
        int i;
        char c;
        synchronized (this) {
            if (!m8875d()) {
                if (z2) {
                    dmxVar.m9110a(4);
                    i = -4;
                } else if (this.f15407q == null || (!z && this.f15407q == dlfVar)) {
                    i = -3;
                } else {
                    dlgVar.f14659a = this.f15407q;
                    i = -5;
                }
            } else if (z || this.f15398h[this.f15401k] != dlfVar) {
                dlgVar.f14659a = this.f15398h[this.f15401k];
                i = -5;
            } else {
                if (dmxVar.f14880b == null) {
                    i = -3;
                } else {
                    dmxVar.f14881c = this.f15396f[this.f15401k];
                    dmxVar.m9110a(this.f15395e[this.f15401k]);
                    dqkVar.f15387a = this.f15394d[this.f15401k];
                    dqkVar.f15388b = this.f15393c[this.f15401k];
                    dqkVar.f15390d = this.f15397g[this.f15401k];
                    this.f15403m = Math.max(this.f15403m, dmxVar.f14881c);
                    this.f15399i--;
                    this.f15401k++;
                    this.f15400j++;
                    if (this.f15401k == this.f15391a) {
                        this.f15401k = 0;
                    }
                    if (this.f15399i > 0) {
                        c = this.f15393c[this.f15401k];
                    } else {
                        c = dqkVar.f15388b + dqkVar.f15387a;
                    }
                    dqkVar.f15389c = c;
                    i = -4;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003b, code lost:
        if (r8 != false) goto L20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m8880a(long r6, boolean r8) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dql.m8880a(long, boolean):long");
    }

    /* renamed from: a */
    public final void m8883a() {
        this.f15400j = 0;
        this.f15401k = 0;
        this.f15402l = 0;
        this.f15399i = 0;
        this.f15405o = true;
    }

    /* renamed from: a */
    public final void m8882a(long j) {
        synchronized (this) {
            this.f15404n = Math.max(this.f15404n, j);
        }
    }

    /* renamed from: a */
    public final void m8881a(long j, int i, long j2, int i2, dnr dnrVar) {
        synchronized (this) {
            if (this.f15405o) {
                if ((i & 1) != 0) {
                    this.f15405o = false;
                }
            }
            drz.m8770b(!this.f15406p);
            m8882a(j);
            this.f15396f[this.f15402l] = j;
            this.f15393c[this.f15402l] = j2;
            this.f15394d[this.f15402l] = i2;
            this.f15395e[this.f15402l] = i;
            this.f15397g[this.f15402l] = dnrVar;
            this.f15398h[this.f15402l] = this.f15407q;
            this.f15392b[this.f15402l] = 0;
            this.f15399i++;
            if (this.f15399i == this.f15391a) {
                int i3 = this.f15391a + 1000;
                int[] iArr = new int[i3];
                long[] jArr = new long[i3];
                long[] jArr2 = new long[i3];
                int[] iArr2 = new int[i3];
                int[] iArr3 = new int[i3];
                dnr[] dnrVarArr = new dnr[i3];
                dlf[] dlfVarArr = new dlf[i3];
                int i4 = this.f15391a - this.f15401k;
                System.arraycopy(this.f15393c, this.f15401k, jArr, 0, i4);
                System.arraycopy(this.f15396f, this.f15401k, jArr2, 0, i4);
                System.arraycopy(this.f15395e, this.f15401k, iArr2, 0, i4);
                System.arraycopy(this.f15394d, this.f15401k, iArr3, 0, i4);
                System.arraycopy(this.f15397g, this.f15401k, dnrVarArr, 0, i4);
                System.arraycopy(this.f15398h, this.f15401k, dlfVarArr, 0, i4);
                System.arraycopy(this.f15392b, this.f15401k, iArr, 0, i4);
                int i5 = this.f15401k;
                System.arraycopy(this.f15393c, 0, jArr, i4, i5);
                System.arraycopy(this.f15396f, 0, jArr2, i4, i5);
                System.arraycopy(this.f15395e, 0, iArr2, i4, i5);
                System.arraycopy(this.f15394d, 0, iArr3, i4, i5);
                System.arraycopy(this.f15397g, 0, dnrVarArr, i4, i5);
                System.arraycopy(this.f15398h, 0, dlfVarArr, i4, i5);
                System.arraycopy(this.f15392b, 0, iArr, i4, i5);
                this.f15393c = jArr;
                this.f15396f = jArr2;
                this.f15395e = iArr2;
                this.f15394d = iArr3;
                this.f15397g = dnrVarArr;
                this.f15398h = dlfVarArr;
                this.f15392b = iArr;
                this.f15401k = 0;
                this.f15402l = this.f15391a;
                this.f15399i = this.f15391a;
                this.f15391a = i3;
            } else {
                this.f15402l++;
                if (this.f15402l == this.f15391a) {
                    this.f15402l = 0;
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m8879a(dlf dlfVar) {
        boolean z = false;
        synchronized (this) {
            if (dlfVar == null) {
                this.f15406p = true;
            } else {
                this.f15406p = false;
                if (!dsn.m8704a(dlfVar, this.f15407q)) {
                    this.f15407q = dlfVar;
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m8877b() {
        this.f15403m = Long.MIN_VALUE;
        this.f15404n = Long.MIN_VALUE;
    }

    /* renamed from: c */
    public final int m8876c() {
        return this.f15400j + this.f15399i;
    }

    /* renamed from: d */
    public final boolean m8875d() {
        boolean z;
        synchronized (this) {
            z = this.f15399i != 0;
        }
        return z;
    }

    /* renamed from: e */
    public final dlf m8874e() {
        dlf dlfVar;
        synchronized (this) {
            dlfVar = this.f15406p ? null : this.f15407q;
        }
        return dlfVar;
    }

    /* renamed from: f */
    public final long m8873f() {
        long max;
        synchronized (this) {
            max = Math.max(this.f15403m, this.f15404n);
        }
        return max;
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: g */
    public final long m8872g() {
        char c;
        synchronized (this) {
            if (!m8875d()) {
                c = 65535;
            } else {
                int i = ((this.f15401k + this.f15399i) - 1) % this.f15391a;
                this.f15401k = (this.f15401k + this.f15399i) % this.f15391a;
                this.f15400j += this.f15399i;
                this.f15399i = 0;
                c = this.f15394d[i] + this.f15393c[i];
            }
        }
        return c;
    }
}
