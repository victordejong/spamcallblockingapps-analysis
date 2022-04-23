package org.spongycastle.openpgp.jcajce;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKeyRingCollection;
import org.spongycastle.openpgp.operator.jcajce.JcaKeyFingerprintCalculator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/jcajce/JcaPGPPublicKeyRingCollection.class */
public class JcaPGPPublicKeyRingCollection extends PGPPublicKeyRingCollection {
    public JcaPGPPublicKeyRingCollection(InputStream inputStream) throws IOException, PGPException {
        super(inputStream, new JcaKeyFingerprintCalculator());
    }

    public JcaPGPPublicKeyRingCollection(Collection collection) throws IOException, PGPException {
        super(collection);
    }

    public JcaPGPPublicKeyRingCollection(byte[] bArr) throws IOException, PGPException {
        this(new ByteArrayInputStream(bArr));
    }
}
