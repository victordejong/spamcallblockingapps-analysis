package org.bouncycastle.asn1;

import java.util.Date;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1UTCTime.class */
public class ASN1UTCTime extends DERUTCTime {
    public ASN1UTCTime(String str) {
        super(str);
    }

    public ASN1UTCTime(Date date) {
        super(date);
    }

    public ASN1UTCTime(byte[] bArr) {
        super(bArr);
    }
}
