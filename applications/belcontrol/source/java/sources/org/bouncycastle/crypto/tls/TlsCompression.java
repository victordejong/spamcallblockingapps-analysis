package org.bouncycastle.crypto.tls;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsCompression.class */
public interface TlsCompression {
    OutputStream compress(OutputStream outputStream);

    OutputStream decompress(OutputStream outputStream);
}
