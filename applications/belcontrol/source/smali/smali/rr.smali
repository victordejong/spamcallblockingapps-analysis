.class public abstract Lrr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrr$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field public final b:I

.field public final c:[I

.field public final d:[Landroidx/media2/exoplayer/external/Format;

.field public final e:[J

.field public f:I


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    iput-object v0, p0, Lrr;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    array-length v0, p2

    iput v0, p0, Lrr;->b:I

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Lrr;->d:[Landroidx/media2/exoplayer/external/Format;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lrr;->d:[Landroidx/media2/exoplayer/external/Format;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lrr;->d:[Landroidx/media2/exoplayer/external/Format;

    new-instance v0, Lrr$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lrr$b;-><init>(Lrr$a;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lrr;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lrr;->c:[I

    :goto_2
    iget p2, p0, Lrr;->b:I

    if-ge v1, p2, :cond_2

    iget-object p2, p0, Lrr;->c:[I

    iget-object v0, p0, Lrr;->d:[Landroidx/media2/exoplayer/external/Format;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroup;->b(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lrr;->e:[J

    return-void
.end method


# virtual methods
.method public a(JJJLjava/util/List;[Lhq;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lxr;->c(Lyr;JJJLjava/util/List;[Lhq;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lxr;->a(Lyr;)V

    return-void
.end method

.method public final blacklist(IJ)Z
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lrr;->d(IJ)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lrr;->b:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_1

    if-eq v4, p1, :cond_0

    invoke-virtual {p0, v4, v0, v1}, Lrr;->d(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v3

    :cond_2
    iget-object v7, p0, Lrr;->e:[J

    aget-wide v8, v7, p1

    const-wide v4, 0x7fffffffffffffffL

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lnu;->a(JJJ)J

    move-result-wide p2

    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v7, p1

    return v6
.end method

.method public final c(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lrr;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lrr;->d:[Landroidx/media2/exoplayer/external/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final d(IJ)Z
    .locals 3

    iget-object v0, p0, Lrr;->e:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public disable()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lrr;

    iget-object v2, p0, Lrr;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v3, p1, Lrr;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lrr;->c:[I

    iget-object p1, p1, Lrr;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getFormat(I)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    iget-object v0, p0, Lrr;->d:[Landroidx/media2/exoplayer/external/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 1

    iget-object v0, p0, Lrr;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getSelectedFormat()Landroidx/media2/exoplayer/external/Format;
    .locals 2

    iget-object v0, p0, Lrr;->d:[Landroidx/media2/exoplayer/external/Format;

    invoke-interface {p0}, Lyr;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .locals 2

    iget-object v0, p0, Lrr;->c:[I

    invoke-interface {p0}, Lyr;->getSelectedIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;
    .locals 1

    iget-object v0, p0, Lrr;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lrr;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lrr;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrr;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lrr;->f:I

    :cond_0
    iget v0, p0, Lrr;->f:I

    return v0
.end method

.method public final indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lrr;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lrr;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Lrr;->c:[I

    array-length v0, v0

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    return-void
.end method

.method public updateSelectedTrack(JJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lxr;->b(Lyr;JJJ)V

    const/4 p1, 0x0

    throw p1
.end method
