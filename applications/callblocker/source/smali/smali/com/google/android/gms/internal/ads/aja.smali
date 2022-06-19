.class final synthetic Lcom/google/android/gms/internal/ads/aja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/act;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aja;->a:Lcom/google/android/gms/internal/ads/act;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aja;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aja;->a:Lcom/google/android/gms/internal/ads/act;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aja;->b:Lorg/json/JSONObject;

    .line 2
    const-string/jumbo v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3
    return-void
.end method
