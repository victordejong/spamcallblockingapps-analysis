package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/be2.class */
public final class be2 implements x51 {

    /* renamed from: e */
    private w31 f20394e;

    /* renamed from: f */
    private w31 f20395f;

    /* renamed from: g */
    private w31 f20396g;

    /* renamed from: h */
    private w31 f20397h;

    /* renamed from: i */
    private boolean f20398i;

    /* renamed from: j */
    private ad2 f20399j;

    /* renamed from: k */
    private ByteBuffer f20400k;

    /* renamed from: l */
    private ShortBuffer f20401l;

    /* renamed from: m */
    private ByteBuffer f20402m;

    /* renamed from: n */
    private long f20403n;

    /* renamed from: o */
    private long f20404o;

    /* renamed from: p */
    private boolean f20405p;

    /* renamed from: c */
    private float f20392c = 1.0f;

    /* renamed from: d */
    private float f20393d = 1.0f;

    /* renamed from: b */
    private int f20391b = -1;

    public be2() {
        w31 w31Var = w31.f31443a;
        this.f20394e = w31Var;
        this.f20395f = w31Var;
        this.f20396g = w31Var;
        this.f20397h = w31Var;
        ByteBuffer byteBuffer = x51.f31910a;
        this.f20400k = byteBuffer;
        this.f20401l = byteBuffer.asShortBuffer();
        this.f20402m = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: a */
    public final ByteBuffer mo9351a() {
        int m16630f;
        ad2 ad2Var = this.f20399j;
        if (ad2Var != null && (m16630f = ad2Var.m16630f()) > 0) {
            if (this.f20400k.capacity() < m16630f) {
                ByteBuffer order = ByteBuffer.allocateDirect(m16630f).order(ByteOrder.nativeOrder());
                this.f20400k = order;
                this.f20401l = order.asShortBuffer();
            } else {
                this.f20400k.clear();
                this.f20401l.clear();
            }
            ad2Var.m16633c(this.f20401l);
            this.f20404o += m16630f;
            this.f20400k.limit(m16630f);
            this.f20402m = this.f20400k;
        }
        ByteBuffer byteBuffer = this.f20402m;
        this.f20402m = x51.f31910a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: b */
    public final boolean mo8465b() {
        boolean z = false;
        if (this.f20395f.f31444b != -1) {
            if (Math.abs(this.f20392c - 1.0f) >= 1.0E-4f || Math.abs(this.f20393d - 1.0f) >= 1.0E-4f) {
                z = true;
            } else if (this.f20395f.f31444b != this.f20394e.f31444b) {
                return true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: c */
    public final w31 mo9350c(w31 w31Var) {
        if (w31Var.f31446d == 2) {
            int i = this.f20391b;
            int i2 = i;
            if (i == -1) {
                i2 = w31Var.f31444b;
            }
            this.f20394e = w31Var;
            w31 w31Var2 = new w31(i2, w31Var.f31445c, 2);
            this.f20395f = w31Var2;
            this.f20398i = true;
            return w31Var2;
        }
        throw new zzdd(w31Var);
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: d */
    public final boolean mo9349d() {
        boolean z = true;
        if (this.f20405p) {
            ad2 ad2Var = this.f20399j;
            if (ad2Var != null) {
                if (ad2Var.m16630f() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: e */
    public final void mo9348e() {
        ad2 ad2Var = this.f20399j;
        if (ad2Var != null) {
            ad2Var.m16632d();
        }
        this.f20405p = true;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: f */
    public final void mo9347f() {
        this.f20392c = 1.0f;
        this.f20393d = 1.0f;
        w31 w31Var = w31.f31443a;
        this.f20394e = w31Var;
        this.f20395f = w31Var;
        this.f20396g = w31Var;
        this.f20397h = w31Var;
        ByteBuffer byteBuffer = x51.f31910a;
        this.f20400k = byteBuffer;
        this.f20401l = byteBuffer.asShortBuffer();
        this.f20402m = byteBuffer;
        this.f20391b = -1;
        this.f20398i = false;
        this.f20399j = null;
        this.f20403n = 0L;
        this.f20404o = 0L;
        this.f20405p = false;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: g */
    public final void mo8464g(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ad2 ad2Var = this.f20399j;
        Objects.requireNonNull(ad2Var);
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.f20403n += remaining;
        ad2Var.m16634b(asShortBuffer);
        byteBuffer.position(byteBuffer.position() + remaining);
    }

    /* renamed from: h */
    public final void m16394h(float f) {
        if (this.f20392c != f) {
            this.f20392c = f;
            this.f20398i = true;
        }
    }

    /* renamed from: i */
    public final void m16393i(float f) {
        if (this.f20393d != f) {
            this.f20393d = f;
            this.f20398i = true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: j */
    public final long m16392j(long j) {
        if (this.f20404o >= 1024) {
            long j2 = this.f20403n;
            ad2 ad2Var = this.f20399j;
            Objects.requireNonNull(ad2Var);
            long m16635a = j2 - ad2Var.m16635a();
            int i = this.f20397h.f31444b;
            int i2 = this.f20396g.f31444b;
            return i == i2 ? C7101wa.m9689h(j, m16635a, this.f20404o) : C7101wa.m9689h(j, m16635a * i, this.f20404o * i2);
        }
        return (long) (this.f20392c * j);
    }

    @Override // com.google.android.gms.internal.ads.x51
    public final void zzg() {
        if (mo8465b()) {
            w31 w31Var = this.f20394e;
            this.f20396g = w31Var;
            w31 w31Var2 = this.f20395f;
            this.f20397h = w31Var2;
            if (this.f20398i) {
                this.f20399j = new ad2(w31Var.f31444b, w31Var.f31445c, this.f20392c, this.f20393d, w31Var2.f31444b);
            } else {
                ad2 ad2Var = this.f20399j;
                if (ad2Var != null) {
                    ad2Var.m16631e();
                }
            }
        }
        this.f20402m = x51.f31910a;
        this.f20403n = 0L;
        this.f20404o = 0L;
        this.f20405p = false;
    }
}
