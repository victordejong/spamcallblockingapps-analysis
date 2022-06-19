.class public final synthetic Lcom/google/android/gms/internal/ads/zzcsv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgtc:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzgtw:Lcom/google/android/gms/internal/ads/zzcsw;

.field private final zzgtx:Landroid/net/Uri;

.field private final zzgty:Lcom/google/android/gms/internal/ads/zzdmw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcsw;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgtw:Lcom/google/android/gms/internal/ads/zzcsw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgtx:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgtc:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgty:Lcom/google/android/gms/internal/ads/zzdmw;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgtw:Lcom/google/android/gms/internal/ads/zzcsw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgtx:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgtc:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcsv;->zzgty:Lcom/google/android/gms/internal/ads/zzdmw;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcsw;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
