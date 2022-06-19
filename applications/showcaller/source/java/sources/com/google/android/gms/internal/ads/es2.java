package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/es2.class */
final class es2 extends C7205z3 {

    /* renamed from: h */
    private long f22528h;

    /* renamed from: i */
    private int f22529i;

    /* renamed from: j */
    private int f22530j = 32;

    public es2() {
        super(2, 0);
    }

    @Override // com.google.android.gms.internal.ads.C7205z3, com.google.android.gms.internal.ads.a24
    /* renamed from: a */
    public final void mo8537a() {
        super.mo8537a();
        this.f22529i = 0;
    }

    /* renamed from: m */
    public final void m15394m(int i) {
        this.f22530j = i;
    }

    /* renamed from: n */
    public final long m15393n() {
        return this.f22528h;
    }

    /* renamed from: o */
    public final int m15392o() {
        return this.f22529i;
    }

    /* renamed from: p */
    public final boolean m15391p() {
        return this.f22529i > 0;
    }

    /* renamed from: q */
    public final boolean m15390q(C7205z3 c7205z3) {
        ByteBuffer byteBuffer;
        C7173y8.m8898a(!c7205z3.m16708h(1073741824));
        C7173y8.m8898a(!c7205z3.m16708h(268435456));
        C7173y8.m8898a(!c7205z3.m16708h(4));
        if (m15391p()) {
            if (this.f22529i >= this.f22530j || c7205z3.m16708h(Integer.MIN_VALUE) != m16708h(Integer.MIN_VALUE)) {
                return false;
            }
            ByteBuffer byteBuffer2 = c7205z3.f32798c;
            if (byteBuffer2 != null && (byteBuffer = this.f32798c) != null && byteBuffer.position() + byteBuffer2.remaining() > 3072000) {
                return false;
            }
        }
        int i = this.f22529i;
        this.f22529i = i + 1;
        if (i == 0) {
            this.f32800e = c7205z3.f32800e;
            if (c7205z3.m16708h(1)) {
                m16710f(1);
            }
        }
        if (c7205z3.m16708h(Integer.MIN_VALUE)) {
            m16710f(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer3 = c7205z3.f32798c;
        if (byteBuffer3 != null) {
            m8536i(byteBuffer3.remaining());
            this.f32798c.put(byteBuffer3);
        }
        this.f22528h = c7205z3.f32800e;
        return true;
    }
}
