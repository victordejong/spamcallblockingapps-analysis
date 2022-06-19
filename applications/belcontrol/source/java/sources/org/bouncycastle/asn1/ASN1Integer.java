package org.bouncycastle.asn1;

import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1Integer.class */
public class ASN1Integer extends DERInteger {
    public ASN1Integer(int i) {
        super(i);
    }

    public ASN1Integer(BigInteger bigInteger) {
        super(bigInteger);
    }

    public ASN1Integer(byte[] bArr) {
        super(bArr);
    }
}
