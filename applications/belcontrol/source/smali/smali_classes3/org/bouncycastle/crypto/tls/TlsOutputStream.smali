.class public Lorg/bouncycastle/crypto/tls/TlsOutputStream;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private buf:[B

.field private handler:Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->buf:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->buf:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsOutputStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->writeData([BII)V

    return-void
.end method
