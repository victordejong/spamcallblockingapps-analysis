.class Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;


# instance fields
.field final b:Ljavax/crypto/Cipher;

.field final c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field final d:Ljavax/crypto/SecretKey;

.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 76
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>()V

    return-void
.end method

.method constructor <init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    .line 83
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 84
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    .line 85
    iput p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    return-void
.end method


# virtual methods
.method a(J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->d:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->e:I

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    .line 117
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    move-wide v5, p1

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p1

    return-object p1
.end method

.method a()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method a([BII)[B
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p1

    return-object p1
.end method

.method b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method c()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method d()V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
