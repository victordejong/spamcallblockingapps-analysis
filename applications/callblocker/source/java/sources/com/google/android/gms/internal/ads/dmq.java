package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmq.class */
public final class dmq implements dls {

    /* renamed from: d */
    private dmn f14842d;

    /* renamed from: j */
    private long f14848j;

    /* renamed from: k */
    private long f14849k;

    /* renamed from: l */
    private boolean f14850l;

    /* renamed from: e */
    private float f14843e = 1.0f;

    /* renamed from: f */
    private float f14844f = 1.0f;

    /* renamed from: b */
    private int f14840b = -1;

    /* renamed from: c */
    private int f14841c = -1;

    /* renamed from: g */
    private ByteBuffer f14845g = f14692a;

    /* renamed from: h */
    private ShortBuffer f14846h = this.f14845g.asShortBuffer();

    /* renamed from: i */
    private ByteBuffer f14847i = f14692a;

    /* renamed from: a */
    public final float m9103a(float f) {
        this.f14843e = dsn.m8710a(f, 0.1f, 8.0f);
        return this.f14843e;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: a */
    public final void mo9101a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f14848j += remaining;
            this.f14842d.m9119a(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int m9116b = (this.f14842d.m9116b() * this.f14840b) << 1;
        if (m9116b > 0) {
            if (this.f14845g.capacity() < m9116b) {
                this.f14845g = ByteBuffer.allocateDirect(m9116b).order(ByteOrder.nativeOrder());
                this.f14846h = this.f14845g.asShortBuffer();
            } else {
                this.f14845g.clear();
                this.f14846h.clear();
            }
            this.f14842d.m9113b(this.f14846h);
            this.f14849k += m9116b;
            this.f14845g.limit(m9116b);
            this.f14847i = this.f14845g;
        }
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: a */
    public final boolean mo9104a() {
        return Math.abs(this.f14843e - 1.0f) >= 0.01f || Math.abs(this.f14844f - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: a */
    public final boolean mo9102a(int i, int i2, int i3) {
        boolean z;
        if (i3 != 2) {
            throw new zzhu(i, i2, i3);
        }
        if (this.f14841c == i && this.f14840b == i2) {
            z = false;
        } else {
            this.f14841c = i;
            this.f14840b = i2;
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final float m9099b(float f) {
        this.f14844f = dsn.m8710a(f, 0.1f, 8.0f);
        return f;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: b */
    public final int mo9100b() {
        return this.f14840b;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: c */
    public final int mo9098c() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: d */
    public final void mo9097d() {
        this.f14842d.m9123a();
        this.f14850l = true;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: e */
    public final ByteBuffer mo9096e() {
        ByteBuffer byteBuffer = this.f14847i;
        this.f14847i = f14692a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: f */
    public final boolean mo9095f() {
        return this.f14850l && (this.f14842d == null || this.f14842d.m9116b() == 0);
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: g */
    public final void mo9094g() {
        this.f14842d = new dmn(this.f14841c, this.f14840b);
        this.f14842d.m9122a(this.f14843e);
        this.f14842d.m9115b(this.f14844f);
        this.f14847i = f14692a;
        this.f14848j = 0L;
        this.f14849k = 0L;
        this.f14850l = false;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: h */
    public final void mo9093h() {
        this.f14842d = null;
        this.f14845g = f14692a;
        this.f14846h = this.f14845g.asShortBuffer();
        this.f14847i = f14692a;
        this.f14840b = -1;
        this.f14841c = -1;
        this.f14848j = 0L;
        this.f14849k = 0L;
        this.f14850l = false;
    }

    /* renamed from: i */
    public final long m9092i() {
        return this.f14848j;
    }

    /* renamed from: j */
    public final long m9091j() {
        return this.f14849k;
    }
}
