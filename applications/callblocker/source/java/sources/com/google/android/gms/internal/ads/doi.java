package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/doi.class */
final class doi {

    /* renamed from: a */
    public final int f15125a;

    /* renamed from: b */
    public int f15126b;

    /* renamed from: c */
    public int f15127c;

    /* renamed from: d */
    public long f15128d;

    /* renamed from: e */
    private final boolean f15129e;

    /* renamed from: f */
    private final dsk f15130f;

    /* renamed from: g */
    private final dsk f15131g;

    /* renamed from: h */
    private int f15132h;

    /* renamed from: i */
    private int f15133i;

    public doi(dsk dskVar, dsk dskVar2, boolean z) {
        this.f15131g = dskVar;
        this.f15130f = dskVar2;
        this.f15129e = z;
        dskVar2.m8733c(12);
        this.f15125a = dskVar2.m8719o();
        dskVar.m8733c(12);
        this.f15133i = dskVar.m8719o();
        drz.m8769b(dskVar.m8722l() == 1, "first_chunk must be 1");
        this.f15126b = -1;
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    public final boolean m8996a() {
        boolean z;
        int i = this.f15126b + 1;
        this.f15126b = i;
        if (i == this.f15125a) {
            z = false;
        } else {
            this.f15128d = this.f15129e ? this.f15130f.m8718p() : this.f15130f.m8724j();
            if (this.f15126b == this.f15132h) {
                this.f15127c = this.f15131g.m8719o();
                this.f15131g.m8731d(4);
                int i2 = this.f15133i - 1;
                this.f15133i = i2;
                this.f15132h = i2 > 0 ? this.f15131g.m8719o() - 1 : -1;
            }
            z = true;
        }
        return z;
    }
}
