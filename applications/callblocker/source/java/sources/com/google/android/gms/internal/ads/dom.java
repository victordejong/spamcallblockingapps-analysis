package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dom.class */
final class dom implements doh {

    /* renamed from: a */
    private final dsk f15144a;

    /* renamed from: b */
    private final int f15145b;

    /* renamed from: c */
    private final int f15146c;

    /* renamed from: d */
    private int f15147d;

    /* renamed from: e */
    private int f15148e;

    public dom(dog dogVar) {
        this.f15144a = dogVar.f15124a;
        this.f15144a.m8733c(12);
        this.f15146c = this.f15144a.m8719o() & 255;
        this.f15145b = this.f15144a.m8719o();
    }

    @Override // com.google.android.gms.internal.ads.doh
    /* renamed from: a */
    public final int mo8992a() {
        return this.f15145b;
    }

    @Override // com.google.android.gms.internal.ads.doh
    /* renamed from: b */
    public final int mo8991b() {
        int i;
        if (this.f15146c == 8) {
            i = this.f15144a.m8728f();
        } else if (this.f15146c == 16) {
            i = this.f15144a.m8727g();
        } else {
            int i2 = this.f15147d;
            this.f15147d = i2 + 1;
            if (i2 % 2 == 0) {
                this.f15148e = this.f15144a.m8728f();
                i = (this.f15148e & 240) >> 4;
            } else {
                i = this.f15148e & 15;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.doh
    /* renamed from: c */
    public final boolean mo8990c() {
        return false;
    }
}
