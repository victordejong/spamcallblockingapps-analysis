.class public final Lcom/google/android/gms/internal/ads/zzcwv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field private final synthetic zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final synthetic zzgvw:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final synthetic zzgwx:Lcom/google/android/gms/internal/ads/zzbaa;

.field private final synthetic zzgwy:Lcom/google/android/gms/internal/ads/zzcxb;

.field private final synthetic zzgwz:Lcom/google/android/gms/internal/ads/zzcwt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwt;Lcom/google/android/gms/internal/ads/zzbaa;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcxb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgwz:Lcom/google/android/gms/internal/ads/zzcwt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgwx:Lcom/google/android/gms/internal/ads/zzbaa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgvw:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgwy:Lcom/google/android/gms/internal/ads/zzcxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgwx:Lcom/google/android/gms/internal/ads/zzbaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgwz:Lcom/google/android/gms/internal/ads/zzcwt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcwt;->zza(Lcom/google/android/gms/internal/ads/zzcwt;)Lcom/google/android/gms/internal/ads/zzcwy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgvw:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgve:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcwv;->zzgwy:Lcom/google/android/gms/internal/ads/zzcxb;

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzcwy;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcxb;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzkc()V
    .locals 0

    return-void
.end method

.method public final zzkd()V
    .locals 0

    return-void
.end method
