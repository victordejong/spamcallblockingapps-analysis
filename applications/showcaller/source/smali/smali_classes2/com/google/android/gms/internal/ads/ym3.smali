.class public final Lcom/google/android/gms/internal/ads/ym3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/ym3;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Z

.field private final e:Lcom/google/android/gms/internal/ads/tm3;

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/tm3;IZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ym3;->e:Lcom/google/android/gms/internal/ads/tm3;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_4

    iget v4, p1, Lcom/google/android/gms/internal/ads/u4;->s:I

    if-eq v4, v2, :cond_0

    iget v4, p2, Lcom/google/android/gms/internal/ads/az3;->d:I

    :cond_0
    iget v4, p1, Lcom/google/android/gms/internal/ads/u4;->t:I

    if-eq v4, v2, :cond_1

    iget v4, p2, Lcom/google/android/gms/internal/ads/az3;->e:I

    :cond_1
    iget v4, p1, Lcom/google/android/gms/internal/ads/u4;->u:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_2

    iget v5, p2, Lcom/google/android/gms/internal/ads/az3;->f:I

    const/high16 v5, 0x4f000000

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    :cond_2
    iget v4, p1, Lcom/google/android/gms/internal/ads/u4;->j:I

    if-eq v4, v2, :cond_3

    iget v4, p2, Lcom/google/android/gms/internal/ads/az3;->g:I

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/ym3;->d:Z

    if-eqz p4, :cond_8

    .line 2
    iget p4, p1, Lcom/google/android/gms/internal/ads/u4;->s:I

    if-eq p4, v2, :cond_5

    iget v4, p2, Lcom/google/android/gms/internal/ads/az3;->h:I

    if-ltz p4, :cond_8

    :cond_5
    iget p4, p1, Lcom/google/android/gms/internal/ads/u4;->t:I

    if-eq p4, v2, :cond_6

    iget v4, p2, Lcom/google/android/gms/internal/ads/az3;->i:I

    if-ltz p4, :cond_8

    :cond_6
    iget p4, p1, Lcom/google/android/gms/internal/ads/u4;->u:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/google/android/gms/internal/ads/az3;->j:I

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-ltz p4, :cond_8

    :cond_7
    iget p4, p1, Lcom/google/android/gms/internal/ads/u4;->j:I

    if-eq p4, v2, :cond_9

    iget v0, p2, Lcom/google/android/gms/internal/ads/az3;->k:I

    if-ltz p4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ym3;->f:Z

    .line 3
    invoke-static {p3, v3}, Lcom/google/android/gms/internal/ads/zm3;->k(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ym3;->g:Z

    .line 4
    iget p3, p1, Lcom/google/android/gms/internal/ads/u4;->j:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/ym3;->h:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u4;->c()I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/ym3;->i:I

    .line 6
    :goto_2
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/az3;->o:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v3, p3, :cond_b

    .line 7
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    if-eqz p3, :cond_a

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/az3;->o:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 8
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    const v3, 0x7fffffff

    :goto_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/ym3;->j:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ym3;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ym3;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ym3;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zm3;->g()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zm3;->g()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dy2;->zza()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/uw2;->i()Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ym3;->g:Z

    .line 4
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/ym3;->g:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ym3;->d:Z

    .line 5
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/ym3;->d:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ym3;->f:Z

    .line 6
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/ym3;->f:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ym3;->j:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/ym3;->j:I

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/dy2;->zzb()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dy2;->zza()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    .line 9
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ym3;->h:I

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/ym3;->h:I

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ym3;->e:Lcom/google/android/gms/internal/ads/tm3;

    .line 12
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/az3;->x:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zm3;->h()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ym3;->i:I

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/ym3;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ym3;->h:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/google/android/gms/internal/ads/ym3;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uw2;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/ym3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ym3;->a(Lcom/google/android/gms/internal/ads/ym3;)I

    move-result p1

    return p1
.end method
