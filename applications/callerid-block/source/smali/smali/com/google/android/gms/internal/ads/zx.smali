.class final synthetic Lcom/google/android/gms/internal/ads/zx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/by;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/by;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zx;->b:Lcom/google/android/gms/internal/ads/by;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zx;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zx;->b:Lcom/google/android/gms/internal/ads/by;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zx;->c:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zo;->e:Lcom/google/android/gms/internal/ads/sz1;

    new-instance v3, Lcom/google/android/gms/internal/ads/ay;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/ay;-><init>(Lcom/google/android/gms/internal/ads/by;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
