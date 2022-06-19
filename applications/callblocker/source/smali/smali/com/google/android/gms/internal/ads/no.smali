.class public final Lcom/google/android/gms/internal/ads/no;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/nq;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nq;->a(Lcom/google/android/gms/internal/ads/nq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/no;->a:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nq;->b(Lcom/google/android/gms/internal/ads/nq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/no;->b:Z

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nq;->c(Lcom/google/android/gms/internal/ads/nq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/no;->c:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nq;->d(Lcom/google/android/gms/internal/ads/nq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/no;->d:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nq;->e(Lcom/google/android/gms/internal/ads/nq;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/no;->e:Z

    .line 7
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/nq;Lcom/google/android/gms/internal/ads/nn;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/no;-><init>(Lcom/google/android/gms/internal/ads/nq;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 8
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/no;->a:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/no;->b:Z

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/no;->c:Z

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/no;->d:Z

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/no;->e:Z

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string/jumbo v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    const/4 v0, 0x0

    goto :goto_0
.end method
