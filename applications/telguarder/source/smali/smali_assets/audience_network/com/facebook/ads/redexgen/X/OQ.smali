.class public final Lcom/facebook/ads/redexgen/X/OQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/OP;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OQ;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OQ;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wm;Landroid/webkit/WebResourceRequest;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)Landroid/webkit/WebResourceResponse;
    .locals 15
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Landroid/webkit/WebResourceRequest;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46634
    .local v2, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x55

    const/4 v1, 0x5

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Px;->A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Px;

    move-result-object v0

    .line 46635
    .local v4, "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Px;
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Px;->A0E(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/HH;

    move-result-object v0

    .line 46636
    .local v8, "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v14, Lcom/facebook/ads/redexgen/X/OR;

    move-object/from16 v2, p2

    invoke-direct {v14, v2, v0}, Lcom/facebook/ads/redexgen/X/OR;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HH;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46637
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/OR;->available()I

    move-result v3

    .line 46638
    .local v0, "totalRange":I
    if-gtz v3, :cond_0

    .line 46639
    new-array v6, v1, [Landroid/util/Pair;

    .line 46640
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x3d

    const/16 v2, 0x9

    const/16 v0, 0x70

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v6, v4

    .line 46641
    invoke-static {p0, v1, v6}, Lcom/facebook/ads/redexgen/X/OQ;->A06(Lcom/facebook/ads/redexgen/X/Wm;I[Landroid/util/Pair;)V

    .line 46642
    return-object v8

    .line 46643
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OQ;->A03(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 46644
    .local v2, "rangeHeader":Ljava/lang/String;
    move-object/from16 v13, p4

    move-object/from16 v9, p3

    if-eqz v0, :cond_5

    .line 46645
    :try_start_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OQ;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OP;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46646
    .local p0, "parseResult":Lcom/facebook/ads/redexgen/X/OP;
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/OP;->A03:Z

    if-nez v0, :cond_3

    .line 46647
    new-array v5, v1, [Landroid/util/Pair;

    sget-object v1, Lcom/facebook/ads/redexgen/X/OQ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    .line 46648
    sget-object v2, Lcom/facebook/ads/redexgen/X/OQ;->A01:[Ljava/lang/String;

    const-string v1, "IAvs1VPG9ddgEdFHiUWOtiyrkkO9RlnS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/OP;->A02:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/OP;->A02:Ljava/lang/String;

    :goto_0
    const/16 v2, 0x5e

    const/4 v1, 0x5

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v5, v4

    .line 46649
    invoke-static {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/OQ;->A06(Lcom/facebook/ads/redexgen/X/Wm;I[Landroid/util/Pair;)V

    .line 46650
    return-object v8

    .line 46651
    :cond_1
    const/16 v2, 0x5a

    const/4 v1, 0x4

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46652
    :cond_3
    iget v6, v7, Lcom/facebook/ads/redexgen/X/OP;->A01:I

    .line 46653
    .local v0, "rangeStart":I
    iget v1, v7, Lcom/facebook/ads/redexgen/X/OP;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    add-int/lit8 v5, v3, -0x1

    .line 46654
    .local v5, "rangeEnd":I
    :goto_1
    invoke-static {v13, v3}, Lcom/facebook/ads/redexgen/X/OQ;->A07(Ljava/util/HashMap;I)V

    .line 46655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4b

    const/4 v1, 0x6

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1f

    const/16 v1, 0xd

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46656
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A50()V

    .line 46657
    new-instance v8, Landroid/webkit/WebResourceResponse;

    const/4 v10, 0x0

    const/16 v11, 0xce

    const/16 v2, 0x2e

    const/16 v1, 0xf

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v8 .. v14}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v8

    .line 46658
    :cond_4
    iget v5, v7, Lcom/facebook/ads/redexgen/X/OP;->A00:I

    goto :goto_1

    .line 46659
    .end local p0    # "parseResult":Lcom/facebook/ads/redexgen/X/OP;
    .end local v0    # "rangeStart":I
    .end local v5    # "rangeEnd":I
    :catch_0
    move-exception v0

    .line 46660
    .local p0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x3

    new-array v2, v1, [Landroid/util/Pair;

    .line 46661
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v2, v4

    .line 46662
    invoke-static {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/OQ;->A06(Lcom/facebook/ads/redexgen/X/Wm;I[Landroid/util/Pair;)V

    .line 46663
    return-object v8

    .line 46664
    .end local p0    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A50()V

    .line 46665
    invoke-static {v13, v3}, Lcom/facebook/ads/redexgen/X/OQ;->A07(Ljava/util/HashMap;I)V

    .line 46666
    new-instance v8, Landroid/webkit/WebResourceResponse;

    const/4 v10, 0x0

    const/16 v11, 0xc8

    const/16 v2, 0x2c

    const/4 v1, 0x2

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v12

    .end local v0
    .local p0, "totalRange":I
    .end local v8    # "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    .local v13, "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    .end local v4    # "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Px;
    .local v2, "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Px;
    invoke-direct/range {v8 .. v14}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v8

    .line 46667
    .end local p0    # "totalRange":I
    .end local v13    # "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    .end local v2    # "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Px;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2
    .restart local v8    # "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    .restart local v4    # "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Px;
    :catch_1
    move-exception v0

    .line 46668
    .end local v8    # "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    .end local v4    # "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Px;
    .local p0, "e":Ljava/io/IOException;
    .restart local v13    # "dataSourceFactory":Lcom/facebook/ads/redexgen/X/HH;
    .restart local v2    # "exoPlayerCacheManager":Lcom/facebook/ads/redexgen/X/Px;
    const/4 v3, 0x2

    new-array v2, v1, [Landroid/util/Pair;

    .line 46669
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v2, v4

    .line 46670
    invoke-static {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/OQ;->A06(Lcom/facebook/ads/redexgen/X/Wm;I[Landroid/util/Pair;)V

    .line 46671
    return-object v8
.end method

.method public static A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OP;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 46672
    const/4 v5, 0x0

    if-nez p0, :cond_0

    .line 46673
    new-instance v1, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/OP;-><init>()V

    .line 46674
    .local v5, "parseResult":Lcom/facebook/ads/redexgen/X/OP;
    iput-boolean v5, v1, Lcom/facebook/ads/redexgen/X/OP;->A03:Z

    .line 46675
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/OP;->A02:Ljava/lang/String;

    .line 46676
    return-object v1

    .line 46677
    .end local v5    # "parseResult":Lcom/facebook/ads/redexgen/X/OP;
    :cond_0
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 46678
    .local v5, "mainParts":[Ljava/lang/String;
    array-length v1, v6

    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    aget-object v1, v6, v5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x46

    const/4 v1, 0x5

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46679
    .end local v0
    .end local v2
    .end local v1
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/OP;-><init>()V

    .line 46680
    .restart local v1
    iput-boolean v5, v0, Lcom/facebook/ads/redexgen/X/OP;->A03:Z

    .line 46681
    iput-object p0, v0, Lcom/facebook/ads/redexgen/X/OP;->A02:Ljava/lang/String;

    .line 46682
    return-object v0

    .line 46683
    :cond_2
    const/4 v4, 0x1

    aget-object v0, v6, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46684
    .local v0, "ranges":[Ljava/lang/String;
    array-length v0, v0

    if-eq v0, v4, :cond_3

    .line 46685
    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/OP;-><init>()V

    .line 46686
    .local v1, "parseResult":Lcom/facebook/ads/redexgen/X/OP;
    iput-boolean v5, v0, Lcom/facebook/ads/redexgen/X/OP;->A03:Z

    .line 46687
    iput-object p0, v0, Lcom/facebook/ads/redexgen/X/OP;->A02:Ljava/lang/String;

    .line 46688
    return-object v0

    .line 46689
    .end local v1    # "parseResult":Lcom/facebook/ads/redexgen/X/OP;
    :cond_3
    aget-object v0, v6, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 46690
    .local v2, "rangeParts":[Ljava/lang/String;
    new-instance v2, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/OP;-><init>()V

    .line 46691
    .local v1, "parseResult":Lcom/facebook/ads/redexgen/X/OP;
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/OP;->A03:Z

    .line 46692
    iput-object p0, v2, Lcom/facebook/ads/redexgen/X/OP;->A02:Ljava/lang/String;

    .line 46693
    aget-object v0, v3, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    aget-object v0, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_4
    iput v5, v2, Lcom/facebook/ads/redexgen/X/OP;->A01:I

    .line 46694
    array-length v0, v3

    const/4 v1, -0x1

    if-le v0, v4, :cond_6

    .line 46695
    aget-object v0, v3, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_5
    iput v1, v2, Lcom/facebook/ads/redexgen/X/OP;->A00:I

    .line 46696
    :goto_0
    return-object v2

    .line 46697
    :cond_6
    iput v1, v2, Lcom/facebook/ads/redexgen/X/OP;->A00:I

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OQ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x50

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 46698
    .local v4, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/OQ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    .line 46699
    .local v0, "header":Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/OQ;->A01:[Ljava/lang/String;

    const-string v1, "Cf1eqBqAOspOHDMpApIZdhtZXzC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5e

    const/4 v1, 0x5

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46700
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/OQ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/OQ;->A01:[Ljava/lang/String;

    const-string v1, "1CCmnR2TaHvOXaAch"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast v3, Ljava/lang/String;

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46701
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x63

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OQ;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x27t
        -0x4et
        -0x47t
        -0x55t
        -0x12t
        0x10t
        0x10t
        0x12t
        0x1dt
        0x21t
        -0x26t
        -0x1t
        0xet
        0x1bt
        0x14t
        0x12t
        0x20t
        -0x52t
        -0x26t
        -0x27t
        -0x21t
        -0x30t
        -0x27t
        -0x21t
        -0x68t
        -0x49t
        -0x30t
        -0x27t
        -0x2et
        -0x21t
        -0x2dt
        -0x9t
        0x23t
        0x22t
        0x28t
        0x19t
        0x22t
        0x28t
        -0x1ft
        0x6t
        0x15t
        0x22t
        0x1bt
        0x19t
        -0x25t
        -0x29t
        -0x26t
        -0x15t
        -0x4t
        -0x2t
        -0xdt
        -0x15t
        -0xat
        -0x56t
        -0x33t
        -0x7t
        -0x8t
        -0x2t
        -0x11t
        -0x8t
        -0x2t
        0x21t
        0x36t
        0x21t
        0x29t
        0x2ct
        0x21t
        0x22t
        0x2ct
        0x25t
        0x13t
        0x2at
        0x25t
        0x16t
        0x24t
        -0x35t
        -0x1et
        -0x23t
        -0x32t
        -0x24t
        -0x77t
        -0x4t
        0x8t
        -0x3t
        -0x2t
        -0x3t
        0xat
        0xat
        0x7t
        0xat
        -0x31t
        -0x2at
        -0x33t
        -0x33t
        0x8t
        -0x9t
        0x4t
        -0x3t
        -0x5t
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eh8tV3BTVZyC4rnOdi11vwqGDRDascht"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hSOppPlOOrNO5T03Qep3cNil6G"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x5hMgXdYM31n8nDkX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IhAz4sh6yfr7m3vuoMOIViRRm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oslkPdCCfDrrZGVIb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MBT8adsCaGk0kR1DcVhNdi7i"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wD9Je1AYBIOAT7r9Cd3JTv7t"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5GZdk8oKlkryNJR3gzyJyFU7wNJ92iGQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OQ;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Wm;I[Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "I[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46702
    .local v3, "extraFields":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 46703
    .local p0, "error":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x51

    const/4 v1, 0x4

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46704
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 46705
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46706
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46707
    :catch_0
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46708
    .local p1, "errorMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4z(Ljava/lang/String;)V

    .line 46709
    return-void
.end method

.method public static A07(Ljava/util/HashMap;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 46710
    .local v2, "responseHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x4

    const/16 v1, 0xd

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x46

    const/4 v1, 0x5

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46711
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46712
    return-void
.end method
