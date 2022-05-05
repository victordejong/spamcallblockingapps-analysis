package org.spongycastle.asn1.p022x9;

import java.util.Enumeration;
import java.util.Vector;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.anssi.ANSSINamedCurves;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.asn1.p020gm.GMNamedCurves;
import org.spongycastle.asn1.sec.SECNamedCurves;
import org.spongycastle.asn1.teletrust.TeleTrusTNamedCurves;
/* renamed from: org.spongycastle.asn1.x9.ECNamedCurveTable */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x9/ECNamedCurveTable.class */
public class ECNamedCurveTable {
    private static void addEnumeration(Vector vector, Enumeration enumeration) {
        while (enumeration.hasMoreElements()) {
            vector.addElement(enumeration.nextElement());
        }
    }

    public static X9ECParameters getByName(String str) {
        X9ECParameters byName = X962NamedCurves.getByName(str);
        X9ECParameters x9ECParameters = byName;
        if (byName == null) {
            x9ECParameters = SECNamedCurves.getByName(str);
        }
        X9ECParameters x9ECParameters2 = x9ECParameters;
        if (x9ECParameters == null) {
            x9ECParameters2 = NISTNamedCurves.getByName(str);
        }
        X9ECParameters x9ECParameters3 = x9ECParameters2;
        if (x9ECParameters2 == null) {
            x9ECParameters3 = TeleTrusTNamedCurves.getByName(str);
        }
        X9ECParameters x9ECParameters4 = x9ECParameters3;
        if (x9ECParameters3 == null) {
            x9ECParameters4 = ANSSINamedCurves.getByName(str);
        }
        X9ECParameters x9ECParameters5 = x9ECParameters4;
        if (x9ECParameters4 == null) {
            x9ECParameters5 = GMNamedCurves.getByName(str);
        }
        return x9ECParameters5;
    }

    public static X9ECParameters getByOID(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        X9ECParameters byOID = X962NamedCurves.getByOID(aSN1ObjectIdentifier);
        X9ECParameters x9ECParameters = byOID;
        if (byOID == null) {
            x9ECParameters = SECNamedCurves.getByOID(aSN1ObjectIdentifier);
        }
        X9ECParameters x9ECParameters2 = x9ECParameters;
        if (x9ECParameters == null) {
            x9ECParameters2 = TeleTrusTNamedCurves.getByOID(aSN1ObjectIdentifier);
        }
        X9ECParameters x9ECParameters3 = x9ECParameters2;
        if (x9ECParameters2 == null) {
            x9ECParameters3 = ANSSINamedCurves.getByOID(aSN1ObjectIdentifier);
        }
        X9ECParameters x9ECParameters4 = x9ECParameters3;
        if (x9ECParameters3 == null) {
            x9ECParameters4 = GMNamedCurves.getByOID(aSN1ObjectIdentifier);
        }
        return x9ECParameters4;
    }

    public static String getName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String name = NISTNamedCurves.getName(aSN1ObjectIdentifier);
        String str = name;
        if (name == null) {
            str = SECNamedCurves.getName(aSN1ObjectIdentifier);
        }
        String str2 = str;
        if (str == null) {
            str2 = TeleTrusTNamedCurves.getName(aSN1ObjectIdentifier);
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = X962NamedCurves.getName(aSN1ObjectIdentifier);
        }
        String str4 = str3;
        if (str3 == null) {
            str4 = ECGOST3410NamedCurves.getName(aSN1ObjectIdentifier);
        }
        String str5 = str4;
        if (str4 == null) {
            str5 = GMNamedCurves.getName(aSN1ObjectIdentifier);
        }
        return str5;
    }

    public static Enumeration getNames() {
        Vector vector = new Vector();
        addEnumeration(vector, X962NamedCurves.getNames());
        addEnumeration(vector, SECNamedCurves.getNames());
        addEnumeration(vector, NISTNamedCurves.getNames());
        addEnumeration(vector, TeleTrusTNamedCurves.getNames());
        addEnumeration(vector, ANSSINamedCurves.getNames());
        addEnumeration(vector, GMNamedCurves.getNames());
        return vector.elements();
    }

    public static ASN1ObjectIdentifier getOID(String str) {
        ASN1ObjectIdentifier oid = X962NamedCurves.getOID(str);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = oid;
        if (oid == null) {
            aSN1ObjectIdentifier = SECNamedCurves.getOID(str);
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = aSN1ObjectIdentifier;
        if (aSN1ObjectIdentifier == null) {
            aSN1ObjectIdentifier2 = NISTNamedCurves.getOID(str);
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = aSN1ObjectIdentifier2;
        if (aSN1ObjectIdentifier2 == null) {
            aSN1ObjectIdentifier3 = TeleTrusTNamedCurves.getOID(str);
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = aSN1ObjectIdentifier3;
        if (aSN1ObjectIdentifier3 == null) {
            aSN1ObjectIdentifier4 = ANSSINamedCurves.getOID(str);
        }
        ASN1ObjectIdentifier aSN1ObjectIdentifier5 = aSN1ObjectIdentifier4;
        if (aSN1ObjectIdentifier4 == null) {
            aSN1ObjectIdentifier5 = GMNamedCurves.getOID(str);
        }
        return aSN1ObjectIdentifier5;
    }
}
