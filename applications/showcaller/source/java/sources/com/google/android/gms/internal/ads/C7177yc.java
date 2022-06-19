package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* renamed from: com.google.android.gms.internal.ads.yc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yc.class */
final class C7177yc implements AbstractC6436ec {

    /* renamed from: b */
    private int f32462b = -1;

    /* renamed from: c */
    private int f32463c = -1;

    /* renamed from: d */
    private int f32464d = 0;

    /* renamed from: e */
    private ByteBuffer f32465e;

    /* renamed from: f */
    private ByteBuffer f32466f;

    /* renamed from: g */
    private boolean f32467g;

    public C7177yc() {
        ByteBuffer byteBuffer = AbstractC6436ec.f22058a;
        this.f32465e = byteBuffer;
        this.f32466f = byteBuffer;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ee A[LOOP:2: B:31:0x00ee->B:33:0x00f4, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:18:0x007e, B:33:0x00f4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8868a(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C7177yc.mo8868a(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: b */
    public final boolean mo8867b() {
        int i = this.f32464d;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: c */
    public final int mo8866c() {
        return this.f32463c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: d */
    public final void mo8865d() {
        this.f32467g = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: e */
    public final int mo8864e() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: f */
    public final boolean mo8863f() {
        return this.f32467g && this.f32466f == AbstractC6436ec.f22058a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: g */
    public final void mo8862g() {
        zzi();
        this.f32465e = AbstractC6436ec.f22058a;
        this.f32462b = -1;
        this.f32463c = -1;
        this.f32464d = 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: h */
    public final boolean mo8861h(int i, int i2, int i3) {
        if (i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            if (this.f32462b == i && this.f32463c == i2 && this.f32464d == i3) {
                return false;
            }
            this.f32462b = i;
            this.f32463c = i2;
            this.f32464d = i3;
            if (i3 != 2) {
                return true;
            }
            this.f32465e = AbstractC6436ec.f22058a;
            return true;
        }
        throw new zzaoa(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    public final ByteBuffer zzg() {
        ByteBuffer byteBuffer = this.f32466f;
        this.f32466f = AbstractC6436ec.f22058a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    public final void zzi() {
        this.f32466f = AbstractC6436ec.f22058a;
        this.f32467g = false;
    }
}
