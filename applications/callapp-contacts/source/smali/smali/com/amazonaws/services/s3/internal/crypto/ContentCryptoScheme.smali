.class abstract Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 91
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 98
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 2

    .line 181
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 182
    sget-object p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_3

    .line 184
    sget-object p1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unsupported content encryption scheme: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_3
    :goto_0
    sget-object p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-object p0
.end method

.method static b([BJ)[B
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    if-eqz p0, :cond_5

    .line 149
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const-wide v0, 0xfffffffeL

    cmp-long v2, p1, v0

    if-gtz v2, :cond_4

    const/16 v2, 0x8

    .line 155
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0xc

    const/16 v4, 0xc

    :goto_0
    const/16 v5, 0xf

    if-gt v4, v5, :cond_1

    add-int/lit8 v5, v4, -0x8

    .line 158
    aget-byte v6, p0, v4

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    add-long/2addr v6, p1

    cmp-long p1, v6, v0

    if-gtz p1, :cond_3

    .line 162
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 164
    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    :goto_1
    if-gt v3, v5, :cond_2

    add-int/lit8 p2, v3, -0x8

    .line 168
    aget-byte p2, p1, p2

    aput-byte p2, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object p0

    .line 161
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 153
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 150
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected a(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1

    .line 234
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V

    return-object v0
.end method

.method final a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 215
    :goto_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p4, p3, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 216
    invoke-virtual {p0, p4, p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 218
    :goto_1
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/RuntimeException;

    goto :goto_2

    :cond_2
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unable to build cipher: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\nMake sure you have the JCE unlimited strength policy files installed and configured for your JVM"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_2
    throw p1
.end method

.method a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method abstract a()Ljava/lang/String;
.end method

.method a([BJ)[B
    .locals 0

    return-object p1
.end method

.method abstract b()Ljava/lang/String;
.end method

.method abstract c()I
.end method

.method abstract d()I
.end method

.method abstract e()I
.end method

.method f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cipherAlgo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blockSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ivLengthInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyGenAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyLengthInBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", specificProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tagLengthInBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
