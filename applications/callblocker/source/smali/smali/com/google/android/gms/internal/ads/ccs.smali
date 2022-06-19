.class final synthetic Lcom/google/android/gms/internal/ads/ccs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ccs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ccs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ccs;->a:Lcom/google/android/gms/internal/ads/cae;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    :try_start_0
    const-string/jumbo v0, "sdk_env"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "container_version"

    const v2, 0xbdfcc1

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
