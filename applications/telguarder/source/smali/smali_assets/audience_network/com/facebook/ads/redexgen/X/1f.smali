.class public final Lcom/facebook/ads/redexgen/X/1f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0w;

.field public A01:Lcom/facebook/ads/redexgen/X/16;

.field public A02:Lcom/facebook/ads/redexgen/X/7D;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1b;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1c;",
            ">;"
        }
    .end annotation
.end field

.field public A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1d;",
            ">;"
        }
    .end annotation
.end field

.field public A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1b;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1c;",
            ">;"
        }
    .end annotation
.end field

.field public A0A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/1d;",
            ">;"
        }
    .end annotation
.end field

.field public A0B:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1f;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1f;->A05()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0w;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7D;)V
    .locals 2

    .line 3558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3559
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 3560
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A0B:Z

    .line 3562
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/1f;
    :goto_0
    return-void

    .line 3563
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A0B:Z

    .line 3564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Z()Lorg/json/JSONObject;

    move-result-object v1

    .line 3565
    .local p0, "cacheAssets":Lorg/json/JSONObject;
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:Lcom/facebook/ads/redexgen/X/0w;

    .line 3566
    :try_start_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1e;->A05(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:Ljava/util/List;

    .line 3567
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1e;->A06(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A07:Ljava/util/List;

    .line 3568
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1e;->A04(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:Ljava/util/List;

    .line 3569
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1e;->A08(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Ljava/util/List;

    .line 3570
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1e;->A09(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A0A:Ljava/util/List;

    .line 3571
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/1e;->A07(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A08:Ljava/util/List;

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3572
    .local p1, "exception":Ljava/lang/IllegalStateException;
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:Lcom/facebook/ads/redexgen/X/0w;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0w;->A9g()V

    .line 3573
    .end local p1    # "exception":Ljava/lang/IllegalStateException;
    :goto_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/lang/String;

    .line 3574
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Ljava/lang/String;

    .line 3575
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/7D;

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/1f;)Lcom/facebook/ads/redexgen/X/0w;
    .locals 0

    .line 3576
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1f;->A00:Lcom/facebook/ads/redexgen/X/0w;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1f;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 9

    .line 3577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/1c;

    .line 3578
    .local v0, "imageCacheData":Lcom/facebook/ads/redexgen/X/1c;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/7D;

    new-instance v3, Lcom/facebook/ads/redexgen/X/7A;

    .line 3579
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1c;->A02()Ljava/lang/String;

    move-result-object v4

    .line 3580
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1c;->A00()I

    move-result v5

    .line 3581
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1c;->A01()I

    move-result v6

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3582
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0W(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 3583
    .end local v0    # "imageCacheData":Lcom/facebook/ads/redexgen/X/1c;
    goto :goto_0

    .line 3584
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1f;->A07:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const-string v1, "UEbkpEofW3pyuxLEY1uBrJz7isVQ8ZGD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/1d;

    .line 3585
    .local v0, "videoCacheData":Lcom/facebook/ads/redexgen/X/1d;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/7D;

    new-instance v3, Lcom/facebook/ads/redexgen/X/7C;

    .line 3586
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1d;->A01()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Ljava/lang/String;

    .line 3587
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1d;->A00()J

    move-result-wide v7

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3588
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0b(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 3589
    .end local v0    # "videoCacheData":Lcom/facebook/ads/redexgen/X/1d;
    goto :goto_1

    .line 3590
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/1b;

    .line 3591
    .local v0, "fileCacheData":Lcom/facebook/ads/redexgen/X/1b;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1b;->A01()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Ljava/lang/String;

    new-instance v4, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    .local v2, "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1b;->A00()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 3593
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1b;->A00()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/7C;->A03:Ljava/lang/String;

    .line 3594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/7D;->A0Y(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 3595
    .end local v0    # "fileCacheData":Lcom/facebook/ads/redexgen/X/1b;
    .end local v2    # "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    goto :goto_2

    .line 3596
    :cond_3
    return-void
.end method

.method private A03()V
    .locals 9

    .line 3597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/1c;

    .line 3598
    .local v0, "imageCacheData":Lcom/facebook/ads/redexgen/X/1c;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/7D;

    new-instance v3, Lcom/facebook/ads/redexgen/X/7A;

    .line 3599
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1c;->A02()Ljava/lang/String;

    move-result-object v4

    .line 3600
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1c;->A00()I

    move-result v5

    .line 3601
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1c;->A01()I

    move-result v6

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 3602
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0X(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 3603
    .end local v0    # "imageCacheData":Lcom/facebook/ads/redexgen/X/1c;
    goto :goto_0

    .line 3604
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A0A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/1d;

    .line 3605
    .local v0, "videoCacheData":Lcom/facebook/ads/redexgen/X/1d;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/7D;

    .line 3606
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A01()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0a(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 3608
    .end local v0    # "videoCacheData":Lcom/facebook/ads/redexgen/X/1d;
    goto :goto_1

    .line 3609
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/1b;

    .line 3610
    .local v0, "fileCacheData":Lcom/facebook/ads/redexgen/X/1b;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1b;->A01()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Ljava/lang/String;

    new-instance v4, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    .local v2, "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1b;->A00()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 3612
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1b;->A00()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/7C;->A03:Ljava/lang/String;

    .line 3613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/7D;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/7D;->A0Z(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 3614
    .end local v0    # "fileCacheData":Lcom/facebook/ads/redexgen/X/1b;
    .end local v2    # "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    goto :goto_2

    .line 3615
    :cond_2
    return-void
.end method

.method private A04()V
    .locals 5

    .line 3616
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1f;->A02:Lcom/facebook/ads/redexgen/X/7D;

    new-instance v3, Lcom/facebook/ads/redexgen/X/bo;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/bo;-><init>(Lcom/facebook/ads/redexgen/X/1f;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1f;->A04:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1f;->A03:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V

    .line 3617
    return-void
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x6e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/1f;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x26t
        0x1t
        0x19t
        0xet
        0x3t
        0x6t
        0xbt
        0x4ft
        0x2ct
        0xet
        0xct
        0x7t
        0xat
        0x27t
        0xat
        0x3t
        0x1ft
        0xat
        0x1dt
        0x4ft
        0x6t
        0x1ct
        0x4ft
        0x1bt
        0x1dt
        0x16t
        0x6t
        0x1t
        0x8t
        0x4ft
        0x1bt
        0x0t
        0x4ft
        0xct
        0xet
        0xct
        0x7t
        0xat
        0x4ft
        0xet
        0x1ct
        0x1ct
        0xat
        0x1bt
        0x1ct
        0x66t
        0x64t
        0x66t
        0x6dt
        0x60t
        0x5at
        0x68t
        0x64t
        0x6bt
        0x61t
        0x64t
        0x71t
        0x6at
        0x77t
        0x7ct
        0x5at
        0x63t
        0x6ct
        0x69t
        0x60t
        0x76t
        0x5ct
        0x5et
        0x5ct
        0x57t
        0x5at
        0x60t
        0x52t
        0x5et
        0x51t
        0x5bt
        0x5et
        0x4bt
        0x50t
        0x4dt
        0x46t
        0x60t
        0x56t
        0x52t
        0x5et
        0x58t
        0x5at
        0x4ct
        0x7dt
        0x7ft
        0x7dt
        0x76t
        0x7bt
        0x41t
        0x73t
        0x7ft
        0x70t
        0x7at
        0x7ft
        0x6at
        0x71t
        0x6ct
        0x67t
        0x41t
        0x68t
        0x77t
        0x7at
        0x7bt
        0x71t
        0x6dt
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6aKMJ75WMVEBAgU17zgL3kPsbMN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zqeFj61HrGEEMzV8eOCrGy0a59jWZEj6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "wditX881cz5fUi15vV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bVzYhEfn7nSFrV6Ba7mmaN13CxETKz5e"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HOJgiBIQx97TvWHcxF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VSSiBzGB"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PMvuwfMNKhuEpIpAOGHb5yg3eqfjr623"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private A07(Ljava/lang/String;)Z
    .locals 1

    .line 3618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:Lcom/facebook/ads/redexgen/X/16;

    if-eqz v0, :cond_0

    .line 3619
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Z()Lorg/json/JSONObject;

    move-result-object v0

    .line 3620
    .local p0, "cacheAssets":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 3621
    .end local p0    # "cacheAssets":Lorg/json/JSONObject;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A08()V
    .locals 3

    .line 3622
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3623
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1f;->A02()V

    .line 3624
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1f;->A03()V

    .line 3625
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1f;->A04()V

    .line 3626
    return-void

    .line 3627
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A09()Z
    .locals 4

    .line 3628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A01:Lcom/facebook/ads/redexgen/X/16;

    if-eqz v0, :cond_3

    .line 3629
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Z()Lorg/json/JSONObject;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_2

    .line 3630
    .local p0, "cacheAssets":Lorg/json/JSONObject;
    sget-object v2, Lcom/facebook/ads/redexgen/X/1f;->A0D:[Ljava/lang/String;

    const-string v1, "BzSn1bheaaTkuIOFpa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A0B:Z

    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 3631
    const/16 v2, 0x42

    const/16 v1, 0x16

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1f;->A07(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3632
    const/16 v2, 0x58

    const/16 v1, 0x16

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1f;->A07(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3633
    const/16 v2, 0x2d

    const/16 v1, 0x15

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1f;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1f;->A07(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3634
    :goto_0
    return v0

    .line 3635
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 3636
    .end local p0    # "cacheAssets":Lorg/json/JSONObject;
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1f;->A0B:Z

    return v0
.end method
