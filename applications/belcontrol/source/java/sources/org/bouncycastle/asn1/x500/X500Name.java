package org.bouncycastle.asn1.x500;

import java.util.Enumeration;
import java.util.Objects;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x500.style.BCStyle;
import org.bouncycastle.asn1.x509.X509Name;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x500/X500Name.class */
public class X500Name extends ASN1Encodable implements ASN1Choice {
    private static X500NameStyle defaultStyle = BCStyle.INSTANCE;
    private int hashCodeValue;
    private boolean isHashCodeCalculated;
    private RDN[] rdns;
    private X500NameStyle style;

    public X500Name(String str) {
        this(defaultStyle, str);
    }

    private X500Name(ASN1Sequence aSN1Sequence) {
        this(defaultStyle, aSN1Sequence);
    }

    public X500Name(X500NameStyle x500NameStyle, String str) {
        this(x500NameStyle.fromString(str));
        this.style = x500NameStyle;
    }

    private X500Name(X500NameStyle x500NameStyle, ASN1Sequence aSN1Sequence) {
        this.style = x500NameStyle;
        this.rdns = new RDN[aSN1Sequence.size()];
        Enumeration objects = aSN1Sequence.getObjects();
        int i = 0;
        while (objects.hasMoreElements()) {
            this.rdns[i] = RDN.getInstance(objects.nextElement());
            i++;
        }
    }

    public X500Name(X500NameStyle x500NameStyle, X500Name x500Name) {
        this.rdns = x500Name.rdns;
        this.style = x500NameStyle;
    }

    public X500Name(X500NameStyle x500NameStyle, RDN[] rdnArr) {
        this.rdns = rdnArr;
        this.style = x500NameStyle;
    }

    public X500Name(RDN[] rdnArr) {
        this(defaultStyle, rdnArr);
    }

    public static X500NameStyle getDefaultStyle() {
        return defaultStyle;
    }

    public static X500Name getInstance(Object obj) {
        if (obj instanceof X500Name) {
            return (X500Name) obj;
        }
        if (obj instanceof X509Name) {
            return new X500Name(ASN1Sequence.getInstance(((X509Name) obj).getDERObject()));
        }
        if (obj == null) {
            return null;
        }
        return new X500Name(ASN1Sequence.getInstance(obj));
    }

    public static X500Name getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, true));
    }

    public static void setDefaultStyle(X500NameStyle x500NameStyle) {
        Objects.requireNonNull(x500NameStyle, "cannot set style to null");
        defaultStyle = x500NameStyle;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X500Name) && !(obj instanceof ASN1Sequence)) {
            return false;
        }
        if (getDERObject().equals(((DEREncodable) obj).getDERObject())) {
            return true;
        }
        try {
            return this.style.areEqual(this, new X500Name(ASN1Sequence.getInstance(((DEREncodable) obj).getDERObject())));
        } catch (Exception e) {
            return false;
        }
    }

    public RDN[] getRDNs() {
        RDN[] rdnArr = this.rdns;
        int length = rdnArr.length;
        RDN[] rdnArr2 = new RDN[length];
        System.arraycopy(rdnArr, 0, rdnArr2, 0, length);
        return rdnArr2;
    }

    public RDN[] getRDNs(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        int i;
        int i2;
        RDN[] rdnArr = new RDN[this.rdns.length];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            RDN[] rdnArr2 = this.rdns;
            if (i3 == rdnArr2.length) {
                RDN[] rdnArr3 = new RDN[i5];
                System.arraycopy(rdnArr, 0, rdnArr3, 0, i5);
                return rdnArr3;
            }
            RDN rdn = rdnArr2[i3];
            if (rdn.isMultiValued()) {
                AttributeTypeAndValue[] typesAndValues = rdn.getTypesAndValues();
                int i6 = 0;
                while (true) {
                    i = i5;
                    if (i6 == typesAndValues.length) {
                        break;
                    } else if (typesAndValues[i6].getType().equals(aSN1ObjectIdentifier)) {
                        rdnArr[i5] = rdn;
                        i2 = i5 + 1;
                        break;
                    } else {
                        i6++;
                    }
                }
                i3++;
                i4 = i;
            } else {
                i = i5;
                if (rdn.getFirst().getType().equals(aSN1ObjectIdentifier)) {
                    rdnArr[i5] = rdn;
                    i2 = i5 + 1;
                    i = i2;
                    i3++;
                    i4 = i;
                } else {
                    i3++;
                    i4 = i;
                }
            }
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        if (this.isHashCodeCalculated) {
            return this.hashCodeValue;
        }
        this.isHashCodeCalculated = true;
        int calculateHashCode = this.style.calculateHashCode(this);
        this.hashCodeValue = calculateHashCode;
        return calculateHashCode;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return new DERSequence(this.rdns);
    }

    public String toString() {
        return this.style.toString(this);
    }
}
