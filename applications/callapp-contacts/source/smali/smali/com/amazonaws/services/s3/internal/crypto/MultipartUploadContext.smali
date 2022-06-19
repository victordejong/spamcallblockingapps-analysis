.class public abstract Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field d:Z

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->b:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->c:Ljava/lang/String;

    return-void
.end method
