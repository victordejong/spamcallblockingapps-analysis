.class public final synthetic Lcom/google/android/gms/internal/ads/zzctj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# instance fields
.field private final zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzguj:Lcom/google/android/gms/internal/ads/zzctf;

.field private final zzguk:Lcom/google/android/gms/internal/ads/zzbza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzctf;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzbza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctj;->zzguj:Lcom/google/android/gms/internal/ads/zzctf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctj;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctj;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctj;->zzguk:Lcom/google/android/gms/internal/ads/zzbza;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctj;->zzggw:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctj;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzctj;->zzguk:Lcom/google/android/gms/internal/ads/zzbza;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzdxt:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadk()V

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacr()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcoz:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->onPause()V

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbza;->zzahz()Lcom/google/android/gms/internal/ads/zzbyy;

    move-result-object p1

    return-object p1
.end method
