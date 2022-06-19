package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* renamed from: com.google.android.gms.internal.ads.bd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bd.class */
public final class C6325bd implements AbstractC6436ec {

    /* renamed from: d */
    private C7214zc f20347d;

    /* renamed from: g */
    private ByteBuffer f20350g;

    /* renamed from: h */
    private ShortBuffer f20351h;

    /* renamed from: i */
    private ByteBuffer f20352i;

    /* renamed from: j */
    private long f20353j;

    /* renamed from: k */
    private long f20354k;

    /* renamed from: l */
    private boolean f20355l;

    /* renamed from: e */
    private float f20348e = 1.0f;

    /* renamed from: f */
    private float f20349f = 1.0f;

    /* renamed from: b */
    private int f20345b = -1;

    /* renamed from: c */
    private int f20346c = -1;

    public C6325bd() {
        ByteBuffer byteBuffer = AbstractC6436ec.f22058a;
        this.f20350g = byteBuffer;
        this.f20351h = byteBuffer.asShortBuffer();
        this.f20352i = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: a */
    public final void mo8868a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f20353j += remaining;
            this.f20347d.m8449c(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int m8446f = this.f20347d.m8446f() * this.f20345b;
        int i = m8446f + m8446f;
        if (i > 0) {
            if (this.f20350g.capacity() < i) {
                ByteBuffer order = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
                this.f20350g = order;
                this.f20351h = order.asShortBuffer();
            } else {
                this.f20350g.clear();
                this.f20351h.clear();
            }
            this.f20347d.m8448d(this.f20351h);
            this.f20354k += i;
            this.f20350g.limit(i);
            this.f20352i = this.f20350g;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: b */
    public final boolean mo8867b() {
        return Math.abs(this.f20348e - 1.0f) >= 0.01f || Math.abs(this.f20349f - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: c */
    public final int mo8866c() {
        return this.f20345b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: d */
    public final void mo8865d() {
        this.f20347d.m8447e();
        this.f20355l = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: e */
    public final int mo8864e() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: f */
    public final boolean mo8863f() {
        boolean z = true;
        if (this.f20355l) {
            C7214zc c7214zc = this.f20347d;
            if (c7214zc != null) {
                if (c7214zc.m8446f() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: g */
    public final void mo8862g() {
        this.f20347d = null;
        ByteBuffer byteBuffer = AbstractC6436ec.f22058a;
        this.f20350g = byteBuffer;
        this.f20351h = byteBuffer.asShortBuffer();
        this.f20352i = byteBuffer;
        this.f20345b = -1;
        this.f20346c = -1;
        this.f20353j = 0L;
        this.f20354k = 0L;
        this.f20355l = false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    /* renamed from: h */
    public final boolean mo8861h(int i, int i2, int i3) {
        if (i3 == 2) {
            if (this.f20346c == i && this.f20345b == i2) {
                return false;
            }
            this.f20346c = i;
            this.f20345b = i2;
            return true;
        }
        throw new zzaoa(i, i2, i3);
    }

    /* renamed from: i */
    public final float m16406i(float f) {
        float m11015g = C6961si.m11015g(f, 0.1f, 8.0f);
        this.f20348e = m11015g;
        return m11015g;
    }

    /* renamed from: j */
    public final float m16405j(float f) {
        this.f20349f = C6961si.m11015g(1.0f, 0.1f, 8.0f);
        return 1.0f;
    }

    /* renamed from: k */
    public final long m16404k() {
        return this.f20353j;
    }

    /* renamed from: l */
    public final long m16403l() {
        return this.f20354k;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    public final ByteBuffer zzg() {
        ByteBuffer byteBuffer = this.f20352i;
        this.f20352i = AbstractC6436ec.f22058a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6436ec
    public final void zzi() {
        C7214zc c7214zc = new C7214zc(this.f20346c, this.f20345b);
        this.f20347d = c7214zc;
        c7214zc.m8451a(this.f20348e);
        this.f20347d.m8450b(this.f20349f);
        this.f20352i = AbstractC6436ec.f22058a;
        this.f20353j = 0L;
        this.f20354k = 0L;
        this.f20355l = false;
    }
}
