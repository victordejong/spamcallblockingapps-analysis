package org.bouncycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsCipher.class */
public interface TlsCipher {
    byte[] decodeCiphertext(short s, byte[] bArr, int i, int i2);

    byte[] encodePlaintext(short s, byte[] bArr, int i, int i2);
}
