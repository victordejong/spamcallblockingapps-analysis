package org.spongycastle.asn1;

import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/DERInteger.class */
public class DERInteger extends ASN1Integer {
    public DERInteger(long j) {
        super(j);
    }

    public DERInteger(BigInteger bigInteger) {
        super(bigInteger);
    }

    public DERInteger(byte[] bArr) {
        super(bArr, true);
    }
}
