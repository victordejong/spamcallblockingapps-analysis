package p259v0;

import java.nio.ByteBuffer;
import p124i4.C3102d;
/* renamed from: v0.c */
/* loaded from: classes-dex2jar.jar:v0/c.class */
public class C4575c {

    /* renamed from: a */
    public int f14147a;

    /* renamed from: b */
    public ByteBuffer f14148b;

    /* renamed from: c */
    public int f14149c;

    /* renamed from: d */
    public int f14150d;

    public C4575c() {
        if (C3102d.f10510n == null) {
            C3102d.f10510n = new C3102d();
        }
    }

    /* renamed from: a */
    public int m762a(int i) {
        return i < this.f14150d ? this.f14148b.getShort(this.f14149c + i) : (short) 0;
    }

    /* renamed from: b */
    public void m761b(int i, ByteBuffer byteBuffer) {
        this.f14148b = byteBuffer;
        if (byteBuffer == null) {
            this.f14147a = 0;
            this.f14149c = 0;
            this.f14150d = 0;
            return;
        }
        this.f14147a = i;
        int i2 = i - byteBuffer.getInt(i);
        this.f14149c = i2;
        this.f14150d = this.f14148b.getShort(i2);
    }
}
