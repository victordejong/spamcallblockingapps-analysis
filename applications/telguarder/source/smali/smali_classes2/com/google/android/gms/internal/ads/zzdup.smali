.class public final Lcom/google/android/gms/internal/ads/zzdup;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# instance fields
.field private final zzhuc:Lcom/google/android/gms/internal/ads/zzgv;

.field private final zzhud:Ljava/io/File;

.field private final zzhue:Ljava/io/File;

.field private final zzhuf:Ljava/io/File;

.field private zzhug:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgv;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhuc:Lcom/google/android/gms/internal/ads/zzgv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhud:Ljava/io/File;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhue:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhuf:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final zzayk()Lcom/google/android/gms/internal/ads/zzgv;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhuc:Lcom/google/android/gms/internal/ads/zzgv;

    return-object v0
.end method

.method public final zzayl()Ljava/io/File;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhud:Ljava/io/File;

    return-object v0
.end method

.method public final zzaym()Ljava/io/File;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhue:Ljava/io/File;

    return-object v0
.end method

.method public final zzayn()[B
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhug:[B

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhuf:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdur;->zzf(Ljava/io/File;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhug:[B

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhug:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_1
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final zzff(J)Z
    .locals 4

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdup;->zzhuc:Lcom/google/android/gms/internal/ads/zzgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgv;->zzdi()J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
