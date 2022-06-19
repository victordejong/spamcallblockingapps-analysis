.class public final Lcom/google/android/gms/ads/AdapterResponseInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final zzadg:Lcom/google/android/gms/internal/ads/zzvw;

.field private final zzadh:Lcom/google/android/gms/ads/AdError;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzvw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadg:Lcom/google/android/gms/internal/ads/zzvw;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvw;->zzciq:Lcom/google/android/gms/internal/ads/zzvg;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvw;->zzciq:Lcom/google/android/gms/internal/ads/zzvg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvg;->zzqb()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadh:Lcom/google/android/gms/ads/AdError;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzvw;)Lcom/google/android/gms/ads/AdapterResponseInfo;
    .locals 1

    if-eqz p0, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/gms/ads/AdapterResponseInfo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdapterResponseInfo;-><init>(Lcom/google/android/gms/internal/ads/zzvw;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getAdError()Lcom/google/android/gms/ads/AdError;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadh:Lcom/google/android/gms/ads/AdError;

    return-object v0
.end method

.method public final getAdapterClassName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadg:Lcom/google/android/gms/internal/ads/zzvw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvw;->zzcio:Ljava/lang/String;

    return-object v0
.end method

.method public final getCredentials()Landroid/os/Bundle;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadg:Lcom/google/android/gms/internal/ads/zzvw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvw;->zzcir:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getLatencyMillis()J
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadg:Lcom/google/android/gms/internal/ads/zzvw;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzvw;->zzcip:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzdr()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error forming toString output."

    :goto_0
    return-object v0
.end method

.method public final zzdr()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadg:Lcom/google/android/gms/internal/ads/zzvw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvw;->zzcio:Ljava/lang/String;

    const-string v2, "Adapter"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadg:Lcom/google/android/gms/internal/ads/zzvw;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzvw;->zzcip:J

    const-string v3, "Latency"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadg:Lcom/google/android/gms/internal/ads/zzvw;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvw;->zzcir:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    iget-object v4, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadg:Lcom/google/android/gms/internal/ads/zzvw;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzvw;->zzcir:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v2, "Credentials"

    .line 23
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzadh:Lcom/google/android/gms/ads/AdError;

    const-string v2, "Ad Error"

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 25
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->zzdr()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    return-object v0
.end method
