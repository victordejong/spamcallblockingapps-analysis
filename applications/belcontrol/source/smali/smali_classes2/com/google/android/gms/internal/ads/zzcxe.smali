.class public final Lcom/google/android/gms/internal/ads/zzcxe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcwy<",
        "Lcom/google/android/gms/internal/ads/zzbyy;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzgtz:Lcom/google/android/gms/internal/ads/zzbzy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxe;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxe;->zzgtz:Lcom/google/android/gms/internal/ads/zzbzy;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcxb;)Ljava/lang/Object;
    .locals 3

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcxg;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcxd;->zzgxf:Lcom/google/android/gms/internal/ads/zzcag;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzcxg;-><init>(Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzcag;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxe;->zzgtz:Lcom/google/android/gms/internal/ads/zzbzy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzboj;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzboj;-><init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzbzy;->zza(Lcom/google/android/gms/internal/ads/zzboj;Lcom/google/android/gms/internal/ads/zzbyz;)Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcxf;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcxf;-><init>(Lcom/google/android/gms/internal/ads/zzcxe;Lcom/google/android/gms/internal/ads/zzbza;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzcxb;->zza(Lcom/google/android/gms/ads/internal/zzg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbza;->zzahz()Lcom/google/android/gms/internal/ads/zzbyy;

    move-result-object p1

    return-object p1
.end method
