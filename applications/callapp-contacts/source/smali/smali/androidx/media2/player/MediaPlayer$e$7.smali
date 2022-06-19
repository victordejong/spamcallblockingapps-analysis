.class final Landroidx/media2/player/MediaPlayer$e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$e;->b(Landroidx/media2/common/MediaItem;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroidx/media2/player/MediaPlayer$e;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    .line 3442
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$e$7;->d:Landroidx/media2/player/MediaPlayer$e;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$e$7;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$e$7;->b:I

    iput p4, p0, Landroidx/media2/player/MediaPlayer$e$7;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/player/MediaPlayer$i;)V
    .locals 4

    .line 3445
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e$7;->d:Landroidx/media2/player/MediaPlayer$e;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$e$7;->a:Landroidx/media2/common/MediaItem;

    iget v2, p0, Landroidx/media2/player/MediaPlayer$e$7;->b:I

    iget v3, p0, Landroidx/media2/player/MediaPlayer$e$7;->c:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/media2/player/MediaPlayer$i;->onInfo(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method
