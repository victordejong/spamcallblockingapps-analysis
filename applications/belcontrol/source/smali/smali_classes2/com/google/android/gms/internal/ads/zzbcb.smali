.class public final synthetic Lcom/google/android/gms/internal/ads/zzbcb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzekn:Z

.field private final zzenn:Lcom/google/android/gms/internal/ads/zzbbr;

.field private final zzeno:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzenn:Lcom/google/android/gms/internal/ads/zzbbr;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzekn:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzeno:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzenn:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzekn:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbcb;->zzeno:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbr;->zzc(ZJ)V

    return-void
.end method
