.class final Landroidx/media2/player/MediaPlayer$e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$e;->b(Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/MediaPlayer$e;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$e;)V
    .locals 0

    .line 3431
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$e$6;->a:Landroidx/media2/player/MediaPlayer$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 1

    .line 3434
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e$6;->a:Landroidx/media2/player/MediaPlayer$e;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p1, v0}, Landroidx/media2/common/SessionPlayer$a;->onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V

    return-void
.end method
