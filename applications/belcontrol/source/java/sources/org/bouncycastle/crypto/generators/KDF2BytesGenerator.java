package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/KDF2BytesGenerator.class */
public class KDF2BytesGenerator extends BaseKDFBytesGenerator {
    public KDF2BytesGenerator(Digest digest) {
        super(1, digest);
    }
}
