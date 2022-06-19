.class final Landroidx/media2/player/MediaPlayer$e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$e;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field final synthetic c:Landroidx/media2/common/SubtitleData;

.field final synthetic d:Landroidx/media2/player/MediaPlayer$e;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 0

    .line 3476
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$e$9;->d:Landroidx/media2/player/MediaPlayer$e;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$e$9;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$e$9;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$e$9;->c:Landroidx/media2/common/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 4

    .line 3479
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e$9;->d:Landroidx/media2/player/MediaPlayer$e;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$e$9;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e$9;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$e$9;->c:Landroidx/media2/common/SubtitleData;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/common/SessionPlayer$a;->onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method
