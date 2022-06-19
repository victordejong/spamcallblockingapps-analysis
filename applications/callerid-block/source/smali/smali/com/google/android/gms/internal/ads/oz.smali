.class final Lcom/google/android/gms/internal/ads/oz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/qz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/qz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 7

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/qz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qz;->p(Lcom/google/android/gms/internal/ads/qz;)Lcom/google/android/gms/internal/ads/bm1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/qz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qz;->m(Lcom/google/android/gms/internal/ads/qz;)Lcom/google/android/gms/internal/ads/qq1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/qz;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qz;->d(Lcom/google/android/gms/internal/ads/qz;)Lcom/google/android/gms/internal/ads/ml1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/qz;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qz;->k(Lcom/google/android/gms/internal/ads/qz;)Lcom/google/android/gms/internal/ads/al1;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/qz;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/qz;->k(Lcom/google/android/gms/internal/ads/qz;)Lcom/google/android/gms/internal/ads/al1;

    move-result-object v3

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/al1;->c:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/qq1;->b(Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oz;->a:Lcom/google/android/gms/internal/ads/qz;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qz;->n(Lcom/google/android/gms/internal/ads/qz;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/l1;->h(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/bm1;->b(Ljava/util/List;I)V

    return-void
.end method
