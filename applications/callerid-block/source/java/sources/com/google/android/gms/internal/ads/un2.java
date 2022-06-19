package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/un2.class */
final class un2 {

    /* renamed from: a */
    public final int f8813a;

    /* renamed from: b */
    public int f8814b;

    /* renamed from: c */
    public int f8815c;

    /* renamed from: d */
    public long f8816d;

    /* renamed from: e */
    private final boolean f8817e;

    /* renamed from: f */
    private final sr2 f8818f;

    /* renamed from: g */
    private final sr2 f8819g;

    /* renamed from: h */
    private int f8820h;

    /* renamed from: i */
    private int f8821i;

    public un2(sr2 sr2Var, sr2 sr2Var2, boolean z) {
        this.f8819g = sr2Var;
        this.f8818f = sr2Var2;
        this.f8817e = z;
        sr2Var2.m5608i(12);
        this.f8813a = sr2Var2.m5596u();
        sr2Var.m5608i(12);
        this.f8821i = sr2Var.m5596u();
        jr2.m6922e(sr2Var.m5599r() != 1 ? false : true, "first_chunk must be 1");
        this.f8814b = -1;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: a */
    public final boolean m5359a() {
        int i = this.f8814b + 1;
        this.f8814b = i;
        if (i == this.f8813a) {
            return false;
        }
        this.f8816d = this.f8817e ? this.f8818f.m5595v() : this.f8818f.m5601p();
        if (this.f8814b != this.f8820h) {
            return true;
        }
        this.f8815c = this.f8819g.m5596u();
        this.f8819g.m5607j(4);
        int i2 = -1;
        int i3 = this.f8821i - 1;
        this.f8821i = i3;
        if (i3 > 0) {
            i2 = (-1) + this.f8819g.m5596u();
        }
        this.f8820h = i2;
        return true;
    }
}
