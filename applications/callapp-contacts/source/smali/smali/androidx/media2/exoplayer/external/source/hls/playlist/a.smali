.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/exoplayer/external/upstream/u$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media2/exoplayer/external/upstream/u$a<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/g;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;-><init>()V

    return-object v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/hls/playlist/e;)Landroidx/media2/exoplayer/external/upstream/u$a;
    .locals 1
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

    .line 39
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/h;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/h;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/e;)V

    return-object v0
.end method
