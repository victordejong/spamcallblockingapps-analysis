.class final Lcom/google/android/gms/internal/ads/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# instance fields
.field private final zzb:Ljava/nio/ByteBuffer;

.field private final zzc:J

.field private final zzd:J

.field private final zze:J

.field private final zzf:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zze;->zzb:Ljava/nio/ByteBuffer;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zze;->zzc:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zze;->zzd:J

    .line 5
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zze;->zze:J

    .line 6
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zze;->zzf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zza;)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/ads/zze;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zze;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zze;->zzb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zze;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zze;->zzc:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zze;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zze;->zzd:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zze;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zze;->zze:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zze;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zze;->zzf:Ljava/nio/ByteBuffer;

    return-object p0
.end method
