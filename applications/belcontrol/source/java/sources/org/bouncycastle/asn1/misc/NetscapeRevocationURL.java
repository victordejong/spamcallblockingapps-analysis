package org.bouncycastle.asn1.misc;

import org.bouncycastle.asn1.DERIA5String;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/misc/NetscapeRevocationURL.class */
public class NetscapeRevocationURL extends DERIA5String {
    public NetscapeRevocationURL(DERIA5String dERIA5String) {
        super(dERIA5String.getString());
    }

    @Override // org.bouncycastle.asn1.DERIA5String
    public String toString() {
        return "NetscapeRevocationURL: " + getString();
    }
}
