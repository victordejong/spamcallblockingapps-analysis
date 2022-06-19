.class public final Lcom/google/android/gms/internal/ads/zze;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzb:Ljava/nio/ByteBuffer;

.field private final zzc:J

.field private final zzd:J

.field private final zze:J

.field private final zzf:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zze;->zzb:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zze;->zzc:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zze;->zzd:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zze;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zze;->zzf:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zza;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/ads/zze;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zze;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zze;->zzb:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zze;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zze;->zzc:J

    return-wide v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zze;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zze;->zzd:J

    return-wide v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zze;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zze;->zze:J

    return-wide v0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zze;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zze;->zzf:Ljava/nio/ByteBuffer;

    return-object p0
.end method
