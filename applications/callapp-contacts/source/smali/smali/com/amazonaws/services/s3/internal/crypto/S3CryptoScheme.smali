.class final Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final c:Ljava/security/SecureRandom;


# instance fields
.field final a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

.field final b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->c:Ljava/security/SecureRandom;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 42
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 48
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-void
.end method

.method static a(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
    .locals 2

    .line 71
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme$1;->a:[I

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/CryptoMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 77
    :cond_1
    :goto_0
    new-instance p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V

    return-object p0

    .line 73
    :cond_2
    new-instance p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    sget-object v1, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;)V

    return-object p0
.end method

.method static a()Ljava/security/SecureRandom;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->c:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .line 67
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
