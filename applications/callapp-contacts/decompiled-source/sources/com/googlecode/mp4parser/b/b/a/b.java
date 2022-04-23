package com.googlecode.mp4parser.b.b.a;

import com.b.a.e;
import java.io.IOException;
import java.nio.ByteBuffer;
@g(a = {0})
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a/b.class */
public abstract class b {
    static final /* synthetic */ boolean ab = true;
    public int Y;
    int Z;
    int aa;

    private int c() {
        int a2 = a();
        int i = 0;
        while (true) {
            if (a2 <= 0 && i >= this.aa) {
                return i;
            }
            a2 >>>= 7;
            i++;
        }
    }

    abstract int a();

    public final void a(int i, ByteBuffer byteBuffer) throws IOException {
        this.Y = i;
        int a2 = e.a(byteBuffer.get());
        this.Z = a2 & 127;
        int i2 = 1;
        while ((a2 >>> 7) == 1) {
            a2 = e.a(byteBuffer.get());
            i2++;
            this.Z = (this.Z << 7) | (a2 & 127);
        }
        this.aa = i2;
        ByteBuffer slice = byteBuffer.slice();
        slice.limit(this.Z);
        a(slice);
        if (ab || slice.remaining() == 0) {
            byteBuffer.position(byteBuffer.position() + this.Z);
            return;
        }
        throw new AssertionError(String.valueOf(getClass().getSimpleName()) + " has not been fully parsed");
    }

    public abstract void a(ByteBuffer byteBuffer) throws IOException;

    public final void a(ByteBuffer byteBuffer, int i) {
        int position = byteBuffer.position();
        int i2 = 0;
        while (true) {
            if (i > 0 || i2 < this.aa) {
                i2++;
                if (i > 0) {
                    byteBuffer.put((c() + position) - i2, (byte) (i & 127));
                } else {
                    byteBuffer.put((c() + position) - i2, Byte.MIN_VALUE);
                }
                i >>>= 7;
            } else {
                byteBuffer.position(position + c());
                return;
            }
        }
    }

    public final int b() {
        return a() + c() + 1;
    }

    public String toString() {
        return "BaseDescriptor{tag=" + this.Y + ", sizeOfInstance=" + this.Z + '}';
    }
}
