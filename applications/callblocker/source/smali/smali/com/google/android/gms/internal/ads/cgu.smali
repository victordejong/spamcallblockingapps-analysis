.class public final Lcom/google/android/gms/internal/ads/cgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wz;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lorg/json/JSONObject;

.field private final d:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wy;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cgu;->d:Lorg/json/JSONObject;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgu;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "ad_html"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cgu;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgu;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "ad_base_url"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cgu;->b:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgu;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "ad_json"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cgu;->c:Lorg/json/JSONObject;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/util/JsonWriter;)V
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgu;->d:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wy;->a(Landroid/util/JsonWriter;Lorg/json/JSONObject;)V

    .line 8
    return-void
.end method
