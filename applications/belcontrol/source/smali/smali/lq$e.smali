.class public final Llq$e;
.super Lrr;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrr;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrr;->c(Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    iput p1, p0, Llq$e;->g:I

    return-void
.end method


# virtual methods
.method public a(JJJLjava/util/List;[Lhq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lgq;",
            ">;[",
            "Lhq;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget p3, p0, Llq$e;->g:I

    invoke-virtual {p0, p3, p1, p2}, Lrr;->d(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Lrr;->b:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    invoke-virtual {p0, p3, p1, p2}, Lrr;->d(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    iput p3, p0, Llq$e;->g:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Llq$e;->g:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
