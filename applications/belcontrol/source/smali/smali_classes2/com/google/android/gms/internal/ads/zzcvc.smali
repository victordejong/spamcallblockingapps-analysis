.class public final synthetic Lcom/google/android/gms/internal/ads/zzcvc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzgvl:Lcom/google/android/gms/internal/ads/zzcuz;

.field private final zzgvm:Lcom/google/android/gms/internal/ads/zzcrj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcuz;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgvl:Lcom/google/android/gms/internal/ads/zzcuz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgvm:Lcom/google/android/gms/internal/ads/zzcrj;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgvl:Lcom/google/android/gms/internal/ads/zzcuz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcvc;->zzgvm:Lcom/google/android/gms/internal/ads/zzcrj;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcuz;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrj;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
