.class final Lcom/google/android/gms/internal/ads/vy2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/vy2;

.field static final b:Lcom/google/android/gms/internal/ads/vy2;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/fz2;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/ads/vy2;->b:Lcom/google/android/gms/internal/ads/vy2;

    sput-object v1, Lcom/google/android/gms/internal/ads/vy2;->a:Lcom/google/android/gms/internal/ads/vy2;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/vy2;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/vy2;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/vy2;->b:Lcom/google/android/gms/internal/ads/vy2;

    new-instance v0, Lcom/google/android/gms/internal/ads/vy2;

    const/4 v2, 0x1

    .line 3
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/vy2;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/vy2;->a:Lcom/google/android/gms/internal/ads/vy2;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vy2;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vy2;->d:Ljava/lang/Throwable;

    return-void
.end method
