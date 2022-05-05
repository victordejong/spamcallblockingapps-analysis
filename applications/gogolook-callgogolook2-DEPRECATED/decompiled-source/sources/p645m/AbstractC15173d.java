package p645m;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
/* renamed from: m.d */
/* loaded from: classes3-dex2jar.jar:m/d.class */
public interface AbstractC15173d extends AbstractC15192r, WritableByteChannel {
    /* renamed from: a */
    long mo311a(AbstractC15193s sVar) throws IOException;

    /* renamed from: a */
    AbstractC15173d mo313a(long j) throws IOException;

    /* renamed from: a */
    AbstractC15173d mo312a(C15175f fVar) throws IOException;

    /* renamed from: b */
    AbstractC15173d mo310b(long j) throws IOException;

    /* renamed from: e */
    AbstractC15173d mo309e(String str) throws IOException;

    @Override // p645m.AbstractC15192r, java.io.Flushable
    void flush() throws IOException;

    /* renamed from: q */
    C15170c mo296q();

    /* renamed from: r */
    AbstractC15173d mo308r() throws IOException;

    AbstractC15173d write(byte[] bArr) throws IOException;

    AbstractC15173d write(byte[] bArr, int i, int i2) throws IOException;

    AbstractC15173d writeByte(int i) throws IOException;

    AbstractC15173d writeInt(int i) throws IOException;

    AbstractC15173d writeShort(int i) throws IOException;
}
