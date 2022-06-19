.class public final Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
.super Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidResponseCodeException"
.end annotation


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            ")V"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p4, v1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/h;I)V

    .line 328
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->c:I

    .line 329
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->d:Ljava/lang/String;

    .line 330
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;Landroidx/media2/exoplayer/external/upstream/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/h;)V

    return-void
.end method
