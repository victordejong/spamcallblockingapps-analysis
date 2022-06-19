.class public final Lcom/google/android/gms/internal/ads/azc;
.super Lcom/google/android/gms/internal/ads/azd;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final b:Lorg/json/JSONObject;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cgr;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/azd;-><init>(Lcom/google/android/gms/internal/ads/cgr;)V

    .line 2
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "tracking_urls_and_actions"

    aput-object v3, v2, v1

    const-string/jumbo v3, "active_view"

    aput-object v3, v2, v0

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/wy;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/azc;->b:Lorg/json/JSONObject;

    .line 3
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "allow_pub_owned_ad_view"

    aput-object v3, v2, v1

    invoke-static {v1, p2, v2}, Lcom/google/android/gms/internal/ads/wy;->a(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/azc;->c:Z

    .line 4
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "attribution"

    aput-object v3, v2, v1

    const-string/jumbo v3, "allow_pub_rendering"

    aput-object v3, v2, v0

    .line 5
    invoke-static {v1, p2, v2}, Lcom/google/android/gms/internal/ads/wy;->a(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/azc;->d:Z

    .line 6
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "enable_omid"

    aput-object v3, v2, v1

    invoke-static {v1, p2, v2}, Lcom/google/android/gms/internal/ads/wy;->a(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/azc;->e:Z

    .line 7
    if-eqz p2, :cond_0

    const-string/jumbo v2, "overlay"

    .line 8
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/azc;->f:Z

    .line 9
    return-void

    :cond_0
    move v0, v1

    .line 8
    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azc;->b:Lorg/json/JSONObject;

    .line 14
    :goto_0
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azc;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgr;->w:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azc;->f:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azc;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azc;->e:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/azc;->d:Z

    return v0
.end method
