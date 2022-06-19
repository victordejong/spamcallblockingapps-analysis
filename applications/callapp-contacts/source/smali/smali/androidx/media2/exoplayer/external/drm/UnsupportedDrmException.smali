.class public final Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 61
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 0

    .line 69
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 70
    iput p1, p0, Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;->a:I

    return-void
.end method
