.class final Lcom/google/android/gms/internal/ads/zzbbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private zzbsx:Z

.field private zzekr:Lcom/google/android/gms/internal/ads/zzbax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbax;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzbsx:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    return-void
.end method

.method private final zzabo()V
    .locals 3

    .line 15
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdvl;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdvl;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzbsx:Z

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaas()V

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzbsx:Z

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzabo()V

    return-void
.end method

.method public final run()V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzbsx:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbq;->zzekr:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbax;->zzaas()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzabo()V

    :cond_0
    return-void
.end method
