.class final Lcom/google/android/gms/internal/ads/zziy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzafi:Lcom/google/android/gms/internal/ads/zzhz;

.field private final zzagk:J

.field private final zzamf:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhz;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziy;->zzafi:Lcom/google/android/gms/internal/ads/zzhz;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zziy;->zzamf:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zziy;->zzagk:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhz;JJLcom/google/android/gms/internal/ads/zzis;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zziy;-><init>(Lcom/google/android/gms/internal/ads/zzhz;JJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zziy;)Lcom/google/android/gms/internal/ads/zzhz;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zziy;->zzafi:Lcom/google/android/gms/internal/ads/zzhz;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zziy;)J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziy;->zzagk:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zziy;)J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziy;->zzamf:J

    return-wide v0
.end method
