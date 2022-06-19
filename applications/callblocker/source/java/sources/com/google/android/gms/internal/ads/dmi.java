package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmi.class */
final class dmi implements dls {

    /* renamed from: d */
    private int[] f14790d;

    /* renamed from: e */
    private boolean f14791e;

    /* renamed from: f */
    private int[] f14792f;

    /* renamed from: i */
    private boolean f14795i;

    /* renamed from: g */
    private ByteBuffer f14793g = f14692a;

    /* renamed from: h */
    private ByteBuffer f14794h = f14692a;

    /* renamed from: b */
    private int f14788b = -1;

    /* renamed from: c */
    private int f14789c = -1;

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: a */
    public final void mo9101a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int length = (((limit - position) / (this.f14788b * 2)) * this.f14792f.length) << 1;
        if (this.f14793g.capacity() < length) {
            this.f14793g = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.f14793g.clear();
        }
        while (position < limit) {
            for (int i : this.f14792f) {
                this.f14793g.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position = (this.f14788b << 1) + position;
        }
        byteBuffer.position(limit);
        this.f14793g.flip();
        this.f14794h = this.f14793g;
    }

    /* renamed from: a */
    public final void m9135a(int[] iArr) {
        this.f14790d = iArr;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: a */
    public final boolean mo9104a() {
        return this.f14791e;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: a */
    public final boolean mo9102a(int i, int i2, int i3) {
        boolean z = !Arrays.equals(this.f14790d, this.f14792f);
        this.f14792f = this.f14790d;
        if (this.f14792f == null) {
            this.f14791e = false;
        } else if (i3 != 2) {
            throw new zzhu(i, i2, i3);
        } else {
            if (!z && this.f14789c == i && this.f14788b == i2) {
                z = false;
            } else {
                this.f14789c = i;
                this.f14788b = i2;
                this.f14791e = i2 != this.f14792f.length;
                int i4 = 0;
                while (i4 < this.f14792f.length) {
                    int i5 = this.f14792f[i4];
                    if (i5 >= i2) {
                        throw new zzhu(i, i2, i3);
                    }
                    this.f14791e = (i5 != i4) | this.f14791e;
                    i4++;
                }
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: b */
    public final int mo9100b() {
        return this.f14792f == null ? this.f14788b : this.f14792f.length;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: c */
    public final int mo9098c() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: d */
    public final void mo9097d() {
        this.f14795i = true;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: e */
    public final ByteBuffer mo9096e() {
        ByteBuffer byteBuffer = this.f14794h;
        this.f14794h = f14692a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: f */
    public final boolean mo9095f() {
        return this.f14795i && this.f14794h == f14692a;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: g */
    public final void mo9094g() {
        this.f14794h = f14692a;
        this.f14795i = false;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: h */
    public final void mo9093h() {
        mo9094g();
        this.f14793g = f14692a;
        this.f14788b = -1;
        this.f14789c = -1;
        this.f14792f = null;
        this.f14791e = false;
    }
}
