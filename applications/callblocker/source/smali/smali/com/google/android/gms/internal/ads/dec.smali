.class final Lcom/google/android/gms/internal/ads/dec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ddz;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    .line 20
    check-cast p2, Lcom/google/android/gms/internal/ads/dea;

    .line 21
    check-cast p3, Lcom/google/android/gms/internal/ads/ddy;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dea;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    return v2

    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dea;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/dea;

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/ads/dea;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dea;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dea;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dea;->b()Lcom/google/android/gms/internal/ads/dea;

    move-result-object p1

    .line 16
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dea;->a(Lcom/google/android/gms/internal/ads/dea;)V

    .line 18
    :cond_1
    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dea;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/dea;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/dea;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dea;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/dea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dea;->c()V

    .line 8
    return-object p1
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/dea;->a()Lcom/google/android/gms/internal/ads/dea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dea;->b()Lcom/google/android/gms/internal/ads/dea;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ddx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/ddx",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/ddy;

    .line 4
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
