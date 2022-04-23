package org.spongycastle.pkcs;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.operator.MacCalculator;
import org.spongycastle.operator.OperatorCreationException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/PKCS12MacCalculatorBuilder.class */
public interface PKCS12MacCalculatorBuilder {
    MacCalculator build(char[] cArr) throws OperatorCreationException;

    AlgorithmIdentifier getDigestAlgorithmIdentifier();
}
