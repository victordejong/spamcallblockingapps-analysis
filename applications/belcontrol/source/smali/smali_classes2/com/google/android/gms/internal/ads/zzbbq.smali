.class public final Lcom/google/android/gms/internal/ads/zzbbq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zzbsx:Z

.field private zzekr:Lcom/google/android/gms/internal/ads/zzbax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbax;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzbsx:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    return-void
.end method

.method private final zzabo()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzbsx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaas()V

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzbsx:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzabo()V

    return-void
.end method

.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzbsx:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaas()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzabo()V

    :cond_0
    return-void
.end method
