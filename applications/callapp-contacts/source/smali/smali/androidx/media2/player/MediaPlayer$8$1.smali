.class final Landroidx/media2/player/MediaPlayer$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$8;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/MediaPlayer$8;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$8;)V
    .locals 0

    .line 1707
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$8$1;->a:Landroidx/media2/player/MediaPlayer$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 1711
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$8$1;->a:Landroidx/media2/player/MediaPlayer$8;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$8;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$8$1;->a:Landroidx/media2/player/MediaPlayer$8;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer$8;->f:Landroidx/media2/common/MediaMetadata;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onPlaylistMetadataChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method
