package org.spongycastle.jce;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.crypto.p026ec.CustomNamedCurves;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/ECNamedCurveTable.class */
public class ECNamedCurveTable {
    public static Enumeration getNames() {
        return org.spongycastle.asn1.p022x9.ECNamedCurveTable.getNames();
    }

    public static ECNamedCurveParameterSpec getParameterSpec(String str) {
        X9ECParameters byName = CustomNamedCurves.getByName(str);
        X9ECParameters x9ECParameters = byName;
        if (byName == null) {
            try {
                byName = CustomNamedCurves.getByOID(new ASN1ObjectIdentifier(str));
            } catch (IllegalArgumentException e) {
            }
            x9ECParameters = byName;
            if (byName == null) {
                X9ECParameters byName2 = org.spongycastle.asn1.p022x9.ECNamedCurveTable.getByName(str);
                x9ECParameters = byName2;
                if (byName2 == null) {
                    try {
                        x9ECParameters = org.spongycastle.asn1.p022x9.ECNamedCurveTable.getByOID(new ASN1ObjectIdentifier(str));
                    } catch (IllegalArgumentException e2) {
                        x9ECParameters = byName2;
                    }
                }
            }
        }
        if (x9ECParameters == null) {
            return null;
        }
        return new ECNamedCurveParameterSpec(str, x9ECParameters.getCurve(), x9ECParameters.getG(), x9ECParameters.getN(), x9ECParameters.getH(), x9ECParameters.getSeed());
    }
}
