.class public final Lcom/google/android/gms/internal/ads/zzcoa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzdnl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgpf:Lcom/google/android/gms/internal/ads/zzcny;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcny;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgpf:Lcom/google/android/gms/internal/ads/zzcny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgpf:Lcom/google/android/gms/internal/ads/zzcny;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcny;->zzb(Lcom/google/android/gms/internal/ads/zzcny;)Lcom/google/android/gms/internal/ads/zzbtz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtz;->zzb(Lcom/google/android/gms/internal/ads/zzdnl;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
