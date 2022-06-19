.class public final synthetic Lcom/google/android/gms/internal/ads/zzcod;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgph:Lcom/google/android/gms/internal/ads/zzcob;

.field private final zzgpi:Lcom/google/android/gms/internal/ads/zzcom;

.field private final zzgpj:Lcom/google/android/gms/internal/ads/zzatq;

.field private final zzgpk:Lcom/google/android/gms/internal/ads/zzdyu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcob;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdyu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgph:Lcom/google/android/gms/internal/ads/zzcob;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgpi:Lcom/google/android/gms/internal/ads/zzcom;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgpj:Lcom/google/android/gms/internal/ads/zzatq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgpk:Lcom/google/android/gms/internal/ads/zzdyu;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgph:Lcom/google/android/gms/internal/ads/zzcob;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgpi:Lcom/google/android/gms/internal/ads/zzcom;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgpj:Lcom/google/android/gms/internal/ads/zzatq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcod;->zzgpk:Lcom/google/android/gms/internal/ads/zzdyu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcoc;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcob;->zza(Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/android/gms/internal/ads/zzcoc;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
