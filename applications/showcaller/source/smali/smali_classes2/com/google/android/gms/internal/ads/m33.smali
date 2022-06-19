.class final Lcom/google/android/gms/internal/ads/m33;
.super Lcom/google/android/gms/internal/ads/u13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/u13<",
        "Lcom/google/android/gms/internal/ads/o73;",
        "Lcom/google/android/gms/internal/ads/l73;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/n33;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/n33;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m33;->b:Lcom/google/android/gms/internal/ads/n33;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/u13;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/o73;

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/o73;->C(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/o73;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/o73;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/l73;->F()Lcom/google/android/gms/internal/ads/k73;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/k73;->q(I)Lcom/google/android/gms/internal/ads/k73;

    const/16 v0, 0x20

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ec3;->a(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/k73;->r(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/k73;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/l73;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/t13<",
            "Lcom/google/android/gms/internal/ads/o73;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/t13;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/o73;->D()Lcom/google/android/gms/internal/ads/o73;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    const-string v2, "CHACHA20_POLY1305"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/t13;

    invoke-static {}, Lcom/google/android/gms/internal/ads/o73;->D()Lcom/google/android/gms/internal/ads/o73;

    move-result-object v2

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    const-string v2, "CHACHA20_POLY1305_RAW"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
