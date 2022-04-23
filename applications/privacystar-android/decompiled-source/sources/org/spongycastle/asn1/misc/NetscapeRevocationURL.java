package org.spongycastle.asn1.misc;

import org.spongycastle.asn1.DERIA5String;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/misc/NetscapeRevocationURL.class */
public class NetscapeRevocationURL extends DERIA5String {
    public NetscapeRevocationURL(DERIA5String dERIA5String) {
        super(dERIA5String.getString());
    }

    @Override // org.spongycastle.asn1.DERIA5String
    public String toString() {
        return "NetscapeRevocationURL: " + getString();
    }
}
