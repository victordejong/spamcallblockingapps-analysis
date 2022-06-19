package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxf.class */
final class dxf implements dwj {

    /* renamed from: b */
    private int f47936b = -1;

    /* renamed from: c */
    private int f47937c = -1;

    /* renamed from: d */
    private int f47938d = 0;

    /* renamed from: e */
    private ByteBuffer f47939e = f47795a;

    /* renamed from: f */
    private ByteBuffer f47940f = f47795a;

    /* renamed from: g */
    private boolean f47941g;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ed A[LOOP:2: B:31:0x00ed->B:33:0x00f3, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:18:0x007d, B:33:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo15518a(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dxf.mo15518a(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: a */
    public final boolean mo15520a() {
        int i = this.f47938d;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: a */
    public final boolean mo15519a(int i, int i2, int i3) throws zzii {
        if (i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            if (this.f47936b == i && this.f47937c == i2 && this.f47938d == i3) {
                return false;
            }
            this.f47936b = i;
            this.f47937c = i2;
            this.f47938d = i3;
            if (i3 != 2) {
                return true;
            }
            this.f47939e = f47795a;
            return true;
        }
        throw new zzii(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: b */
    public final int mo15517b() {
        return this.f47937c;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: c */
    public final void mo15516c() {
        this.f47941g = true;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: d */
    public final ByteBuffer mo15515d() {
        ByteBuffer byteBuffer = this.f47940f;
        this.f47940f = f47795a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: e */
    public final boolean mo15514e() {
        return this.f47941g && this.f47940f == f47795a;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: f */
    public final void mo15513f() {
        this.f47940f = f47795a;
        this.f47941g = false;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: g */
    public final void mo15512g() {
        mo15513f();
        this.f47939e = f47795a;
        this.f47936b = -1;
        this.f47937c = -1;
        this.f47938d = 0;
    }
}
