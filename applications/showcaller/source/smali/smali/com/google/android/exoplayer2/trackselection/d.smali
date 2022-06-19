.class public abstract Lcom/google/android/exoplayer2/trackselection/d;
.super Lcom/google/android/exoplayer2/trackselection/h;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/d$a;
    }
.end annotation


# instance fields
.field private c:Lcom/google/android/exoplayer2/trackselection/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/h;-><init>()V

    return-void
.end method

.method private static e([Lcom/google/android/exoplayer2/t0;Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)I
    .locals 10

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 3
    aget-object v6, p0, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4
    :goto_1
    iget v9, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->d:I

    if-ge v7, v9, :cond_0

    .line 5
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/google/android/exoplayer2/t0;->b(Lcom/google/android/exoplayer2/Format;)I

    move-result v9

    .line 6
    invoke-static {v9}, Lcom/google/android/exoplayer2/s0;->d(I)I

    move-result v9

    .line 7
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 8
    :cond_0
    aget v6, p2, v3

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-gt v8, v4, :cond_2

    if-ne v8, v4, :cond_3

    if-eqz p3, :cond_3

    if-nez v5, :cond_3

    if-eqz v6, :cond_3

    :cond_2
    move v0, v3

    move v5, v6

    move v4, v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static f(Lcom/google/android/exoplayer2/t0;Lcom/google/android/exoplayer2/source/TrackGroup;)[I
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->d:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->d:I

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/t0;->b(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static g([Lcom/google/android/exoplayer2/t0;)[I
    .locals 4

    .line 1
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/t0;->p()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/d$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/d;->c:Lcom/google/android/exoplayer2/trackselection/d$a;

    return-void
.end method

.method public final d([Lcom/google/android/exoplayer2/t0;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/y0;)Lcom/google/android/exoplayer2/trackselection/i;
    .locals 10

    .line 1
    array-length p3, p1

    const/4 p4, 0x1

    add-int/2addr p3, p4

    new-array p3, p3, [I

    .line 2
    array-length v0, p1

    add-int/2addr v0, p4

    new-array v1, v0, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 3
    array-length v2, p1

    add-int/2addr v2, p4

    new-array v2, v2, [[[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 4
    iget v5, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->e:I

    new-array v6, v5, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v6, v1, v4

    .line 5
    new-array v5, v5, [[I

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/d;->g([Lcom/google/android/exoplayer2/t0;)[I

    move-result-object v0

    const/4 v4, 0x0

    .line 7
    :goto_1
    iget v5, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->e:I

    if-ge v4, v5, :cond_3

    .line 8
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    .line 9
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/r;->h(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 10
    :goto_2
    invoke-static {p1, v5, p3, v6}, Lcom/google/android/exoplayer2/trackselection/d;->e([Lcom/google/android/exoplayer2/t0;Lcom/google/android/exoplayer2/source/TrackGroup;[IZ)I

    move-result v6

    .line 11
    array-length v7, p1

    if-ne v6, v7, :cond_2

    iget v7, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->d:I

    new-array v7, v7, [I

    goto :goto_3

    :cond_2
    aget-object v7, p1, v6

    .line 12
    invoke-static {v7, v5}, Lcom/google/android/exoplayer2/trackselection/d;->f(Lcom/google/android/exoplayer2/t0;Lcom/google/android/exoplayer2/source/TrackGroup;)[I

    move-result-object v7

    .line 13
    :goto_3
    aget v8, p3, v6

    .line 14
    aget-object v9, v1, v6

    aput-object v5, v9, v8

    .line 15
    aget-object v5, v2, v6

    aput-object v7, v5, v8

    .line 16
    aget v5, p3, v6

    add-int/2addr v5, p4

    aput v5, p3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_3
    array-length p2, p1

    new-array v5, p2, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 18
    array-length p2, p1

    new-array v4, p2, [I

    .line 19
    :goto_4
    array-length p2, p1

    if-ge v3, p2, :cond_4

    .line 20
    aget p2, p3, v3

    .line 21
    new-instance p4, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v6, v1, v3

    .line 22
    invoke-static {v6, p2}, Lcom/google/android/exoplayer2/util/h0;->f0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p4, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object p4, v5, v3

    .line 23
    aget-object p4, v2, v3

    .line 24
    invoke-static {p4, p2}, Lcom/google/android/exoplayer2/util/h0;->f0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    aput-object p2, v2, v3

    .line 25
    aget-object p2, p1, v3

    invoke-interface {p2}, Lcom/google/android/exoplayer2/t0;->i()I

    move-result p2

    aput p2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 26
    :cond_4
    array-length p2, p1

    aget p2, p3, p2

    .line 27
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length p1, p1

    aget-object p1, v1, p1

    .line 28
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/h0;->f0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v8, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 29
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/d$a;

    move-object v3, p1

    move-object v6, v0

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/trackselection/d$a;-><init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 30
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/d;->h(Lcom/google/android/exoplayer2/trackselection/d$a;[[[I[I)Landroid/util/Pair;

    move-result-object p2

    .line 31
    new-instance p3, Lcom/google/android/exoplayer2/trackselection/i;

    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, [Lcom/google/android/exoplayer2/u0;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [Lcom/google/android/exoplayer2/trackselection/f;

    invoke-direct {p3, p4, p2, p1}, Lcom/google/android/exoplayer2/trackselection/i;-><init>([Lcom/google/android/exoplayer2/u0;[Lcom/google/android/exoplayer2/trackselection/f;Ljava/lang/Object;)V

    return-object p3
.end method

.method protected abstract h(Lcom/google/android/exoplayer2/trackselection/d$a;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/d$a;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplayer2/u0;",
            "[",
            "Lcom/google/android/exoplayer2/trackselection/f;",
            ">;"
        }
    .end annotation
.end method
