package com.googlecode.mp4parser.p420b.p422b.p423a;

import io.objectbox.model.PropertyFlags;
import java.nio.ByteBuffer;
/* renamed from: com.googlecode.mp4parser.b.b.a.c */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/c.class */
public final class C16255c {

    /* renamed from: a */
    int f57438a;

    /* renamed from: b */
    int f57439b;

    /* renamed from: c */
    private ByteBuffer f57440c;

    public C16255c(ByteBuffer byteBuffer) {
        this.f57440c = byteBuffer;
        this.f57438a = byteBuffer.position();
    }

    /* renamed from: a */
    public final int m7541a(int i) {
        int i2;
        byte b = this.f57440c.get(this.f57438a + (this.f57439b / 8));
        byte b2 = b;
        if (b < 0) {
            b2 = b + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }
        int i3 = this.f57439b;
        int i4 = 8 - (i3 % 8);
        if (i <= i4) {
            this.f57439b = i3 + i;
            i2 = ((b2 << (i3 % 8)) & 255) >> ((i3 % 8) + (i4 - i));
        } else {
            int i5 = i - i4;
            i2 = (m7541a(i4) << i5) + m7541a(i5);
        }
        this.f57440c.position(this.f57438a + ((int) Math.ceil(this.f57439b / 8.0d)));
        return i2;
    }

    /* renamed from: a */
    public final boolean m7542a() {
        return m7541a(1) == 1;
    }

    /* renamed from: b */
    public final int m7540b() {
        return (this.f57440c.limit() * 8) - this.f57439b;
    }
}
