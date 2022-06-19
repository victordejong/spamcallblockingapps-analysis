.class public final synthetic Lcom/google/android/gms/internal/ads/zzbod;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfwm:Lcom/google/android/gms/internal/ads/zzdzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbod;->zzfwm:Lcom/google/android/gms/internal/ads/zzdzl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbod;->zzfwm:Lcom/google/android/gms/internal/ads/zzdzl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcmb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlw:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcmb;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzl;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
