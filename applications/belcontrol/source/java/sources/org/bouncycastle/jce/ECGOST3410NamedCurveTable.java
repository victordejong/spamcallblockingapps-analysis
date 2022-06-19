package org.bouncycastle.jce;

import java.util.Enumeration;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.jce.spec.ECNamedCurveParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/ECGOST3410NamedCurveTable.class */
public class ECGOST3410NamedCurveTable {
    public static Enumeration getNames() {
        return ECGOST3410NamedCurves.getNames();
    }

    public static ECNamedCurveParameterSpec getParameterSpec(String str) {
        ECDomainParameters byName = ECGOST3410NamedCurves.getByName(str);
        ECDomainParameters eCDomainParameters = byName;
        if (byName == null) {
            try {
                eCDomainParameters = ECGOST3410NamedCurves.getByOID(new DERObjectIdentifier(str));
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
        if (eCDomainParameters == null) {
            return null;
        }
        return new ECNamedCurveParameterSpec(str, eCDomainParameters.getCurve(), eCDomainParameters.getG(), eCDomainParameters.getN(), eCDomainParameters.getH(), eCDomainParameters.getSeed());
    }
}
