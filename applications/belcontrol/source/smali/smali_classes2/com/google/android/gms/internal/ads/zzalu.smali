.class public final synthetic Lcom/google/android/gms/internal/ads/zzalu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdkj:Lcom/google/android/gms/internal/ads/zzalv;

.field private final zzdkk:Lcom/google/android/gms/internal/ads/zzakm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalv;Lcom/google/android/gms/internal/ads/zzakm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzdkj:Lcom/google/android/gms/internal/ads/zzalv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzdkk:Lcom/google/android/gms/internal/ads/zzakm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzdkj:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzdkk:Lcom/google/android/gms/internal/ads/zzakm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalv;->zzdkl:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalq;->zza(Lcom/google/android/gms/internal/ads/zzalq;)Lcom/google/android/gms/ads/internal/util/zzar;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzar;->zzg(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzakm;->destroy()V

    return-void
.end method
