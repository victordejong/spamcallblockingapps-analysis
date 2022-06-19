.class final synthetic Lcom/google/android/gms/internal/ads/c21;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/d21;

.field private final b:Lcom/google/android/gms/internal/ads/r03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d21;Lcom/google/android/gms/internal/ads/r03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c21;->a:Lcom/google/android/gms/internal/ads/d21;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c21;->b:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c21;->a:Lcom/google/android/gms/internal/ads/d21;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c21;->b:Lcom/google/android/gms/internal/ads/r03;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/d21;->c(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v0

    return-object v0
.end method
