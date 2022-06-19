.class final synthetic Lcom/google/android/gms/internal/ads/bvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bvc;

.field private final b:Lcom/google/android/gms/internal/ads/cov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bvc;Lcom/google/android/gms/internal/ads/cov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvb;->a:Lcom/google/android/gms/internal/ads/bvc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvb;->b:Lcom/google/android/gms/internal/ads/cov;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvb;->a:Lcom/google/android/gms/internal/ads/bvc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvb;->b:Lcom/google/android/gms/internal/ads/cov;

    check-cast p1, Lcom/google/android/gms/internal/ads/bgy;

    .line 1050
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "isNonagon"

    const/4 v4, 0x1

    .line 1051
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1052
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->fb:Lcom/google/android/gms/internal/ads/af;

    .line 1053
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 1054
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/n;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "skipDeepLinkValidation"

    .line 1055
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1056
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1057
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cov;->r:Lcom/google/android/gms/internal/ads/cpc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpc;->c:Lorg/json/JSONObject;

    const-string v4, "response"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_params"

    .line 1058
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "google.afma.nativeAds.preProcessJson"

    .line 1060
    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bvd;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/bvd;-><init>(Lcom/google/android/gms/internal/ads/bvc;Lcom/google/android/gms/internal/ads/bgy;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/bvc;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 2019
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
