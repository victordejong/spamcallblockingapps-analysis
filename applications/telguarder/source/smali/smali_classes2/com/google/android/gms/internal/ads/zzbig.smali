.class public Lcom/google/android/gms/internal/ads/zzbig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    return-void
.end method


# virtual methods
.method public final zzaga()Lcom/google/android/gms/internal/ads/zzaxb;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzaga()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v0

    return-object v0
.end method

.method public final zzagb()Lcom/google/android/gms/internal/ads/zzarz;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzagb()Lcom/google/android/gms/internal/ads/zzarz;

    move-result-object v0

    return-object v0
.end method

.method public final zzagc()Lcom/google/android/gms/internal/ads/zzacv;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzagc()Lcom/google/android/gms/internal/ads/zzacv;

    move-result-object v0

    return-object v0
.end method

.method public final zzain()Lcom/google/android/gms/ads/internal/zzb;
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfqf:Lcom/google/android/gms/internal/ads/zzbig$zza;

    .line 5
    new-instance v8, Lcom/google/android/gms/ads/internal/zzb;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzafx()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzafy()Lcom/google/android/gms/internal/ads/zzbay;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaws;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzaga()Lcom/google/android/gms/internal/ads/zzaxb;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaws;-><init>(Lcom/google/android/gms/internal/ads/zzaxb;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzafz()Lcom/google/android/gms/internal/ads/zztz;

    move-result-object v5

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzagb()Lcom/google/android/gms/internal/ads/zzarz;

    move-result-object v6

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbig$zza;->zzagc()Lcom/google/android/gms/internal/ads/zzacv;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbay;Lcom/google/android/gms/internal/ads/zzawy;Lcom/google/android/gms/internal/ads/zztz;Lcom/google/android/gms/internal/ads/zzarz;Lcom/google/android/gms/internal/ads/zzacv;)V

    return-object v8
.end method
