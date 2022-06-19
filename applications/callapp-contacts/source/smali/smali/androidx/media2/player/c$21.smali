.class final Landroidx/media2/player/c$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/a/b;

.field final synthetic b:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;Landroidx/c/a/b;)V
    .locals 0

    .line 584
    iput-object p1, p0, Landroidx/media2/player/c$21;->b:Landroidx/media2/player/c;

    iput-object p2, p0, Landroidx/media2/player/c$21;->a:Landroidx/c/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 588
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/c$21;->b:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    .line 1467
    iget-object v1, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1468
    iget-object v1, v0, Landroidx/media2/player/e;->c:Landroid/os/Handler;

    iget-object v3, v0, Landroidx/media2/player/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1469
    iget-object v1, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ak;->p()V

    .line 1470
    iput-object v2, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    .line 1471
    iget-object v1, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v1}, Landroidx/media2/player/e$e;->a()V

    const/4 v1, 0x0

    .line 1472
    iput-boolean v1, v0, Landroidx/media2/player/e;->k:Z

    .line 589
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/c$21;->a:Landroidx/c/a/b;

    invoke-virtual {v0, v2}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 591
    iget-object v1, p0, Landroidx/media2/player/c$21;->a:Landroidx/c/a/b;

    invoke-virtual {v1, v0}, Landroidx/c/a/b;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
