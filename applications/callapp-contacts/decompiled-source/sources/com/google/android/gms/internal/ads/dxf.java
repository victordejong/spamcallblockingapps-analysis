package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxf.class */
final class dxf implements dwj {

    /* renamed from: b  reason: collision with root package name */
    private int f27358b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f27359c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f27360d = 0;
    private ByteBuffer e = f27308a;
    private ByteBuffer f = f27308a;
    private boolean g;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ed A[LOOP:2: B:31:0x00ed->B:33:0x00f3, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:18:0x007d, B:33:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.dwj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dxf.a(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final boolean a() {
        int i = this.f27360d;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final boolean a(int i, int i2, int i3) throws zzii {
        if (i3 != 3 && i3 != 2 && i3 != Integer.MIN_VALUE && i3 != 1073741824) {
            throw new zzii(i, i2, i3);
        } else if (this.f27358b == i && this.f27359c == i2 && this.f27360d == i3) {
            return false;
        } else {
            this.f27358b = i;
            this.f27359c = i2;
            this.f27360d = i3;
            if (i3 != 2) {
                return true;
            }
            this.e = f27308a;
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final int b() {
        return this.f27359c;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void c() {
        this.g = true;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final ByteBuffer d() {
        ByteBuffer byteBuffer = this.f;
        this.f = f27308a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final boolean e() {
        return this.g && this.f == f27308a;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void f() {
        this.f = f27308a;
        this.g = false;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void g() {
        f();
        this.e = f27308a;
        this.f27358b = -1;
        this.f27359c = -1;
        this.f27360d = 0;
    }
}
