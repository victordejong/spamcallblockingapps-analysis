package org.bouncycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DERUTF8String;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/IetfAttrSyntax.class */
public class IetfAttrSyntax extends ASN1Encodable {
    public static final int VALUE_OCTETS = 1;
    public static final int VALUE_OID = 2;
    public static final int VALUE_UTF8 = 3;
    public GeneralNames policyAuthority;
    public int valueChoice;
    public Vector values = new Vector();

    /* JADX WARN: Removed duplicated region for block: B:11:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public IetfAttrSyntax(org.bouncycastle.asn1.ASN1Sequence r5) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.x509.IetfAttrSyntax.<init>(org.bouncycastle.asn1.ASN1Sequence):void");
    }

    public GeneralNames getPolicyAuthority() {
        return this.policyAuthority;
    }

    public int getValueType() {
        return this.valueChoice;
    }

    public Object[] getValues() {
        if (getValueType() == 1) {
            int size = this.values.size();
            ASN1OctetString[] aSN1OctetStringArr = new ASN1OctetString[size];
            for (int i = 0; i != size; i++) {
                aSN1OctetStringArr[i] = (ASN1OctetString) this.values.elementAt(i);
            }
            return aSN1OctetStringArr;
        } else if (getValueType() == 2) {
            int size2 = this.values.size();
            DERObjectIdentifier[] dERObjectIdentifierArr = new DERObjectIdentifier[size2];
            for (int i2 = 0; i2 != size2; i2++) {
                dERObjectIdentifierArr[i2] = (DERObjectIdentifier) this.values.elementAt(i2);
            }
            return dERObjectIdentifierArr;
        } else {
            int size3 = this.values.size();
            DERUTF8String[] dERUTF8StringArr = new DERUTF8String[size3];
            for (int i3 = 0; i3 != size3; i3++) {
                dERUTF8StringArr[i3] = (DERUTF8String) this.values.elementAt(i3);
            }
            return dERUTF8StringArr;
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.policyAuthority != null) {
            aSN1EncodableVector.add(new DERTaggedObject(0, this.policyAuthority));
        }
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        Enumeration elements = this.values.elements();
        while (elements.hasMoreElements()) {
            aSN1EncodableVector2.add((ASN1Encodable) elements.nextElement());
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        return new DERSequence(aSN1EncodableVector);
    }
}
