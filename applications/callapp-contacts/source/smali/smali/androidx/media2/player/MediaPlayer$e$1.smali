.class final Landroidx/media2/player/MediaPlayer$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$e;->a(Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/VideoSize;

.field final synthetic b:Landroidx/media2/player/MediaPlayer$e;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/VideoSize;)V
    .locals 0

    .line 3314
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$e$1;->b:Landroidx/media2/player/MediaPlayer$e;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$e$1;->a:Landroidx/media2/common/VideoSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 3317
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e$1;->b:Landroidx/media2/player/MediaPlayer$e;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$e$1;->a:Landroidx/media2/common/VideoSize;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onVideoSizeChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/VideoSize;)V

    return-void
.end method
