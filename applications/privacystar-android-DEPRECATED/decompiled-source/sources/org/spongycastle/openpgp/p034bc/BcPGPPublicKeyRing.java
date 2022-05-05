package org.spongycastle.openpgp.p034bc;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.openpgp.PGPPublicKeyRing;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.openpgp.operator.p035bc.BcKeyFingerprintCalculator;
/* renamed from: org.spongycastle.openpgp.bc.BcPGPPublicKeyRing */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/bc/BcPGPPublicKeyRing.class */
public class BcPGPPublicKeyRing extends PGPPublicKeyRing {
    private static KeyFingerPrintCalculator fingerPrintCalculator = new BcKeyFingerprintCalculator();

    public BcPGPPublicKeyRing(InputStream inputStream) throws IOException {
        super(inputStream, fingerPrintCalculator);
    }

    public BcPGPPublicKeyRing(byte[] bArr) throws IOException {
        super(bArr, fingerPrintCalculator);
    }
}
