.class Lcom/amazonaws/services/s3/internal/crypto/AesCtr;
.super Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a([BJ)[B
    .locals 6

    .line 61
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 1044
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result v0

    int-to-long v1, v0

    .line 64
    div-long v3, p2, v1

    mul-long v1, v1, v3

    cmp-long v5, v1, p2

    if-nez v5, :cond_0

    .line 2044
    sget-object p2, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result p2

    .line 1087
    new-array p3, p2, [B

    .line 1088
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    sub-int/2addr p2, p1

    .line 1089
    aput-byte p1, p3, p2

    const-wide/16 p1, 0x1

    .line 1090
    invoke-static {p3, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->b([BJ)[B

    move-result-object p1

    .line 72
    invoke-static {p1, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->b([BJ)[B

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expecting byteOffset to be multiple of 16, but got blockOffset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", blockSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", byteOffset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method final b()Ljava/lang/String;
    .locals 1

    const-string v0, "AES/CTR/NoPadding"

    return-object v0
.end method

.method final c()I
    .locals 1

    .line 39
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c()I

    move-result v0

    return v0
.end method

.method final d()I
    .locals 1

    .line 44
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result v0

    return v0
.end method

.method final e()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method
