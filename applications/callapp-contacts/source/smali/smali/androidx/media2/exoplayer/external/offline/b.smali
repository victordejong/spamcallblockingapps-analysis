.class public final Landroidx/media2/exoplayer/external/offline/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/u$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/offline/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/u$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/u$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/u$a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/u$a<",
            "+TT;>;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/media2/exoplayer/external/offline/b;->a:Landroidx/media2/exoplayer/external/upstream/u$a;

    .line 47
    iput-object p2, p0, Landroidx/media2/exoplayer/external/offline/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Landroidx/media2/exoplayer/external/offline/b;->a:Landroidx/media2/exoplayer/external/upstream/u$a;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/upstream/u$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/offline/a;

    .line 1053
    iget-object p2, p0, Landroidx/media2/exoplayer/external/offline/b;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/offline/b;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/offline/a;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/offline/a;

    :cond_1
    :goto_0
    return-object p1
.end method
