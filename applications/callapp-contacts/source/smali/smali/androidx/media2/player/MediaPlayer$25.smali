.class final Landroidx/media2/player/MediaPlayer$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;F)V
    .locals 0

    .line 3216
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$25;->b:Landroidx/media2/player/MediaPlayer;

    iput p2, p0, Landroidx/media2/player/MediaPlayer$25;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 3220
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$25;->b:Landroidx/media2/player/MediaPlayer;

    iget v1, p0, Landroidx/media2/player/MediaPlayer$25;->a:F

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V

    return-void
.end method
