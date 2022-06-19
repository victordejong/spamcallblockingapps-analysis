.class final Lcom/google/android/gms/internal/ads/y43;
.super Lcom/google/android/gms/internal/ads/u13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/u13<",
        "Lcom/google/android/gms/internal/ads/o53;",
        "Lcom/google/android/gms/internal/ads/l53;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/z43;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/u13;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/o53;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o53;->D()Lcom/google/android/gms/internal/ads/r53;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z43;->k(Lcom/google/android/gms/internal/ads/r53;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o53;->C()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/z43;->l(I)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/o53;->E(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/o53;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/o53;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/l53;->G()Lcom/google/android/gms/internal/ads/k53;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/k53;->q(I)Lcom/google/android/gms/internal/ads/k53;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o53;->C()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ec3;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/k53;->r(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/k53;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/o53;->D()Lcom/google/android/gms/internal/ads/r53;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/k53;->s(Lcom/google/android/gms/internal/ads/r53;)Lcom/google/android/gms/internal/ads/k53;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/l53;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/t13<",
            "Lcom/google/android/gms/internal/ads/o53;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/t13;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/o53;->F()Lcom/google/android/gms/internal/ads/n53;

    move-result-object v2

    const/16 v3, 0x20

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/n53;->q(I)Lcom/google/android/gms/internal/ads/n53;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/r53;->D()Lcom/google/android/gms/internal/ads/q53;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/q53;->q(I)Lcom/google/android/gms/internal/ads/q53;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/r53;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/n53;->r(Lcom/google/android/gms/internal/ads/r53;)Lcom/google/android/gms/internal/ads/n53;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/o53;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES_CMAC"

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/t13;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/o53;->F()Lcom/google/android/gms/internal/ads/n53;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/n53;->q(I)Lcom/google/android/gms/internal/ads/n53;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/r53;->D()Lcom/google/android/gms/internal/ads/q53;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/q53;->q(I)Lcom/google/android/gms/internal/ads/q53;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/r53;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/n53;->r(Lcom/google/android/gms/internal/ads/r53;)Lcom/google/android/gms/internal/ads/n53;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/o53;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_CMAC"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/t13;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/o53;->F()Lcom/google/android/gms/internal/ads/n53;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/n53;->q(I)Lcom/google/android/gms/internal/ads/n53;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/r53;->D()Lcom/google/android/gms/internal/ads/q53;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/q53;->q(I)Lcom/google/android/gms/internal/ads/q53;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/r53;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/n53;->r(Lcom/google/android/gms/internal/ads/r53;)Lcom/google/android/gms/internal/ads/n53;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/o53;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_CMAC_RAW"

    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
