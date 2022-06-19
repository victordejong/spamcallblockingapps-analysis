.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:I

.field private final m:I

.field private final n:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->u(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->g:Z

    .line 5
    iget-object p3, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->f:Ljava/lang/String;

    .line 6
    invoke-static {p1, p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->r(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->h:I

    .line 7
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->f:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->k:Z

    .line 8
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->y:I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->l:I

    .line 9
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->z:I

    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->m:I

    .line 10
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->h:I

    iput v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->n:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 11
    iget v4, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->y:I

    if-gt v2, v4, :cond_2

    :cond_1
    if-eq p3, v3, :cond_3

    iget p2, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->x:I

    if-gt p3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->d:Z

    .line 12
    invoke-static {}, Lcom/google/android/exoplayer2/util/h0;->M()[Ljava/lang/String;

    move-result-object p2

    const p3, 0x7fffffff

    const/4 v1, 0x0

    .line 13
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 14
    aget-object v2, p2, v1

    .line 15
    invoke-static {p1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->r(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_4

    move p3, v1

    move v0, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_5
    :goto_3
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->i:I

    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->j:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->g:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->g:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->h:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->h:I

    if-eq v0, v1, :cond_2

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->i(II)I

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->d:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->d:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->D:Z

    if-eqz v0, :cond_6

    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->n:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->n:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->j(II)I

    move-result v0

    if-eqz v0, :cond_6

    if-lez v0, :cond_5

    const/4 v2, -0x1

    :cond_5
    return v2

    .line 7
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->k:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->k:Z

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, -0x1

    :goto_2
    return v2

    .line 8
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->i:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->i:I

    if-eq v0, v1, :cond_9

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->i(II)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 10
    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->j:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->j:I

    if-eq v0, v1, :cond_a

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->i(II)I

    move-result p1

    return p1

    .line 12
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->d:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->g:Z

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v2, -0x1

    .line 13
    :goto_3
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->l:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->l:I

    if-eq v0, v1, :cond_c

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->i(II)I

    move-result p1

    :goto_4
    mul-int v2, v2, p1

    return v2

    .line 15
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->m:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->m:I

    if-eq v0, v1, :cond_d

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->i(II)I

    move-result p1

    goto :goto_4

    .line 17
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->n:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->n:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->i(II)I

    move-result p1

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$b;)I

    move-result p1

    return p1
.end method
