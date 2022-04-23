package org.spongycastle.openpgp.p034bc;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPSecretKeyRingCollection;
import org.spongycastle.openpgp.operator.p035bc.BcKeyFingerprintCalculator;
/* renamed from: org.spongycastle.openpgp.bc.BcPGPSecretKeyRingCollection */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/bc/BcPGPSecretKeyRingCollection.class */
public class BcPGPSecretKeyRingCollection extends PGPSecretKeyRingCollection {
    public BcPGPSecretKeyRingCollection(InputStream inputStream) throws IOException, PGPException {
        super(inputStream, new BcKeyFingerprintCalculator());
    }

    public BcPGPSecretKeyRingCollection(Collection collection) throws IOException, PGPException {
        super(collection);
    }

    public BcPGPSecretKeyRingCollection(byte[] bArr) throws IOException, PGPException {
        this(new ByteArrayInputStream(bArr));
    }
}
