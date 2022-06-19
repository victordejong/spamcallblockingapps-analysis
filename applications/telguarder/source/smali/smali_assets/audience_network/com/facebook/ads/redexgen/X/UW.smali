.class public final Lcom/facebook/ads/redexgen/X/UW;
.super Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;


# instance fields
.field public final A00:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 56508
    invoke-static {}, Lcom/facebook/ads/redexgen/X/UW;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UW;->A06()V

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UW;->A05(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/UX;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/UX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/UW;->A03:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Z[BLjava/lang/String;)V
    .locals 6
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56509
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UW;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p3

    move v4, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;-><init>(Ljava/lang/String;ILandroid/net/Uri;Z[B)V

    .line 56510
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Ljava/lang/String;

    .line 56511
    return-void
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Ej;)Lcom/facebook/ads/redexgen/X/UV;
    .locals 3

    .line 56512
    iget-object v2, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01:Landroid/net/Uri;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/UV;

    invoke-direct {v0, v2, v1, p1}, Lcom/facebook/ads/redexgen/X/UV;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ej;)V

    return-object v0
.end method

.method private A03()Ljava/lang/String;
    .locals 1

    .line 56513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hn;->A01(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UW;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UW;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x6at
        0x68t
        0x75t
        0x7dt
        0x68t
        0x7ft
        0x69t
        0x69t
        0x73t
        0x6ct
        0x7ft
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CpyB7REPAxFUbw32iHehGNvYRQbD7MPJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JUFr3TtbFJDgACWAkDem"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zH7OmlE8qZbkfYU5PSBlV5V2OF2Am4y8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NlBx1jIqBxG6jj8P0HnFae8OwITiqOJc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uVi6sBjsUaWRK0YQZYZx4zv9b9KQmS8S"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aLjYWO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "uo40lTjuNNQxlZMPkP7u8DXlZslIN4y2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VJKQgBG1KLDJKPC7WwU2bt5UzvHx9DjN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UW;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic A08(Lcom/facebook/ads/redexgen/X/Ej;)Lcom/facebook/ads/redexgen/X/Ei;
    .locals 1

    .line 56514
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UW;->A02(Lcom/facebook/ads/redexgen/X/Ej;)Lcom/facebook/ads/redexgen/X/UV;

    move-result-object v0

    return-object v0
.end method

.method public final A09(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56515
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 56516
    iget-boolean v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A03:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 56517
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A04:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 56518
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->A04:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 56519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 56520
    .local p0, "customCacheKeySet":Z
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 56521
    if-eqz v0, :cond_2

    .line 56522
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UW;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56523
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/UW;->A02:[Ljava/lang/String;

    const-string v1, "G5F6A8wsZDB38oeoRCBWVyeI3SRS4G3a"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "1JYcyyRysa7TBzclkZISa3dTrVRghsM8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 56524
    :cond_2
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)Z
    .locals 2

    .line 56525
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/UW;

    if-eqz v0, :cond_0

    .line 56526
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UW;->A03()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/facebook/ads/redexgen/X/UW;

    invoke-direct {p1}, Lcom/facebook/ads/redexgen/X/UW;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 56527
    :goto_0
    return v0

    .line 56528
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56529
    if-ne p0, p1, :cond_1

    .line 56530
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/UW;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/UW;->A02:[Ljava/lang/String;

    const-string v1, "IPi0yD"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56531
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56532
    const/4 v0, 0x0

    return v0

    .line 56533
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/UW;

    .line 56534
    .local p0, "that":Lcom/facebook/ads/redexgen/X/UW;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/UW;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 56535
    invoke-super {p0}, Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;->hashCode()I

    move-result v0

    .line 56536
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 56537
    .end local p0    # "result":I
    .local v0, "result":I
    return v1

    .line 56538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
