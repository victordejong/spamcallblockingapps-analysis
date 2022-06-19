.class final Landroidx/media2/player/MediaPlayer$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$4;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroidx/media2/common/MediaMetadata;

.field final synthetic c:Landroidx/media2/player/MediaPlayer$4;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$4;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 0

    .line 1519
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$4$1;->c:Landroidx/media2/player/MediaPlayer$4;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$4$1;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$4$1;->b:Landroidx/media2/common/MediaMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 3

    .line 1523
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$4$1;->c:Landroidx/media2/player/MediaPlayer$4;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$4$1;->a:Ljava/util/List;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$4$1;->b:Landroidx/media2/common/MediaMetadata;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/common/SessionPlayer$a;->onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method
