.class final Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;
.super Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final f:I


# instance fields
.field private final g:I

.field private h:J

.field private i:Z

.field private j:J

.field private k:J

.field private l:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private m:[B

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 39
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->f:I

    return-void
.end method

.method constructor <init>(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)V
    .locals 1

    .line 87
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 88
    sget p2, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->f:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:I

    if-eq p3, p1, :cond_2

    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private a(I)I
    .locals 5

    .line 203
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide v2, 0xfffffffe0L

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->o:Z

    .line 205
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of bytes processed has exceeded the maximum allowed by AES/GCM; [outputByteCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 99
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->o:Z

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->m:[B

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->n:Z

    .line 105
    invoke-super {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->m:[B

    if-nez v0, :cond_3

    return-object v1

    .line 108
    :cond_3
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    array-length v0, v0

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->g:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->a(I)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->m:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method final a([BII)[B
    .locals 8

    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->l:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a([BII)[B

    move-result-object p2

    if-nez p2, :cond_1

    .line 163
    array-length p1, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->i:Z

    return-object v3

    .line 166
    :cond_1
    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    array-length p1, p2

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->a(I)I

    move-result p1

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    .line 170
    array-length p1, p2

    if-nez p1, :cond_2

    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->i:Z

    goto :goto_3

    .line 172
    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a([BII)[B

    move-result-object p2

    if-nez p2, :cond_4

    return-object v3

    .line 175
    :cond_4
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:J

    array-length p1, p2

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:J

    .line 176
    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    .line 177
    iput-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->l:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    goto :goto_3

    :cond_5
    cmp-long p1, v4, v6

    if-lez p1, :cond_8

    .line 1339
    iget p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    if-eq v1, p1, :cond_7

    .line 185
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->m:[B

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    array-length v2, p1

    .line 186
    :goto_2
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:J

    array-length p1, p2

    int-to-long v6, p1

    sub-long/2addr v4, v6

    sub-long v4, v0, v4

    int-to-long v6, v2

    sub-long/2addr v4, v6

    sub-long/2addr v0, v6

    .line 187
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:J

    .line 188
    iput-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->l:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    long-to-int p1, v4

    .line 189
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 180
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "currentCount="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " > outputByteCount="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-object p2
.end method

.method final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final c()J
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->l:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:J

    :goto_0
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k:J

    return-wide v0
.end method

.method final d()V
    .locals 5

    .line 225
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k:J

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->h:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-boolean v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->i:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 227
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->a(J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->l:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 230
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->k:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->j:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 232
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    throw v0
.end method
