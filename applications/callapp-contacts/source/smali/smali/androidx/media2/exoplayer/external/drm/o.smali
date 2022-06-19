.class public final Landroidx/media2/exoplayer/external/drm/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/m;


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:[B

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/util/UUID;[BZ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/o;->a:Ljava/util/UUID;

    .line 52
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/o;->b:[B

    .line 53
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/drm/o;->c:Z

    return-void
.end method
