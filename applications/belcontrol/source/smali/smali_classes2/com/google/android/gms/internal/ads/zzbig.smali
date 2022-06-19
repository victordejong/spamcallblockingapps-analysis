.class public Lcom/google/android/gms/internal/ads/zzbig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbig$zza;
    }
.end annotation


# instance fields
.field private zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbig$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    return-void
.end method


# virtual methods
.method public final zzaga()Lcom/google/android/gms/internal/ads/zzaxb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzaga()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v0

    return-object v0
.end method

.method public final zzagb()Lcom/google/android/gms/internal/ads/zzarz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzagb()Lcom/google/android/gms/internal/ads/zzarz;

    move-result-object v0

    return-object v0
.end method

.method public final zzagc()Lcom/google/android/gms/internal/ads/zzacv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzagc()Lcom/google/android/gms/internal/ads/zzacv;

    move-result-object v0

    return-object v0
.end method

.method public final zzain()Lcom/google/android/gms/ads/internal/zzb;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    new-instance v8, Lcom/google/android/gms/ads/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzafx()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzafy()Lcom/google/android/gms/internal/ads/zzbay;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzaga()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaws;-><init>(Lcom/google/android/gms/internal/ads/zzaxb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzafz()Lcom/google/android/gms/internal/ads/zztz;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzagb()Lcom/google/android/gms/internal/ads/zzarz;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzagc()Lcom/google/android/gms/internal/ads/zzacv;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbay;Lcom/google/android/gms/internal/ads/zzawy;Lcom/google/android/gms/internal/ads/zztz;Lcom/google/android/gms/internal/ads/zzarz;Lcom/google/android/gms/internal/ads/zzacv;)V

    return-object v8
.end method
