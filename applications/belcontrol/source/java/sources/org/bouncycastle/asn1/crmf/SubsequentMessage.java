package org.bouncycastle.asn1.crmf;

import org.bouncycastle.asn1.DERInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/crmf/SubsequentMessage.class */
public class SubsequentMessage extends DERInteger {
    public static final SubsequentMessage encrCert = new SubsequentMessage(0);
    public static final SubsequentMessage challengeResp = new SubsequentMessage(1);

    private SubsequentMessage(int i) {
        super(i);
    }

    public static SubsequentMessage valueOf(int i) {
        if (i == 0) {
            return encrCert;
        }
        if (i == 1) {
            return challengeResp;
        }
        throw new IllegalArgumentException("unknown value: " + i);
    }
}
