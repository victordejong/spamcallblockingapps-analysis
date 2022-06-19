.class final synthetic Lcom/google/android/gms/internal/ads/ajo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ajk;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ajk;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajo;->a:Lcom/google/android/gms/internal/ads/ajk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ajo;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajo;->a:Lcom/google/android/gms/internal/ads/ajk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajo;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ajk;->a(Lorg/json/JSONObject;)V

    return-void
.end method
