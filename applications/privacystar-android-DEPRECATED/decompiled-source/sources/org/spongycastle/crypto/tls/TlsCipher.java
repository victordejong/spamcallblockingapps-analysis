package org.spongycastle.crypto.tls;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsCipher.class */
public interface TlsCipher {
    byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException;

    byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IOException;

    int getPlaintextLimit(int i);
}
