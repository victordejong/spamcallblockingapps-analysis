.class public Lorg/bouncycastle/crypto/io/DigestOutputStream;
.super Ljava/io/FilterOutputStream;
.source ""


# instance fields
.field public digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/DigestOutputStream;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/DigestOutputStream;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/DigestOutputStream;->digest:Lorg/bouncycastle/crypto/Digest;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/DigestOutputStream;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
