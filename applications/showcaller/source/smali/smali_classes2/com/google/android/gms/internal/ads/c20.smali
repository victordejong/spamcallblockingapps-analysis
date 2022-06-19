.class final Lcom/google/android/gms/internal/ads/c20;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/n20<",
        "Lcom/google/android/gms/internal/ads/wn0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->L()Lcom/google/android/gms/internal/ads/ty;

    move-result-object p2

    const-string v0, "nativeClickMetaReady"

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ty;->e()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/s40;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 5
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/s40;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
