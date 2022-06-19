.class public final Lcom/google/android/gms/internal/ads/ccg;
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
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ccg;->a:Landroid/os/Bundle;

    .line 3
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 4
    check-cast p1, Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccg;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    const-string/jumbo v0, "device"

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "play_store"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    const-string/jumbo v1, "parental_controls"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ccg;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :cond_0
    :goto_0
    return-void

    .line 12
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Failed putting parental controls bundle."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
