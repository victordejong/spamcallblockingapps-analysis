.class public final Landroidx/media2/exoplayer/external/drm/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/drm/m;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/drm/DrmSession<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/l;->a:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/l;->a:Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    return-object v0
.end method

.method public final d()Landroidx/media2/exoplayer/external/drm/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method
