package com.googlecode.mp4parser.p420b.p422b.p423a;

import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* renamed from: com.googlecode.mp4parser.b.b.a.d */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/d.class */
public class C16256d {

    /* renamed from: c */
    static final /* synthetic */ boolean f57441c = true;

    /* renamed from: a */
    int f57442a;

    /* renamed from: b */
    int f57443b = 0;

    /* renamed from: d */
    private ByteBuffer f57444d;

    public C16256d(ByteBuffer byteBuffer) {
        this.f57444d = byteBuffer;
        this.f57442a = byteBuffer.position();
    }

    /* renamed from: a */
    public final void m7539a(int i, int i2) {
        int i3;
        if (f57441c || i <= (i3 = (1 << i2) - 1)) {
            int i4 = this.f57443b;
            int i5 = 8 - (i4 % 8);
            if (i2 <= i5) {
                byte b = this.f57444d.get(this.f57442a + (i4 / 8));
                byte b2 = b;
                if (b < 0) {
                    b2 = b + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                int i6 = b2 + (i << (i5 - i2));
                ByteBuffer byteBuffer = this.f57444d;
                int i7 = this.f57442a;
                int i8 = this.f57443b / 8;
                int i9 = i6;
                if (i6 > 127) {
                    i9 = i6 - PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                byteBuffer.put(i7 + i8, (byte) i9);
                this.f57443b += i2;
            } else {
                int i10 = i2 - i5;
                m7539a(i >> i10, i5);
                m7539a(i & ((1 << i10) - 1), i10);
            }
            ByteBuffer byteBuffer2 = this.f57444d;
            int i11 = this.f57442a;
            int i12 = this.f57443b;
            int i13 = i12 / 8;
            int i14 = 0;
            if (i12 % 8 > 0) {
                i14 = 1;
            }
            byteBuffer2.position(i11 + i13 + i14);
            return;
        }
        throw new AssertionError(String.format("Trying to write a value bigger (%s) than the number bits (%s) allows. Please mask the value before writing it and make your code is really working as intended.", Integer.valueOf(i), Integer.valueOf(i3)));
    }

    /* renamed from: a */
    public final void m7538a(boolean z) {
        m7539a(z ? 1 : 0, 1);
    }
}
