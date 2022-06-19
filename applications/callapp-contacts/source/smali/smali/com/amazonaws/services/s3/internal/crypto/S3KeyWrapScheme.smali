.class Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme$1;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme$1;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/security/Key;Ljava/security/Provider;)Ljava/lang/String;
    .locals 1

    .line 51
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AES"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AESWrap"

    return-object p1

    :cond_0
    const-string v0, "RSA"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->b(Ljava/security/Provider;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "S3KeyWrapScheme"

    return-object v0
.end method
