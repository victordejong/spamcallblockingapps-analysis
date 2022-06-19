package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ii3.class */
public abstract class ii3 implements o04 {

    /* renamed from: d */
    private static final ti3 f24286d = ti3.m10651b(ii3.class);

    /* renamed from: e */
    protected final String f24287e;

    /* renamed from: f */
    private p04 f24288f;

    /* renamed from: i */
    private ByteBuffer f24291i;

    /* renamed from: j */
    long f24292j;

    /* renamed from: l */
    ni3 f24294l;

    /* renamed from: k */
    long f24293k = -1;

    /* renamed from: m */
    private ByteBuffer f24295m = null;

    /* renamed from: h */
    boolean f24290h = true;

    /* renamed from: g */
    boolean f24289g = true;

    public ii3(String str) {
        this.f24287e = str;
    }

    /* renamed from: c */
    private final void m14377c() {
        synchronized (this) {
            if (!this.f24290h) {
                try {
                    ti3 ti3Var = f24286d;
                    String str = this.f24287e;
                    ti3Var.mo10652a(str.length() != 0 ? "mem mapping ".concat(str) : new String("mem mapping "));
                    this.f24291i = this.f24294l.mo10640d(this.f24292j, this.f24293k);
                    this.f24290h = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.o04
    /* renamed from: a */
    public final void mo12762a(p04 p04Var) {
        this.f24288f = p04Var;
    }

    @Override // com.google.android.gms.internal.ads.o04
    /* renamed from: b */
    public final String mo12761b() {
        return this.f24287e;
    }

    /* renamed from: d */
    protected abstract void mo11183d(ByteBuffer byteBuffer);

    @Override // com.google.android.gms.internal.ads.o04
    /* renamed from: e */
    public final void mo12760e(ni3 ni3Var, ByteBuffer byteBuffer, long j, l04 l04Var) {
        this.f24292j = ni3Var.mo10641c();
        byteBuffer.remaining();
        this.f24293k = j;
        this.f24294l = ni3Var;
        ni3Var.mo10638j(ni3Var.mo10641c() + j);
        this.f24290h = false;
        this.f24289g = false;
        m14376f();
    }

    /* renamed from: f */
    public final void m14376f() {
        synchronized (this) {
            m14377c();
            ti3 ti3Var = f24286d;
            String str = this.f24287e;
            ti3Var.mo10652a(str.length() != 0 ? "parsing details of ".concat(str) : new String("parsing details of "));
            ByteBuffer byteBuffer = this.f24291i;
            if (byteBuffer != null) {
                this.f24289g = true;
                byteBuffer.rewind();
                mo11183d(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.f24295m = byteBuffer.slice();
                }
                this.f24291i = null;
            }
        }
    }
}
