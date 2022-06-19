.class public final Lcom/google/android/gms/internal/ads/chk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/cgq;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyd;->i:Z

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/cgq;

    const/4 v1, -0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/cgq;-><init>(IIZ)V

    .line 12
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cgq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dyd;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dyd;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cgq;-><init>(IIZ)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/google/android/gms/internal/ads/cgq;)Lcom/google/android/gms/internal/ads/cgq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/cgq;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cgq;",
            ")",
            "Lcom/google/android/gms/internal/ads/cgq;"
        }
    .end annotation

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cgq;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/dyd;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/cgq;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/dyd;"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cgq;

    .line 4
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/cgq;->c:Z

    if-eqz v3, :cond_0

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/e;->h:Lcom/google/android/gms/ads/e;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v3, Lcom/google/android/gms/ads/e;

    iget v4, v0, Lcom/google/android/gms/internal/ads/cgq;->a:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgq;->b:I

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/ads/e;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/ads/e;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/ads/e;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/dyd;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dyd;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/e;)V

    return-object v1
.end method
