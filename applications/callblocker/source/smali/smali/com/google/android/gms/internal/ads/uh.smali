.class public final Lcom/google/android/gms/internal/ads/uh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:J

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/kj;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lorg/json/JSONObject;

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->b:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->c:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->d:Ljava/util/Map;

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uh;->h:Z

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uh;->f:Ljava/lang/String;

    .line 7
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/uh;->a:J

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->g:Lorg/json/JSONObject;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->g:Lorg/json/JSONObject;

    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uh;->h:Z

    .line 14
    const-string/jumbo v0, "App settings could not be fetched successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 16
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/uh;->h:Z

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->g:Lorg/json/JSONObject;

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->e:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->g:Lorg/json/JSONObject;

    const-string/jumbo v2, "ad_unit_id_settings"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 19
    if-eqz v2, :cond_5

    move v1, v0

    .line 20
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 21
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 23
    const-string/jumbo v4, "format"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    const-string/jumbo v5, "ad_unit_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 34
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_3
    const-string/jumbo v6, "interstitial"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->c:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string/jumbo v1, "Exception occurred while processing app setting json"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "AppSettings.parseAppSettingsJson"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_4
    :try_start_1
    const-string/jumbo v6, "rewarded"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 30
    const-string/jumbo v4, "mediation_config"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    new-instance v4, Lcom/google/android/gms/internal/ads/kj;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/kj;-><init>(Lorg/json/JSONObject;)V

    .line 33
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->d:Ljava/util/Map;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 35
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uh;->g:Lorg/json/JSONObject;

    .line 36
    const-string/jumbo v2, "persistable_banner_ad_unit_ids"

    .line 37
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 40
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uh;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/uh;->a:J

    return-wide v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uh;->h:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/kj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uh;->g:Lorg/json/JSONObject;

    return-object v0
.end method
