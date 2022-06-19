package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.uc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uc.class */
final class C7029uc implements AbstractC6436ec {

    /* renamed from: b */
    private int f30571b = -1;

    /* renamed from: c */
    private int f30572c = -1;

    /* renamed from: d */
    private int[] f30573d;

    /* renamed from: e */
    private boolean f30574e;

    /* renamed from: f */
    private int[] f30575f;

    /* renamed from: g */
    private ByteBuffer f30576g;

    /* renamed from: h */
    private ByteBuffer f30577h;

    /* renamed from: i */
    private boolean f30578i;

    public C7029uc() {
        ByteBuffer byteBuffer = AbstractC6436ec.f22058a;
        this.f30576g = byteBuffer;
        this.f30577h = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: a */
    public final void mo8868a(ByteBuffer byteBuffer) {
        int[] iArr;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = this.f30571b;
        int length = ((limit - position) / (i + i)) * this.f30575f.length;
        int i2 = length + length;
        if (this.f30576g.capacity() < i2) {
            this.f30576g = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
        } else {
            this.f30576g.clear();
        }
        while (position < limit) {
            for (int i3 : this.f30575f) {
                this.f30576g.putShort(byteBuffer.getShort(i3 + i3 + position));
            }
            int i4 = this.f30571b;
            position += i4 + i4;
        }
        byteBuffer.position(limit);
        this.f30576g.flip();
        this.f30577h = this.f30576g;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: b */
    public final boolean mo8867b() {
        return this.f30574e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: c */
    public final int mo8866c() {
        int[] iArr = this.f30575f;
        return iArr == null ? this.f30571b : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: d */
    public final void mo8865d() {
        this.f30578i = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: e */
    public final int mo8864e() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: f */
    public final boolean mo8863f() {
        return this.f30578i && this.f30577h == AbstractC6436ec.f22058a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: g */
    public final void mo8862g() {
        zzi();
        this.f30576g = AbstractC6436ec.f22058a;
        this.f30571b = -1;
        this.f30572c = -1;
        this.f30575f = null;
        this.f30574e = false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: h */
    public final boolean mo8861h(int i, int i2, int i3) {
        boolean z = !Arrays.equals(this.f30573d, this.f30575f);
        int[] iArr = this.f30573d;
        this.f30575f = iArr;
        if (iArr == null) {
            this.f30574e = false;
            return z;
        } else if (i3 != 2) {
            throw new zzaoa(i, i2, i3);
        } else {
            if (!z && this.f30572c == i && this.f30571b == i2) {
                return false;
            }
            this.f30572c = i;
            this.f30571b = i2;
            this.f30574e = i2 != iArr.length;
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.f30575f;
                if (i4 >= iArr2.length) {
                    return true;
                }
                int i5 = iArr2[i4];
                if (i5 >= i2) {
                    throw new zzaoa(i, i2, 2);
                }
                this.f30574e = (i5 != i4) | this.f30574e;
                i4++;
            }
        }
    }

    /* renamed from: i */
    public final void m10355i(int[] iArr) {
        this.f30573d = iArr;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    public final ByteBuffer zzg() {
        ByteBuffer byteBuffer = this.f30577h;
        this.f30577h = AbstractC6436ec.f22058a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    public final void zzi() {
        this.f30577h = AbstractC6436ec.f22058a;
        this.f30578i = false;
    }
}
