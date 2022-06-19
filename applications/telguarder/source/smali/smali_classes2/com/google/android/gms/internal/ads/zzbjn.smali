.class public final Lcom/google/android/gms/internal/ads/zzbjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrr;


# instance fields
.field private final zzfrc:Lcom/google/android/gms/internal/ads/zzdnb;

.field private final zzfrd:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzfre:Lcom/google/android/gms/internal/ads/zzdsq;

.field private final zzfrf:Lcom/google/android/gms/internal/ads/zzdss;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdss;Lcom/google/android/gms/internal/ads/zzdsq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzfrd:Lcom/google/android/gms/internal/ads/zzdnl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzfre:Lcom/google/android/gms/internal/ads/zzdsq;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzfrc:Lcom/google/android/gms/internal/ads/zzdnb;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 4

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzfre:Lcom/google/android/gms/internal/ads/zzdsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzfrd:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzfrc:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnb;->zzdms:Ljava/util/List;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsq;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdss;->zzk(Ljava/util/List;)V

    return-void
.end method
