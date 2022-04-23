package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyv.class */
final class dyv {

    /* renamed from: a  reason: collision with root package name */
    public final int f27425a;

    /* renamed from: b  reason: collision with root package name */
    public int f27426b;

    /* renamed from: c  reason: collision with root package name */
    public int f27427c;

    /* renamed from: d  reason: collision with root package name */
    public long f27428d;
    private final boolean e;
    private final ecy f;
    private final ecy g;
    private int h;
    private int i;

    public dyv(ecy ecyVar, ecy ecyVar2, boolean z) {
        this.g = ecyVar;
        this.f = ecyVar2;
        this.e = z;
        ecyVar2.c(12);
        this.f27425a = ecyVar2.i();
        ecyVar.c(12);
        this.i = ecyVar.i();
        ecr.b(ecyVar.g() != 1 ? false : true, "first_chunk must be 1");
        this.f27426b = -1;
    }

    public final boolean a() {
        int i = this.f27426b + 1;
        this.f27426b = i;
        if (i == this.f27425a) {
            return false;
        }
        this.f27428d = this.e ? this.f.j() : this.f.f();
        if (this.f27426b != this.h) {
            return true;
        }
        this.f27427c = this.g.i();
        this.g.d(4);
        int i2 = this.i - 1;
        this.i = i2;
        this.h = i2 > 0 ? this.g.i() - 1 : -1;
        return true;
    }
}
