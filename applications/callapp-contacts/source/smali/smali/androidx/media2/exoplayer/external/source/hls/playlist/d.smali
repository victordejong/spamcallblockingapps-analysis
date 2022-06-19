.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/i;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

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
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/i;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/i;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/d;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    .line 46
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/exoplayer/external/upstream/u$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/exoplayer/external/upstream/u$a<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/g;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Landroidx/media2/exoplayer/external/offline/b;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/d;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    .line 52
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/i;->a()Landroidx/media2/exoplayer/external/upstream/u$a;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/d;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/offline/b;-><init>(Landroidx/media2/exoplayer/external/upstream/u$a;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/hls/playlist/e;)Landroidx/media2/exoplayer/external/upstream/u$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/e;",
            ")",
            "Landroidx/media2/exoplayer/external/upstream/u$a<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/g;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Landroidx/media2/exoplayer/external/offline/b;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/d;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    .line 59
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/i;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/e;)Landroidx/media2/exoplayer/external/upstream/u$a;

    move-result-object p1

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/d;->b:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Landroidx/media2/exoplayer/external/offline/b;-><init>(Landroidx/media2/exoplayer/external/upstream/u$a;Ljava/util/List;)V

    return-object v0
.end method
