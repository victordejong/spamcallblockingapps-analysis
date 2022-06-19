.class public final synthetic Lcom/google/android/gms/internal/ads/zzcvz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzgvu:Lcom/google/android/gms/internal/ads/zzcwa;

.field private final zzgvv:Lcom/google/android/gms/internal/ads/zzcrl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwa;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzgvu:Lcom/google/android/gms/internal/ads/zzcwa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzgvv:Lcom/google/android/gms/internal/ads/zzcrl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzgvu:Lcom/google/android/gms/internal/ads/zzcwa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzgvv:Lcom/google/android/gms/internal/ads/zzcrl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwa;->zzgvy:Lcom/google/android/gms/internal/ads/zzcvy;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcvy;->zza(Lcom/google/android/gms/internal/ads/zzcvy;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V

    return-void
.end method
