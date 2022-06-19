package org.bouncycastle.asn1.isismtt.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/isismtt/x509/MonetaryLimit.class */
public class MonetaryLimit extends ASN1Encodable {
    public DERInteger amount;
    public DERPrintableString currency;
    public DERInteger exponent;

    public MonetaryLimit(String str, int i, int i2) {
        this.currency = new DERPrintableString(str, true);
        this.amount = new DERInteger(i);
        this.exponent = new DERInteger(i2);
    }

    private MonetaryLimit(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.currency = DERPrintableString.getInstance(objects.nextElement());
        this.amount = DERInteger.getInstance(objects.nextElement());
        this.exponent = DERInteger.getInstance(objects.nextElement());
    }

    public static MonetaryLimit getInstance(Object obj) {
        if (obj == null || (obj instanceof MonetaryLimit)) {
            return (MonetaryLimit) obj;
        }
        if (!(obj instanceof ASN1Sequence)) {
            throw new IllegalArgumentException("unknown object in getInstance");
        }
        return new MonetaryLimit(ASN1Sequence.getInstance(obj));
    }

    public BigInteger getAmount() {
        return this.amount.getValue();
    }

    public String getCurrency() {
        return this.currency.getString();
    }

    public BigInteger getExponent() {
        return this.exponent.getValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.currency);
        aSN1EncodableVector.add(this.amount);
        aSN1EncodableVector.add(this.exponent);
        return new DERSequence(aSN1EncodableVector);
    }
}
