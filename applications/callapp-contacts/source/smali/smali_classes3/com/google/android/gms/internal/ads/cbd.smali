.class final synthetic Lcom/google/android/gms/internal/ads/cbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/caw;

.field private final b:[Lcom/google/android/gms/internal/ads/bgy;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/caw;[Lcom/google/android/gms/internal/ads/bgy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbd;->a:Lcom/google/android/gms/internal/ads/caw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cbd;->b:[Lcom/google/android/gms/internal/ads/bgy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cbd;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbd;->a:Lcom/google/android/gms/internal/ads/caw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cbd;->b:[Lcom/google/android/gms/internal/ads/bgy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cbd;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/bgy;

    const/4 v3, 0x0

    .line 1165
    aput-object p1, v1, v3

    .line 1168
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/caw;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzatj;->zzdva:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzatj;->zzdva:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzatj;->zzaay:Landroid/view/View;

    .line 1169
    invoke-static {v1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1170
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/caw;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzatj;->zzaay:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1171
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzatj;->zzaay:Landroid/view/View;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1172
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/caw;->a:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzatj;->zzaay:Landroid/view/View;

    .line 1173
    invoke-static {v5, v6}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1174
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "asset_view_signal"

    .line 1175
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_view_signal"

    .line 1176
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scroll_view_signal"

    .line 1177
    invoke-virtual {v6, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lock_screen_signal"

    .line 1178
    invoke-virtual {v6, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 1180
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/caw;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/caw;->g:Landroid/graphics/Point;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/caw;->f:Landroid/graphics/Point;

    .line 1181
    invoke-static {v1, v3, v4, v0}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "click_signal"

    .line 1182
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1184
    :cond_0
    invoke-virtual {p1, v2, v6}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
