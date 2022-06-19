.class public Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private final b:Z

.field private final c:Z

.field private d:Z

.field private final e:[B

.field private f:[B

.field private g:I

.field private h:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    .line 110
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    const/16 v3, 0x200

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .locals 6

    const/16 v3, 0x200

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Z

    .line 57
    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    .line 58
    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lastMultiPart can only be true if multipart is true"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    :goto_0
    iput-boolean p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->b:Z

    .line 95
    iput-boolean p5, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->c:Z

    .line 96
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    if-lez p3, :cond_2

    .line 97
    rem-int/lit16 p1, p3, 0x200

    if-nez p1, :cond_2

    .line 102
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->e:[B

    return-void

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "buffsize ("

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") must be a positive multiple of 512"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 260
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f:[B

    .line 264
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->e:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Z

    .line 268
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->c:Z

    if-eqz v0, :cond_4

    .line 270
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f:[B

    if-nez v0, :cond_2

    return v1

    .line 276
    :cond_2
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    .line 277
    array-length v0, v0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 282
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 2279
    iget-object v2, v2, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 283
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    :cond_4
    :goto_0
    return v1

    .line 289
    :cond_5
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->e:[B

    invoke-virtual {v1, v3, v2, v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f:[B

    .line 290
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    if-nez v0, :cond_6

    goto :goto_1

    .line 291
    :cond_6
    array-length v2, v0

    :goto_1
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I

    return v2
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    .line 243
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I

    .line 244
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Z

    :cond_0
    return-void
.end method

.method public available()I
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 194
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final b()V
    .locals 5

    .line 296
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 3092
    iget-object v1, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v2, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    iget-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    iget v4, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    iget-object v0, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    .line 3093
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    .line 3092
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    .line 296
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 204
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->b:Z

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 1279
    iget-object v0, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a()[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    .line 215
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I

    .line 216
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 228
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 229
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c()J

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 222
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I

    if-lt v0, v1, :cond_3

    .line 116
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->c()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_3

    return v1

    .line 123
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "exceeded maximum number of attempts to read next chunk of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f:[B

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 146
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->d:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/16 v3, 0x3e8

    if-gt v0, v3, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->c()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v1, :cond_3

    return v1

    .line 153
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exceeded maximum number of attempts to read next chunk of data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-gtz p3, :cond_4

    return v2

    .line 167
    :cond_4
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_5

    goto :goto_0

    :cond_5
    move p3, v0

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->f:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    return p3
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 236
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d()V

    .line 237
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->a()V

    return-void
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 180
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->h:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    move-wide p1, v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    return-wide v2

    :cond_1
    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v1, v0

    .line 187
    iput v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->g:I

    return-wide p1
.end method
