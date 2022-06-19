package org.bouncycastle.crypto.tls;

import java.util.Hashtable;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsClient.class */
public interface TlsClient {
    TlsAuthentication getAuthentication();

    TlsCipher getCipher();

    int[] getCipherSuites();

    Hashtable getClientExtensions();

    TlsCompression getCompression();

    short[] getCompressionMethods();

    TlsKeyExchange getKeyExchange();

    void init(TlsClientContext tlsClientContext);

    void notifySecureRenegotiation(boolean z);

    void notifySelectedCipherSuite(int i);

    void notifySelectedCompressionMethod(short s);

    void notifySessionID(byte[] bArr);

    void processServerExtensions(Hashtable hashtable);
}
