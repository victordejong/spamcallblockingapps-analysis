.class Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
.super Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

.field g:I

.field volatile h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    return-void
.end method
