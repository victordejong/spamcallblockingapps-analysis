.class final Lcom/google/android/gms/internal/ads/aaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zq;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zq;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaf;->b:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aaf;->a:Lcom/google/android/gms/internal/ads/zq;

    .line 4
    return-void
.end method

.method private final c()V
    .locals 4

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cnz;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/internal/ads/cnz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaf;->b:Z

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaf;->a:Lcom/google/android/gms/internal/ads/zq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zq;->o()V

    .line 11
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaf;->b:Z

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aaf;->c()V

    .line 14
    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaf;->b:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaf;->a:Lcom/google/android/gms/internal/ads/zq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zq;->o()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aaf;->c()V

    .line 8
    :cond_0
    return-void
.end method
