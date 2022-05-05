package org.spongycastle.openssl;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/PEMKeyPairParser.class */
interface PEMKeyPairParser {
    PEMKeyPair parse(byte[] bArr) throws IOException;
}
