package p193e.p1577m.p1578a.p1596c.p1613i1.p1614g;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* renamed from: e.m.a.c.i1.g.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/i1/g/b.class */
public final class C24469b {

    /* renamed from: a */
    public final ByteArrayOutputStream f68314a;

    /* renamed from: b */
    public final DataOutputStream f68315b;

    public C24469b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f68314a = byteArrayOutputStream;
        this.f68315b = new DataOutputStream(byteArrayOutputStream);
    }

    /* renamed from: a */
    public static void m5069a(DataOutputStream dataOutputStream, long j) throws IOException {
        dataOutputStream.writeByte(((int) (j >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j) & 255);
    }
}
