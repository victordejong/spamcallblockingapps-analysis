.class final Landroidx/media2/exoplayer/external/source/hls/d$e;
.super Landroidx/media2/exoplayer/external/trackselection/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 0

    .line 549
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/b;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    const/4 p2, 0x0

    .line 550
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/d$e;->a(Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/d$e;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 577
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/d$e;->a:I

    return v0
.end method

.method public final a(JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)V"
        }
    .end annotation

    .line 560
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 561
    iget p3, p0, Landroidx/media2/exoplayer/external/source/hls/d$e;->a:I

    invoke-virtual {p0, p3, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/d$e;->b(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 565
    :cond_0
    iget p3, p0, Landroidx/media2/exoplayer/external/source/hls/d$e;->c:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    .line 566
    invoke-virtual {p0, p3, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/d$e;->b(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    .line 567
    iput p3, p0, Landroidx/media2/exoplayer/external/source/hls/d$e;->a:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 572
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
