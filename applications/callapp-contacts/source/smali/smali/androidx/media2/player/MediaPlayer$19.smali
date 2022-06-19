.class final Landroidx/media2/player/MediaPlayer$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;I)V
    .locals 0

    .line 2931
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$19;->b:Landroidx/media2/player/MediaPlayer;

    iput p2, p0, Landroidx/media2/player/MediaPlayer$19;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 2934
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$19;->b:Landroidx/media2/player/MediaPlayer;

    iget v1, p0, Landroidx/media2/player/MediaPlayer$19;->a:I

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V

    return-void
.end method
