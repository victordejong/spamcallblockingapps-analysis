package p1727n3.p1874y.p1876b.p1877a.p1892s0.p1893f;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* renamed from: n3.y.b.a.s0.f.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/s0/f/a.class */
public final class C27322a {

    /* renamed from: a */
    public final ByteArrayOutputStream f76844a;

    /* renamed from: b */
    public final DataOutputStream f76845b;

    public C27322a() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f76844a = byteArrayOutputStream;
        this.f76845b = new DataOutputStream(byteArrayOutputStream);
    }

    /* renamed from: a */
    public static void m568a(DataOutputStream dataOutputStream, long j) throws IOException {
        dataOutputStream.writeByte(((int) (j >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j) & 255);
    }
}
