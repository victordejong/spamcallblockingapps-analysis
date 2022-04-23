package p081h.p160h.p179e.p180a.p188o.p189g;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.h.e.a.o.g.d */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/g/d.class */
public class C6415d {

    /* renamed from: a */
    public String f16005a;

    /* renamed from: b */
    public int f16006b;

    /* renamed from: c */
    public int f16007c;

    /* renamed from: d */
    public int f16008d;

    public C6415d(InputStream inputStream) throws IOException, C6416e {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        byte[] bArr = new byte[8];
        dataInputStream.read(bArr);
        this.f16005a = new String(bArr);
        if (this.f16005a.equals("BSDIFF40")) {
            this.f16006b = C6417f.m22699a(dataInputStream);
            this.f16007c = C6417f.m22699a(dataInputStream);
            this.f16008d = C6417f.m22699a(dataInputStream);
            m22700d();
            return;
        }
        throw new C6416e("Header missing magic number");
    }

    /* renamed from: a */
    public int m22703a() {
        return this.f16006b;
    }

    /* renamed from: b */
    public int m22702b() {
        return this.f16007c;
    }

    /* renamed from: c */
    public int m22701c() {
        return this.f16008d;
    }

    /* renamed from: d */
    public final void m22700d() throws C6416e {
        int i = this.f16006b;
        if (i >= 0) {
            int i2 = this.f16007c;
            if (i2 >= 0) {
                int i3 = this.f16008d;
                if (i3 < 0) {
                    throw new C6416e("output file length", i3);
                }
                return;
            }
            throw new C6416e("diff block length", i2);
        }
        throw new C6416e("control block length", i);
    }

    public String toString() {
        return ((("" + this.f16005a + "\n") + "control bytes = " + this.f16006b + "\n") + "diff bytes = " + this.f16007c + "\n") + "output size = " + this.f16008d;
    }
}
