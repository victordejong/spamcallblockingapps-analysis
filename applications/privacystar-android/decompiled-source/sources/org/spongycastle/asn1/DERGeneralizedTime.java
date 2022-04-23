package org.spongycastle.asn1;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/DERGeneralizedTime.class */
public class DERGeneralizedTime extends ASN1GeneralizedTime {
    public DERGeneralizedTime(String str) {
        super(str);
    }

    public DERGeneralizedTime(Date date) {
        super(date);
    }

    DERGeneralizedTime(byte[] bArr) {
        super(bArr);
    }
}
