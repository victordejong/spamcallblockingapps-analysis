.class final Landroidx/media2/player/c$24;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
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

    .line 219
    iput-object p1, p0, Landroidx/media2/player/c$24;->b:Landroidx/media2/player/c;

    iput-object p4, p0, Landroidx/media2/player/c$24;->a:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 222
    iget-object v0, p0, Landroidx/media2/player/c$24;->b:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    iget-object v1, p0, Landroidx/media2/player/c$24;->a:Landroidx/media2/common/MediaItem;

    .line 1196
    iget-object v0, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-static {v1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    .line 1881
    invoke-virtual {v0}, Landroidx/media2/player/e$e;->a()V

    .line 1882
    iget-object v2, v0, Landroidx/media2/player/e$e;->c:Landroidx/media2/exoplayer/external/source/h;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/h;->h()V

    .line 1883
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/player/e$e;->a(Ljava/util/List;)V

    return-void
.end method
