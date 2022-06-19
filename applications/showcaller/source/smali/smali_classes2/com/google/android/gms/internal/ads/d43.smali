.class final Lcom/google/android/gms/internal/ads/d43;
.super Lcom/google/android/gms/internal/ads/u13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/u13<",
        "Lcom/google/android/gms/internal/ads/i73;",
        "Lcom/google/android/gms/internal/ads/e73;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/f43;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/f43;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d43;->b:Lcom/google/android/gms/internal/ads/f43;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/u13;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/i73;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i73;->C()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i73;->C()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid keys must have 64 bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/i73;->D(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/i73;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/i73;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/e73;->F()Lcom/google/android/gms/internal/ads/d73;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i73;->C()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ec3;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d73;->r(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/d73;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d73;->q(I)Lcom/google/android/gms/internal/ads/d73;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/e73;

    return-object p1
.end method

.method public final e()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/t13<",
            "Lcom/google/android/gms/internal/ads/i73;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/t13;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/i73;->E()Lcom/google/android/gms/internal/ads/h73;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/h73;->q(I)Lcom/google/android/gms/internal/ads/h73;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/i73;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_SIV"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/t13;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/i73;->E()Lcom/google/android/gms/internal/ads/h73;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/h73;->q(I)Lcom/google/android/gms/internal/ads/h73;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/i73;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    const-string v2, "AES256_SIV_RAW"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
