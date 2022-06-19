.class final synthetic Landroidx/media2/exoplayer/external/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/u;

.field private final b:Landroidx/media2/exoplayer/external/af;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/u;Landroidx/media2/exoplayer/external/af;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/v;->a:Landroidx/media2/exoplayer/external/u;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/v;->b:Landroidx/media2/exoplayer/external/af;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/v;->b:Landroidx/media2/exoplayer/external/af;

    .line 1995
    :try_start_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/u;->b(Landroidx/media2/exoplayer/external/af;)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Unexpected error delivering message on external thread."

    .line 1997
    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1998
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
