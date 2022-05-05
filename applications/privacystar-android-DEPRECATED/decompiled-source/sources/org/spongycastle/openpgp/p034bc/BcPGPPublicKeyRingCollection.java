package org.spongycastle.openpgp.p034bc;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKeyRingCollection;
import org.spongycastle.openpgp.operator.p035bc.BcKeyFingerprintCalculator;
/* renamed from: org.spongycastle.openpgp.bc.BcPGPPublicKeyRingCollection */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/bc/BcPGPPublicKeyRingCollection.class */
public class BcPGPPublicKeyRingCollection extends PGPPublicKeyRingCollection {
    public BcPGPPublicKeyRingCollection(InputStream inputStream) throws IOException, PGPException {
        super(inputStream, new BcKeyFingerprintCalculator());
    }

    public BcPGPPublicKeyRingCollection(Collection collection) throws IOException, PGPException {
        super(collection);
    }

    public BcPGPPublicKeyRingCollection(byte[] bArr) throws IOException, PGPException {
        this(new ByteArrayInputStream(bArr));
    }
}
