package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zb2.class */
public final class zb2 extends kt1 {

    /* renamed from: i */
    private int f32856i;

    /* renamed from: j */
    private boolean f32857j;

    /* renamed from: k */
    private byte[] f32858k;

    /* renamed from: l */
    private byte[] f32859l;

    /* renamed from: m */
    private int f32860m;

    /* renamed from: n */
    private int f32861n;

    /* renamed from: o */
    private int f32862o;

    /* renamed from: p */
    private boolean f32863p;

    /* renamed from: q */
    private long f32864q;

    public zb2() {
        byte[] bArr = C7101wa.f31480f;
        this.f32858k = bArr;
        this.f32859l = bArr;
    }

    /* renamed from: p */
    private final void m8457p(byte[] bArr, int i) {
        m13811h(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.f32863p = true;
        }
    }

    /* renamed from: q */
    private final void m8456q(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int min = Math.min(byteBuffer.remaining(), this.f32862o);
        int i2 = this.f32862o - min;
        System.arraycopy(bArr, i - i2, this.f32859l, 0, i2);
        byteBuffer.position(byteBuffer.limit() - min);
        byteBuffer.get(this.f32859l, i2, min);
    }

    /* renamed from: r */
    private final int m8455r(long j) {
        return (int) ((j * this.f25343b.f31444b) / 1000000);
    }

    /* renamed from: s */
    private final int m8454s(ByteBuffer byteBuffer) {
        for (int position = byteBuffer.position(); position < byteBuffer.limit(); position += 2) {
            if (Math.abs((int) byteBuffer.getShort(position)) > 1024) {
                int i = this.f32856i;
                return i * (position / i);
            }
        }
        return byteBuffer.limit();
    }

    @Override // com.google.android.gms.internal.ads.kt1, com.google.android.gms.internal.ads.x51
    /* renamed from: b */
    public final boolean mo8465b() {
        return this.f32857j;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: g */
    public final void mo8464g(ByteBuffer byteBuffer) {
        int position;
        while (byteBuffer.hasRemaining() && !m13810i()) {
            int i = this.f32860m;
            if (i == 0) {
                int limit = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit, byteBuffer.position() + this.f32858k.length));
                int limit2 = byteBuffer.limit();
                while (true) {
                    int i2 = limit2 - 2;
                    if (i2 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    }
                    limit2 = i2;
                    if (Math.abs((int) byteBuffer.getShort(i2)) > 1024) {
                        int i3 = this.f32856i;
                        position = ((i2 / i3) * i3) + i3;
                        break;
                    }
                }
                if (position == byteBuffer.position()) {
                    this.f32860m = 1;
                } else {
                    byteBuffer.limit(position);
                    int remaining = byteBuffer.remaining();
                    m13811h(remaining).put(byteBuffer).flip();
                    if (remaining > 0) {
                        this.f32863p = true;
                    }
                }
                byteBuffer.limit(limit);
            } else if (i != 1) {
                int limit3 = byteBuffer.limit();
                int m8454s = m8454s(byteBuffer);
                byteBuffer.limit(m8454s);
                this.f32864q += byteBuffer.remaining() / this.f32856i;
                m8456q(byteBuffer, this.f32859l, this.f32862o);
                if (m8454s < limit3) {
                    m8457p(this.f32859l, this.f32862o);
                    this.f32860m = 0;
                    byteBuffer.limit(limit3);
                }
            } else {
                int limit4 = byteBuffer.limit();
                int m8454s2 = m8454s(byteBuffer);
                int position2 = m8454s2 - byteBuffer.position();
                byte[] bArr = this.f32858k;
                int length = bArr.length;
                int i4 = this.f32861n;
                int i5 = length - i4;
                if (m8454s2 >= limit4 || position2 >= i5) {
                    int min = Math.min(position2, i5);
                    byteBuffer.limit(byteBuffer.position() + min);
                    byteBuffer.get(this.f32858k, this.f32861n, min);
                    int i6 = this.f32861n + min;
                    this.f32861n = i6;
                    byte[] bArr2 = this.f32858k;
                    if (i6 == bArr2.length) {
                        if (this.f32863p) {
                            m8457p(bArr2, this.f32862o);
                            long j = this.f32864q;
                            i6 = this.f32861n;
                            int i7 = this.f32862o;
                            this.f32864q = j + ((i6 - (i7 + i7)) / this.f32856i);
                        } else {
                            this.f32864q += (i6 - this.f32862o) / this.f32856i;
                        }
                        m8456q(byteBuffer, this.f32858k, i6);
                        this.f32861n = 0;
                        this.f32860m = 2;
                    }
                    byteBuffer.limit(limit4);
                } else {
                    m8457p(bArr, i4);
                    this.f32861n = 0;
                    this.f32860m = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: j */
    public final w31 mo8463j(w31 w31Var) {
        if (w31Var.f31446d == 2) {
            return this.f32857j ? w31Var : w31.f31443a;
        }
        throw new zzdd(w31Var);
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: k */
    protected final void mo8462k() {
        int i = this.f32861n;
        if (i > 0) {
            m8457p(this.f32858k, i);
        }
        if (!this.f32863p) {
            this.f32864q += this.f32862o / this.f32856i;
        }
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: l */
    protected final void mo8461l() {
        if (this.f32857j) {
            this.f32856i = this.f25343b.f31447e;
            int m8455r = m8455r(150000L) * this.f32856i;
            if (this.f32858k.length != m8455r) {
                this.f32858k = new byte[m8455r];
            }
            int m8455r2 = m8455r(20000L) * this.f32856i;
            this.f32862o = m8455r2;
            if (this.f32859l.length != m8455r2) {
                this.f32859l = new byte[m8455r2];
            }
        }
        this.f32860m = 0;
        this.f32864q = 0L;
        this.f32861n = 0;
        this.f32863p = false;
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: m */
    protected final void mo8460m() {
        this.f32857j = false;
        this.f32862o = 0;
        byte[] bArr = C7101wa.f31480f;
        this.f32858k = bArr;
        this.f32859l = bArr;
    }

    /* renamed from: n */
    public final void m8459n(boolean z) {
        this.f32857j = z;
    }

    /* renamed from: o */
    public final long m8458o() {
        return this.f32864q;
    }
}
