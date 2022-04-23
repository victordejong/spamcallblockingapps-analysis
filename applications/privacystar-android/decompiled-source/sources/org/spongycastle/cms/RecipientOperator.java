package org.spongycastle.cms;

import java.io.InputStream;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.operator.InputDecryptor;
import org.spongycastle.operator.MacCalculator;
import org.spongycastle.util.p039io.TeeInputStream;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/RecipientOperator.class */
public class RecipientOperator {
    private final AlgorithmIdentifier algorithmIdentifier;
    private final Object operator;

    public RecipientOperator(InputDecryptor inputDecryptor) {
        this.algorithmIdentifier = inputDecryptor.getAlgorithmIdentifier();
        this.operator = inputDecryptor;
    }

    public RecipientOperator(MacCalculator macCalculator) {
        this.algorithmIdentifier = macCalculator.getAlgorithmIdentifier();
        this.operator = macCalculator;
    }

    public InputStream getInputStream(InputStream inputStream) {
        return this.operator instanceof InputDecryptor ? ((InputDecryptor) this.operator).getInputStream(inputStream) : new TeeInputStream(inputStream, ((MacCalculator) this.operator).getOutputStream());
    }

    public byte[] getMac() {
        return ((MacCalculator) this.operator).getMac();
    }

    public boolean isMacBased() {
        return this.operator instanceof MacCalculator;
    }
}
