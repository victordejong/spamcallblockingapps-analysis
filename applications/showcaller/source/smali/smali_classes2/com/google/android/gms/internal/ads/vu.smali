.class final Lcom/google/android/gms/internal/ads/vu;
.super Lcom/google/android/gms/internal/ads/c40;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/wu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/wu;Lcom/google/android/gms/internal/ads/uu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vu;->d:Lcom/google/android/gms/internal/ads/wu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/c40;-><init>()V

    return-void
.end method


# virtual methods
.method public final U4(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vu;->d:Lcom/google/android/gms/internal/ads/wu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wu;->b(Lcom/google/android/gms/internal/ads/wu;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vu;->d:Lcom/google/android/gms/internal/ads/wu;

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/wu;->c(Lcom/google/android/gms/internal/ads/wu;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vu;->d:Lcom/google/android/gms/internal/ads/wu;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/wu;->h(Lcom/google/android/gms/internal/ads/wu;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/wu;->d()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wu;->a(Lcom/google/android/gms/internal/ads/wu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/initialization/b;

    .line 5
    invoke-interface {v3, p1}, Lcom/google/android/gms/ads/initialization/b;->a(Lcom/google/android/gms/ads/initialization/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/wu;->d()Lcom/google/android/gms/internal/ads/wu;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wu;->a(Lcom/google/android/gms/internal/ads/wu;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
