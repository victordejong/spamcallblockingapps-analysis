.class final Landroidx/media2/player/MediaPlayer$29;
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
.field final synthetic a:Landroidx/media2/player/MediaPlayer$g;

.field final synthetic b:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$g;)V
    .locals 0

    .line 3242
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$29;->b:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$29;->a:Landroidx/media2/player/MediaPlayer$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 3245
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$29;->b:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$29;->a:Landroidx/media2/player/MediaPlayer$g;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer$g;->c:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method
