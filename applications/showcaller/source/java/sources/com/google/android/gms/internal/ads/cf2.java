package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cf2.class */
final class cf2 extends kt1 {

    /* renamed from: i */
    private int f21222i;

    /* renamed from: j */
    private int f21223j;

    /* renamed from: k */
    private boolean f21224k;

    /* renamed from: l */
    private int f21225l;

    /* renamed from: m */
    private byte[] f21226m = C7101wa.f31480f;

    /* renamed from: n */
    private int f21227n;

    /* renamed from: o */
    private long f21228o;

    @Override // com.google.android.gms.internal.ads.kt1, com.google.android.gms.internal.ads.x51
    /* renamed from: a */
    public final ByteBuffer mo9351a() {
        int i;
        if (super.mo9349d() && (i = this.f21227n) > 0) {
            m13811h(i).put(this.f21226m, 0, this.f21227n).flip();
            this.f21227n = 0;
        }
        return super.mo9351a();
    }

    @Override // com.google.android.gms.internal.ads.kt1, com.google.android.gms.internal.ads.x51
    /* renamed from: d */
    public final boolean mo9349d() {
        return super.mo9349d() && this.f21227n == 0;
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: g */
    public final void mo8464g(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.f21225l);
        this.f21228o += min / this.f25343b.f31447e;
        this.f21225l -= min;
        byteBuffer.position(position + min);
        if (this.f21225l > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.f21227n + i2) - this.f21226m.length;
        ByteBuffer m13811h = m13811h(length);
        int m9696c0 = C7101wa.m9696c0(length, 0, this.f21227n);
        m13811h.put(this.f21226m, 0, m9696c0);
        int m9696c02 = C7101wa.m9696c0(length - m9696c0, 0, i2);
        byteBuffer.limit(byteBuffer.position() + m9696c02);
        m13811h.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - m9696c02;
        int i4 = this.f21227n - m9696c0;
        this.f21227n = i4;
        byte[] bArr = this.f21226m;
        System.arraycopy(bArr, m9696c0, bArr, 0, i4);
        byteBuffer.get(this.f21226m, this.f21227n, i3);
        this.f21227n += i3;
        m13811h.flip();
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: j */
    public final w31 mo8463j(w31 w31Var) {
        if (w31Var.f31446d == 2) {
            this.f21224k = true;
            w31 w31Var2 = w31Var;
            if (this.f21222i == 0) {
                w31Var2 = this.f21223j != 0 ? w31Var : w31.f31443a;
            }
            return w31Var2;
        }
        throw new zzdd(w31Var);
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: k */
    protected final void mo8462k() {
        int i;
        if (this.f21224k) {
            if (this.f21227n > 0) {
                this.f21228o += i / this.f25343b.f31447e;
            }
            this.f21227n = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: l */
    protected final void mo8461l() {
        if (this.f21224k) {
            this.f21224k = false;
            int i = this.f21223j;
            int i2 = this.f25343b.f31447e;
            this.f21226m = new byte[i * i2];
            this.f21225l = this.f21222i * i2;
        }
        this.f21227n = 0;
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: m */
    protected final void mo8460m() {
        this.f21226m = C7101wa.f31480f;
    }

    /* renamed from: n */
    public final void m16060n(int i, int i2) {
        this.f21222i = i;
        this.f21223j = i2;
    }

    /* renamed from: o */
    public final void m16059o() {
        this.f21228o = 0L;
    }

    /* renamed from: p */
    public final long m16058p() {
        return this.f21228o;
    }
}
