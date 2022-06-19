.class public final Landroidx/media2/exoplayer/external/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/al;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/al;IJ)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;->a:Landroidx/media2/exoplayer/external/al;

    .line 50
    iput p2, p0, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;->b:I

    .line 51
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;->c:J

    return-void
.end method
