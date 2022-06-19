.class public Lorg/bouncycastle/asn1/cms/Attributes;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source ""


# instance fields
.field private attributes:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/BERSet;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/Attributes;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/Attributes;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attributes;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/Attributes;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cms/Attributes;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/Attributes;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/Attributes;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/Attributes;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
