.class public final Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static A05:[B

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1337
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/If;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/If;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0

    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput p1, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A02:I

    .line 1340
    iput p2, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A01:I

    .line 1341
    iput p3, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A03:I

    .line 1342
    iput-object p4, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A04:[B

    .line 1343
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A02:I

    .line 1346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A01:I

    .line 1347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A03:I

    .line 1348
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0g(Landroid/os/Parcel;)Z

    move-result v0

    .line 1349
    .local p0, "hasHdrStaticInfo":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A04:[B

    .line 1350
    return-void

    .line 1351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

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

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x3dt
        0x5bt
        0x57t
        0x7ft
        0x53t
        0x50t
        0x53t
        0x4et
        0x75t
        0x52t
        0x5at
        0x53t
        0x14t
    .end array-data
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1352
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1353
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 1354
    return v3

    .line 1355
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 1356
    .end local v3
    :cond_1
    return v2

    .line 1357
    :cond_2
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    .line 1358
    .local v3, "other":Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;
    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A02:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A02:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A01:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A03:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A03:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A04:[B

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A04:[B

    .line 1359
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1360
    :goto_0
    return v3

    .line 1361
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 1362
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A00:I

    if-nez v0, :cond_0

    .line 1363
    const/16 v0, 0x11

    .line 1364
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A02:I

    add-int/2addr v1, v0

    .line 1365
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A01:I

    add-int/2addr v1, v0

    .line 1366
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A03:I

    add-int/2addr v1, v0

    .line 1367
    .end local p0    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A04:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 1368
    .end local v0    # "result":I
    .restart local p0    # "result":I
    iput v1, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A00:I

    .line 1369
    .end local p0    # "result":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A00:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    const/16 v1, 0xa

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A02:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A01:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A03:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A04:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1371
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A03:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A04:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0W(Landroid/os/Parcel;Z)V

    .line 1375
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;->A04:[B

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1377
    :cond_0
    return-void

    .line 1378
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
