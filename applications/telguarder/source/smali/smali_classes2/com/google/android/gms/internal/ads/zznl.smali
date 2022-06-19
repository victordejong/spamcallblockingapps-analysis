.class final Lcom/google/android/gms/internal/ads/zznl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field public final zzasu:J

.field public final zzbga:J

.field public zzbgb:Z

.field public zzbgc:Lcom/google/android/gms/internal/ads/zzom;

.field public zzbgd:Lcom/google/android/gms/internal/ads/zznl;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbga:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzasu:J

    return-void
.end method


# virtual methods
.method public final zzih()Lcom/google/android/gms/internal/ads/zznl;
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbgc:Lcom/google/android/gms/internal/ads/zzom;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbgd:Lcom/google/android/gms/internal/ads/zznl;

    return-object v0
.end method
