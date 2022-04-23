package com.googlecode.mp4parser.b.b.a;

import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    int f33109a;

    /* renamed from: b  reason: collision with root package name */
    int f33110b;

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer f33111c;

    public c(ByteBuffer byteBuffer) {
        this.f33111c = byteBuffer;
        this.f33109a = byteBuffer.position();
    }

    public final int a(int i) {
        int i2;
        byte b2 = this.f33111c.get(this.f33109a + (this.f33110b / 8));
        int i3 = b2;
        if (b2 < 0) {
            i3 = b2 + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }
        int i4 = this.f33110b;
        int i5 = 8 - (i4 % 8);
        if (i <= i5) {
            i2 = ((i3 << (i4 % 8)) & 255) >> ((i4 % 8) + (i5 - i));
            this.f33110b = i4 + i;
        } else {
            int i6 = i - i5;
            i2 = (a(i5) << i6) + a(i6);
        }
        this.f33111c.position(this.f33109a + ((int) Math.ceil(this.f33110b / 8.0d)));
        return i2;
    }

    public final boolean a() {
        return a(1) == 1;
    }

    public final int b() {
        return (this.f33111c.limit() * 8) - this.f33110b;
    }
}
