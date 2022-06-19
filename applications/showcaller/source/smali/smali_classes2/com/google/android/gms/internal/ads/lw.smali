.class public final Lcom/google/android/gms/internal/ads/lw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# direct methods
.method static a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "gad:dynamite_module:experiment_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/nx;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->a:Lcom/google/android/gms/internal/ads/nx;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->b:Lcom/google/android/gms/internal/ads/nx;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->c:Lcom/google/android/gms/internal/ads/nx;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->d:Lcom/google/android/gms/internal/ads/nx;

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->e:Lcom/google/android/gms/internal/ads/nx;

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->k:Lcom/google/android/gms/internal/ads/nx;

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->f:Lcom/google/android/gms/internal/ads/nx;

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->g:Lcom/google/android/gms/internal/ads/nx;

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->h:Lcom/google/android/gms/internal/ads/nx;

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->i:Lcom/google/android/gms/internal/ads/nx;

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/wx;->j:Lcom/google/android/gms/internal/ads/nx;

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    return-object v0
.end method

.method static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/iy;->a:Lcom/google/android/gms/internal/ads/nx;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/lw;->c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V

    return-object v0
.end method

.method private static c(Ljava/util/List;Lcom/google/android/gms/internal/ads/nx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
