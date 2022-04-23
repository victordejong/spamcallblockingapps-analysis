package p530d.p531a.p533w0;

import p530d.p531a.p532v0.AbstractC9334c;
import p530d.p531a.p532v0.AbstractC9377i1;
import p610i.C10260c;
/* renamed from: d.a.w0.h */
/* loaded from: classes2-dex2jar.jar:d/a/w0/h.class */
public class C9581h extends AbstractC9334c {

    /* renamed from: a */
    public final C10260c f36589a;

    public C9581h(C10260c cVar) {
        this.f36589a = cVar;
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    /* renamed from: Y */
    public int mo2358Y() {
        return (int) this.f36589a.size();
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    /* renamed from: a */
    public void mo2357a(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int read = this.f36589a.read(bArr, i, i2);
            if (read != -1) {
                i2 -= read;
                i += read;
            } else {
                throw new IndexOutOfBoundsException("EOF trying to read " + i2 + " bytes");
            }
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9334c, p530d.p531a.p532v0.AbstractC9377i1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f36589a.m774c();
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    /* renamed from: f */
    public AbstractC9377i1 mo2356f(int i) {
        C10260c cVar = new C10260c();
        cVar.mo706a(this.f36589a, i);
        return new C9581h(cVar);
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    public int readUnsignedByte() {
        return this.f36589a.readByte() & 255;
    }
}
