package org.bouncycastle.asn1.x509.qualified;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/qualified/MonetaryValue.class */
public class MonetaryValue extends ASN1Encodable {
    public DERInteger amount;
    public Iso4217CurrencyCode currency;
    public DERInteger exponent;

    public MonetaryValue(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.currency = Iso4217CurrencyCode.getInstance(objects.nextElement());
        this.amount = DERInteger.getInstance(objects.nextElement());
        this.exponent = DERInteger.getInstance(objects.nextElement());
    }

    public MonetaryValue(Iso4217CurrencyCode iso4217CurrencyCode, int i, int i2) {
        this.currency = iso4217CurrencyCode;
        this.amount = new DERInteger(i);
        this.exponent = new DERInteger(i2);
    }

    public static MonetaryValue getInstance(Object obj) {
        if (obj == null || (obj instanceof MonetaryValue)) {
            return (MonetaryValue) obj;
        }
        if (!(obj instanceof ASN1Sequence)) {
            throw new IllegalArgumentException("unknown object in getInstance");
        }
        return new MonetaryValue(ASN1Sequence.getInstance(obj));
    }

    public BigInteger getAmount() {
        return this.amount.getValue();
    }

    public Iso4217CurrencyCode getCurrency() {
        return this.currency;
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
