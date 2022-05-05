package org.spongycastle.asn1;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/DERUTCTime.class */
public class DERUTCTime extends ASN1UTCTime {
    public DERUTCTime(String str) {
        super(str);
    }

    public DERUTCTime(Date date) {
        super(date);
    }

    DERUTCTime(byte[] bArr) {
        super(bArr);
    }
}
