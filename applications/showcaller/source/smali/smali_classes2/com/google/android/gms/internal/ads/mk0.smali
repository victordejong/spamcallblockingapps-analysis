.class final Lcom/google/android/gms/internal/ads/mk0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/zzcip;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcip;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/mk0;->e:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mk0;->d:Lcom/google/android/gms/internal/ads/zzcip;

    return-void
.end method

.method private final c()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xfa

    .line 2
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/mk0;->e:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk0;->d:Lcom/google/android/gms/internal/ads/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcip;->n()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/mk0;->e:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mk0;->c()V

    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/mk0;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mk0;->d:Lcom/google/android/gms/internal/ads/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcip;->n()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mk0;->c()V

    :cond_0
    return-void
.end method
