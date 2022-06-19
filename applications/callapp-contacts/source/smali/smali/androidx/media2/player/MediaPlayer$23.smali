.class final Landroidx/media2/player/MediaPlayer$23;
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
.field final synthetic a:J

.field final synthetic b:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;J)V
    .locals 0

    .line 3195
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$23;->b:Landroidx/media2/player/MediaPlayer;

    iput-wide p2, p0, Landroidx/media2/player/MediaPlayer$23;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 3

    .line 3199
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$23;->b:Landroidx/media2/player/MediaPlayer;

    iget-wide v1, p0, Landroidx/media2/player/MediaPlayer$23;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/common/SessionPlayer$a;->onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V

    return-void
.end method
