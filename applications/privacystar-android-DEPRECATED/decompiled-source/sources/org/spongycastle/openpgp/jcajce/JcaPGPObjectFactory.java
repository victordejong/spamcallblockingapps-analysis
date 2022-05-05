package org.spongycastle.openpgp.jcajce;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.spongycastle.openpgp.PGPObjectFactory;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/jcajce/JcaPGPObjectFactory.class */
public class JcaPGPObjectFactory extends PGPObjectFactory {
    public JcaPGPObjectFactory(InputStream inputStream) {
        super(inputStream, new JcaKeyFingerprintCalculator());
    }

    public JcaPGPObjectFactory(byte[] bArr) {
        this(new ByteArrayInputStream(bArr));
    }
}
