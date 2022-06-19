package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyv.class */
final class dyv {

    /* renamed from: a */
    public final int f48217a;

    /* renamed from: b */
    public int f48218b;

    /* renamed from: c */
    public int f48219c;

    /* renamed from: d */
    public long f48220d;

    /* renamed from: e */
    private final boolean f48221e;

    /* renamed from: f */
    private final ecy f48222f;

    /* renamed from: g */
    private final ecy f48223g;

    /* renamed from: h */
    private int f48224h;

    /* renamed from: i */
    private int f48225i;

    public dyv(ecy ecyVar, ecy ecyVar2, boolean z) {
        this.f48223g = ecyVar;
        this.f48222f = ecyVar2;
        this.f48221e = z;
        ecyVar2.m15226c(12);
        this.f48217a = ecyVar2.m15218i();
        ecyVar.m15226c(12);
        this.f48225i = ecyVar.m15218i();
        ecr.m15246b(ecyVar.m15220g() != 1 ? false : true, "first_chunk must be 1");
        this.f48218b = -1;
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* renamed from: a */
    public final boolean m15442a() {
        int i = this.f48218b + 1;
        this.f48218b = i;
        if (i == this.f48217a) {
            return false;
        }
        this.f48220d = this.f48221e ? this.f48222f.m15217j() : this.f48222f.m15221f();
        if (this.f48218b != this.f48224h) {
            return true;
        }
        this.f48219c = this.f48223g.m15218i();
        this.f48223g.m15224d(4);
        int i2 = this.f48225i - 1;
        this.f48225i = i2;
        this.f48224h = i2 > 0 ? this.f48223g.m15218i() - 1 : -1;
        return true;
    }
}
