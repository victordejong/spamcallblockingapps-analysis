.class final synthetic Lcom/google/android/gms/internal/ads/qc2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rc2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rc2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qc2;->a:Lcom/google/android/gms/internal/ads/rc2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qc2;->a:Lcom/google/android/gms/internal/ads/rc2;

    new-instance v1, Lcom/google/android/gms/internal/ads/sc2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rc2;->b:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/sc2;-><init>(Ljava/util/List;)V

    return-object v1
.end method
