.class final Landroidx/media2/player/MediaPlayer$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/MediaPlayer$d;

.field final synthetic b:Landroidx/media2/player/MediaPlayer$i;

.field final synthetic c:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$d;Landroidx/media2/player/MediaPlayer$i;)V
    .locals 0

    .line 2986
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$22;->c:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$22;->a:Landroidx/media2/player/MediaPlayer$d;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$22;->b:Landroidx/media2/player/MediaPlayer$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2989
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$22;->a:Landroidx/media2/player/MediaPlayer$d;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$22;->b:Landroidx/media2/player/MediaPlayer$i;

    invoke-interface {v0, v1}, Landroidx/media2/player/MediaPlayer$d;->a(Landroidx/media2/player/MediaPlayer$i;)V

    return-void
.end method
