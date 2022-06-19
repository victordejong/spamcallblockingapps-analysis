.class public final Lcom/facebook/ads/redexgen/X/bp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1a;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/7D;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/NY;

.field public A02:Lcom/facebook/ads/redexgen/X/ON;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/bx;

.field public final A04:Lcom/facebook/ads/redexgen/X/1a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bp;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bp;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/1a;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70287
    sget-object v0, Lcom/facebook/ads/redexgen/X/NY;->A05:Lcom/facebook/ads/redexgen/X/NY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A01:Lcom/facebook/ads/redexgen/X/NY;

    .line 70288
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v0

    .line 70289
    .local p0, "dataObject":Lorg/json/JSONObject;
    invoke-static {p1, p2, p4, v0}, Lcom/facebook/ads/redexgen/X/bp;->A02(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1n;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70290
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bp;->A04:Lcom/facebook/ads/redexgen/X/1a;

    .line 70291
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/AdError;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 70292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70293
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0O:I

    const/4 v2, 0x5

    const/16 v1, 0x2b

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 70294
    const/16 v2, 0x3e

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 70295
    const/16 v0, 0x7d6

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    return-object v0

    .line 70296
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bp;)Lcom/facebook/ads/redexgen/X/bx;
    .locals 0

    .line 70297
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1n;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/bx;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70298
    invoke-static {p3, p0}, Lcom/facebook/ads/redexgen/X/bx;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/redexgen/X/bx;

    move-result-object p0

    .line 70299
    .local p0, "adDataBundle":Lcom/facebook/ads/redexgen/X/bx;
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/16;->A0d(Ljava/lang/String;)V

    .line 70300
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1n;->A01()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 70301
    .local p1, "definition":Lcom/facebook/ads/redexgen/X/8x;
    if-eqz v0, :cond_0

    .line 70302
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A06()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0b(I)V

    .line 70303
    :cond_0
    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/bp;)Lcom/facebook/ads/redexgen/X/1a;
    .locals 0

    .line 70304
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bp;->A04:Lcom/facebook/ads/redexgen/X/1a;

    return-object p0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/redexgen/X/7D;
    .locals 1

    .line 70305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A00:Lcom/facebook/ads/redexgen/X/7D;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    goto :goto_0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/bp;Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/ON;
    .locals 0

    .line 70306
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bp;->A02:Lcom/facebook/ads/redexgen/X/ON;

    return-object p1
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bp;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x61

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bp;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x23t
        0x17t
        0x23t
        0x1ct
        0x1bt
        -0x42t
        -0x1dt
        -0x17t
        -0x26t
        -0x19t
        -0x1dt
        -0x2at
        -0x1ft
        -0x6bt
        -0x46t
        -0x19t
        -0x19t
        -0x1ct
        -0x19t
        -0x6bt
        -0x59t
        -0x5bt
        -0x5bt
        -0x55t
        -0x6bt
        -0x14t
        -0x22t
        -0x17t
        -0x23t
        -0x1ct
        -0x16t
        -0x17t
        -0x6bt
        -0x2at
        -0x6bt
        -0x15t
        -0x2at
        -0x1ft
        -0x22t
        -0x27t
        -0x6bt
        -0x4at
        -0x27t
        -0x42t
        -0x1dt
        -0x25t
        -0x1ct
        -0x5dt
        0x15t
        0x18t
        0x13t
        0x18t
        0x15t
        0x28t
        0x15t
        0x13t
        0x16t
        0x29t
        0x22t
        0x18t
        0x20t
        0x19t
        -0x1dt
        -0xet
        -0x15t
        -0x1et
        -0x19t
        -0x13t
        -0x22t
        -0x15t
        -0x14t
        -0x13t
        -0x1et
        -0x13t
        -0x1et
        -0x26t
        -0x1bt
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "SwW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nKJOmWTx3LjNZvOp7YbBROgXIyGkfXUh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cNvS8LZQYgXEdOP85dYAvAy4C3J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ICxq6EmLG0dgZi7UJ5PBV2wBsvrmCfpb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tKedy3gZYTLe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bmz0vq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hvIAQTYE0cdtFIL2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tj9oqRvQS19ndgZTuA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bp;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/EnumSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 70307
    .local v5, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    .line 70308
    .local p0, "playableData":Lcom/facebook/ads/redexgen/X/1U;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0A()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    .line 70309
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bp;->A0B(Lcom/facebook/ads/redexgen/X/NY;)V

    .line 70310
    new-instance v6, Lcom/facebook/ads/redexgen/X/bq;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/bq;-><init>(Lcom/facebook/ads/redexgen/X/bp;)V

    .line 70311
    .local p1, "playablePreCacheListener":Lcom/facebook/ads/redexgen/X/1i;
    new-instance v5, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v5, p1}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 70312
    .local p2, "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    const/16 v2, 0x41

    const/16 v1, 0xc

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/1f;

    invoke-direct {v3, p0, v4, v0, v5}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/0w;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7D;)V

    .line 70313
    .local v0, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70315
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 70316
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0c(Lcom/facebook/ads/redexgen/X/JK;)V

    .line 70317
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A08()V

    .line 70318
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    :goto_1
    return-void

    .line 70319
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    const/4 v0, 0x1

    invoke-static {p1, v1, v0, v6}, Lcom/facebook/ads/redexgen/X/1k;->A02(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;ZLcom/facebook/ads/redexgen/X/1i;)V

    goto :goto_1

    .line 70320
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/NY;->A05:Lcom/facebook/ads/redexgen/X/NY;

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/EnumSet;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 70321
    .local v6, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    move-object/from16 v0, p0

    move-object v0, v0

    move-object/from16 v5, p1

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/bp;->A04(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v1

    .line 70322
    .local v6, "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70323
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v2, v4, v3}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 70324
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/7D;->A0c(Lcom/facebook/ads/redexgen/X/JK;)V

    .line 70325
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    const/16 v4, 0x41

    const/16 v3, 0xc

    const/16 v2, 0x18

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/1f;

    invoke-direct {v3, v0, v6, v4, v1}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/0w;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7D;)V

    .line 70326
    .local v5, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70327
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A08()V

    .line 70328
    .end local v1
    .end local v4
    .end local v2
    .end local v6    # "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    :goto_0
    return-void

    .line 70329
    :cond_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0k()Z

    move-result v2

    .line 70330
    .local v1, "isDSL":Z
    if-eqz v2, :cond_1

    .line 70331
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70332
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0S()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70333
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v8, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70334
    .local v4, "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    const/4 v3, 0x1

    iput-boolean v3, v8, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 70335
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/16 v3, 0x4e

    invoke-static {v7, v6, v3}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/facebook/ads/redexgen/X/7C;->A03:Ljava/lang/String;

    .line 70336
    invoke-virtual {v1, v8}, Lcom/facebook/ads/redexgen/X/7D;->A0Y(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 70337
    .end local v4    # "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    :cond_1
    new-instance v8, Lcom/facebook/ads/redexgen/X/7A;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70338
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/facebook/ads/redexgen/X/On;->A04:I

    sget v11, Lcom/facebook/ads/redexgen/X/On;->A04:I

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70339
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v12

    const/16 v7, 0x41

    const/16 v6, 0xc

    const/16 v3, 0x18

    invoke-static {v7, v6, v3}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 70340
    invoke-virtual {v1, v8}, Lcom/facebook/ads/redexgen/X/7D;->A0X(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 70341
    sget-object v3, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    move-object/from16 v6, p2

    invoke-virtual {v6, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 70342
    .local v4, "cacheVideos":Z
    const/4 v13, 0x0

    .line 70343
    .local v2, "i":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pt;->A03()Z

    move-result v3

    invoke-static {v5, v3}, Lcom/facebook/ads/redexgen/X/J4;->A1r(Landroid/content/Context;Z)Z

    move-result v12

    .line 70344
    .local v6, "useExoPlayerCacheForDSL":Z
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/19;

    .line 70345
    .local v3, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    new-instance v15, Lcom/facebook/ads/redexgen/X/7A;

    .line 70346
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v16

    .line 70347
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/1g;->A00(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v17

    .line 70348
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/1g;->A01(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v18

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70349
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v19

    const/16 v8, 0x41

    const/16 v7, 0xc

    const/16 v6, 0x18

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 70350
    .local v2, "imageData":Lcom/facebook/ads/redexgen/X/7A;
    if-nez v13, :cond_7

    .line 70351
    invoke-virtual {v1, v15}, Lcom/facebook/ads/redexgen/X/7D;->A0W(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 70352
    :goto_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/1K;->A00()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    sget-object v7, Lcom/facebook/ads/redexgen/X/bp;->A06:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v7, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v6, 0xe

    if-eq v7, v6, :cond_9

    sget-object v8, Lcom/facebook/ads/redexgen/X/bp;->A06:[Ljava/lang/String;

    const-string v7, "R"

    const/4 v6, 0x5

    aput-object v7, v8, v6

    if-eqz v9, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 70353
    .local v3, "endCardUrl":Ljava/lang/String;
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    .local v3, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    new-instance v15, Lcom/facebook/ads/redexgen/X/7A;

    const/16 v17, -0x1

    const/16 v18, -0x1

    .end local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .local v8, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70354
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v19

    const/16 v8, 0x41

    const/16 v7, 0xc

    const/16 v6, 0x18

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 70355
    invoke-virtual {v1, v15}, Lcom/facebook/ads/redexgen/X/7D;->A0X(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 70356
    .end local v3    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    goto :goto_3

    .line 70357
    .end local v3
    .end local v8    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .restart local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    .restart local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    .end local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .restart local v3    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    .restart local v8    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    :cond_2
    if-eqz v14, :cond_3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 70358
    new-instance v15, Lcom/facebook/ads/redexgen/X/7C;

    .line 70359
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v16

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70360
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v17

    .line 70361
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1C;->A05()J

    move-result-wide v19

    const/16 v7, 0x41

    const/16 v6, 0xc

    const/16 v3, 0x18

    invoke-static {v7, v6, v3}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 70362
    .local v0, "videoData":Lcom/facebook/ads/redexgen/X/7C;
    const/4 v3, 0x0

    iput-boolean v3, v15, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 70363
    if-nez v13, :cond_5

    .line 70364
    if-eqz v2, :cond_4

    if-nez v12, :cond_4

    .line 70365
    invoke-virtual {v1, v15}, Lcom/facebook/ads/redexgen/X/7D;->A0Y(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 70366
    .end local v0    # "videoData":Lcom/facebook/ads/redexgen/X/7C;
    .end local v3    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    .end local v2    # "imageData":Lcom/facebook/ads/redexgen/X/7A;
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 70367
    goto/16 :goto_1

    .line 70368
    :cond_4
    invoke-virtual {v1, v15}, Lcom/facebook/ads/redexgen/X/7D;->A0b(Lcom/facebook/ads/redexgen/X/7C;)V

    goto :goto_4

    .line 70369
    :cond_5
    if-eqz v2, :cond_6

    if-nez v12, :cond_6

    .line 70370
    invoke-virtual {v1, v15}, Lcom/facebook/ads/redexgen/X/7D;->A0Z(Lcom/facebook/ads/redexgen/X/7C;)V

    goto :goto_4

    .line 70371
    :cond_6
    invoke-virtual {v1, v15}, Lcom/facebook/ads/redexgen/X/7D;->A0a(Lcom/facebook/ads/redexgen/X/7C;)V

    goto :goto_4

    .line 70372
    :cond_7
    invoke-virtual {v1, v15}, Lcom/facebook/ads/redexgen/X/7D;->A0X(Lcom/facebook/ads/redexgen/X/7A;)V

    goto/16 :goto_2

    .line 70373
    .end local v3
    .end local v8    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    .restart local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    .end local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .restart local v3    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    .restart local v8    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    :cond_8
    new-instance v3, Lcom/facebook/ads/redexgen/X/br;

    invoke-direct {v3, v0, v5, v2}, Lcom/facebook/ads/redexgen/X/br;-><init>(Lcom/facebook/ads/redexgen/X/bp;Lcom/facebook/ads/redexgen/X/Wm;Z)V

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    .line 70374
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, v2, v4}, Lcom/facebook/ads/redexgen/X/76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70375
    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/NY;)V
    .locals 0

    .line 70376
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bp;->A01:Lcom/facebook/ads/redexgen/X/NY;

    .line 70377
    return-void
.end method


# virtual methods
.method public final A0C()Lcom/facebook/ads/redexgen/X/KM;
    .locals 4

    .line 70378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70379
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A03:Lcom/facebook/ads/redexgen/X/KM;

    return-object v0

    .line 70380
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    .line 70381
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A06:Lcom/facebook/ads/redexgen/X/KM;

    return-object v0

    .line 70382
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70383
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A08:Lcom/facebook/ads/redexgen/X/KM;

    return-object v0

    .line 70384
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bp;->A0I()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/bp;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/bp;->A06:[Ljava/lang/String;

    const-string v1, "HO5lN2vl3hawZ3xdOTbB4PXxItmZOFKM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "QabHGQsenJFHZf5mHftqzVXi6FXcwsQx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 70385
    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A09:Lcom/facebook/ads/redexgen/X/KM;

    return-object v0

    .line 70386
    :cond_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/KM;->A07:Lcom/facebook/ads/redexgen/X/KM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bp;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/bp;->A06:[Ljava/lang/String;

    const-string v1, "iV2CDA2M2IfUZLXvhnmiNr1pV0Sur2CQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "GDT4frbvCKvkZrCQcOaJTMqN9T6RIdn0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_4
    return-object v3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/NY;
    .locals 1

    .line 70387
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A01:Lcom/facebook/ads/redexgen/X/NY;

    return-object v0
.end method

.method public final A0E()Ljava/lang/String;
    .locals 1

    .line 70388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0F()V
    .locals 1

    .line 70389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->AER()V

    .line 70390
    return-void
.end method

.method public final A0G(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V
    .locals 4

    .line 70391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/16;->A0c(Lcom/facebook/ads/RewardData;)V

    .line 70392
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/16;->A0f(Ljava/lang/String;)V

    .line 70393
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    const/16 v2, 0x30

    const/16 v1, 0xe

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bp;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70394
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 70395
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bp;->A00(Lcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/AdError;

    move-result-object v1

    .line 70396
    .local p0, "adError":Lcom/facebook/ads/AdError;
    if-eqz v1, :cond_0

    .line 70397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1a;->A9L(Lcom/facebook/ads/AdError;)V

    .line 70398
    return-void

    .line 70399
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->ACw()V

    .line 70400
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bp;->A0C()Lcom/facebook/ads/redexgen/X/KM;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KM;->A08:Lcom/facebook/ads/redexgen/X/KM;

    if-ne v1, v0, :cond_1

    .line 70401
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bp;->A09(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/EnumSet;)V

    .line 70402
    :goto_0
    return-void

    .line 70403
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bp;->A0A(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/EnumSet;)V

    goto :goto_0
.end method

.method public final A0I()Z
    .locals 1

    .line 70404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A0J()Z
    .locals 1

    .line 70405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A03:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0i()Z

    move-result v0

    return v0
.end method

.method public final A9f()V
    .locals 1

    .line 70406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bp;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->A9M()V

    .line 70407
    return-void
.end method

.method public final A9g()V
    .locals 2

    .line 70408
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bp;->A04:Lcom/facebook/ads/redexgen/X/1a;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1a;->A9L(Lcom/facebook/ads/AdError;)V

    .line 70409
    return-void
.end method
