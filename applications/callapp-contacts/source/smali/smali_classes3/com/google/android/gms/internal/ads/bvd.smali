.class final synthetic Lcom/google/android/gms/internal/ads/bvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bvc;

.field private final b:Lcom/google/android/gms/internal/ads/bgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bvc;Lcom/google/android/gms/internal/ads/bgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvd;->a:Lcom/google/android/gms/internal/ads/bvc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvd;->b:Lcom/google/android/gms/internal/ads/bgy;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvd;->a:Lcom/google/android/gms/internal/ads/bvc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvd;->b:Lcom/google/android/gms/internal/ads/bgy;

    check-cast p1, Lorg/json/JSONObject;

    .line 1026
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bvc;->c:Lcom/google/android/gms/internal/ads/cqd;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cqd;->a(Lcom/google/android/gms/internal/ads/dbt;)V

    const-string v0, "success"

    .line 1027
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "json"

    .line 1029
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 1028
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzamh;

    const-string v0, "process json failed"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamh;-><init>(Ljava/lang/String;)V

    throw p1
.end method
