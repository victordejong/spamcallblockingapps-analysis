.class public final synthetic Lcom/google/android/gms/internal/ads/zzfak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvx;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfao;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdea;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfao;Lcom/google/android/gms/internal/ads/zzdea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfak;->zza:Lcom/google/android/gms/internal/ads/zzfao;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzdea;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxa;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfak;->zza:Lcom/google/android/gms/internal/ads/zzfao;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzdea;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfax;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfao;->zza(Lcom/google/android/gms/internal/ads/zzdea;Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzfxa;

    move-result-object p1

    return-object p1
.end method
