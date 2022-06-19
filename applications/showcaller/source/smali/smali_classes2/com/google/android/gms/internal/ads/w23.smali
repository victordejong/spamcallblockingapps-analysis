.class final Lcom/google/android/gms/internal/ads/w23;
.super Lcom/google/android/gms/internal/ads/u13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/u13<",
        "Lcom/google/android/gms/internal/ads/x53;",
        "Lcom/google/android/gms/internal/ads/u53;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/x23;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/x23;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w23;->b:Lcom/google/android/gms/internal/ads/x23;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/u13;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/x53;

    new-instance v0, Lcom/google/android/gms/internal/ads/a33;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a33;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/w13;->h()Lcom/google/android/gms/internal/ads/u13;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x53;->C()Lcom/google/android/gms/internal/ads/d63;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/z23;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z23;->f(Lcom/google/android/gms/internal/ads/d63;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/c53;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/c53;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/w13;->h()Lcom/google/android/gms/internal/ads/u13;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x53;->D()Lcom/google/android/gms/internal/ads/u83;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/u13;->b(Lcom/google/android/gms/internal/ads/mf3;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x53;->C()Lcom/google/android/gms/internal/ads/d63;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/d63;->D()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gc3;->a(I)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/x53;->E(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/x53;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/x53;

    new-instance v0, Lcom/google/android/gms/internal/ads/a33;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a33;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x53;->C()Lcom/google/android/gms/internal/ads/d63;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z23;->g(Lcom/google/android/gms/internal/ads/d63;)Lcom/google/android/gms/internal/ads/a63;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/c53;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/c53;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/w13;->h()Lcom/google/android/gms/internal/ads/u13;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x53;->D()Lcom/google/android/gms/internal/ads/u83;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/u13;->d(Lcom/google/android/gms/internal/ads/mf3;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/u53;->G()Lcom/google/android/gms/internal/ads/t53;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/t53;->r(Lcom/google/android/gms/internal/ads/a63;)Lcom/google/android/gms/internal/ads/t53;

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/r83;

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/t53;->s(Lcom/google/android/gms/internal/ads/r83;)Lcom/google/android/gms/internal/ads/t53;

    const/4 p1, 0x0

    .line 10
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/t53;->q(I)Lcom/google/android/gms/internal/ads/t53;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/u53;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/t13<",
            "Lcom/google/android/gms/internal/ads/x53;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/x23;->k(IIIIII)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x10

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/4 v7, 0x5

    const/4 v8, 0x3

    .line 4
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/x23;->k(IIIIII)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v1

    const-string v2, "AES128_CTR_HMAC_SHA256_RAW"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x20

    const/16 v6, 0x20

    const/4 v8, 0x1

    .line 6
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/x23;->k(IIIIII)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x3

    .line 8
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/x23;->k(IIIIII)Lcom/google/android/gms/internal/ads/t13;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
