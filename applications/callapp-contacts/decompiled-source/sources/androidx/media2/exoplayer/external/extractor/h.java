package androidx.media2.exoplayer.external.extractor;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/h.class */
public interface h {
    int a(int i) throws IOException, InterruptedException;

    int a(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    void a();

    boolean a(int i, boolean z) throws IOException, InterruptedException;

    boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException;

    long b();

    void b(int i) throws IOException, InterruptedException;

    void b(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    boolean b(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException;

    long c();

    void c(int i) throws IOException, InterruptedException;

    void c(byte[] bArr, int i, int i2) throws IOException, InterruptedException;

    long d();
}
