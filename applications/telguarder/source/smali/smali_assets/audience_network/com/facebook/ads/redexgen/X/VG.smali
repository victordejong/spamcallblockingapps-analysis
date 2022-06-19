.class public final Lcom/facebook/ads/redexgen/X/VG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/D9;
.implements Lcom/facebook/ads/redexgen/X/CP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlacOggSeeker"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:[J

.field public A03:[J

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/VF;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VG;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VF;)V
    .locals 2

    .line 58980
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VG;->A04:Lcom/facebook/ads/redexgen/X/VF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58981
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:J

    .line 58982
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:J

    .line 58983
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2eQ24DSDLhRu7FzQt1K0diaXjGgR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HJAIWifDbYpbQyfuq4YLdOXqiLnQhCdO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "STJ2XlVvvDBqxEoa9B58STUVv6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eAcult68IKSzbFc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "74I8QFEgEjzfXExktbhDVQ3fKTPz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yLIFtYOijsyNQt6vOu7ZA0sjDZ1zKvYm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XZNFsGPpqIw5GVpwlpFrw7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VG;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(J)V
    .locals 0

    .line 58984
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:J

    .line 58985
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 6

    .line 58986
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 58987
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0H()I

    move-result v0

    .line 58988
    .local p0, "length":I
    div-int/lit8 v4, v0, 0x12

    .line 58989
    .local p1, "numberOfSeekPoints":I
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:[J

    .line 58990
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A03:[J

    .line 58991
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 58992
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:[J

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0M()J

    move-result-wide v0

    aput-wide v0, v2, v3

    .line 58993
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VG;->A03:[J

    sget-object v2, Lcom/facebook/ads/redexgen/X/VG;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VG;->A05:[Ljava/lang/String;

    const-string v1, "jgS2SxAZgvKEBWX9pyQFep"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0M()J

    move-result-wide v0

    aput-wide v0, v5, v3

    .line 58994
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 58995
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58996
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final A4P()Lcom/facebook/ads/redexgen/X/CP;
    .locals 0

    .line 58997
    return-object p0
.end method

.method public final A6J()J
    .locals 2

    .line 58998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A04:Lcom/facebook/ads/redexgen/X/VF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VF;->A01(Lcom/facebook/ads/redexgen/X/VF;)Lcom/facebook/ads/redexgen/X/I9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I9;->A01()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A79(J)Lcom/facebook/ads/redexgen/X/CO;
    .locals 10

    .line 58999
    move-object v8, p0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VG;->A04:Lcom/facebook/ads/redexgen/X/VF;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DC;->A05(J)J

    move-result-wide v1

    .line 59000
    .local v8, "granule":J
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VG;->A02:[J

    const/4 v9, 0x1

    invoke-static {v0, v1, v2, v9, v9}, Lcom/facebook/ads/redexgen/X/Ic;->A0B([JJZZ)I

    move-result v7

    .line 59001
    .local v5, "index":I
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/VG;->A04:Lcom/facebook/ads/redexgen/X/VF;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VG;->A02:[J

    aget-wide v0, v0, v7

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DC;->A04(J)J

    move-result-wide v1

    .line 59002
    .local v1, "seekTimeUs":J
    iget-wide v3, v8, Lcom/facebook/ads/redexgen/X/VG;->A00:J

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VG;->A03:[J

    aget-wide v5, v0, v7

    add-long/2addr v3, v5

    .line 59003
    .local v0, "seekPosition":J
    new-instance v6, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 59004
    .local v7, "seekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    cmp-long v0, v1, p1

    if-gez v0, :cond_0

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/VG;->A02:[J

    array-length v0, v1

    sub-int/2addr v0, v9

    if-ne v7, v0, :cond_1

    .line 59005
    .end local v0    # "seekPosition":J
    .end local v2
    .end local v0
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 59006
    :cond_1
    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/VG;->A04:Lcom/facebook/ads/redexgen/X/VF;

    add-int/lit8 v0, v7, 0x1

    aget-wide v0, v1, v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DC;->A04(J)J

    move-result-wide v4

    .line 59007
    .local v2, "secondSeekTimeUs":J
    iget-wide v2, v8, Lcom/facebook/ads/redexgen/X/VG;->A00:J

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/VG;->A03:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v0, v1, v0

    add-long/2addr v2, v0

    .line 59008
    .local v0, "secondSeekPosition":J
    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    .line 59009
    .local v0, "secondSeekPoint":Lcom/facebook/ads/redexgen/X/CQ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0
.end method

.method public final A8F()Z
    .locals 1

    .line 59010
    const/4 v0, 0x1

    return v0
.end method

.method public final ACl(Lcom/facebook/ads/redexgen/X/CH;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59011
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:J

    const-wide/16 v2, -0x1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 59012
    const-wide/16 v0, 0x2

    add-long/2addr v4, v0

    neg-long v0, v4

    .line 59013
    .local p0, "result":J
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:J

    .line 59014
    return-wide v0

    .line 59015
    .end local p0    # "result":J
    :cond_0
    return-wide v2
.end method

.method public final AEC(J)J
    .locals 4

    .line 59016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A04:Lcom/facebook/ads/redexgen/X/VF;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DC;->A05(J)J

    move-result-wide v2

    .line 59017
    .local p0, "granule":J
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:[J

    const/4 v0, 0x1

    invoke-static {v1, v2, v3, v0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0B([JJZZ)I

    move-result v1

    .line 59018
    .local v2, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:[J

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:J

    .line 59019
    return-wide v2
.end method
