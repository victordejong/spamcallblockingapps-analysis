.class final Landroidx/media2/player/MediaPlayer$e$5;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$e;->b(Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/player/MediaPlayer$h<",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Landroidx/media2/common/MediaItem;

.field final synthetic g:Landroidx/media2/player/MediaPlayer$e;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$e;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V
    .locals 0

    .line 3398
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$e$5;->g:Landroidx/media2/player/MediaPlayer$e;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$e$5;->f:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    .line 3401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3403
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$e$5;->g:Landroidx/media2/player/MediaPlayer$e;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e$5;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->b(Landroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
