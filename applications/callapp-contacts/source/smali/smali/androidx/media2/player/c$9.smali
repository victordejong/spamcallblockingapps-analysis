.class final Landroidx/media2/player/c$9;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(Landroidx/media2/player/j;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/j;

.field final synthetic b:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;IZLandroidx/media2/player/j;)V
    .locals 0

    .line 409
    iput-object p1, p0, Landroidx/media2/player/c$9;->b:Landroidx/media2/player/c;

    iput-object p4, p0, Landroidx/media2/player/c$9;->a:Landroidx/media2/player/j;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 412
    iget-object v0, p0, Landroidx/media2/player/c$9;->b:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    iget-object v1, p0, Landroidx/media2/player/c$9;->a:Landroidx/media2/player/j;

    .line 1338
    iput-object v1, v0, Landroidx/media2/player/e;->s:Landroidx/media2/player/j;

    .line 1339
    iget-object v1, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    iget-object v2, v0, Landroidx/media2/player/e;->s:Landroidx/media2/player/j;

    invoke-static {v2}, Landroidx/media2/player/d;->a(Landroidx/media2/player/j;)Landroidx/media2/exoplayer/external/ad;

    move-result-object v2

    .line 2182
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 2183
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    if-nez v2, :cond_0

    .line 2346
    sget-object v2, Landroidx/media2/exoplayer/external/ad;->a:Landroidx/media2/exoplayer/external/ad;

    .line 2348
    :cond_0
    iget-object v3, v1, Landroidx/media2/exoplayer/external/h;->k:Landroidx/media2/exoplayer/external/ad;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/ad;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2351
    iget v3, v1, Landroidx/media2/exoplayer/external/h;->j:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroidx/media2/exoplayer/external/h;->j:I

    .line 2352
    iput-object v2, v1, Landroidx/media2/exoplayer/external/h;->k:Landroidx/media2/exoplayer/external/ad;

    .line 2353
    iget-object v3, v1, Landroidx/media2/exoplayer/external/h;->d:Landroidx/media2/exoplayer/external/u;

    .line 3207
    iget-object v3, v3, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v2}, Landroidx/media2/exoplayer/external/util/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2355
    new-instance v3, Landroidx/media2/exoplayer/external/k;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/k;-><init>(Landroidx/media2/exoplayer/external/ad;)V

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/a$b;)V

    .line 1340
    :cond_1
    invoke-virtual {v0}, Landroidx/media2/player/e;->b()I

    move-result v1

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_2

    .line 1341
    iget-object v1, v0, Landroidx/media2/player/e;->a:Landroidx/media2/player/e$c;

    .line 4200
    iget-object v2, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v2}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 1341
    invoke-virtual {v0}, Landroidx/media2/player/e;->d()Landroidx/media2/player/i;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroidx/media2/player/e$c;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V

    :cond_2
    return-void
.end method
