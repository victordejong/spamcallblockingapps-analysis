.class public final Lcom/facebook/ads/redexgen/X/cX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/00;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-java.lang.String.length"
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/08;

.field public final A03:Lcom/facebook/ads/redexgen/X/0A;

.field public final A04:Lcom/facebook/ads/redexgen/X/0L;

.field public final A05:Lcom/facebook/ads/redexgen/X/8D;

.field public final A06:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 71905
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cX;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cX;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/cX;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cX;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/08;Lcom/facebook/ads/redexgen/X/0L;)V
    .locals 1

    .line 71906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71907
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71908
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A06:Ljava/util/Map;

    .line 71909
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    .line 71910
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/8D;

    .line 71911
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/08;->A02()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    .line 71912
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/08;->A00()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:I

    .line 71913
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    .line 71914
    new-instance v0, Lcom/facebook/ads/redexgen/X/0A;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0A;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A03:Lcom/facebook/ads/redexgen/X/0A;

    .line 71915
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/08;->A01()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A01:I

    .line 71916
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cX;->A02:Lcom/facebook/ads/redexgen/X/08;

    .line 71917
    return-void
.end method

.method public static A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0K;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/0H;
        }
    .end annotation

    .line 71918
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 71919
    .local p0, "is":Ljava/io/InputStream;
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71920
    .local p1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 71921
    .local v0, "data":[B
    :goto_0
    array-length v0, v3

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v0, "nRead":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 71922
    invoke-virtual {p0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 71923
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/cV;-><init>([B)V

    .line 71924
    .end local p1    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v0    # "nRead":I
    .end local v0
    .local p0, "source":Lcom/facebook/ads/redexgen/X/0K;
    return-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71925
    .end local p0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :catch_0
    move-exception v3

    .line 71926
    .local p0, "e":Ljava/io/IOException;
    const/16 v2, 0x83

    const/16 v1, 0x12

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0H;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/0H;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A01(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 71927
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/16 v2, 0x13e

    const/16 v1, 0xf

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/06;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/09;)Ljava/io/File;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71928
    move-object/from16 v0, p0

    const/16 v3, 0xde

    const/16 v2, 0x16

    const/16 v1, 0x11

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v10, p2

    move-object/from16 v5, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 71929
    .local v13, "requestTime":J
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/cX;->A01(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 71930
    .local v5, "cacheRoot":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    move-object/from16 v3, p3

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71931
    .local v0, "targetFile":Ljava/io/File;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/8D;

    .line 71932
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/J4;->A0L(Landroid/content/Context;)J

    move-result-wide v2

    new-instance v6, Lcom/facebook/ads/redexgen/X/Fu;

    invoke-direct {v6, v2, v3}, Lcom/facebook/ads/redexgen/X/Fu;-><init>(J)V

    new-instance v9, Lcom/facebook/ads/redexgen/X/cT;

    invoke-direct {v9, v4, v6}, Lcom/facebook/ads/redexgen/X/cT;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0B;)V

    .line 71933
    .local p5, "cache":Lcom/facebook/ads/redexgen/X/cT;
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/cT;->A0A()Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 71934
    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v2, :cond_0

    .line 71935
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x31

    const/16 v3, 0x16

    const/16 v2, 0x24

    invoke-static {v7, v3, v2}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71936
    :cond_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A06:Ljava/util/Map;

    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71937
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/cT;->A07()V

    .line 71938
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v2, v10, v6, v5}, Lcom/facebook/ads/redexgen/X/0L;->ACt(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    .line 71939
    return-object v4

    .line 71940
    :cond_1
    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v2, :cond_2

    .line 71941
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x47

    const/16 v3, 0x1a

    const/16 v2, 0x4c

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/facebook/ads/redexgen/X/cT;->A00:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71942
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/09;->A04()Z

    move-result v2

    if-nez v2, :cond_3

    .line 71943
    return-object v8

    .line 71944
    :cond_3
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/4 v12, 0x0

    invoke-interface {v2, v10, v12, v5}, Lcom/facebook/ads/redexgen/X/0L;->ACt(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    .line 71945
    .local v3, "attempt":I
    :goto_0
    iget v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A00:I

    if-ge v12, v2, :cond_7
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/cU; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/facebook/ads/redexgen/X/cR; {:try_start_0 .. :try_end_0} :catch_2

    .line 71946
    :try_start_1
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/8D;

    move-object/from16 v7, p0

    .end local v3    # "attempt":I
    .local v13, "attempt":I
    move-object v10, v10

    move-object v6, v9
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/facebook/ads/redexgen/X/cU; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/facebook/ads/redexgen/X/cR; {:try_start_1 .. :try_end_1} :catch_2

    .end local p5    # "cache":Lcom/facebook/ads/redexgen/X/cT;
    .local v8, "cache":Lcom/facebook/ads/redexgen/X/cT;
    .end local v0    # "targetFile":Ljava/io/File;
    .local v2, "targetFile":Ljava/io/File;
    .end local v5    # "cacheRoot":Ljava/io/File;
    .local v2, "cacheRoot":Ljava/io/File;
    :try_start_2
    move/from16 v11, p4

    invoke-direct/range {v7 .. v14}, Lcom/facebook/ads/redexgen/X/cX;->A06(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/cT;Ljava/lang/String;IIJ)V

    goto :goto_2
    :try_end_2
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/ads/redexgen/X/cU; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/facebook/ads/redexgen/X/cR; {:try_start_2 .. :try_end_2} :catch_2

    .line 71947
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v2    # "cacheRoot":Ljava/io/File;
    .end local v8    # "cache":Lcom/facebook/ads/redexgen/X/cT;
    .end local v13    # "attempt":I
    .end local v2
    .restart local v3    # "attempt":I
    .restart local p5    # "cache":Lcom/facebook/ads/redexgen/X/cT;
    .restart local v0    # "targetFile":Ljava/io/File;
    .restart local v5    # "cacheRoot":Ljava/io/File;
    :catch_1
    move-exception v3

    move-object v6, v9

    .line 71948
    .local p0, "proxyCacheException":Lcom/facebook/ads/redexgen/X/0H;
    :goto_1
    :try_start_3
    iget v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A00:I

    add-int/lit8 v2, v2, -0x1

    .end local v13
    .local v10, "attempt":I
    if-ne v12, v2, :cond_4

    .line 71949
    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/cX;->A07(Lcom/facebook/ads/redexgen/X/cT;)V

    .line 71950
    instance-of v2, v3, Lcom/facebook/ads/redexgen/X/cU;

    if-nez v2, :cond_6

    .line 71951
    instance-of v2, v3, Lcom/facebook/ads/redexgen/X/cR;

    if-nez v2, :cond_5

    .line 71952
    .end local p0    # "proxyCacheException":Lcom/facebook/ads/redexgen/X/0H;
    .restart local v2    # "cacheRoot":Ljava/io/File;
    .restart local v3    # "attempt":I
    .restart local v4
    .restart local v4
    .restart local v2    # "cacheRoot":Ljava/io/File;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object v9, v6

    .end local v10    # "attempt":I
    .restart local v3    # "attempt":I
    goto :goto_0

    .line 71953
    :cond_5
    check-cast v3, Lcom/facebook/ads/redexgen/X/cR;

    .end local v2    # "cacheRoot":Ljava/io/File;
    .end local v3    # "attempt":I
    .end local v4
    .end local v4
    .end local v2
    throw v3

    .line 71954
    .restart local v2    # "cacheRoot":Ljava/io/File;
    .restart local v3    # "attempt":I
    .restart local v4
    .restart local v4
    .restart local v2    # "cacheRoot":Ljava/io/File;
    :cond_6
    check-cast v3, Lcom/facebook/ads/redexgen/X/cU;

    .end local v2    # "cacheRoot":Ljava/io/File;
    .end local v3    # "attempt":I
    .end local v4
    .end local v4
    .end local v2
    throw v3

    .line 71955
    .end local v2
    .end local v8
    .end local v2
    .restart local p5    # "cache":Lcom/facebook/ads/redexgen/X/cT;
    .restart local v0    # "targetFile":Ljava/io/File;
    .restart local v5    # "cacheRoot":Ljava/io/File;
    :cond_7
    move-object v6, v9

    .line 71956
    .end local v3
    .end local p5    # "cache":Lcom/facebook/ads/redexgen/X/cT;
    .end local v0    # "targetFile":Ljava/io/File;
    .end local v5    # "cacheRoot":Ljava/io/File;
    .restart local v2    # "cacheRoot":Ljava/io/File;
    .restart local v8    # "cache":Lcom/facebook/ads/redexgen/X/cT;
    .restart local v2    # "cacheRoot":Ljava/io/File;
    :goto_2
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/cT;->A04()I

    move-result v8

    .line 71957
    .local p0, "size":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/cT;->A07()V

    .line 71958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v13

    .line 71959
    .local v13, "loadTime":J
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/09;->A00()Lcom/facebook/ads/redexgen/X/03;

    move-result-object v3

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v3, v4, v2}, Lcom/facebook/ads/redexgen/X/03;->A48(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)V

    .line 71960
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/cX;->A06:Ljava/util/Map;

    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71961
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v11, 0x840

    const/4 v12, 0x0

    .line 71962
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 71963
    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/0L;->ACs(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/06;)V

    .line 71964
    return-object v4
    :try_end_3
    .catch Lcom/facebook/ads/redexgen/X/cU; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/facebook/ads/redexgen/X/cR; {:try_start_3 .. :try_end_3} :catch_2

    .line 71965
    .end local p0    # "size":I
    .end local v2    # "cacheRoot":Ljava/io/File;
    .end local v8    # "cache":Lcom/facebook/ads/redexgen/X/cT;
    .end local v13    # "loadTime":J
    .end local v13
    .end local v2
    :catch_2
    move-exception v2

    .line 71966
    .local p0, "e":Lcom/facebook/ads/redexgen/X/cR;
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v11, 0x841

    .line 71967
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cR;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 71968
    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/0L;->ACs(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/06;)V

    .line 71969
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v0, :cond_8

    .line 71970
    sget-object v0, Lcom/facebook/ads/redexgen/X/cX;->A0B:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71971
    :cond_8
    const/4 v0, 0x0

    return-object v0

    .line 71972
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/cR;
    :catch_3
    move-exception v2

    .line 71973
    .local p0, "e":Lcom/facebook/ads/redexgen/X/cU;
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    const/16 v11, 0x847

    .line 71974
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cU;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 71975
    move-object v15, v5

    invoke-interface/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/0L;->ACs(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Lcom/facebook/ads/redexgen/X/06;)V

    .line 71976
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v0, :cond_9

    .line 71977
    sget-object v0, Lcom/facebook/ads/redexgen/X/cX;->A0B:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71978
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cX;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x32

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x16c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cX;->A09:[B

    return-void

    :array_0
    .array-data 1
        -0x5ft
        -0x17t
        -0x1et
        -0xct
        -0x5ft
        -0x1dt
        -0x1at
        -0x1at
        -0x11t
        -0x5ft
        -0x16t
        -0x11t
        -0xbt
        -0x1at
        -0xdt
        -0xdt
        -0xat
        -0xft
        -0xbt
        -0x1at
        -0x1bt
        -0x51t
        -0x80t
        0x74t
        -0x46t
        -0x43t
        -0x40t
        -0x47t
        0x74t
        -0x49t
        -0x40t
        -0x47t
        -0x4bt
        -0x3et
        -0x47t
        -0x48t
        -0x72t
        0x74t
        -0x34t
        -0x42t
        -0x21t
        0x12t
        0x12t
        0x3t
        0xbt
        0xet
        0x12t
        -0x28t
        -0x42t
        -0x67t
        -0x49t
        -0x47t
        -0x42t
        -0x41t
        -0x3ct
        -0x43t
        0x76t
        -0x44t
        -0x41t
        -0x3et
        -0x45t
        0x76t
        -0x47t
        -0x3bt
        -0x3dt
        -0x3at
        -0x3et
        -0x45t
        -0x36t
        -0x45t
        0x76t
        -0x3ft
        -0x21t
        -0x1ft
        -0x1at
        -0x19t
        -0x14t
        -0x1bt
        -0x62t
        -0x1ct
        -0x19t
        -0x16t
        -0x1dt
        -0x62t
        -0x14t
        -0x13t
        -0xet
        -0x62t
        -0x1ft
        -0x13t
        -0x15t
        -0x12t
        -0x16t
        -0x1dt
        -0xet
        -0x1dt
        -0x62t
        -0x57t
        -0x39t
        -0x37t
        -0x32t
        -0x31t
        -0x2ct
        -0x33t
        -0x7at
        -0x2bt
        -0x34t
        -0x7at
        -0x79t
        -0x5bt
        -0x4et
        0x6bt
        -0x48t
        0x64t
        -0x59t
        -0x50t
        -0x4dt
        -0x49t
        -0x57t
        0x64t
        -0x59t
        -0x5bt
        -0x59t
        -0x54t
        -0x57t
        0x64t
        -0x56t
        -0x53t
        -0x50t
        -0x57t
        0x72t
        -0x3dt
        -0x1ft
        -0x12t
        -0x59t
        -0xct
        -0x60t
        -0xet
        -0x1bt
        -0x1ft
        -0x1ct
        -0x60t
        -0x1ft
        -0xdt
        -0xdt
        -0x1bt
        -0xct
        -0xdt
        -0x52t
        -0x3ft
        -0x21t
        -0x14t
        -0x5bt
        -0xet
        -0x62t
        -0x10t
        -0x1dt
        -0x21t
        -0x1et
        -0x62t
        -0x16t
        -0x1dt
        -0x14t
        -0x1bt
        -0xet
        -0x1at
        -0x62t
        -0x13t
        -0x1ct
        -0x62t
        -0x7ct
        -0x5bt
        -0x54t
        -0x5bt
        -0x4ct
        -0x57t
        -0x52t
        -0x59t
        0x60t
        -0x5dt
        -0x5ft
        -0x5dt
        -0x58t
        -0x5bt
        0x60t
        -0x5at
        -0x57t
        -0x54t
        -0x5bt
        0x60t
        -0x5ft
        -0x5at
        -0x4ct
        -0x5bt
        -0x4et
        0x60t
        -0x5bt
        -0x48t
        -0x5dt
        -0x5bt
        -0x5bt
        -0x5ct
        -0x57t
        -0x52t
        -0x59t
        0x60t
        -0x4et
        -0x5bt
        -0x4ct
        -0x4et
        -0x47t
        0x60t
        -0x5ft
        -0x4ct
        -0x4ct
        -0x5bt
        -0x53t
        -0x50t
        -0x4ct
        -0x4dt
        0x7at
        0x60t
        -0x78t
        -0x4bt
        -0x4bt
        -0x4et
        -0x4bt
        0x63t
        -0x5at
        -0x5ct
        -0x5at
        -0x55t
        -0x54t
        -0x4ft
        -0x56t
        0x63t
        -0x49t
        -0x55t
        -0x58t
        0x63t
        -0x57t
        -0x54t
        -0x51t
        -0x58t
        -0x59t
        -0x2ct
        -0x2ct
        -0x2ft
        -0x2ct
        -0x7et
        -0x3bt
        -0x32t
        -0x39t
        -0x3dt
        -0x30t
        -0x35t
        -0x30t
        -0x37t
        -0x7et
        -0x38t
        -0x35t
        -0x32t
        -0x39t
        -0x17t
        0x16t
        0x16t
        0x13t
        0x16t
        -0x3ct
        0x7t
        0x10t
        0x13t
        0x17t
        0xdt
        0x12t
        0xbt
        -0x3ct
        0x17t
        0x13t
        0x19t
        0x16t
        0x7t
        0x9t
        -0x27t
        -0x2t
        -0xdt
        -0x1t
        -0x3t
        0x0t
        -0x4t
        -0xbt
        0x4t
        -0xbt
        -0x50t
        0x2t
        -0xbt
        0x3t
        0x0t
        -0x1t
        -0x2t
        0x3t
        -0xbt
        -0x42t
        0x2t
        0x20t
        0x27t
        0x17t
        0x1ct
        0x15t
        -0x32t
        0x22t
        0x1dt
        -0x32t
        0x20t
        0x13t
        0xft
        0x12t
        -0x32t
        -0x1ft
        -0x1ct
        -0x12t
        -0x9t
        -0x53t
        -0x1at
        -0x17t
        -0x14t
        -0x1bt
        -0x53t
        -0x1dt
        -0x1ft
        -0x1dt
        -0x18t
        -0x1bt
        -0x32t
        -0x20t
        -0x20t
        -0x2et
        -0x1ft
        -0x59t
        -0x64t
        -0x64t
        -0x64t
        -0x4dt
        -0x4at
        -0x47t
        -0x4et
        -0x79t
        0x7ct
        0x7ct
        0x7ct
        -0x52t
        -0x45t
        -0x4ft
        -0x41t
        -0x44t
        -0x4at
        -0x4ft
        -0x54t
        -0x52t
        -0x40t
        -0x40t
        -0x4et
        -0x3ft
        0x7ct
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jhQijRHeS2b3DC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TrxlLGPRt74PJqIyPQ202SRMEezA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IB0ZY9fOXgD7jLe6Y4PRk3dCNjPCK6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "H6fabJXG57DAkPtsQTSNUghzavXSaH69"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ufMT47zQTczJDi2Vdc2LdI1YLyWR3nOe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Lk9ILhYpp3cxsVDBevZ7UGW4HuH86l"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vesbJwqYWy5viKlOFyHJIQca6g"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    return-void
.end method

.method private A06(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/cT;Ljava/lang/String;IIJ)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/0H;
        }
    .end annotation

    .line 71979
    move-object/from16 v1, p0

    const/16 v3, 0x107

    const/16 v2, 0x14

    const/16 v0, 0x72

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x156

    const/16 v3, 0x16

    const/16 v0, 0x1b

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, p3

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v5, p1

    if-eqz v0, :cond_0

    .line 71980
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 71981
    .local p0, "localUrl":Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/cX;->A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0K;

    move-result-object v0

    .line 71982
    .local p0, "source":Lcom/facebook/ads/redexgen/X/0K;
    goto :goto_0

    .end local p0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :cond_0
    const/16 v4, 0x14d

    const/16 v3, 0x9

    const/16 v0, 0x3b

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71983
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 71984
    .local p0, "localUrl":Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/cX;->A00(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/0K;

    move-result-object v0

    .line 71985
    .local p0, "source":Lcom/facebook/ads/redexgen/X/0K;
    goto :goto_0

    .line 71986
    .end local p0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/cS;

    move/from16 v3, p4

    invoke-direct {v0, v11, v3}, Lcom/facebook/ads/redexgen/X/cS;-><init>(Ljava/lang/String;I)V

    .line 71987
    .local v3, "source":Lcom/facebook/ads/redexgen/X/0K;
    :goto_0
    :try_start_0
    move-wide/from16 v13, p6

    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v3, :cond_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71988
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x12f

    const/16 v4, 0xf

    const/16 v3, 0x7c

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x26

    const/16 v4, 0xb

    const/16 v3, 0x6c

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move/from16 v3, p5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
    :try_end_2
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 71989
    :catchall_0
    move-exception v6

    goto/16 :goto_a

    .line 71990
    :cond_2
    :goto_1
    :try_start_3
    move-object/from16 v5, p2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cT;->A04()I

    move-result v10

    .line 71991
    .local p0, "offset":I
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0K;->length()I

    move-result v7

    .line 71992
    .local v5, "sourceLength":I
    if-gez v7, :cond_3

    const/4 v12, 0x1

    goto :goto_2
    :try_end_3
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71993
    .end local v0
    .restart local v3    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :catchall_1
    move-exception v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v4, v4, v3

    const/16 v3, 0x1b

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x52

    if-eq v4, v3, :cond_c

    goto :goto_3

    .line 71994
    :cond_3
    const/4 v12, 0x0

    :goto_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v4, v4, v3

    const/16 v3, 0x1f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x39

    if-eq v4, v3, :cond_4

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 71995
    .local v4, "canNotReadLength":Z
    :cond_4
    sget-object v6, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const-string v4, "O2qol2VIPsSIkPIIN6kN5hssl2djupr9"

    const/4 v3, 0x3

    aput-object v4, v6, v3

    if-eqz v12, :cond_5

    .line 71996
    :try_start_4
    invoke-direct {v1, v5}, Lcom/facebook/ads/redexgen/X/cX;->A08(Lcom/facebook/ads/redexgen/X/cT;)Z

    move-result v9

    .line 71997
    .local v3, "cleaned":Z
    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v3, :cond_5

    .line 71998
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x95

    const/16 v4, 0x15

    const/16 v3, 0x4c

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x16

    const/16 v4, 0x10

    const/16 v3, 0x22

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71999
    .restart local p0    # "offset":I
    .restart local v5    # "sourceLength":I
    .restart local v4    # "canNotReadLength":Z
    :cond_5
    if-nez v12, :cond_6

    if-ge v10, v7, :cond_7
    :try_end_4
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 72000
    :cond_6
    :try_start_5
    invoke-interface {v0, v10}, Lcom/facebook/ads/redexgen/X/0K;->ACD(I)V

    .line 72001
    const/16 v3, 0x2000

    new-array v6, v3, [B

    .line 72002
    .local v3, "buffer":[B
    :goto_4
    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/0K;->read([B)I

    move-result v4

    .local v7, "readBytes":I
    const/4 v3, -0x1

    if-eq v4, v3, :cond_7
    :try_end_5
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 72003
    :try_start_6
    invoke-virtual {v5, v6, v4}, Lcom/facebook/ads/redexgen/X/cT;->A09([BI)V

    goto :goto_4

    .line 72004
    .end local v3    # "buffer":[B
    .end local v7    # "readBytes":I
    :cond_7
    if-eqz v12, :cond_8

    .line 72005
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cT;->A08()V

    goto :goto_5
    :try_end_6
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 72006
    :cond_8
    :try_start_7
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cT;->A04()I

    move-result v3

    if-ne v3, v7, :cond_b

    .line 72007
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cT;->A08()V

    .line 72008
    :goto_5
    const/16 v21, 0x0

    .line 72009
    .local v3, "code":I
    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/cS;

    if-eqz v3, :cond_9
    :try_end_7
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 72010
    :try_start_8
    move-object v3, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/cS;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cS;->A07()I

    move-result v21
    :try_end_8
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 72011
    .end local v3    # "code":I
    .local v3, "code":I
    :cond_9
    :try_start_9
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/8D;

    .line 72012
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v12

    .line 72013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    .line 72014
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cT;->A04()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v19, 0x0

    const/16 v22, 0x0
    :try_end_9
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 72015
    .end local v5    # "sourceLength":I
    .local v0, "sourceLength":I
    .end local v3    # "code":I
    .local v0, "source":Lcom/facebook/ads/redexgen/X/0K;
    :try_start_a
    move-wide/from16 v17, v3

    invoke-interface/range {v12 .. v22}, Lcom/facebook/ads/redexgen/X/8d;->A8f(JJJJILjava/lang/Exception;)V
    :try_end_a
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 72016
    .end local p0    # "offset":I
    .end local v4    # "canNotReadLength":Z
    .end local v3
    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :try_start_b
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0K;->close()V

    goto :goto_7
    :try_end_b
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1

    .line 72017
    :catch_0
    move-exception v3

    goto :goto_6

    :catch_1
    move-exception v3

    .line 72018
    .local p0, "e":Ljava/lang/Exception;
    :goto_6
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v0, :cond_a

    .line 72019
    sget-object v0, Lcom/facebook/ads/redexgen/X/cX;->A0B:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72020
    :cond_a
    :goto_7
    return-void

    .line 72021
    .end local p0    # "e":Ljava/lang/Exception;
    .end local v3
    .end local v5
    .end local v4
    :catchall_2
    move-exception v6

    goto :goto_a

    .line 72022
    :catch_2
    move-exception v6

    goto :goto_8

    .line 72023
    :cond_b
    :try_start_c
    const/16 v5, 0x11b

    const/16 v4, 0x14

    const/16 v3, 0x5e

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/cU;

    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/cU;-><init>(Ljava/lang/String;)V

    .end local v0
    .end local v4
    .end local v3
    .end local v0
    .end local v3
    .end local v0
    .end local v0
    throw v3
    :try_end_c
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 72024
    .end local p0
    .end local v4
    .end local v0
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v4    # "canNotReadLength":Z
    .restart local v3    # "code":I
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v3    # "code":I
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :catchall_3
    move-exception v6

    goto :goto_a

    .line 72025
    :catch_3
    move-exception v6

    goto :goto_8

    :cond_c
    sget-object v5, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const-string v4, "i3csCW72L1z7BcCra0TAN9jDMAOKjIt2"

    const/4 v3, 0x1

    aput-object v4, v5, v3

    .end local v3    # "code":I
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    goto :goto_a

    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v3    # "code":I
    :catch_4
    move-exception v6

    goto :goto_8

    :catch_5
    move-exception v6

    .line 72026
    .end local v3    # "code":I
    .local p0, "e":Lcom/facebook/ads/redexgen/X/0H;
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :goto_8
    const/16 v21, 0x0

    .line 72027
    .restart local v3    # "code":I
    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .local v2, "source":Lcom/facebook/ads/redexgen/X/0K;
    :try_start_d
    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/cS;

    if-eqz v3, :cond_e
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 72028
    :try_start_e
    move-object v3, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/cS;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cS;->A07()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-result v21

    sget-object v5, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v4, v5, v3

    const/4 v3, 0x5

    aget-object v3, v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_d

    goto :goto_9

    :cond_d
    sget-object v5, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const-string v4, "KGg"

    const/4 v3, 0x1

    aput-object v4, v5, v3

    .line 72029
    .end local v3    # "code":I
    .local v4, "code":I
    :cond_e
    :goto_9
    :try_start_f
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/8D;

    .line 72030
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v12

    .line 72031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .end local v2    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .local v0, "source":Lcom/facebook/ads/redexgen/X/0K;
    :try_start_10
    invoke-interface/range {v12 .. v22}, Lcom/facebook/ads/redexgen/X/8d;->A8f(JJJJILjava/lang/Exception;)V

    .line 72032
    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .end local v4    # "code":I
    .end local v3
    .end local v0
    .end local v3
    .end local v0
    .end local v0
    throw v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 72033
    .end local p0    # "e":Lcom/facebook/ads/redexgen/X/0H;
    .end local v4
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v4    # "code":I
    .restart local v3    # "code":I
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v3    # "code":I
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :catchall_4
    move-exception v6

    goto :goto_a

    .end local p0
    .end local v3    # "code":I
    :catchall_5
    move-exception v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0xe

    if-eq v4, v3, :cond_f

    goto :goto_a

    :cond_f
    sget-object v5, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const-string v4, "7VHRmmesbfeDqucWLtEKLKcMBQJVNm"

    const/4 v3, 0x2

    aput-object v4, v5, v3

    const-string v4, "oM47EpnTTF1S9ikTK6B0AzPGZuSKH0"

    const/4 v3, 0x5

    aput-object v4, v5, v3

    goto :goto_a

    .end local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v2    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :catchall_6
    move-exception v6

    .line 72034
    .end local v2    # "source":Lcom/facebook/ads/redexgen/X/0K;
    .restart local v0    # "source":Lcom/facebook/ads/redexgen/X/0K;
    :goto_a
    :try_start_11
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0K;->close()V

    goto :goto_c
    :try_end_11
    .catch Lcom/facebook/ads/redexgen/X/0H; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_7

    .line 72035
    :catch_6
    move-exception v3

    goto :goto_b

    :catch_7
    move-exception v3

    .line 72036
    .local p0, "e":Ljava/lang/Exception;
    :goto_b
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v0, :cond_10

    .line 72037
    sget-object v0, Lcom/facebook/ads/redexgen/X/cX;->A0B:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72038
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_c
    throw v6
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/cT;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 72039
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cT;->A05()Ljava/io/File;

    move-result-object v1

    .line 72040
    .local p0, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72041
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cT;->A07()V

    .line 72042
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 72043
    .local p1, "deleted":Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v0, :cond_1

    .line 72044
    sget-object v4, Lcom/facebook/ads/redexgen/X/cX;->A0B:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xaa

    const/16 v1, 0x34

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72045
    :catch_0
    move-exception v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 72046
    .local p0, "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const-string v1, "fJTJjiotuyJvZrF72L8221tI8VUznJb9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v0, :cond_1

    .line 72047
    sget-object v3, Lcom/facebook/ads/redexgen/X/cX;->A0B:Ljava/lang/String;

    const/16 v2, 0x6c

    const/16 v1, 0x17

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72048
    .end local p0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/cT;)Z
    .locals 5

    .line 72049
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cT;->A06()V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/cR; {:try_start_0 .. :try_end_0} :catch_0

    .line 72050
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const-string v1, "zmS4hUlvHkaHxqc9Vg18exvolw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "qC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 72051
    :catch_0
    move-exception v4

    .line 72052
    .local p0, "e":Lcom/facebook/ads/redexgen/X/cR;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v0, :cond_1

    .line 72053
    sget-object v3, Lcom/facebook/ads/redexgen/X/cX;->A0B:Ljava/lang/String;

    const/16 v2, 0xf4

    const/16 v1, 0x13

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72054
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/06;",
            "Lcom/facebook/ads/redexgen/X/09<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/02<",
            "TT;>;"
        }
    .end annotation

    .line 72055
    .local v0, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/09;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<TT;>;"
    move-object v11, p2

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/09;->A03()Z

    move-result v0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v7, p1

    if-eqz v0, :cond_1

    .line 72056
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A06:Ljava/util/Map;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 72057
    .local p0, "cachedFile":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 72058
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v6, v7}, Lcom/facebook/ads/redexgen/X/0L;->ACt(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    .line 72059
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/09;->A00()Lcom/facebook/ads/redexgen/X/03;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/03;->A3A(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    return-object v0

    .line 72060
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    invoke-interface {v1, v0, v4, v7}, Lcom/facebook/ads/redexgen/X/0L;->ACt(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/06;)V

    .line 72061
    new-instance v0, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V

    return-object v0

    .line 72062
    .end local p0    # "cachedFile":Ljava/io/File;
    :cond_1
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/06;->A09:Ljava/lang/String;

    .line 72063
    .local p0, "baseUrl":Ljava/lang/String;
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/06;->A04:Ljava/lang/String;

    .line 72064
    .local v2, "extension":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A03:Lcom/facebook/ads/redexgen/X/0A;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/0A;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 72065
    .local v1, "md5FileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 72066
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    .line 72067
    .local v5, "semaphore":Ljava/util/concurrent/Semaphore;
    if-nez v3, :cond_2

    .line 72068
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v6}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 72069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72070
    .end local v5    # "semaphore":Ljava/util/concurrent/Semaphore;
    .local v7, "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 72071
    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 72072
    iget v10, p0, Lcom/facebook/ads/redexgen/X/cX;->A01:I

    .line 72073
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/cX;->A02(Lcom/facebook/ads/redexgen/X/06;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/09;)Ljava/io/File;

    move-result-object v2

    .line 72074
    .local v6, "cachedFile":Ljava/io/File;
    if-eqz v2, :cond_3

    .line 72075
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/09;->A00()Lcom/facebook/ads/redexgen/X/03;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/0L;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/03;->A3A(Ljava/io/File;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 72076
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 72077
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 72078
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72079
    monitor-exit v1

    .line 72080
    return-object v2

    .line 72081
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 72082
    :cond_3
    :try_start_3
    new-instance v6, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v6, v4, v5}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 72083
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 72084
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    sget-object v2, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/cX;->A0A:[Ljava/lang/String;

    const-string v1, "fiqu2U3AquSnIXFymWHwrHtldUv0Ax"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "gnue7ysMMxvi8XdSTOWYofH5HTO1Xg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    monitor-enter v3

    .line 72085
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72086
    monitor-exit v3

    .line 72087
    return-object v6

    .line 72088
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 72089
    .local v6, "e":Ljava/lang/InterruptedException;
    :catch_0
    :try_start_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A08:Z

    if-eqz v0, :cond_5

    .line 72090
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x61

    const/16 v1, 0xb

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72091
    :cond_5
    new-instance v2, Lcom/facebook/ads/redexgen/X/02;

    invoke-direct {v2, v4, v5}, Lcom/facebook/ads/redexgen/X/02;-><init>(ZLjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 72092
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 72093
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 72094
    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72095
    monitor-exit v1

    .line 72096
    return-object v2

    .line 72097
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 72098
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v2

    .end local v6
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 72099
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    monitor-enter v1

    .line 72100
    :try_start_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A07:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72101
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 72102
    throw v2

    .line 72103
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 72104
    .end local v7    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method

.method public final ADJ(Lcom/facebook/ads/redexgen/X/06;Z)Lcom/facebook/ads/redexgen/X/02;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/06;",
            "Z)",
            "Lcom/facebook/ads/redexgen/X/02<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 72105
    new-instance v1, Lcom/facebook/ads/redexgen/X/ca;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/06;->A01:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/06;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A02:Lcom/facebook/ads/redexgen/X/08;

    .line 72106
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/08;->A04()Z

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A02:Lcom/facebook/ads/redexgen/X/08;

    .line 72107
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/08;->A03()Z

    move-result v5

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/ca;-><init>(IIZZZ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    .line 72108
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A09(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    return-object v0
.end method

.method public final ADK(Lcom/facebook/ads/redexgen/X/06;)Ljava/io/File;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 72109
    new-instance v0, Lcom/facebook/ads/redexgen/X/cZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/cZ;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    .line 72110
    .local p0, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/09;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<Ljava/io/File;>;"
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A01(Z)V

    .line 72111
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A02(Z)V

    .line 72112
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/cX;->A09(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final ADL(Lcom/facebook/ads/redexgen/X/06;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 72113
    new-instance v1, Lcom/facebook/ads/redexgen/X/cY;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/cY;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A09(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final ADM(Lcom/facebook/ads/redexgen/X/06;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 72114
    new-instance v0, Lcom/facebook/ads/redexgen/X/cY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/cY;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/09;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/09;-><init>(Lcom/facebook/ads/redexgen/X/03;)V

    .line 72115
    .local p0, "cacheRequestConfig":Lcom/facebook/ads/redexgen/X/09;, "Lcom/facebook/ads/cache/config/CacheRequestConfig<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A01(Z)V

    .line 72116
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/09;->A02(Z)V

    .line 72117
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/cX;->A09(Lcom/facebook/ads/redexgen/X/06;Lcom/facebook/ads/redexgen/X/09;)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
