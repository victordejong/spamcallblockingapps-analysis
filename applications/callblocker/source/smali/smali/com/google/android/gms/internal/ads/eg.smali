.class public final Lcom/google/android/gms/internal/ads/eg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ei;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ei;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg;->a:Lcom/google/android/gms/internal/ads/ei;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg;->a:Lcom/google/android/gms/internal/ads/ei;

    if-nez v0, :cond_0

    .line 21
    :goto_0
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    if-nez v0, :cond_3

    .line 8
    const-string/jumbo v0, "Ad metadata with no name parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, ""

    move-object v1, v0

    .line 11
    :goto_1
    const-string/jumbo v0, "info"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string/jumbo v0, "info"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/wy;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 17
    :goto_2
    if-nez v0, :cond_1

    .line 18
    const-string/jumbo v0, "Failed to convert ad metadata to Bundle."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string/jumbo v3, "Failed to convert ad metadata to JSON."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 16
    goto :goto_2

    .line 20
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eg;->a:Lcom/google/android/gms/internal/ads/ei;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/ei;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method
