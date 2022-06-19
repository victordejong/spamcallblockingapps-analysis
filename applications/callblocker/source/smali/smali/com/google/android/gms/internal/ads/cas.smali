.class public final Lcom/google/android/gms/internal/ads/cas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/c/a$a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/c/a$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cas;->a:Lcom/google/android/gms/ads/c/a$a;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cas;->b:Ljava/lang/String;

    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 5
    check-cast p1, Lorg/json/JSONObject;

    .line 6
    :try_start_0
    const-string/jumbo v0, "pii"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cas;->a:Lcom/google/android/gms/ads/c/a$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cas;->a:Lcom/google/android/gms/ads/c/a$a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/c/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    const-string/jumbo v1, "rdid"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cas;->a:Lcom/google/android/gms/ads/c/a$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/c/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string/jumbo v1, "is_lat"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cas;->a:Lcom/google/android/gms/ads/c/a$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/c/a$a;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    const-string/jumbo v1, "idtype"

    const-string/jumbo v2, "adid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :goto_0
    return-void

    .line 11
    :cond_0
    const-string/jumbo v1, "pdid"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cas;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string/jumbo v1, "pdidtype"

    const-string/jumbo v2, "ssaid"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string/jumbo v1, "Failed putting Ad ID."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
