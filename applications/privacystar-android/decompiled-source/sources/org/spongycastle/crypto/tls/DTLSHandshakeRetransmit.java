package org.spongycastle.crypto.tls;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DTLSHandshakeRetransmit.class */
interface DTLSHandshakeRetransmit {
    void receivedHandshakeRecord(int i, byte[] bArr, int i2, int i3) throws IOException;
}
