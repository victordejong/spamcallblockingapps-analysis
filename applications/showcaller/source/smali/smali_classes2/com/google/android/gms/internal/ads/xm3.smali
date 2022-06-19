.class public final Lcom/google/android/gms/internal/ads/xm3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/xm3;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/tm3;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zm3;->k(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/xm3;->e:Z

    .line 2
    iget p3, p1, Lcom/google/android/gms/internal/ads/u4;->f:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/tm3;->D:I

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/xm3;->f:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/xm3;->g:Z

    .line 3
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/az3;->u:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, ""

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p3

    goto :goto_2

    .line 5
    :cond_2
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/az3;->u:Lcom/google/android/gms/internal/ads/zzfoj;

    :goto_2
    const/4 v1, 0x0

    .line 6
    :goto_3
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 7
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
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
    iput v1, p0, Lcom/google/android/gms/internal/ads/xm3;->h:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/xm3;->i:I

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/xm3;->j:I

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xm3;->l:Z

    .line 11
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zm3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 12
    :goto_5
    invoke-static {p1, p4, v1}, Lcom/google/android/gms/internal/ads/zm3;->m(Lcom/google/android/gms/internal/ads/u4;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xm3;->k:I

    if-gtz v3, :cond_7

    .line 13
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/az3;->u:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 14
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    if-gtz p3, :cond_7

    :cond_6
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/xm3;->f:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/xm3;->g:Z

    if-eqz p2, :cond_8

    if-lez p1, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xm3;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/xm3;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/uw2;->i()Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/xm3;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/xm3;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/xm3;->h:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/xm3;->h:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/dy2;->zzb()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dy2;->zza()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/xm3;->i:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/xm3;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/uw2;->b(II)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/xm3;->j:I

    .line 5
    iget v2, p1, Lcom/google/android/gms/internal/ads/xm3;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/uw2;->b(II)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/xm3;->f:Z

    .line 6
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/xm3;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/xm3;->g:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/xm3;->g:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/xm3;->i:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dy2;->zzb()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dy2;->zzb()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dy2;->zza()Lcom/google/android/gms/internal/ads/dy2;

    move-result-object v3

    .line 10
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/uw2;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/xm3;->k:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/xm3;->k:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/uw2;->b(II)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/xm3;->j:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0, v0}, Lcom/google/android/gms/internal/ads/uw2;->c(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uw2;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/xm3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/xm3;->a(Lcom/google/android/gms/internal/ads/xm3;)I

    move-result p1

    return p1
.end method
