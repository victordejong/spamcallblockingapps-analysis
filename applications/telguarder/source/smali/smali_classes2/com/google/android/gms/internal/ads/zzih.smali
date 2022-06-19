.class public final Lcom/google/android/gms/internal/ads/zzih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# static fields
.field private static final zzaiw:[I

.field private static final zzaix:[I

.field private static final zzaiy:[I

.field private static final zzaiz:[I

.field private static final zzaja:[I

.field private static final zzajb:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzih;->zzaiw:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 22
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzih;->zzaix:[I

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzih;->zzaiy:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzih;->zzaiz:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    .line 25
    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/android/gms/internal/ads/zzih;->zzaja:[I

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/gms/internal/ads/zzih;->zzajb:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzpn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzih;->zzaix:[I

    aget v8, v1, v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzih;->zzaiz:[I

    and-int/lit8 v2, v0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v7, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v3, "audio/ac3"

    move-object v2, p1

    move-object/from16 v10, p3

    move-object v12, p2

    .line 7
    invoke-static/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzpn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 14

    const/4 v0, 0x2

    move-object v1, p0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpn;->zzbj(I)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzih;->zzaix:[I

    aget v9, v2, v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpn;->readUnsignedByte()I

    move-result v0

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzih;->zzaiz:[I

    and-int/lit8 v2, v0, 0xe

    shr-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v8, v1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v4, "audio/eac3"

    move-object v3, p1

    move-object/from16 v11, p3

    move-object/from16 v13, p2

    .line 15
    invoke-static/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/zzht;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjo;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v0

    return-object v0
.end method

.method public static zzfi()I
    .locals 1

    const/16 v0, 0x600

    return v0
.end method

.method public static zzm(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    const/4 v1, 0x6

    shr-int/2addr v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzih;->zzaiw:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 p0, p0, 0x4

    aget v1, v0, p0

    :goto_0
    mul-int/lit16 v1, v1, 0x100

    return v1
.end method
