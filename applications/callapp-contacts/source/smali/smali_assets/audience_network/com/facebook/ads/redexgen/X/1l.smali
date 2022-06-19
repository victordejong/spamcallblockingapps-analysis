.class public final Lcom/facebook/ads/redexgen/X/1l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SD;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1l;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1l;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x12

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

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1l;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x19t
        0x5ft
        0x43t
        0x5at
        0x5bt
        0x7ct
        0x6bt
        0x79t
        0x6ft
        0x7ct
        0x6at
        0x6bt
        0x6at
        0x51t
        0x78t
        0x67t
        0x6at
        0x6bt
        0x61t
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/S5;)V
    .locals 12

    .line 3600
    new-instance v3, Lcom/facebook/ads/redexgen/X/7A;

    .line 3601
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/facebook/ads/redexgen/X/Os;->A04:I

    sget v6, Lcom/facebook/ads/redexgen/X/Os;->A04:I

    .line 3602
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3603
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0U(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 3604
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0m()Z

    move-result v6

    .line 3605
    .local p0, "isDSL":Z
    if-eqz v6, :cond_0

    .line 3606
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v5

    .line 3607
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v3, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3608
    .local p1, "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 3609
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7C;->A03:Ljava/lang/String;

    .line 3610
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 3611
    .end local p1    # "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Py;->A04()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/J4;->A1t(Landroid/content/Context;Z)Z

    move-result v3

    .line 3612
    .local p1, "useExoPlayerCacheForDSL":Z
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v8

    .line 3613
    .local p2, "videoUrlToCache":Ljava/lang/String;
    new-instance v7, Lcom/facebook/ads/redexgen/X/7C;

    .line 3614
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v9

    .line 3615
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A05()J

    move-result-wide v11

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3616
    .local v3, "videoData":Lcom/facebook/ads/redexgen/X/7C;
    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    .line 3617
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 3618
    :goto_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/7A;

    .line 3619
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v4

    .line 3620
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1g;->A00(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v5

    .line 3621
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1g;->A01(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v6

    .line 3622
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3623
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0U(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 3624
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0H()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1K;->A00()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3625
    .local v4, "url":Ljava/lang/String;
    new-instance v4, Lcom/facebook/ads/redexgen/X/7A;

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 3626
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x5

    const/16 v1, 0xe

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1l;->A00(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3627
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/7D;->A0U(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 3628
    .end local v4    # "url":Ljava/lang/String;
    goto :goto_1

    .line 3629
    :cond_1
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/7D;->A0Y(Lcom/facebook/ads/redexgen/X/7C;)V

    goto :goto_0

    .line 3630
    :cond_2
    return-void
.end method
