.class final synthetic Lcom/google/android/gms/internal/ads/ccd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ccd;->a:Lcom/google/android/gms/internal/ads/cca;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccd;->a:Lcom/google/android/gms/internal/ads/cca;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/ccb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cca;->a:Lcom/google/android/gms/internal/ads/ecu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cca;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/ecu;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ccb;-><init>(Ljava/util/List;)V

    .line 3
    return-object v1
.end method
