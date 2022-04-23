package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwz.class */
final class dwz implements dwj {

    /* renamed from: b  reason: collision with root package name */
    int[] f27344b;
    private boolean e;
    private int[] f;
    private boolean i;
    private ByteBuffer g = f27308a;
    private ByteBuffer h = f27308a;

    /* renamed from: c  reason: collision with root package name */
    private int f27345c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f27346d = -1;

    @Override // com.google.android.gms.internal.ads.dwj
    public final void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int length = (((limit - position) / (this.f27345c * 2)) * this.f.length) << 1;
        if (this.g.capacity() < length) {
            this.g = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.g.clear();
        }
        while (position < limit) {
            for (int i : this.f) {
                this.g.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f27345c << 1;
        }
        byteBuffer.position(limit);
        this.g.flip();
        this.h = this.g;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final boolean a() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final boolean a(int i, int i2, int i3) throws zzii {
        boolean z = !Arrays.equals(this.f27344b, this.f);
        int[] iArr = this.f27344b;
        this.f = iArr;
        if (iArr == null) {
            this.e = false;
            return z;
        } else if (i3 != 2) {
            throw new zzii(i, i2, i3);
        } else if (!z && this.f27346d == i && this.f27345c == i2) {
            return false;
        } else {
            this.f27346d = i;
            this.f27345c = i2;
            this.e = i2 != iArr.length;
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.f;
                if (i4 >= iArr2.length) {
                    return true;
                }
                int i5 = iArr2[i4];
                if (i5 < i2) {
                    this.e = (i5 != i4) | this.e;
                    i4++;
                } else {
                    throw new zzii(i, i2, i3);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final int b() {
        int[] iArr = this.f;
        return iArr == null ? this.f27345c : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void c() {
        this.i = true;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final ByteBuffer d() {
        ByteBuffer byteBuffer = this.h;
        this.h = f27308a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final boolean e() {
        return this.i && this.h == f27308a;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void f() {
        this.h = f27308a;
        this.i = false;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void g() {
        f();
        this.g = f27308a;
        this.f27345c = -1;
        this.f27346d = -1;
        this.f = null;
        this.e = false;
    }
}
