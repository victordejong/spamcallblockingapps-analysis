.class public Lorg/bouncycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private handler:Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;

.field private hash:Lorg/bouncycastle/crypto/tls/CombinedHash;

.field private is:Ljava/io/InputStream;

.field private os:Ljava/io/OutputStream;

.field private readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

.field private writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    new-instance p1, Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/CombinedHash;

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsNullCompression;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/tls/TlsNullCompression;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsNullCipher;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/tls/TlsNullCipher;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method private static doFinal(Lorg/bouncycastle/crypto/tls/CombinedHash;)[B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/CombinedHash;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/CombinedHash;->doFinal([BI)I

    return-object v0
.end method

.method private getBufferContents()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method


# virtual methods
.method public clientCipherSpecDecided(Lorg/bouncycastle/crypto/tls/TlsCompression;Lorg/bouncycastle/crypto/tls/TlsCipher;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method public decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 2

    new-array v0, p3, [B

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1, p3}, Lorg/bouncycastle/crypto/tls/TlsCipher;->decodeCiphertext(S[BII)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object p3, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p2, p3}, Lorg/bouncycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne p2, p3, :cond_0

    return-object p1

    :cond_0
    array-length p3, p1

    invoke-virtual {p2, p1, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object p1

    return-object p1
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getCurrentHash()[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/tls/CombinedHash;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/CombinedHash;-><init>(Lorg/bouncycastle/crypto/tls/CombinedHash;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/RecordStream;->doFinal(Lorg/bouncycastle/crypto/tls/CombinedHash;)[B

    move-result-object v0

    return-object v0
.end method

.method public readData()V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkVersion(Ljava/io/InputStream;Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->handler:Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v3}, Lorg/bouncycastle/crypto/tls/TlsProtocolHandler;->processData(S[BII)V

    return-void
.end method

.method public serverClientSpecReceived()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->readCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method public updateHandshakeData([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->hash:Lorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/CombinedHash;->update([BII)V

    return-void
.end method

.method public writeMessage(S[BII)V
    .locals 3

    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCompression:Lorg/bouncycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(S[BII)[B

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->writeCipher:Lorg/bouncycastle/crypto/tls/TlsCipher;

    array-length p4, p2

    invoke-interface {p3, p1, p2, v2, p4}, Lorg/bouncycastle/crypto/tls/TlsCipher;->encodePlaintext(S[BII)[B

    move-result-object p2

    :goto_0
    array-length p3, p2

    const/4 p4, 0x5

    add-int/2addr p3, p4

    new-array p3, p3, [B

    invoke-static {p1, p3, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    const/4 p1, 0x1

    invoke-static {p3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion([BI)V

    array-length p1, p2

    const/4 v0, 0x3

    invoke-static {p1, p3, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    array-length p1, p2

    invoke-static {p2, v2, p3, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
