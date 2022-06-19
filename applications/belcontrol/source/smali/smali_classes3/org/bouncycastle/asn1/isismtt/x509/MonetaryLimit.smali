.class public Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source ""


# instance fields
.field public amount:Lorg/bouncycastle/asn1/DERInteger;

.field public currency:Lorg/bouncycastle/asn1/DERPrintableString;

.field public exponent:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERPrintableString;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->currency:Lorg/bouncycastle/asn1/DERPrintableString;

    new-instance p1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->amount:Lorg/bouncycastle/asn1/DERInteger;

    new-instance p1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->exponent:Lorg/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERPrintableString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERPrintableString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->currency:Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->amount:Lorg/bouncycastle/asn1/DERInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->exponent:Lorg/bouncycastle/asn1/DERInteger;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;
    .locals 1

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;

    return-object p0
.end method


# virtual methods
.method public getAmount()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->amount:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->currency:Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->exponent:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->currency:Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->amount:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/MonetaryLimit;->exponent:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
