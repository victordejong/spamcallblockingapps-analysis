.class final Landroidx/media2/player/MediaPlayer$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method final a(I)Landroidx/media2/common/MediaItem;
    .locals 1

    .line 3877
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/MediaItem;

    .line 3878
    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_0

    .line 3879
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->b()V

    :cond_0
    return-object p1
.end method

.method final a()V
    .locals 3

    .line 3900
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    .line 3901
    instance-of v2, v1, Landroidx/media2/common/FileMediaItem;

    if-eqz v2, :cond_0

    .line 3902
    check-cast v1, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v1}, Landroidx/media2/common/FileMediaItem;->b()V

    goto :goto_0

    .line 3905
    :cond_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method final a(ILandroidx/media2/common/MediaItem;)V
    .locals 1

    .line 3860
    instance-of v0, p2, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_0

    .line 3861
    move-object v0, p2

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->a()V

    .line 3863
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method final a(Ljava/lang/Object;)Z
    .locals 1

    .line 3913
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final b(Ljava/lang/Object;)I
    .locals 1

    .line 3917
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method final b(I)Landroidx/media2/common/MediaItem;
    .locals 1

    .line 3885
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/MediaItem;

    return-object p1
.end method
