.class public final Lcom/facebook/ads/redexgen/X/Ux;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# static fields
.field public static A06:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/CS;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ux;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57874
    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A05:Lcom/facebook/ads/redexgen/X/IM;

    .line 57875
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ux;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

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

    const/16 v0, 0x32

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ux;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x1ft
        0x6t
        0x10t
        0x0t
        -0x2t
        0xft
        0x1t
        0x6t
        0xbt
        0x4t
        -0x43t
        0x6t
        0xbt
        0x13t
        -0x2t
        0x9t
        0x6t
        0x1t
        -0x43t
        -0x1at
        -0x1ft
        -0x30t
        -0x43t
        0x11t
        -0x2t
        0x4t
        0x28t
        0x43t
        0x12t
        0x31t
        0x44t
        0x40t
        0x43t
        0x44t
        0x51t
        -0x20t
        -0x11t
        -0x11t
        -0x15t
        -0x18t
        -0x1et
        -0x20t
        -0xdt
        -0x18t
        -0x12t
        -0x13t
        -0x52t
        -0x18t
        -0x1dt
        -0x4et
    .end array-data
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 7

    .line 57876
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A04:Z

    if-nez v0, :cond_0

    .line 57877
    return-void

    .line 57878
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    .line 57879
    .local p0, "bytesAvailable":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A00:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    .line 57880
    rsub-int/lit8 v0, v0, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 57881
    .local p1, "headerBytesAvailable":I
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 57882
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A05:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A00:I

    .line 57883
    invoke-static {v5, v4, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57884
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A00:I

    add-int/2addr v0, v6

    if-ne v0, v3, :cond_3

    .line 57885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A05:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57886
    const/16 v1, 0x49

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/16 v1, 0x44

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A05:Lcom/facebook/ads/redexgen/X/IM;

    .line 57887
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/16 v1, 0x33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A05:Lcom/facebook/ads/redexgen/X/IM;

    .line 57888
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 57889
    :cond_1
    const/16 v2, 0x1a

    const/16 v1, 0x9

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ux;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ux;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57890
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ux;->A04:Z

    .line 57891
    return-void

    .line 57892
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ux;->A05:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A05:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A01:I

    .line 57894
    .end local p1    # "headerBytesAvailable":I
    :cond_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ux;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 57895
    .local p1, "bytesToWrite":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A03:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 57896
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A00:I

    .line 57897
    return-void
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 6

    .line 57898
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 57899
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A03:Lcom/facebook/ads/redexgen/X/CS;

    .line 57900
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ux;->A03:Lcom/facebook/ads/redexgen/X/CS;

    .line 57901
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v4

    .line 57902
    const/4 v3, 0x0

    const/16 v2, 0x23

    const/16 v1, 0xf

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ux;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-static {v4, v1, v3, v0, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 57903
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 57904
    return-void
.end method

.method public final ACI()V
    .locals 7

    .line 57905
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A04:Z

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ux;->A01:I

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A00:I

    if-eq v0, v4, :cond_1

    .line 57906
    :cond_0
    return-void

    .line 57907
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A03:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ux;->A02:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 57908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A04:Z

    .line 57909
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 1

    .line 57910
    if-nez p3, :cond_0

    .line 57911
    return-void

    .line 57912
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A04:Z

    .line 57913
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ux;->A02:J

    .line 57914
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A01:I

    .line 57915
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A00:I

    .line 57916
    return-void
.end method

.method public final ADW()V
    .locals 1

    .line 57917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ux;->A04:Z

    .line 57918
    return-void
.end method
