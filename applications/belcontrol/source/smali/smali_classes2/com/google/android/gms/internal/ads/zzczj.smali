.class public final synthetic Lcom/google/android/gms/internal/ads/zzczj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgzj:Lcom/google/android/gms/internal/ads/zzczh;

.field private final zzgzk:Lcom/google/android/gms/internal/ads/zzvg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzczh;Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgzj:Lcom/google/android/gms/internal/ads/zzczh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgzk:Lcom/google/android/gms/internal/ads/zzvg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgzj:Lcom/google/android/gms/internal/ads/zzczh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczj;->zzgzk:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzczh;->zzgzi:Lcom/google/android/gms/internal/ads/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzczg;->zza(Lcom/google/android/gms/internal/ads/zzczg;)Lcom/google/android/gms/internal/ads/zzcza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcza;->zzasr()Lcom/google/android/gms/internal/ads/zzbrr;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrr;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    return-void
.end method
