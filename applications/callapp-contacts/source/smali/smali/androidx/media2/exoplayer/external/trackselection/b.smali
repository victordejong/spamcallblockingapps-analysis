.class public abstract Landroidx/media2/exoplayer/external/trackselection/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/b$a;
    }
.end annotation


# instance fields
.field private final a:[J

.field protected final b:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field protected final c:I

.field protected final d:[I

.field final e:[Landroidx/media2/exoplayer/external/Format;

.field private f:I


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 73
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 74
    array-length v0, p2

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->c:I

    .line 76
    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    const/4 v0, 0x0

    .line 77
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 78
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/trackselection/b$a;-><init>(Landroidx/media2/exoplayer/external/trackselection/b$1;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 82
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->c:I

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->d:[I

    .line 83
    :goto_2
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->c:I

    if-ge v1, p2, :cond_2

    .line 84
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->d:[I

    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/b;->a:[J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2

    const/4 v0, 0x0

    .line 122
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/b;->c:I

    if-ge v0, v1, :cond_1

    .line 123
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

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

.method public final a(I)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(JJJ)V
    .locals 0

    .line 1262
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/trackselection/e;->i()V

    return-void
.end method

.method public final a(IJ)Z
    .locals 7

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 163
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/b;->b(IJ)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 164
    :goto_0
    iget v5, p0, Landroidx/media2/exoplayer/external/trackselection/b;->c:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_1

    if-eq v4, p1, :cond_0

    .line 165
    invoke-virtual {p0, v4, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/b;->b(IJ)Z

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

    .line 170
    :cond_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->a:[J

    aget-wide v3, v2, p1

    .line 173
    invoke-static {v0, v1, p2, p3}, Landroidx/media2/exoplayer/external/util/ac;->a(JJ)J

    move-result-wide p2

    .line 171
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v2, p1

    return v6
.end method

.method public final b(I)I
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final b(IJ)Z
    .locals 3

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->a:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)I
    .locals 2

    const/4 v0, 0x0

    .line 132
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/b;->c:I

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/b;->d:[I

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

.method public d()V
    .locals 0

    return-void
.end method

.method public final e()Landroidx/media2/exoplayer/external/source/TrackGroup;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/b;

    .line 208
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/trackselection/b;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/b;->d:[I

    iget-object p1, p1, Landroidx/media2/exoplayer/external/trackselection/b;->d:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()I
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->d:[I

    array-length v0, v0

    return v0
.end method

.method public final g()Landroidx/media2/exoplayer/external/Format;
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->e:[Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/b;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final h()I
    .locals 2

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->d:[I

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/b;->a()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 191
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->f:I

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/b;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->f:I

    .line 194
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/b;->f:I

    return v0
.end method

.method public final i()V
    .locals 1

    .line 1229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
