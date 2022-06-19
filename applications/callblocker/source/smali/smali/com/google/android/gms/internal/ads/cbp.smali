.class final synthetic Lcom/google/android/gms/internal/ads/cbp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cbq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbp;->a:Lcom/google/android/gms/internal/ads/cbq;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbp;->a:Lcom/google/android/gms/internal/ads/cbq;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/cbn;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cbq;->a:Lcom/google/android/gms/internal/ads/dvw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cbq;->b:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/dvw;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cbn;-><init>(Lorg/json/JSONObject;)V

    .line 3
    return-object v1
.end method
