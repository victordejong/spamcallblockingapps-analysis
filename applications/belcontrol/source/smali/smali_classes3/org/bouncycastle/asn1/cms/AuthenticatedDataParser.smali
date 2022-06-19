.class public Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private nextObject:Lorg/bouncycastle/asn1/DEREncodable;

.field private originatorInfoCalled:Z

.field private seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DERInteger;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-void
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public getEnapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    :cond_1
    return-object v1
.end method

.method public getMac()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method
