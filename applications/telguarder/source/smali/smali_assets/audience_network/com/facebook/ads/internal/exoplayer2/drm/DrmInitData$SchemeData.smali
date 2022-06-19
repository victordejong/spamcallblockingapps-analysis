.class public final Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Ljava/lang/String;

.field public final A03:Z

.field public final A04:[B

.field public final A05:Ljava/util/UUID;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 345
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bu;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bu;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03:Z

    .line 352
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    .line 356
    iput-object p2, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    .line 357
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 358
    iput-object p4, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    .line 359
    iput-boolean p5, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03:Z

    .line 360
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .locals 1

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    .line 362
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V
    .locals 6

    .line 363
    const/4 v2, 0x0

    move-object v0, p0

    move v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 364
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    return-object p0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "V0uDSUrN1lWFPf4rmlE0p7Fi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DAKHgYLQETVG75kpZbPaiKZi4kmvmWY5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NuSepzi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "62ctaeapCOYLjbywDHLPR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qKlyqp8uM2aMToNQ5PP1kxsqIc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l7m8rlXts8sGjCsrK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ngOy6sK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CpCySNLrElRZ07mQ4rJzUHg0qBXmY7XA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A03(Ljava/util/UUID;)Z
    .locals 2

    .line 367
    sget-object v1, Lcom/facebook/ads/redexgen/X/9u;->A04:Ljava/util/UUID;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 369
    instance-of v1, p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 370
    return v0

    .line 371
    :cond_0
    const/4 v2, 0x1

    if-ne p1, p0, :cond_1

    .line 372
    return v2

    .line 373
    :cond_1
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    .line 374
    .local v1, "other":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 375
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    .line 376
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    .line 377
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    :goto_0
    return v2

    .line 379
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 380
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A00:I

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 382
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 383
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v3, v1, 0x1f

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 384
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A06:[Ljava/lang/String;

    const-string v1, "1EXSHEN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "rP0xZNm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    .line 385
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v3, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 386
    .end local p0    # "result":I
    .restart local v0    # "result":I
    iput v1, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A00:I

    .line 387
    .end local v0    # "result":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A00:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 389
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A05:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 390
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 393
    iget-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 394
    return-void
.end method
