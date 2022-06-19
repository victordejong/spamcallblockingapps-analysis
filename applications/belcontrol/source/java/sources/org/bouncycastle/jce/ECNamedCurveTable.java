package org.bouncycastle.jce;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTNamedCurves;
import org.bouncycastle.asn1.p009x9.X962NamedCurves;
import org.bouncycastle.asn1.p009x9.X9ECParameters;
import org.bouncycastle.asn1.sec.SECNamedCurves;
import org.bouncycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.bouncycastle.jce.spec.ECNamedCurveParameterSpec;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/ECNamedCurveTable.class */
public class ECNamedCurveTable {
    private static void addEnumeration(Vector vector, Enumeration enumeration) {
        while (enumeration.hasMoreElements()) {
            vector.addElement(enumeration.nextElement());
        }
    }

    public static Enumeration getNames() {
        Vector vector = new Vector();
        addEnumeration(vector, X962NamedCurves.getNames());
        addEnumeration(vector, SECNamedCurves.getNames());
        addEnumeration(vector, NISTNamedCurves.getNames());
        addEnumeration(vector, TeleTrusTNamedCurves.getNames());
        return vector.elements();
    }

    public static ECNamedCurveParameterSpec getParameterSpec(String str) {
        X9ECParameters byName = X962NamedCurves.getByName(str);
        X9ECParameters x9ECParameters = byName;
        if (byName == null) {
            try {
                x9ECParameters = X962NamedCurves.getByOID(new DERObjectIdentifier(str));
            } catch (IllegalArgumentException e) {
                x9ECParameters = byName;
            }
        }
        X9ECParameters x9ECParameters2 = x9ECParameters;
        if (x9ECParameters == null) {
            X9ECParameters byName2 = SECNamedCurves.getByName(str);
            x9ECParameters2 = byName2;
            if (byName2 == null) {
                try {
                    x9ECParameters2 = SECNamedCurves.getByOID(new DERObjectIdentifier(str));
                } catch (IllegalArgumentException e2) {
                    x9ECParameters2 = byName2;
                }
            }
        }
        X9ECParameters x9ECParameters3 = x9ECParameters2;
        if (x9ECParameters2 == null) {
            X9ECParameters byName3 = TeleTrusTNamedCurves.getByName(str);
            x9ECParameters3 = byName3;
            if (byName3 == null) {
                try {
                    x9ECParameters3 = TeleTrusTNamedCurves.getByOID(new DERObjectIdentifier(str));
                } catch (IllegalArgumentException e3) {
                    x9ECParameters3 = byName3;
                }
            }
        }
        X9ECParameters x9ECParameters4 = x9ECParameters3;
        if (x9ECParameters3 == null) {
            x9ECParameters4 = NISTNamedCurves.getByName(str);
        }
        if (x9ECParameters4 == null) {
            return null;
        }
        return new ECNamedCurveParameterSpec(str, x9ECParameters4.getCurve(), x9ECParameters4.getG(), x9ECParameters4.getN(), x9ECParameters4.getH(), x9ECParameters4.getSeed());
    }
}
