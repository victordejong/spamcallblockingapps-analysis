package org.spongycastle.pqc.crypto.newhope;

import org.spongycastle.crypto.engines.ChaChaEngine;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/newhope/ChaCha20.class */
class ChaCha20 {
    ChaCha20() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void process(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2) {
        ChaChaEngine chaChaEngine = new ChaChaEngine(20);
        chaChaEngine.init(true, new ParametersWithIV(new KeyParameter(bArr), bArr2));
        chaChaEngine.processBytes(bArr3, i, i2, bArr3, i);
    }
}
