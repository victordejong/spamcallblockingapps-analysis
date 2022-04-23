package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import p131c.p161d.p170b.p224d.p252g.p253a.mc0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzje.class */
public final class zzje implements zzie {

    /* renamed from: d */
    public mc0 f28390d;

    /* renamed from: g */
    public ByteBuffer f28393g;

    /* renamed from: h */
    public ShortBuffer f28394h;

    /* renamed from: j */
    public long f28396j;

    /* renamed from: k */
    public long f28397k;

    /* renamed from: l */
    public boolean f28398l;

    /* renamed from: e */
    public float f28391e = 1.0f;

    /* renamed from: f */
    public float f28392f = 1.0f;

    /* renamed from: b */
    public int f28388b = -1;

    /* renamed from: c */
    public int f28389c = -1;

    /* renamed from: i */
    public ByteBuffer f28395i = zzie.f28318a;

    public zzje() {
        ByteBuffer byteBuffer = zzie.f28318a;
        this.f28393g = byteBuffer;
        this.f28394h = byteBuffer.asShortBuffer();
    }

    /* renamed from: a */
    public final float m11929a(float f) {
        float a = zzpq.m11630a(f, 0.1f, 8.0f);
        this.f28391e = a;
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: a */
    public final void mo11930a() {
        this.f28390d = null;
        ByteBuffer byteBuffer = zzie.f28318a;
        this.f28393g = byteBuffer;
        this.f28394h = byteBuffer.asShortBuffer();
        this.f28395i = zzie.f28318a;
        this.f28388b = -1;
        this.f28389c = -1;
        this.f28396j = 0L;
        this.f28397k = 0L;
        this.f28398l = false;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: a */
    public final void mo11927a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f28396j += remaining;
            this.f28390d.m26640a(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int b = (this.f28390d.m26637b() * this.f28388b) << 1;
        if (b > 0) {
            if (this.f28393g.capacity() < b) {
                ByteBuffer order = ByteBuffer.allocateDirect(b).order(ByteOrder.nativeOrder());
                this.f28393g = order;
                this.f28394h = order.asShortBuffer();
            } else {
                this.f28393g.clear();
                this.f28394h.clear();
            }
            this.f28390d.m26634b(this.f28394h);
            this.f28397k += b;
            this.f28393g.limit(b);
            this.f28395i = this.f28393g;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: a */
    public final boolean mo11928a(int i, int i2, int i3) throws zzih {
        if (i3 != 2) {
            throw new zzih(i, i2, i3);
        } else if (this.f28389c == i && this.f28388b == i2) {
            return false;
        } else {
            this.f28389c = i;
            this.f28388b = i2;
            return true;
        }
    }

    /* renamed from: b */
    public final float m11925b(float f) {
        this.f28392f = zzpq.m11630a(f, 0.1f, 8.0f);
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: b */
    public final boolean mo11926b() {
        return Math.abs(this.f28391e - 1.0f) >= 0.01f || Math.abs(this.f28392f - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: c */
    public final boolean mo11924c() {
        if (!this.f28398l) {
            return false;
        }
        mc0 mc0Var = this.f28390d;
        return mc0Var == null || mc0Var.m26637b() == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: d */
    public final void mo11923d() {
        this.f28390d.m26644a();
        this.f28398l = true;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: e */
    public final ByteBuffer mo11922e() {
        ByteBuffer byteBuffer = this.f28395i;
        this.f28395i = zzie.f28318a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: f */
    public final int mo11921f() {
        return this.f28388b;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    public final void flush() {
        mc0 mc0Var = new mc0(this.f28389c, this.f28388b);
        this.f28390d = mc0Var;
        mc0Var.m26643a(this.f28391e);
        this.f28390d.m26636b(this.f28392f);
        this.f28395i = zzie.f28318a;
        this.f28396j = 0L;
        this.f28397k = 0L;
        this.f28398l = false;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: g */
    public final int mo11920g() {
        return 2;
    }

    /* renamed from: h */
    public final long m11919h() {
        return this.f28396j;
    }

    /* renamed from: i */
    public final long m11918i() {
        return this.f28397k;
    }
}
