.class public final Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleAdInfo"
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public A00:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    .line 95
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x67

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x44

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x56t
        0x5at
        0x58t
        0x1bt
        0x52t
        0x5at
        0x5at
        0x52t
        0x59t
        0x50t
        0x1bt
        0x54t
        0x5bt
        0x51t
        0x47t
        0x5at
        0x5ct
        0x51t
        0x1bt
        0x52t
        0x58t
        0x46t
        0x1bt
        0x54t
        0x51t
        0x46t
        0x1bt
        0x5ct
        0x51t
        0x50t
        0x5bt
        0x41t
        0x5ct
        0x53t
        0x5ct
        0x50t
        0x47t
        0x1bt
        0x5ct
        0x5bt
        0x41t
        0x50t
        0x47t
        0x5bt
        0x54t
        0x59t
        0x1bt
        0x7ct
        0x74t
        0x51t
        0x43t
        0x50t
        0x47t
        0x41t
        0x5ct
        0x46t
        0x5ct
        0x5bt
        0x52t
        0x7ct
        0x51t
        0x66t
        0x50t
        0x47t
        0x43t
        0x5ct
        0x56t
        0x50t
    .end array-data
.end method


# virtual methods
.method public final A02()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 97
    .local p0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 98
    .local v4, "reply":Landroid/os/Parcel;
    :try_start_0
    const/4 v2, 0x0

    const/16 v1, 0x44

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {v2, v1, v4, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 100
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 101
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v3, "mId":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 104
    return-object v0

    .line 105
    .end local v3    # "mId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 107
    throw v0
.end method

.method public final A03()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 109
    .local p0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 110
    .local v5, "reply":Landroid/os/Parcel;
    :try_start_0
    const/4 v2, 0x0

    const/16 v1, 0x44

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v2, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-interface {v2, v1, v5, v4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 113
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 114
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .local v4, "limitAdTracking":Z
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 117
    return v3

    .line 118
    .end local v4    # "limitAdTracking":Z
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 120
    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/facebook/ads/internal/attribution/GmsAttributionProvider$GoogleAdInfo;->A00:Landroid/os/IBinder;

    return-object v0
.end method
