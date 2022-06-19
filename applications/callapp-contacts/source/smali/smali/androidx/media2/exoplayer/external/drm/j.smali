.class public abstract synthetic Landroidx/media2/exoplayer/external/drm/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/media2/exoplayer/external/drm/DrmSession;Landroidx/media2/exoplayer/external/drm/DrmSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/media2/exoplayer/external/drm/m;",
            ">(",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;)V"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 50
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->f()V

    :cond_1
    if-eqz p0, :cond_2

    .line 53
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->g()V

    :cond_2
    return-void
.end method
