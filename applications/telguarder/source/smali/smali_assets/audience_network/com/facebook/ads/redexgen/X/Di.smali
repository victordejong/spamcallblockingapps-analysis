.class public final Lcom/facebook/ads/redexgen/X/Di;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/WJ;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/Wl;

.field public final A02:Lcom/facebook/ads/redexgen/X/8K;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Di;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Di;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 1

    .line 28663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A00:Z

    .line 28665
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Di;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    .line 28666
    new-instance v0, Lcom/facebook/ads/redexgen/X/8K;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/8K;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    .line 28667
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Di;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28668
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 28669
    .local p0, "eventsArray":Lorg/json/JSONArray;
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 28670
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28671
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 28672
    .local p1, "eventObject":Lorg/json/JSONObject;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A04:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x36

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28673
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A09:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0x8

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28674
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A0A:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5a

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28675
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A08:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    .line 28676
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A02(D)Ljava/lang/String;

    move-result-object v3

    .line 28677
    const/16 v2, 0x4e

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28678
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A07:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    .line 28679
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 28680
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A02(D)Ljava/lang/String;

    move-result-object v3

    .line 28681
    const/16 v2, 0x42

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28682
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A06:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    .line 28683
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 28684
    const/16 v2, 0x38

    const/16 v1, 0xa

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28685
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A03:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28686
    .local v5, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x32

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28687
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2b

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A02()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8G;->A6h()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x26

    const/4 v1, 0x5

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28689
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28690
    .end local p1    # "eventObject":Lorg/json/JSONObject;
    .end local v5    # "data":Ljava/lang/String;
    goto/16 :goto_0

    .line 28691
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 28692
    :cond_1
    return-object v5
.end method

.method private A02(Landroid/database/Cursor;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28693
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 28694
    .local p0, "eventsArray":Lorg/json/JSONArray;
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 28695
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28696
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 28697
    .local p1, "eventObject":Lorg/json/JSONObject;
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x36

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28698
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0x8

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28699
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5a

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28700
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A02(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4e

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28701
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A02(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x42

    const/16 v1, 0xc

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28702
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x38

    const/16 v1, 0xa

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28703
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28704
    .local v5, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x32

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28705
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2b

    const/4 v1, 0x7

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A01:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A02()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8G;->A6h()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x26

    const/4 v1, 0x5

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28707
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28708
    .end local p1    # "eventObject":Lorg/json/JSONObject;
    .end local v5    # "data":Ljava/lang/String;
    goto/16 :goto_0

    .line 28709
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 28710
    :cond_1
    return-object v5
.end method

.method public static A03(Landroid/database/Cursor;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28711
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 28712
    .local p0, "tokensObject":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28713
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wj;->A03:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    .line 28714
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wj;->A02:Lcom/facebook/ads/redexgen/X/8I;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A00:I

    .line 28715
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28716
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 28717
    :cond_0
    return-object v2
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x5e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Di;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x25t
        -0x7t
        0x6t
        -0x41t
        0xct
        -0x48t
        -0x4t
        -0x3t
        0x4t
        -0x3t
        0xct
        -0x3t
        -0x48t
        -0x7t
        0xct
        0xct
        -0x3t
        0x5t
        0x8t
        0xct
        0xbt
        -0x48t
        -0x3t
        0x10t
        -0x5t
        -0x3t
        -0x3t
        -0x4t
        -0x3t
        -0x4t
        -0x48t
        -0x3t
        0xet
        -0x3t
        0x6t
        0xct
        0xbt
        -0x3at
        -0x57t
        -0x54t
        -0x42t
        -0x4ft
        -0x54t
        -0x1t
        0x12t
        0x12t
        0x3t
        0xbt
        0xet
        0x12t
        0x8t
        0x5t
        0x18t
        0x5t
        -0x4bt
        -0x50t
        -0x21t
        -0x2ft
        -0x21t
        -0x21t
        -0x2bt
        -0x25t
        -0x26t
        -0x35t
        -0x2bt
        -0x30t
        -0x33t
        -0x41t
        -0x33t
        -0x33t
        -0x3dt
        -0x37t
        -0x38t
        -0x47t
        -0x32t
        -0x3dt
        -0x39t
        -0x41t
        0x12t
        0x7t
        0xbt
        0x3t
        0x3t
        -0x2t
        -0x6t
        -0xct
        -0x3t
        -0x12t
        -0x8t
        -0xdt
        -0x12t
        -0xdt
        -0x16t
        -0x21t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "u3ex4KQMIW041lf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3AptpGjhH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gmUldlaQs1iDW8SjyulR1SveXx4W0WHx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1qDQcvNZxrP96rda7KCur1LyuVNWU8kp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CAWPS90lsy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t8qLCZBFlDEhGKoHyGYF6SljofbMSV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "olmaGtOYwcY5nta5it0d5AQEWYClhN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QuuHkAQHaV7iF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Di;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A3w(I)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 28718
    const/4 v5, 0x0

    .line 28719
    .local p0, "attemptsExceededEventsCount":I
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 28720
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8K;->A09(I)I

    move-result v5

    .line 28721
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28722
    :catch_0
    move-exception v4

    .line 28723
    .local p1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28724
    sget-object v3, Lcom/facebook/ads/redexgen/X/WJ;->A00:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x26

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Di;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28725
    .end local p1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0J()V

    .line 28726
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A00:Z

    if-eqz v0, :cond_1

    .line 28727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0K()V

    .line 28728
    :cond_1
    return v5
.end method

.method public final A3x()V
    .locals 1

    .line 28729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0I()V

    .line 28730
    return-void
.end method

.method public final A4g(Ljava/lang/String;)Z
    .locals 1

    .line 28731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8K;->A0L(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final A5Y()Lorg/json/JSONArray;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 28732
    const/4 v2, 0x0

    .line 28733
    .local p0, "eventsCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0B()Landroid/database/Cursor;

    move-result-object v2

    .line 28734
    const/4 v0, 0x0

    .line 28735
    .local v2, "events":Lorg/json/JSONArray;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 28736
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Di;->A01(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28737
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 28738
    return-object v0

    .line 28739
    .end local v2    # "events":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 28740
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 28741
    :cond_1
    throw v0

    .line 28742
    .local v2, "jsone":Lorg/json/JSONException;
    :catch_0
    const/4 v0, 0x0

    .line 28743
    if-eqz v2, :cond_2

    .line 28744
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 28745
    :cond_2
    return-object v0
.end method

.method public final A5Z()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 28746
    const/4 v2, 0x0

    .line 28747
    .local p0, "tokensCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0C()Landroid/database/Cursor;

    move-result-object v2

    .line 28748
    const/4 v0, 0x0

    .line 28749
    .local v2, "tokens":Lorg/json/JSONObject;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 28750
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Di;->A03(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28751
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 28752
    return-object v0

    .line 28753
    .end local v2    # "tokens":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 28754
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 28755
    :cond_1
    throw v0

    .line 28756
    .local v2, "jsone":Lorg/json/JSONException;
    :catch_0
    const/4 v0, 0x0

    .line 28757
    if-eqz v2, :cond_2

    .line 28758
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 28759
    :cond_2
    return-object v0
.end method

.method public final A6R()I
    .locals 5

    .line 28760
    const/4 v4, 0x0

    .line 28761
    .local p0, "eventCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0A()Landroid/database/Cursor;

    move-result-object v4

    .line 28762
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28763
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 28764
    return v0

    .line 28765
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Di;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Di;->A04:[Ljava/lang/String;

    const-string v1, "GRH6jlfoF0qGfL3C10cprPwMMeaggOe4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 28766
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 28767
    :cond_2
    throw v3
.end method

.method public final A6U(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 28768
    const/4 v5, 0x0

    .line 28769
    .local p0, "eventType":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8K;->A0E(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 28770
    .local p1, "eventDebugCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 28771
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Di;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Di;->A04:[Ljava/lang/String;

    const-string v1, "rCLG4kGmKo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "2rihfjjJxsL3teC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 28772
    sget-object v0, Lcom/facebook/ads/redexgen/X/Wk;->A0A:Lcom/facebook/ads/redexgen/X/8I;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    .line 28773
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 28774
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 28775
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 28776
    :cond_1
    return-object v5

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A7O(I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .line 28777
    const/4 v3, 0x0

    .line 28778
    .local p0, "payloadCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8K;->A0D(I)Landroid/database/Cursor;

    move-result-object v3

    .line 28779
    const/4 v1, 0x0

    .line 28780
    .local p1, "events":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 28781
    .local v3, "tokens":Lorg/json/JSONObject;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 28782
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Di;->A03(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v2

    .line 28783
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Di;->A02(Landroid/database/Cursor;)Lorg/json/JSONArray;

    move-result-object v1

    .line 28784
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28785
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 28786
    return-object v0

    .line 28787
    :catch_0
    :try_start_1
    const/4 v1, 0x0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28788
    if-eqz v3, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28789
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 28790
    :cond_1
    return-object v0

    .line 28791
    .end local p1    # "events":Lorg/json/JSONArray;
    .end local v3    # "tokens":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    .end local p1
    if-eqz v3, :cond_2

    .line 28792
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 28793
    :cond_2
    throw v0
.end method

.method public final A7q(Ljava/lang/String;)Z
    .locals 1

    .line 28794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8K;->A0M(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final AEo(Lcom/facebook/ads/redexgen/X/J9;Lcom/facebook/ads/redexgen/X/9H;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/J9;",
            "Lcom/facebook/ads/redexgen/X/9H<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28795
    .local v9, "callback":Lcom/facebook/ads/redexgen/X/9H;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Di;->A02:Lcom/facebook/ads/redexgen/X/8K;

    .line 28796
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A08()Ljava/lang/String;

    move-result-object v2

    .line 28797
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A05()Lcom/facebook/ads/redexgen/X/JE;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/JE;->A00:I

    .line 28798
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A06()Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JF;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28799
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A04()D

    move-result-wide v5

    .line 28800
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A03()D

    move-result-wide v7

    .line 28801
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A07()Ljava/lang/String;

    move-result-object v9

    .line 28802
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A09()Ljava/util/Map;

    move-result-object v10

    .line 28803
    move-object v11, p2

    invoke-virtual/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/8K;->A0H(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/9H;)Landroid/os/AsyncTask;

    .line 28804
    return-void
.end method
