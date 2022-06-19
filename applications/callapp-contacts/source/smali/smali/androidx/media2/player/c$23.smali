.class final Landroidx/media2/player/c$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field final synthetic c:Landroidx/media2/common/SubtitleData;

.field final synthetic d:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 0

    .line 725
    iput-object p1, p0, Landroidx/media2/player/c$23;->d:Landroidx/media2/player/c;

    iput-object p2, p0, Landroidx/media2/player/c$23;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Landroidx/media2/player/c$23;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object p4, p0, Landroidx/media2/player/c$23;->c:Landroidx/media2/common/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notify(Landroidx/media2/player/MediaPlayer2$c;)V
    .locals 3

    .line 728
    iget-object v0, p0, Landroidx/media2/player/c$23;->a:Landroidx/media2/common/MediaItem;

    iget-object v1, p0, Landroidx/media2/player/c$23;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget-object v2, p0, Landroidx/media2/player/c$23;->c:Landroidx/media2/common/SubtitleData;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/player/MediaPlayer2$c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method
