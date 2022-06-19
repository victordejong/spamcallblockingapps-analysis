.class final Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    .line 543
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    .line 544
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 549
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    return-void

    .line 554
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->a(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 1193
    iget-object v3, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->k:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1468
    :cond_2
    iget p1, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->d:I

    if-nez p1, :cond_3

    iget p1, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->j:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1469
    iget-object p1, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->k:[B

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1470
    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->b(Z)V

    :cond_3
    :goto_0
    return-void
.end method
