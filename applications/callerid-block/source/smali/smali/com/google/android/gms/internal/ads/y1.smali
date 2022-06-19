.class final Lcom/google/android/gms/internal/ads/y1;
.super Lcom/google/android/gms/internal/ads/va;
.source ""


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/z1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/z1;Lcom/google/android/gms/internal/ads/x1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y1;->b:Lcom/google/android/gms/internal/ads/z1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/va;-><init>()V

    return-void
.end method


# virtual methods
.method public final r3(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzamj;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y1;->b:Lcom/google/android/gms/internal/ads/z1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/z1;->g(Lcom/google/android/gms/internal/ads/z1;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y1;->b:Lcom/google/android/gms/internal/ads/z1;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/z1;->h(Lcom/google/android/gms/internal/ads/z1;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y1;->b:Lcom/google/android/gms/internal/ads/z1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/z1;->i(Lcom/google/android/gms/internal/ads/z1;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/a;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/z1;->a()Lcom/google/android/gms/internal/ads/z1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z1;->j(Lcom/google/android/gms/internal/ads/z1;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/initialization/b;

    invoke-interface {v3, p1}, Lcom/google/android/gms/ads/initialization/b;->a(Lcom/google/android/gms/ads/initialization/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/z1;->a()Lcom/google/android/gms/internal/ads/z1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/z1;->j(Lcom/google/android/gms/internal/ads/z1;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
