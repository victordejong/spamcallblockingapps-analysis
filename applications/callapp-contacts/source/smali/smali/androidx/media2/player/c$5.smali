.class final Landroidx/media2/player/c$5;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;IZLandroidx/media2/common/MediaItem;)V
    .locals 0

    .line 339
    iput-object p1, p0, Landroidx/media2/player/c$5;->b:Landroidx/media2/player/c;

    iput-object p4, p0, Landroidx/media2/player/c$5;->a:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 342
    iget-object v0, p0, Landroidx/media2/player/c$5;->b:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    iget-object v1, p0, Landroidx/media2/player/c$5;->a:Landroidx/media2/common/MediaItem;

    .line 1276
    iget-object v2, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    .line 1877
    iget-object v2, v2, Landroidx/media2/player/e$e;->c:Landroidx/media2/exoplayer/external/source/h;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/h;->i()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 1277
    instance-of v0, v1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_1

    .line 1278
    check-cast v1, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v1}, Landroidx/media2/common/FileMediaItem;->a()V

    .line 1279
    invoke-virtual {v1}, Landroidx/media2/common/FileMediaItem;->b()V

    .line 1281
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1283
    :cond_2
    iget-object v0, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/player/e$e;->a(Ljava/util/List;)V

    return-void
.end method
