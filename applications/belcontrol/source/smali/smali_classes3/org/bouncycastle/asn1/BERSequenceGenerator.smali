.class public Lorg/bouncycastle/asn1/BERSequenceGenerator;
.super Lorg/bouncycastle/asn1/BERGenerator;
.source ""


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/BERGenerator;->writeBERHeader(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/BERGenerator;->writeBERHeader(I)V

    return-void
.end method


# virtual methods
.method public addObject(Lorg/bouncycastle/asn1/DEREncodable;)V
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/BEROutputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/DERObject;->encode(Lorg/bouncycastle/asn1/DEROutputStream;)V

    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERGenerator;->writeBEREnd()V

    return-void
.end method
