.class final Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    .line 501
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 502
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 508
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 509
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 510
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 511
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_7

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 2434
    iget-object v4, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->m:Landroidx/media2/exoplayer/external/drm/n$a;

    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->h()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2438
    :cond_1
    iput-object v2, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->m:Landroidx/media2/exoplayer/external/drm/n$a;

    .line 2440
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 2441
    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a(Ljava/lang/Exception;)V

    return-void

    .line 2447
    :cond_2
    :try_start_0
    iget v0, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2448
    iget-object v0, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->l:[B

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2449
    iget-object v0, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->e:Landroidx/media2/exoplayer/external/util/f;

    sget-object v1, Landroidx/media2/exoplayer/external/drm/d;->a:Landroidx/media2/exoplayer/external/util/f$a;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/f;->a(Landroidx/media2/exoplayer/external/util/f$a;)V

    return-void

    .line 2451
    :cond_3
    iget-object v0, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b:Landroidx/media2/exoplayer/external/drm/n;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/n;->c()[B

    move-result-object v0

    .line 2452
    iget v1, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->d:I

    if-eq v1, v3, :cond_4

    iget v1, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->d:I

    if-nez v1, :cond_5

    iget-object v1, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->l:[B

    if-eqz v1, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    array-length v1, v0

    if-eqz v1, :cond_5

    .line 2457
    iput-object v0, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->l:[B

    :cond_5
    const/4 v0, 0x4

    .line 2459
    iput v0, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    .line 2460
    iget-object v0, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->e:Landroidx/media2/exoplayer/external/util/f;

    sget-object v1, Landroidx/media2/exoplayer/external/drm/e;->a:Landroidx/media2/exoplayer/external/util/f$a;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/f;->a(Landroidx/media2/exoplayer/external/util/f$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2463
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a(Ljava/lang/Exception;)V

    :cond_6
    :goto_0
    return-void

    .line 513
    :cond_7
    iget-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 1330
    iget-object v4, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->n:Landroidx/media2/exoplayer/external/drm/n$b;

    if-ne v1, v4, :cond_a

    iget v1, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    if-eq v1, v3, :cond_8

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->h()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    .line 1334
    :cond_8
    iput-object v2, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->n:Landroidx/media2/exoplayer/external/drm/n$b;

    .line 1336
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_9

    .line 1337
    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;->a(Ljava/lang/Exception;)V

    return-void

    .line 1348
    :cond_9
    iget-object p1, p1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->c:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$a;->a()V

    :cond_a
    :goto_1
    return-void
.end method
