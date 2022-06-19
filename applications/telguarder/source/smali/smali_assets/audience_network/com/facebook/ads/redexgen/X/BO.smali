.class public final Lcom/facebook/ads/redexgen/X/BO;
.super Lcom/facebook/ads/redexgen/X/U5;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/U6;
    }
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:J

.field public final A04:F

.field public final A05:F

.field public final A06:J

.field public final A07:J

.field public final A08:J

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/HD;

.field public final A0B:Lcom/facebook/ads/redexgen/X/I0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BO;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[ILcom/facebook/ads/redexgen/X/HD;JJJFFJLcom/facebook/ads/redexgen/X/I0;)V
    .locals 3

    .line 23034
    move-object v2, p0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/U5;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[I)V

    .line 23035
    iput-object p3, v2, Lcom/facebook/ads/redexgen/X/BO;->A0A:Lcom/facebook/ads/redexgen/X/HD;

    .line 23036
    const-wide/16 v0, 0x3e8

    mul-long/2addr p4, v0

    iput-wide p4, v2, Lcom/facebook/ads/redexgen/X/BO;->A07:J

    .line 23037
    mul-long/2addr p6, v0

    iput-wide p6, v2, Lcom/facebook/ads/redexgen/X/BO;->A06:J

    .line 23038
    mul-long/2addr v0, p8

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/BO;->A08:J

    .line 23039
    iput p10, v2, Lcom/facebook/ads/redexgen/X/BO;->A04:F

    .line 23040
    iput p11, v2, Lcom/facebook/ads/redexgen/X/BO;->A05:F

    .line 23041
    iput-wide p12, v2, Lcom/facebook/ads/redexgen/X/BO;->A09:J

    .line 23042
    move-object/from16 v0, p14

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/BO;->A0B:Lcom/facebook/ads/redexgen/X/I0;

    .line 23043
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lcom/facebook/ads/redexgen/X/BO;->A00:F

    .line 23044
    const/4 v0, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/BO;->A01:I

    .line 23045
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/BO;->A03:J

    .line 23046
    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/BO;->A00(J)I

    move-result v0

    .line 23047
    .local p4, "selectedIndex":I
    iput v0, v2, Lcom/facebook/ads/redexgen/X/BO;->A02:I

    .line 23048
    return-void
.end method

.method private A00(J)I
    .locals 9

    .line 23049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A0A:Lcom/facebook/ads/redexgen/X/HD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HD;->A5g()J

    move-result-wide v2

    long-to-float v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A04:F

    mul-float/2addr v1, v0

    float-to-long v3, v1

    .line 23050
    .local p0, "effectiveBitrate":J
    const/4 v8, 0x0

    .line 23051
    .local v2, "lowestBitrateNonBlacklistedIndex":I
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A03:I

    if-ge v5, v0, :cond_4

    .line 23052
    const-wide/high16 v6, -0x8000000000000000L

    sget-object v1, Lcom/facebook/ads/redexgen/X/BO;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/BO;->A0C:[Ljava/lang/String;

    const-string v1, "8BDDZX8NtvcmK0kZvgOjm6gAan90R"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    cmp-long v0, p1, v6

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5, p1, p2}, Lcom/facebook/ads/redexgen/X/U5;->A03(IJ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 23053
    :cond_1
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/U5;->A6X(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 23054
    .local v2, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2

    .line 23055
    return v5

    .line 23056
    :cond_2
    move v8, v5

    .line 23057
    .end local v2    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23058
    .end local v0    # "i":I
    :cond_4
    return v8
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OpbsZaWKXjzF3KWw2aGRlb4mB8FBfC01"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zYGXsYjfnP9Qil6XkzWhYYifMSQIdo2N"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "H55YmTV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "h77O0cZMkR8Is"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8NrfYMGZ6MZ1RRqTPLltauzQ0BLa5LH7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yoATd4d92LqQ4xqqwZkMZhqNrfEgSVpo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5AeqV0rQqqKMdQIKR4oUQOckbVqD8qyF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "SX21O9BtXywQb5kTS8rk0rg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BO;->A0C:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A55()V
    .locals 2

    .line 23059
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A03:J

    .line 23060
    return-void
.end method

.method public final A7B()I
    .locals 1

    .line 23061
    iget v0, p0, Lcom/facebook/ads/redexgen/X/BO;->A02:I

    return v0
.end method

.method public final AB8(F)V
    .locals 0

    .line 23062
    iput p1, p0, Lcom/facebook/ads/redexgen/X/BO;->A00:F

    .line 23063
    return-void
.end method
