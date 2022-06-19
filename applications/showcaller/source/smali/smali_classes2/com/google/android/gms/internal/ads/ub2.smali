.class final synthetic Lcom/google/android/gms/internal/ads/ub2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vb2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vb2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ub2;->a:Lcom/google/android/gms/internal/ads/vb2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/wb2;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/wb2;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
