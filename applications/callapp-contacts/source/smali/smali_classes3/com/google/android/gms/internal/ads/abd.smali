.class final Lcom/google/android/gms/internal/ads/abd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzbcb;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd;->b:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abd;->a:Lcom/google/android/gms/internal/ads/zzbcb;

    return-void
.end method

.method private final c()V
    .locals 3

    .line 15
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cxg;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/cxg;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd;->b:Z

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd;->a:Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcb;->m()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd;->b:Z

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abd;->c()V

    return-void
.end method

.method public final run()V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abd;->b:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abd;->a:Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcb;->m()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abd;->c()V

    :cond_0
    return-void
.end method
