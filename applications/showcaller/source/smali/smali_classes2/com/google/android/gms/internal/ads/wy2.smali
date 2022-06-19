.class final Lcom/google/android/gms/internal/ads/wy2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/wy2;


# instance fields
.field final b:Ljava/lang/Runnable;

.field final c:Ljava/util/concurrent/Executor;

.field d:Lcom/google/android/gms/internal/ads/wy2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/wy2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wy2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/wy2;->a:Lcom/google/android/gms/internal/ads/wy2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wy2;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wy2;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wy2;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wy2;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
