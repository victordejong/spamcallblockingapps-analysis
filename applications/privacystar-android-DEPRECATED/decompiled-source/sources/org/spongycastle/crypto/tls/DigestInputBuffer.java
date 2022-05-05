package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import org.spongycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DigestInputBuffer.class */
class DigestInputBuffer extends ByteArrayOutputStream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateDigest(Digest digest) {
        digest.update(this.buf, 0, this.count);
    }
}
