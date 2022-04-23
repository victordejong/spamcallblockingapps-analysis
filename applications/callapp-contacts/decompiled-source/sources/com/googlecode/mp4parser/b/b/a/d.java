package com.googlecode.mp4parser.b.b.a;

import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/d.class */
public class d {

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f33112c = true;

    /* renamed from: a  reason: collision with root package name */
    int f33113a;

    /* renamed from: b  reason: collision with root package name */
    int f33114b = 0;

    /* renamed from: d  reason: collision with root package name */
    private ByteBuffer f33115d;

    public d(ByteBuffer byteBuffer) {
        this.f33115d = byteBuffer;
        this.f33113a = byteBuffer.position();
    }

    public final void a(int i, int i2) {
        int i3;
        int i4 = 0;
        if (f33112c || i <= (i3 = (1 << i2) - 1)) {
            int i5 = this.f33114b;
            int i6 = 8 - (i5 % 8);
            if (i2 <= i6) {
                byte b2 = this.f33115d.get(this.f33113a + (i5 / 8));
                int i7 = b2;
                if (b2 < 0) {
                    i7 = b2 + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                int i8 = i7 + (i << (i6 - i2));
                ByteBuffer byteBuffer = this.f33115d;
                int i9 = this.f33113a;
                int i10 = this.f33114b / 8;
                int i11 = i8;
                if (i8 > 127) {
                    i11 = i8 - PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                }
                byteBuffer.put(i9 + i10, (byte) i11);
                this.f33114b += i2;
            } else {
                int i12 = i2 - i6;
                a(i >> i12, i6);
                a(i & ((1 << i12) - 1), i12);
            }
            ByteBuffer byteBuffer2 = this.f33115d;
            int i13 = this.f33113a;
            int i14 = this.f33114b;
            int i15 = i14 / 8;
            if (i14 % 8 > 0) {
                i4 = 1;
            }
            byteBuffer2.position(i13 + i15 + i4);
            return;
        }
        throw new AssertionError(String.format("Trying to write a value bigger (%s) than the number bits (%s) allows. Please mask the value before writing it and make your code is really working as intended.", Integer.valueOf(i), Integer.valueOf(i3)));
    }

    public final void a(boolean z) {
        a(z ? 1 : 0, 1);
    }
}
