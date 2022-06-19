package com.googlecode.mp4parser.p420b.p422b.p423a;

import com.p102b.p103a.C3515e;
import java.io.IOException;
import java.nio.ByteBuffer;
@AbstractC16259g(m7537a = {0})
/* renamed from: com.googlecode.mp4parser.b.b.a.b */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/b.class */
public abstract class AbstractC16254b {

    /* renamed from: ab */
    static final /* synthetic */ boolean f57434ab = true;

    /* renamed from: Y */
    public int f57435Y;

    /* renamed from: Z */
    int f57436Z;

    /* renamed from: aa */
    int f57437aa;

    /* renamed from: c */
    private int m7543c() {
        int mo7534a = mo7534a();
        int i = 0;
        while (true) {
            if (mo7534a > 0 || i < this.f57437aa) {
                mo7534a >>>= 7;
                i++;
            } else {
                return i;
            }
        }
    }

    /* renamed from: a */
    abstract int mo7534a();

    /* renamed from: a */
    public final void m7546a(int i, ByteBuffer byteBuffer) throws IOException {
        this.f57435Y = i;
        int m37852a = C3515e.m37852a(byteBuffer.get());
        this.f57436Z = m37852a & 127;
        int i2 = 1;
        while ((m37852a >>> 7) == 1) {
            m37852a = C3515e.m37852a(byteBuffer.get());
            i2++;
            this.f57436Z = (this.f57436Z << 7) | (m37852a & 127);
        }
        this.f57437aa = i2;
        ByteBuffer slice = byteBuffer.slice();
        slice.limit(this.f57436Z);
        mo7533a(slice);
        if (f57434ab || slice.remaining() == 0) {
            byteBuffer.position(byteBuffer.position() + this.f57436Z);
            return;
        }
        throw new AssertionError(String.valueOf(getClass().getSimpleName()) + " has not been fully parsed");
    }

    /* renamed from: a */
    public abstract void mo7533a(ByteBuffer byteBuffer) throws IOException;

    /* renamed from: a */
    public final void m7545a(ByteBuffer byteBuffer, int i) {
        int position = byteBuffer.position();
        int i2 = 0;
        while (true) {
            if (i <= 0 && i2 >= this.f57437aa) {
                byteBuffer.position(position + m7543c());
                return;
            }
            i2++;
            if (i > 0) {
                byteBuffer.put((m7543c() + position) - i2, (byte) (i & 127));
            } else {
                byteBuffer.put((m7543c() + position) - i2, Byte.MIN_VALUE);
            }
            i >>>= 7;
        }
    }

    /* renamed from: b */
    public final int m7544b() {
        return mo7534a() + m7543c() + 1;
    }

    public String toString() {
        return "BaseDescriptor{tag=" + this.f57435Y + ", sizeOfInstance=" + this.f57436Z + '}';
    }
}
