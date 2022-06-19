.class public final Lcom/google/android/gms/internal/ads/zzbt;
.super Lcom/google/android/gms/internal/ads/zzepm;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private zzdd:Ljava/util/Date;

.field private zzde:Ljava/util/Date;

.field private zzdf:J

.field private zzdg:J

.field private zzdh:D

.field private zzdi:F

.field private zzdj:Lcom/google/android/gms/internal/ads/zzepw;

.field private zzdk:J

.field private zzdl:I

.field private zzdm:I

.field private zzdn:I

.field private zzdo:I

.field private zzdp:I

.field private zzdq:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "mvhd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzepm;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdh:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdi:F

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzepw;->zzjbr:Lcom/google/android/gms/internal/ads/zzepw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdj:Lcom/google/android/gms/internal/ads/zzepw;

    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdg:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MovieHeaderBox["

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "creationTime="

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdd:Ljava/util/Date;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "modificationTime="

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzde:Ljava/util/Date;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "timescale="

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdf:J

    .line 50
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "duration="

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdg:J

    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rate="

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdh:D

    .line 58
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "volume="

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdi:F

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "matrix="

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdj:Lcom/google/android/gms/internal/ads/zzepw;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nextTrackId="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdk:J

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzl(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzepm;->zzr(Ljava/nio/ByteBuffer;)J

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzepm;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzh(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzepp;->zzfu(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdd:Ljava/util/Date;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzh(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzepp;->zzfu(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzde:Ljava/util/Date;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdf:J

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzh(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdg:J

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzepp;->zzfu(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdd:Ljava/util/Date;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzepp;->zzfu(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzde:Ljava/util/Date;

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdf:J

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdg:J

    .line 18
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzi(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdh:D

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 21
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 22
    aget-byte v3, v0, v2

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    .line 23
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdi:F

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzg(Ljava/nio/ByteBuffer;)I

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepw;->zzs(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzepw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdj:Lcom/google/android/gms/internal/ads/zzepw;

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdl:I

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdm:I

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdn:I

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdo:I

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdp:I

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdq:I

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbp;->zzf(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdk:J

    return-void
.end method

.method public final zzr()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbt;->zzdf:J

    return-wide v0
.end method
