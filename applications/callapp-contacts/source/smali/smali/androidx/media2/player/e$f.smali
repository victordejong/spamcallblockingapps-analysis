.class final Landroidx/media2/player/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/e;


# direct methods
.method constructor <init>(Landroidx/media2/player/e;)V
    .locals 0

    .line 777
    iput-object p1, p0, Landroidx/media2/player/e$f;->a:Landroidx/media2/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 780
    iget-object v0, p0, Landroidx/media2/player/e$f;->a:Landroidx/media2/player/e;

    .line 1604
    iget-object v1, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v1}, Landroidx/media2/player/e$e;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1605
    iget-object v1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 2200
    iget-object v2, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v2}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 1605
    iget-object v3, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    .line 3118
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/a;->f()J

    move-result-wide v4

    .line 3119
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/a;->d()J

    move-result-wide v6

    const/16 v3, 0x64

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v4, v9

    if-eqz v11, :cond_2

    cmp-long v11, v6, v9

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x64

    mul-long v4, v4, v9

    .line 3122
    div-long/2addr v4, v6

    long-to-int v5, v4

    invoke-static {v5, v8, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 1605
    :goto_1
    invoke-interface {v1, v2, v3}, Landroidx/media2/player/e$c;->a(Landroidx/media2/common/MediaItem;I)V

    .line 1607
    :cond_3
    iget-object v1, v0, Landroidx/media2/player/e;->c:Landroid/os/Handler;

    iget-object v2, v0, Landroidx/media2/player/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1608
    iget-object v1, v0, Landroidx/media2/player/e;->c:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/media2/player/e;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
