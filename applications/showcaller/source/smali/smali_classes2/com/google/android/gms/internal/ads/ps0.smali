.class final synthetic Lcom/google/android/gms/internal/ads/ps0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/rs0;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rs0;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ps0;->d:Lcom/google/android/gms/internal/ads/rs0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ps0;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ps0;->d:Lcom/google/android/gms/internal/ads/rs0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ps0;->e:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    new-instance v3, Lcom/google/android/gms/internal/ads/qs0;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/qs0;-><init>(Lcom/google/android/gms/internal/ads/rs0;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
