.class public final synthetic Lcom/google/android/exoplayer2/drm/DrmSession$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$d(Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static a(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 46
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->a(Lcom/google/android/exoplayer2/drm/c$a;)V

    :cond_1
    if-eqz p0, :cond_2

    .line 49
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->b(Lcom/google/android/exoplayer2/drm/c$a;)V

    :cond_2
    return-void
.end method
