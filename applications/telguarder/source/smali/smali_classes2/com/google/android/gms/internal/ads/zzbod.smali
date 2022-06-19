.class final synthetic Lcom/google/android/gms/internal/ads/zzbod;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfwm:Lcom/google/android/gms/internal/ads/zzdzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbod;->zzfwm:Lcom/google/android/gms/internal/ads/zzdzl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbod;->zzfwm:Lcom/google/android/gms/internal/ads/zzdzl;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcmb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlw:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcmb;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzl;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
