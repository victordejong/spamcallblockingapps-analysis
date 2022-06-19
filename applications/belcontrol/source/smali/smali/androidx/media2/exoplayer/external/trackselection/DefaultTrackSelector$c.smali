.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

.field public final c:Z

.field public final d:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final j:I

.field public final k:I

.field public final l:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->z(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c:Z

    iget-object p3, p2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->a:Ljava/lang/String;

    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->v(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->d:I

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->c:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->h:Z

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->x:I

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->j:I

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->y:I

    iput v2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->k:I

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->f:I

    iput v2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v4, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:I

    if-gt v2, v4, :cond_2

    :cond_1
    if-eq p3, v3, :cond_3

    iget p2, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:I

    if-gt p3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a:Z

    invoke-static {}, Lnu;->K()[Ljava/lang/String;

    move-result-object p2

    const p3, 0x7fffffff

    const/4 v1, 0x0

    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_5

    aget-object v2, p2, v1

    invoke-static {p1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->v(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    move p3, v1

    move v0, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->f:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->g:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)I
    .locals 4

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->d:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->d:I

    if-eq v0, v1, :cond_2

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->k(II)I

    move-result p1

    return p1

    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->l:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->l:I

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->l(II)I

    move-result v0

    if-eqz v0, :cond_6

    if-lez v0, :cond_5

    const/4 v2, -0x1

    :cond_5
    return v2

    :cond_6
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->h:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->h:Z

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, -0x1

    :goto_2
    return v2

    :cond_8
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->f:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->f:I

    if-eq v0, v1, :cond_9

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->k(II)I

    move-result p1

    neg-int p1, p1

    return p1

    :cond_9
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->g:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->g:I

    if-eq v0, v1, :cond_a

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->k(II)I

    move-result p1

    return p1

    :cond_a
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c:Z

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v2, -0x1

    :goto_3
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->j:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->j:I

    if-eq v0, v1, :cond_c

    :goto_4
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->k(II)I

    move-result p1

    :goto_5
    mul-int v2, v2, p1

    return v2

    :cond_c
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->k:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->k:I

    if-eq v0, v1, :cond_d

    goto :goto_4

    :cond_d
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->l:I

    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->l:I

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->k(II)I

    move-result p1

    goto :goto_5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)I

    move-result p1

    return p1
.end method
