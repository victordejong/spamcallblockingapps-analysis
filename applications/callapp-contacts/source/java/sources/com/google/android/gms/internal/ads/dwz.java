package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwz.class */
final class dwz implements dwj {

    /* renamed from: b */
    int[] f47891b;

    /* renamed from: e */
    private boolean f47894e;

    /* renamed from: f */
    private int[] f47895f;

    /* renamed from: i */
    private boolean f47898i;

    /* renamed from: g */
    private ByteBuffer f47896g = f47795a;

    /* renamed from: h */
    private ByteBuffer f47897h = f47795a;

    /* renamed from: c */
    private int f47892c = -1;

    /* renamed from: d */
    private int f47893d = -1;

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: a */
    public final void mo15518a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int length = (((limit - position) / (this.f47892c * 2)) * this.f47895f.length) << 1;
        if (this.f47896g.capacity() < length) {
            this.f47896g = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.f47896g.clear();
        }
        while (position < limit) {
            for (int i : this.f47895f) {
                this.f47896g.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f47892c << 1;
        }
        byteBuffer.position(limit);
        this.f47896g.flip();
        this.f47897h = this.f47896g;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: a */
    public final boolean mo15520a() {
        return this.f47894e;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: a */
    public final boolean mo15519a(int i, int i2, int i3) throws zzii {
        boolean z = !Arrays.equals(this.f47891b, this.f47895f);
        int[] iArr = this.f47891b;
        this.f47895f = iArr;
        if (iArr == null) {
            this.f47894e = false;
            return z;
        } else if (i3 != 2) {
            throw new zzii(i, i2, i3);
        } else {
            if (!z && this.f47893d == i && this.f47892c == i2) {
                return false;
            }
            this.f47893d = i;
            this.f47892c = i2;
            this.f47894e = i2 != iArr.length;
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.f47895f;
                if (i4 >= iArr2.length) {
                    return true;
                }
                int i5 = iArr2[i4];
                if (i5 >= i2) {
                    throw new zzii(i, i2, i3);
                }
                this.f47894e = (i5 != i4) | this.f47894e;
                i4++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: b */
    public final int mo15517b() {
        int[] iArr = this.f47895f;
        return iArr == null ? this.f47892c : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: c */
    public final void mo15516c() {
        this.f47898i = true;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: d */
    public final ByteBuffer mo15515d() {
        ByteBuffer byteBuffer = this.f47897h;
        this.f47897h = f47795a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: e */
    public final boolean mo15514e() {
        return this.f47898i && this.f47897h == f47795a;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: f */
    public final void mo15513f() {
        this.f47897h = f47795a;
        this.f47898i = false;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: g */
    public final void mo15512g() {
        mo15513f();
        this.f47896g = f47795a;
        this.f47892c = -1;
        this.f47893d = -1;
        this.f47895f = null;
        this.f47894e = false;
    }
}
