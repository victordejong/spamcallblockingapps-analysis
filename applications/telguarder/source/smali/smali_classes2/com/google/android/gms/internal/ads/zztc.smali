.class public final Lcom/google/android/gms/internal/ads/zztc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zztc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbvg:Landroid/os/ParcelFileDescriptor;

.field private final zzbvh:Z

.field private final zzbvi:Z

.field private final zzbvj:J

.field private final zzbvk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zztf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zztc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Landroid/os/ParcelFileDescriptor;ZZJZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;ZZJZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvg:Landroid/os/ParcelFileDescriptor;

    .line 5
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvh:Z

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvi:Z

    .line 7
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvj:J

    .line 8
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvk:Z

    return-void
.end method

.method private final declared-synchronized zzmy()Landroid/os/ParcelFileDescriptor;
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvg:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztc;->zzmy()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 25
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztc;->zzmz()Z

    move-result p2

    const/4 v1, 0x3

    .line 28
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztc;->zzna()Z

    move-result p2

    const/4 v1, 0x4

    .line 31
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztc;->zznb()J

    move-result-wide v1

    const/4 p2, 0x5

    .line 34
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztc;->zznc()Z

    move-result p2

    const/4 v1, 0x6

    .line 37
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 38
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final declared-synchronized zzmw()Z
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvg:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzmx()Ljava/io/InputStream;
    .locals 3

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvg:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12
    monitor-exit p0

    return-object v1

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvg:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 14
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvg:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzmz()Z
    .locals 1

    monitor-enter p0

    .line 17
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzna()Z
    .locals 1

    monitor-enter p0

    .line 18
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zznb()J
    .locals 2

    monitor-enter p0

    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zznc()Z
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztc;->zzbvk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
