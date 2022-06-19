.class public final Lcom/google/android/gms/internal/ads/zzbrt;
.super Lcom/google/android/gms/internal/ads/zzbwf;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbwf<",
        "Lcom/google/android/gms/internal/ads/zzbrq;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbrq;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrx;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbrx;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/internal/ads/zzbrq;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbwf;-><init>(Ljava/util/Set;)V

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrv;-><init>(Lcom/google/android/gms/internal/ads/zzcaf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    return-void
.end method

.method public final zzalp()V
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbru;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrs;-><init>(Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zza(Lcom/google/android/gms/internal/ads/zzbwh;)V

    return-void
.end method
