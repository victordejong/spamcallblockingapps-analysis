.class public final Lcom/google/android/gms/internal/ads/zztv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzbja:Ljava/io/InputStream;

.field private final zzbvh:Z

.field private final zzbvi:Z

.field private final zzbvj:J

.field private final zzbvk:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;ZZJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbja:Ljava/io/InputStream;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbvh:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbvk:Z

    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbvj:J

    .line 6
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbvi:Z

    return-void
.end method

.method public static zza(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zztv;
    .locals 8

    .line 8
    new-instance v7, Lcom/google/android/gms/internal/ads/zztv;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zztv;-><init>(Ljava/io/InputStream;ZZJZ)V

    return-object v7
.end method


# virtual methods
.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbja:Ljava/io/InputStream;

    return-object v0
.end method

.method public final zzmz()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbvh:Z

    return v0
.end method

.method public final zzna()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbvi:Z

    return v0
.end method

.method public final zznb()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbvj:J

    return-wide v0
.end method

.method public final zznc()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztv;->zzbvk:Z

    return v0
.end method
