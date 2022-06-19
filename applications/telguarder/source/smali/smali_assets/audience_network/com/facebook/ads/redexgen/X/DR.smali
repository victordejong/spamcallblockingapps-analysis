.class public final Lcom/facebook/ads/redexgen/X/DR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Uy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/CS;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DR;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CS;)V
    .locals 0

    .line 27095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27096
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DR;->A0C:Lcom/facebook/ads/redexgen/X/CS;

    .line 27097
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AYWdL56a4DytBb92pyfou4qkdfQZP17U"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "H6DKYDhVJY4lDu7NN5PfgzqEFUcxrS9f"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WNNb8FyPAbeesrZWqHd0h41QUEIlSEqD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aohBw6Dl8augA4cOmAyakxE8MNL4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GggufKSNb2rIxD6ypmyhBLFItuZhqtxu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "C"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ikxU9ccIRsd3D"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "u9QdIfGysZF25OYugvkKfwyVbTMiQBdi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DR;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private A01(I)V
    .locals 8

    .line 27098
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DR;->A0A:Z

    .line 27099
    .local v2, "flags":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A03:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    .line 27100
    .local v2, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DR;->A0C:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/DR;->A04:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 27101
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 27102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A07:Z

    .line 27103
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A06:Z

    .line 27104
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Z

    .line 27105
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A09:Z

    .line 27106
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A0B:Z

    .line 27107
    return-void
.end method

.method public final A03(JI)V
    .locals 2

    .line 27108
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A0B:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A06:Z

    if-eqz v0, :cond_1

    .line 27109
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A0A:Z

    .line 27110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A0B:Z

    .line 27111
    :cond_0
    :goto_0
    return-void

    .line 27112
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A06:Z

    if-eqz v0, :cond_0

    .line 27113
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A09:Z

    if-eqz v0, :cond_3

    .line 27114
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    .line 27115
    .local p1, "nalUnitLength":I
    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/DR;->A01(I)V

    .line 27116
    .end local p1    # "nalUnitLength":I
    :cond_3
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A03:J

    .line 27117
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A04:J

    .line 27118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A09:Z

    .line 27119
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A0A:Z

    goto :goto_0
.end method

.method public final A04(JIIJ)V
    .locals 6

    .line 27120
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/DR;->A06:Z

    .line 27121
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Z

    .line 27122
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:J

    .line 27123
    iput v2, p0, Lcom/facebook/ads/redexgen/X/DR;->A00:I

    .line 27124
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:J

    .line 27125
    const/4 v4, 0x1

    const/16 v0, 0x20

    if-lt p4, v0, :cond_1

    .line 27126
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A0B:Z

    if-nez v0, :cond_0

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/DR;->A09:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/DR;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_7

    sget-object v3, Lcom/facebook/ads/redexgen/X/DR;->A0D:[Ljava/lang/String;

    const-string v1, "PhOYy5uOwtkvQqb2kECzhVXUaZyl"

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const-string v1, "9"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    if-eqz v5, :cond_0

    .line 27127
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/DR;->A01(I)V

    .line 27128
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/DR;->A09:Z

    .line 27129
    :cond_0
    const/16 v5, 0x22

    sget-object v3, Lcom/facebook/ads/redexgen/X/DR;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v3, v0

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v3, Lcom/facebook/ads/redexgen/X/DR;->A0D:[Ljava/lang/String;

    const-string v1, "zd4evPFMR8HkIVEFGaoPEUP9mAjTpwLl"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v1, "iRbSzCw6Ao5UVfXZ9vdis77rWqJKFpqc"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    if-gt p4, v5, :cond_1

    .line 27130
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A0B:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:Z

    .line 27131
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DR;->A0B:Z

    .line 27132
    :cond_1
    const/16 v0, 0x10

    if-lt p4, v0, :cond_4

    const/16 v0, 0x15

    if-gt p4, v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A08:Z

    .line 27133
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A08:Z

    if-nez v0, :cond_2

    const/16 v0, 0x9

    if-gt p4, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/DR;->A07:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/DR;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 27134
    sget-object v2, Lcom/facebook/ads/redexgen/X/DR;->A0D:[Ljava/lang/String;

    const-string v1, "aiKpQuauztF9gfFeSwQvJUY0hYLQrN5M"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    .line 27135
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-gt p4, v5, :cond_1

    goto :goto_0

    .line 27136
    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A05([BII)V
    .locals 2

    .line 27137
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A07:Z

    if-eqz v0, :cond_0

    .line 27138
    add-int/lit8 v1, p2, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A00:I

    sub-int/2addr v1, v0

    .line 27139
    .local p0, "headerOffset":I
    if-ge v1, p3, :cond_2

    .line 27140
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A06:Z

    .line 27141
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/DR;->A07:Z

    .line 27142
    .end local p0    # "headerOffset":I
    :cond_0
    :goto_1
    return-void

    .line 27143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 27144
    :cond_2
    sub-int/2addr p3, p2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DR;->A00:I

    goto :goto_1
.end method
