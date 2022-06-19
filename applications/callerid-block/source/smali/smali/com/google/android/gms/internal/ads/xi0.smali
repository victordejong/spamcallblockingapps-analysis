.class public final Lcom/google/android/gms/internal/ads/xi0;
.super Lcom/google/android/gms/internal/ads/yi0;
.source ""


# instance fields
.field private final b:Lorg/json/JSONObject;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/al1;Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/yi0;-><init>(Lcom/google/android/gms/internal/ads/al1;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/String;

    const-string v1, "tracking_urls_and_actions"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "active_view"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lcom/google/android/gms/ads/internal/util/h0;->h(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xi0;->b:Lorg/json/JSONObject;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "allow_pub_owned_ad_view"

    aput-object v1, v0, v2

    invoke-static {v2, p2, v0}, Lcom/google/android/gms/ads/internal/util/h0;->i(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xi0;->c:Z

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "attribution"

    aput-object v0, p1, v2

    const-string v0, "allow_pub_rendering"

    aput-object v0, p1, v3

    invoke-static {v2, p2, p1}, Lcom/google/android/gms/ads/internal/util/h0;->i(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/xi0;->d:Z

    new-array p1, v3, [Ljava/lang/String;

    const-string v0, "enable_omid"

    aput-object v0, p1, v2

    invoke-static {v2, p2, p1}, Lcom/google/android/gms/ads/internal/util/h0;->i(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/xi0;->e:Z

    const-string p1, "overlay"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/xi0;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi0;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yi0;->a:Lcom/google/android/gms/internal/ads/al1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/al1;->y:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xi0;->f:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xi0;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xi0;->e:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xi0;->d:Z

    return v0
.end method
