package p081h.p203i.p383d;

import java.nio.ByteBuffer;
/* renamed from: h.i.d.a */
/* loaded from: classes2-dex2jar.jar:h/i/d/a.class */
public class C10078a {

    /* renamed from: bb */
    public ByteBuffer f22788bb;
    public int element_size;
    public int length;
    public int vector;

    public int __element(int i) {
        return this.vector + (i * this.element_size);
    }

    public void __reset(int i, int i2, ByteBuffer byteBuffer) {
        this.f22788bb = byteBuffer;
        ByteBuffer byteBuffer2 = this.f22788bb;
        if (byteBuffer2 != null) {
            this.vector = i;
            this.length = byteBuffer2.getInt(i - 4);
            this.element_size = i2;
            return;
        }
        this.vector = 0;
        this.length = 0;
        this.element_size = 0;
    }

    public int __vector() {
        return this.vector;
    }

    public int length() {
        return this.length;
    }

    public void reset() {
        __reset(0, 0, null);
    }
}
