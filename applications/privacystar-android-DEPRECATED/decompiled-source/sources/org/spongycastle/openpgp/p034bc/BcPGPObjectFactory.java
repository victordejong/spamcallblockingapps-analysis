package org.spongycastle.openpgp.p034bc;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.spongycastle.openpgp.PGPObjectFactory;
import org.spongycastle.openpgp.operator.p035bc.BcKeyFingerprintCalculator;
/* renamed from: org.spongycastle.openpgp.bc.BcPGPObjectFactory */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/bc/BcPGPObjectFactory.class */
public class BcPGPObjectFactory extends PGPObjectFactory {
    public BcPGPObjectFactory(InputStream inputStream) {
        super(inputStream, new BcKeyFingerprintCalculator());
    }

    public BcPGPObjectFactory(byte[] bArr) {
        this(new ByteArrayInputStream(bArr));
    }
}
