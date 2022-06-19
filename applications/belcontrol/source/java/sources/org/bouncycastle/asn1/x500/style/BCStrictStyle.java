package org.bouncycastle.asn1.x500.style;

import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x500/style/BCStrictStyle.class */
public class BCStrictStyle extends BCStyle {
    @Override // org.bouncycastle.asn1.x500.style.BCStyle, org.bouncycastle.asn1.x500.X500NameStyle
    public boolean areEqual(X500Name x500Name, X500Name x500Name2) {
        RDN[] rDNs = x500Name.getRDNs();
        RDN[] rDNs2 = x500Name2.getRDNs();
        if (rDNs.length != rDNs2.length) {
            return false;
        }
        for (int i = 0; i != rDNs.length; i++) {
            if (rdnAreEqual(rDNs[i], rDNs2[i])) {
                return false;
            }
        }
        return true;
    }
}
