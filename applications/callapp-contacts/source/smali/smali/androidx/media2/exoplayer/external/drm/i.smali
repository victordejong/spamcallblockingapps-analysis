.class final synthetic Landroidx/media2/exoplayer/external/drm/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$b;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/i;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;)V
    .locals 4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/i;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    .line 1505
    iget-object v1, v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1506
    iget-object v1, v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1509
    iget-object v1, v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->a()V

    .line 1511
    :cond_0
    iget-object v0, v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
