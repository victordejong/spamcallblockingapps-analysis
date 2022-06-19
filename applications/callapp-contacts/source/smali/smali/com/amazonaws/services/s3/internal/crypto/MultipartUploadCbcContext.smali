.class final Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCbcContext;
.super Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V

    return-void
.end method
