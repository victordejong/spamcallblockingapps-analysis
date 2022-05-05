package p645m;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
/* renamed from: m.e */
/* loaded from: classes3-dex2jar.jar:m/e.class */
public interface AbstractC15174e extends AbstractC15193s, ReadableByteChannel {
    /* renamed from: A */
    InputStream mo307A();

    /* renamed from: a */
    long mo306a(byte b) throws IOException;

    /* renamed from: a */
    long mo301a(AbstractC15192r rVar) throws IOException;

    /* renamed from: a */
    String mo302a(Charset charset) throws IOException;

    /* renamed from: a */
    boolean mo304a(long j, C15175f fVar) throws IOException;

    /* renamed from: c */
    String mo300c(long j) throws IOException;

    /* renamed from: d */
    byte[] mo299d(long j) throws IOException;

    /* renamed from: e */
    void mo298e(long j) throws IOException;

    /* renamed from: f */
    C15175f mo297f(long j) throws IOException;

    /* renamed from: q */
    C15170c mo296q();

    byte readByte() throws IOException;

    void readFully(byte[] bArr) throws IOException;

    int readInt() throws IOException;

    short readShort() throws IOException;

    boolean request(long j) throws IOException;

    /* renamed from: s */
    String mo295s() throws IOException;

    void skip(long j) throws IOException;

    /* renamed from: t */
    short mo294t() throws IOException;

    /* renamed from: u */
    byte[] mo293u() throws IOException;

    /* renamed from: v */
    boolean mo292v() throws IOException;

    /* renamed from: w */
    long mo291w() throws IOException;

    /* renamed from: x */
    int mo290x() throws IOException;

    /* renamed from: y */
    String mo289y() throws IOException;

    /* renamed from: z */
    long mo288z() throws IOException;
}
