.class final Landroidx/media2/player/MediaPlayer$e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$e;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:Landroidx/media2/player/m;

.field final synthetic c:Landroidx/media2/player/MediaPlayer$e;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/MediaItem;Landroidx/media2/player/m;)V
    .locals 0

    .line 3326
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$e$2;->c:Landroidx/media2/player/MediaPlayer$e;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$e$2;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$e$2;->b:Landroidx/media2/player/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/player/MediaPlayer$i;)V
    .locals 3

    .line 3329
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e$2;->c:Landroidx/media2/player/MediaPlayer$e;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$e$2;->a:Landroidx/media2/common/MediaItem;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e$2;->b:Landroidx/media2/player/m;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/player/MediaPlayer$i;->onTimedMetaDataAvailable(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/player/m;)V

    return-void
.end method
