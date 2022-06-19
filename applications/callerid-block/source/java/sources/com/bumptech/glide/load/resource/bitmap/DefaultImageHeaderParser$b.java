package com.bumptech.glide.load.resource.bitmap;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$b.class */
final class DefaultImageHeaderParser$b {

    /* renamed from: a */
    private final ByteBuffer f3723a;

    DefaultImageHeaderParser$b(byte[] bArr, int i) {
        this.f3723a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
    }

    /* renamed from: c */
    private boolean m10920c(int i, int i2) {
        return this.f3723a.remaining() - i >= i2;
    }

    /* renamed from: a */
    short m10922a(int i) {
        return m10920c(i, 2) ? this.f3723a.getShort(i) : (short) -1;
    }

    /* renamed from: b */
    int m10921b(int i) {
        return m10920c(i, 4) ? this.f3723a.getInt(i) : -1;
    }

    /* renamed from: d */
    int m10919d() {
        return this.f3723a.remaining();
    }

    /* renamed from: e */
    void m10918e(ByteOrder byteOrder) {
        this.f3723a.order(byteOrder);
    }
}
