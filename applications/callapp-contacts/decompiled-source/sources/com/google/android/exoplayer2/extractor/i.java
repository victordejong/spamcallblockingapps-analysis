package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.upstream.e;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/i.class */
public interface i extends e {
    int a(int i) throws IOException;

    @Override // com.google.android.exoplayer2.upstream.e
    int a(byte[] bArr, int i, int i2) throws IOException;

    void a();

    boolean a(int i, boolean z) throws IOException;

    boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException;

    long b();

    void b(int i) throws IOException;

    void b(byte[] bArr, int i, int i2) throws IOException;

    boolean b(byte[] bArr, int i, int i2, boolean z) throws IOException;

    int c(byte[] bArr, int i, int i2) throws IOException;

    long c();

    void c(int i) throws IOException;

    long d();

    void d(byte[] bArr, int i, int i2) throws IOException;
}
