.class public final synthetic Lcom/google/android/gms/internal/ads/zzczq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgzl:Lcom/google/android/gms/internal/ads/zzczo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzczo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczq;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczq;->zzgzl:Lcom/google/android/gms/internal/ads/zzczo;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzczo;->zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
