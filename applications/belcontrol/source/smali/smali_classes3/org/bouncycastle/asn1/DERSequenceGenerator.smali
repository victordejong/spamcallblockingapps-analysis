.class public Lorg/bouncycastle/asn1/DERSequenceGenerator;
.super Lorg/bouncycastle/asn1/DERGenerator;
.source ""


# instance fields
.field private final _bOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERGenerator;-><init>(Ljava/io/OutputStream;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/DERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public addObject(Lorg/bouncycastle/asn1/DEREncodable;)V
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/DERObject;->encode(Lorg/bouncycastle/asn1/DEROutputStream;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/asn1/DERGenerator;->writeDEREncoded(I[B)V

    return-void
.end method

.method public getRawOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERSequenceGenerator;->_bOut:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
