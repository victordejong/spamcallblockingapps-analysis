.class public final Lcom/google/android/gms/internal/ads/en1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/u51;
.implements Lcom/google/android/gms/internal/ads/n41;
.implements Lcom/google/android/gms/internal/ads/b31;
.implements Lcom/google/android/gms/internal/ads/z51;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/nn1;

.field private final e:Lcom/google/android/gms/internal/ads/wn1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/nn1;Lcom/google/android/gms/internal/ads/wn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/en1;->e:Lcom/google/android/gms/internal/ads/wn1;

    return-void
.end method


# virtual methods
.method public final O(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nn1;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "ftl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nn1;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nn1;->c()Ljava/util/Map;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->f:Ljava/lang/String;

    const-string v1, "ed"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/en1;->e:Lcom/google/android/gms/internal/ads/wn1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nn1;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/yn1;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final S(Lcom/google/android/gms/internal/ads/rj2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nn1;->a(Lcom/google/android/gms/internal/ads/rj2;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nn1;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "loaded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/en1;->e:Lcom/google/android/gms/internal/ads/wn1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nn1;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yn1;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/nn1;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final y(Z)V
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->l5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/en1;->d:Lcom/google/android/gms/internal/ads/nn1;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nn1;->c()Ljava/util/Map;

    move-result-object p1

    const-string v0, "scar"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
