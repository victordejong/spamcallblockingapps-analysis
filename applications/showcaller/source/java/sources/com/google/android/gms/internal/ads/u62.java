package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u62.class */
final class u62 extends kt1 {

    /* renamed from: i */
    private static final int f30538i = Float.floatToIntBits(Float.NaN);

    /* renamed from: n */
    private static void m10395n(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        int i2 = floatToIntBits;
        if (floatToIntBits == f30538i) {
            i2 = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(i2);
    }

    @Override // com.google.android.gms.internal.ads.x51
    /* renamed from: g */
    public final void mo8464g(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.f25343b.f31446d;
        if (i2 == 536870912) {
            ByteBuffer m13811h = m13811h((i / 3) * 4);
            while (true) {
                byteBuffer2 = m13811h;
                if (position >= limit) {
                    break;
                }
                m10395n(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), m13811h);
                position += 3;
            }
        } else if (i2 != 805306368) {
            throw new IllegalStateException();
        } else {
            ByteBuffer m13811h2 = m13811h(i);
            while (true) {
                byteBuffer2 = m13811h2;
                if (position >= limit) {
                    break;
                }
                m10395n((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), m13811h2);
                position += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBuffer2.flip();
    }

    @Override // com.google.android.gms.internal.ads.kt1
    /* renamed from: j */
    public final w31 mo8463j(w31 w31Var) {
        int i = w31Var.f31446d;
        if (C7101wa.m9680q(i)) {
            return i != 4 ? new w31(w31Var.f31444b, w31Var.f31445c, 4) : w31.f31443a;
        }
        throw new zzdd(w31Var);
    }
}
