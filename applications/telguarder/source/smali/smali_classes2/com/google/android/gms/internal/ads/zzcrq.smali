.class public final Lcom/google/android/gms/internal/ads/zzcrq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzadw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzvw;",
            ">;"
        }
    .end annotation
.end field

.field private zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzgsy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzvw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzgsy:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzadw:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAdapterResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzvw;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzadw:Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdmw;JLcom/google/android/gms/internal/ads/zzvg;)V
    .locals 2

    .line 20
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzdlu:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzgsy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    if-nez v1, :cond_1

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzgsy:Ljava/util/Map;

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvw;

    .line 27
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzvw;->zzcip:J

    .line 28
    iput-object p4, p1, Lcom/google/android/gms/internal/ads/zzvw;->zzciq:Lcom/google/android/gms/internal/ads/zzvg;

    return-void
.end method

.method public final zzasa()Lcom/google/android/gms/internal/ads/zzbrh;
    .locals 3

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzbrh;-><init>(Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcrq;)V

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 8

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzdlu:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzgsy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjj:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    :try_start_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjj:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 16
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvw;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjn:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzvg;Landroid/os/Bundle;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzadw:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrq;->zzgsy:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
