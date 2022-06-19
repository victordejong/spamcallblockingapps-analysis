.class public abstract Lorg/bouncycastle/asn1/DERObject;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source ""

# interfaces
.implements Lorg/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 0

    return-object p0
.end method
