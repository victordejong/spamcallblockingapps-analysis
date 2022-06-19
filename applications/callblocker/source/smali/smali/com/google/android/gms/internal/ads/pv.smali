.class public final Lcom/google/android/gms/internal/ads/pv;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/pv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/os/ParcelFileDescriptor;

.field private b:Landroid/os/Parcelable;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/gms/internal/ads/px;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/px;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/pv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pv;->a:Landroid/os/ParcelFileDescriptor;

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pv;->b:Landroid/os/Parcelable;

    .line 4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pv;->c:Z

    .line 5
    return-void
.end method

.method private final a()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv;->a:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv;->b:Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pv;->a([B)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pv;->a:Landroid/os/ParcelFileDescriptor;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv;->a:Landroid/os/ParcelFileDescriptor;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw v0
.end method

.method private static a([B)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 50
    const/4 v2, 0x1

    aget-object v3, v1, v2

    .line 51
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v4, Lcom/google/android/gms/internal/ads/pu;

    invoke-direct {v4, v2, p0}, Lcom/google/android/gms/internal/ads/pu;-><init>(Ljava/io/OutputStream;[B)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 54
    const/4 v3, 0x0

    aget-object v0, v1, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 56
    :goto_1
    const-string/jumbo v3, "Error transporting the ad response"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v3

    const-string/jumbo v4, "LargeParcelTeleporter.pipeData.2"

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 58
    invoke-static {v2}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 55
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static final synthetic a(Ljava/io/OutputStream;[B)V
    .locals 4

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    array-length v0, p1

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 63
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    invoke-static {v1}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 67
    :goto_1
    :try_start_2
    const-string/jumbo v2, "Error transporting the ad response"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v2

    const-string/jumbo v3, "LargeParcelTeleporter.pipeData.1"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    if-nez v1, :cond_0

    .line 70
    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-nez v1, :cond_1

    .line 74
    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 76
    :goto_3
    throw v0

    .line 75
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 73
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 66
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/internal/safeparcel/c;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/pv;->c:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pv;->a:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    .line 8
    const-string/jumbo v1, "File descriptor is empty, returning null."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 31
    :goto_0
    return-object v0

    .line 10
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/pv;->a:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    .line 12
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 21
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 22
    const/4 v0, 0x0

    :try_start_1
    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 24
    invoke-interface {p1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pv;->b:Landroid/os/Parcelable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 29
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/pv;->c:Z

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pv;->b:Landroid/os/Parcelable;

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/c;

    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    :try_start_2
    const-string/jumbo v3, "Could not read from parcel file descriptor"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 20
    throw v0

    .line 27
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 28
    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pv;->a()Landroid/os/ParcelFileDescriptor;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 35
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pv;->a:Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 36
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 37
    return-void
.end method
