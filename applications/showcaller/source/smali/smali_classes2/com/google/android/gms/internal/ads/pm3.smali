.class public final Lcom/google/android/gms/internal/ads/pm3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/pm3;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/tm3;

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/tm3;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pm3;->f:Lcom/google/android/gms/internal/ads/tm3;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/u4;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zm3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pm3;->e:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zm3;->k(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/pm3;->g:Z

    const/4 p3, 0x0

    .line 2
    :goto_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/az3;->p:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge p3, v1, :cond_1

    .line 3
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/az3;->p:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 4
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zm3;->m(Lcom/google/android/gms/internal/ads/u4;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const p3, 0x7fffffff

    const/4 v1, 0x0

    :goto_1
    iput p3, p0, Lcom/google/android/gms/internal/ads/pm3;->i:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/pm3;->h:I

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/pm3;->j:I

    .line 7
    iget p3, p1, Lcom/google/android/gms/internal/ads/u4;->f:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eq v1, p3, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/pm3;->m:Z

    .line 8
    iget p3, p1, Lcom/google/android/gms/internal/ads/u4;->A:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/pm3;->n:I

    .line 9
    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->B:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/pm3;->o:I

    .line 10
    iget v3, p1, Lcom/google/android/gms/internal/ads/u4;->j:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/pm3;->p:I

    const/4 v4, -0x1

    .line 11
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/pm3;->d:Z

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/wa;->y()[Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    .line 13
    :goto_3
    array-length v3, p3

    if-ge v1, v3, :cond_4

    .line 14
    aget-object v3, p3, v1

    .line 15
    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zm3;->m(Lcom/google/android/gms/internal/ads/u4;Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const v1, 0x7fffffff

    const/4 v3, 0x0

    :goto_4
    iput v1, p0, Lcom/google/android/gms/internal/ads/pm3;->k:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/pm3;->l:I

    .line 16
    :goto_5
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/az3;->t:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v0, p3, :cond_6

    .line 17
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    if-eqz p3, :cond_5

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/az3;->t:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 18
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    move v2, v0

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    iput v2, p0, Lcom/google/android/gms/internal/ads/pm3;->q:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pm3;)I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pm3;->g:Z

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

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/pm3;->g:Z

    .line 4
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/pm3;->g:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->i:I

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->i:I

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/dy2;->zzb()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dy2;->zza()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    .line 7
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->h:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->h:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->b(II)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->j:I

    .line 8
    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->b(II)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2, v2}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->q:I

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->q:I

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/dy2;->zzb()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dy2;->zza()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    .line 12
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->p:I

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->p:I

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/pm3;->f:Lcom/google/android/gms/internal/ads/tm3;

    .line 15
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/az3;->x:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zm3;->h()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    .line 16
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/pm3;->m:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/pm3;->m:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->k:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->k:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/dy2;->zzb()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dy2;->zza()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v4

    .line 19
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->l:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->l:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->b(II)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->n:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->o:I

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/pm3;->p:I

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/pm3;->p:I

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/pm3;->e:Ljava/lang/String;

    .line 24
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/pm3;->e:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zm3;->h()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uw2;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/pm3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/pm3;->a(Lcom/google/android/gms/internal/ads/pm3;)I

    move-result p1

    return p1
.end method
