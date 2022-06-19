.class final synthetic Lcom/google/android/gms/internal/ads/ot1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/r03;

.field private final b:Lcom/google/android/gms/internal/ads/r03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ot1;->a:Lcom/google/android/gms/internal/ads/r03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ot1;->b:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ot1;->a:Lcom/google/android/gms/internal/ads/r03;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ot1;->b:Lcom/google/android/gms/internal/ads/r03;

    new-instance v2, Lcom/google/android/gms/internal/ads/au1;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eu1;

    .line 2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/yt1;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yt1;->b:Lorg/json/JSONObject;

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/yt1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yt1;->a:Lcom/google/android/gms/internal/ads/ad0;

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/au1;-><init>(Lcom/google/android/gms/internal/ads/eu1;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ad0;)V

    return-object v2
.end method
