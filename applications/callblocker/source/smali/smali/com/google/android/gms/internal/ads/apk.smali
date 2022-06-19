.class public final Lcom/google/android/gms/internal/ads/apk;
.super Lcom/google/android/gms/internal/ads/eay;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eay;-><init>()V

    .line 2
    if-nez p1, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/apk;->b:Ljava/lang/String;

    .line 3
    const-string/jumbo v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 6
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/apk;->a(Lcom/google/android/gms/internal/ads/cgr;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_2
    if-nez v0, :cond_4

    :goto_3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/apk;->a:Ljava/lang/String;

    .line 8
    return-void

    .line 2
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cgr;->S:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 6
    goto :goto_2

    :cond_4
    move-object p2, v0

    .line 7
    goto :goto_3
.end method

.method private static a(Lcom/google/android/gms/internal/ads/cgr;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "class_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 13
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apk;->b:Ljava/lang/String;

    return-object v0
.end method
