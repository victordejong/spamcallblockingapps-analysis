.class public Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/services/s3/internal/S3VersionResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/services/s3/internal/HeaderHandler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    .locals 1

    .line 25
    check-cast p1, Lcom/amazonaws/services/s3/internal/S3VersionResult;

    .line 1053
    iget-object p2, p2, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v0, "x-amz-version-id"

    .line 1035
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/internal/S3VersionResult;->setVersionId(Ljava/lang/String;)V

    return-void
.end method
