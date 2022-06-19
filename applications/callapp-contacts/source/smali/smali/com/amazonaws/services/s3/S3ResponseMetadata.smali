.class public Lcom/amazonaws/services/s3/S3ResponseMetadata;
.super Lcom/amazonaws/ResponseMetadata;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/amazonaws/ResponseMetadata;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazonaws/ResponseMetadata;-><init>(Lcom/amazonaws/ResponseMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    return-void
.end method
