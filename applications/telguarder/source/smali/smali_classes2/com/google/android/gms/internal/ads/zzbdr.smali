.class final synthetic Lcom/google/android/gms/internal/ads/zzbdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzekn:Z

.field private final zzeno:J

.field private final zzeol:Lcom/google/android/gms/internal/ads/zzbbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbo;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeol:Lcom/google/android/gms/internal/ads/zzbbo;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzekn:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeno:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeol:Lcom/google/android/gms/internal/ads/zzbbo;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzekn:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeno:J

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ZJ)V

    return-void
.end method
