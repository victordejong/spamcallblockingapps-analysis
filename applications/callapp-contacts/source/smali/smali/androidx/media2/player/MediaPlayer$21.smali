.class final Landroidx/media2/player/MediaPlayer$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/MediaPlayer$j;

.field final synthetic b:Landroidx/media2/common/SessionPlayer$a;

.field final synthetic c:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$j;Landroidx/media2/common/SessionPlayer$a;)V
    .locals 0

    .line 2966
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$21;->c:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$21;->a:Landroidx/media2/player/MediaPlayer$j;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$21;->b:Landroidx/media2/common/SessionPlayer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2969
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$21;->a:Landroidx/media2/player/MediaPlayer$j;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$21;->b:Landroidx/media2/common/SessionPlayer$a;

    invoke-interface {v0, v1}, Landroidx/media2/player/MediaPlayer$j;->callCallback(Landroidx/media2/common/SessionPlayer$a;)V

    return-void
.end method
