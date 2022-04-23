package p610i;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import okio.ByteString;
/* renamed from: i.e */
/* loaded from: classes2-dex2jar.jar:i/e.class */
public interface AbstractC10264e extends AbstractC10281q, ReadableByteChannel {
    /* renamed from: G0 */
    byte[] mo733G0() throws IOException;

    /* renamed from: I1 */
    String mo732I1() throws IOException;

    /* renamed from: L1 */
    int mo731L1() throws IOException;

    /* renamed from: M0 */
    boolean mo730M0() throws IOException;

    /* renamed from: Q1 */
    short mo729Q1() throws IOException;

    /* renamed from: W */
    C10260c mo728W();

    /* renamed from: a */
    long mo727a(byte b) throws IOException;

    /* renamed from: a */
    String mo722a(Charset charset) throws IOException;

    /* renamed from: a */
    ByteString mo725a(long j) throws IOException;

    /* renamed from: a */
    boolean mo724a(long j, ByteString byteString) throws IOException;

    /* renamed from: c */
    String mo721c(long j) throws IOException;

    /* renamed from: c1 */
    long mo720c1() throws IOException;

    /* renamed from: d2 */
    long mo718d2() throws IOException;

    /* renamed from: e2 */
    InputStream mo717e2();

    /* renamed from: f */
    byte[] mo716f(long j) throws IOException;

    /* renamed from: g */
    void mo715g(long j) throws IOException;

    byte readByte() throws IOException;

    void readFully(byte[] bArr) throws IOException;

    int readInt() throws IOException;

    short readShort() throws IOException;

    void skip(long j) throws IOException;
}
