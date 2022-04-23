package p530d.p531a.p536x0.p537a;

import com.google.protobuf.CodedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import p131c.p161d.p367h.AbstractC6354n0;
import p131c.p161d.p367h.AbstractC6376v0;
import p530d.p531a.AbstractC9226e0;
import p530d.p531a.AbstractC9309t;
/* renamed from: d.a.x0.a.a */
/* loaded from: classes2-dex2jar.jar:d/a/x0/a/a.class */
public final class C9615a extends InputStream implements AbstractC9309t, AbstractC9226e0 {

    /* renamed from: a */
    public AbstractC6354n0 f36689a;

    /* renamed from: b */
    public final AbstractC6376v0<?> f36690b;

    /* renamed from: c */
    public ByteArrayInputStream f36691c;

    public C9615a(AbstractC6354n0 n0Var, AbstractC6376v0<?> v0Var) {
        this.f36689a = n0Var;
        this.f36690b = v0Var;
    }

    @Override // p530d.p531a.AbstractC9309t
    /* renamed from: a */
    public int mo2178a(OutputStream outputStream) throws IOException {
        int i;
        AbstractC6354n0 n0Var = this.f36689a;
        if (n0Var != null) {
            i = n0Var.mo6944o();
            this.f36689a.mo21181a(outputStream);
            this.f36689a = null;
        } else {
            ByteArrayInputStream byteArrayInputStream = this.f36691c;
            if (byteArrayInputStream != null) {
                i = (int) C9616b.m2175a(byteArrayInputStream, outputStream);
                this.f36691c = null;
            } else {
                i = 0;
            }
        }
        return i;
    }

    /* renamed from: a */
    public AbstractC6354n0 m2179a() {
        AbstractC6354n0 n0Var = this.f36689a;
        if (n0Var != null) {
            return n0Var;
        }
        throw new IllegalStateException("message not available");
    }

    @Override // java.io.InputStream
    public int available() {
        AbstractC6354n0 n0Var = this.f36689a;
        if (n0Var != null) {
            return n0Var.mo6944o();
        }
        ByteArrayInputStream byteArrayInputStream = this.f36691c;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.available();
        }
        return 0;
    }

    /* renamed from: b */
    public AbstractC6376v0<?> m2177b() {
        return this.f36690b;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f36689a != null) {
            this.f36691c = new ByteArrayInputStream(this.f36689a.mo21180c());
            this.f36689a = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.f36691c;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read();
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        AbstractC6354n0 n0Var = this.f36689a;
        if (n0Var != null) {
            int o = n0Var.mo6944o();
            if (o == 0) {
                this.f36689a = null;
                this.f36691c = null;
                return -1;
            } else if (i2 >= o) {
                CodedOutputStream c = CodedOutputStream.m7044c(bArr, i, o);
                this.f36689a.mo6957a(c);
                c.mo6983b();
                c.m7084a();
                this.f36689a = null;
                this.f36691c = null;
                return o;
            } else {
                this.f36691c = new ByteArrayInputStream(this.f36689a.mo21180c());
                this.f36689a = null;
            }
        }
        ByteArrayInputStream byteArrayInputStream = this.f36691c;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read(bArr, i, i2);
        }
        return -1;
    }
}
