.class public final Lcom/facebook/ads/redexgen/X/WN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8F;


# static fields
.field public static A06:Lcom/facebook/ads/redexgen/X/WN;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:[Lcom/facebook/ads/redexgen/X/0T;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0U;

.field public A01:Lcom/facebook/ads/redexgen/X/8E;

.field public A02:Lcom/facebook/ads/redexgen/X/8Q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/93;

.field public A04:Lcom/facebook/ads/redexgen/X/JO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/Qu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 64244
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A06()V

    const/16 v0, 0x9

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/0T;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A10:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A0e:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A11:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A19:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A0v:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A0x:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A1u:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A1v:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A1w:Lcom/facebook/ads/redexgen/X/0T;

    const/16 v0, 0x8

    aput-object v1, v2, v0

    sput-object v2, Lcom/facebook/ads/redexgen/X/WN;->A09:[Lcom/facebook/ads/redexgen/X/0T;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/Qu;)Lcom/facebook/ads/redexgen/X/5T;
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Qu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64246
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A17(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 64247
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 64248
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5U;->A00()Lcom/facebook/ads/redexgen/X/5U;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5U;->A01(Lcom/facebook/ads/redexgen/X/Qu;)Lcom/facebook/ads/redexgen/X/5T;

    move-result-object p0

    return-object p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/8Q;
    .locals 1

    .line 64249
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8R;->A00()Lcom/facebook/ads/redexgen/X/8R;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/8R;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized A02()Lcom/facebook/ads/redexgen/X/WN;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/WN;

    monitor-enter v1

    .line 64250
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/WN;->A06:Lcom/facebook/ads/redexgen/X/WN;

    if-nez v0, :cond_0

    .line 64251
    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WN;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WN;->A06:Lcom/facebook/ads/redexgen/X/WN;

    .line 64252
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/WN;->A06:Lcom/facebook/ads/redexgen/X/WN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/QF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64254
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A13(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64255
    const/4 v0, 0x0

    return-object v0

    .line 64256
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/QX;->A01(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QF;)Lcom/facebook/ads/redexgen/X/Qu;
    .locals 18
    .param p2    # Lcom/facebook/ads/redexgen/X/QF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64257
    move-object/from16 v5, p0

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/J4;->A1g(Landroid/content/Context;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v17, p2

    if-nez v17, :cond_1

    .line 64258
    :cond_0
    return-object v9

    .line 64259
    :cond_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/KD;

    const/4 v7, 0x0

    sget-object v8, Lcom/facebook/ads/redexgen/X/Jt;->A07:Lcom/facebook/ads/redexgen/X/Jt;

    .line 64260
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_2

    .line 64261
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/WN;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/WN;->A08:[Ljava/lang/String;

    const-string v1, "KU1GBNEKy7R0Qrvdpyps8t9ieOOPUQ8u"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v9

    .line 64262
    :cond_2
    const/4 v10, 0x0

    .line 64263
    invoke-static {v5}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v11

    .line 64264
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v12

    new-instance v13, Lcom/facebook/ads/redexgen/X/Jy;

    invoke-direct {v13}, Lcom/facebook/ads/redexgen/X/Jy;-><init>()V

    .line 64265
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/J4;->A0H(Landroid/content/Context;)I

    move-result v0

    .line 64266
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LS;->A01(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A05(III)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v4 .. v16}, Lcom/facebook/ads/redexgen/X/KD;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LM;Lcom/facebook/ads/redexgen/X/Jt;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/Jy;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 64267
    .local v5, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/KD;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qv;->A00()Lcom/facebook/ads/redexgen/X/Qv;

    move-result-object v14

    .line 64268
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/KK;->A05(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/WO;

    invoke-direct {v1, v4, v5}, Lcom/facebook/ads/redexgen/X/WO;-><init>(Lcom/facebook/ads/redexgen/X/KD;Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 64269
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qs;->A00()Lcom/facebook/ads/redexgen/X/Qr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qr;->A00()Lcom/facebook/ads/redexgen/X/Qs;

    move-result-object p2

    .line 64270
    move-object/from16 v16, p1

    move-object v15, v5

    move-object/from16 p1, v1

    invoke-virtual/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/Qv;->A01(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QF;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qt;Lcom/facebook/ads/redexgen/X/Qs;)Lcom/facebook/ads/redexgen/X/Qu;

    move-result-object v0

    .line 64271
    return-object v0

    .line 64272
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WN;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WN;->A07:[B

    return-void

    :array_0
    .array-data 1
        0xft
        0x12t
        0xft
        0x10t
        0x3bt
        0x3bt
        0x3ft
        0xct
        0xdt
        0x1ft
        0x2dt
        0x2dt
        0x23t
        0x29t
        0x28t
        -0x26t
        0x1et
        0x1bt
        0x2et
        0x1bt
        -0x26t
        0x23t
        0x28t
        0x23t
        0x2et
        0x23t
        0x1bt
        0x26t
        0x23t
        0x34t
        0x1ft
        0x1et
        0x1ct
        0xft
        0x1at
        0x19t
        0x1ct
        0x1et
        -0x3t
        0xft
        0x1dt
        0x1dt
        0x13t
        0x19t
        0x18t
        -0x12t
        0xbt
        0x1et
        0xbt
        -0xdt
        0x18t
        0x13t
        0x1et
        0x13t
        0xbt
        0x16t
        0x13t
        0x24t
        0xft
        0xet
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7bnFBez2RFOfF4RTUb15"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "thcNT9SM1UIyvR7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5vrPZZCy98vlyCPFh0KWd7wJmTVXTL2H"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2n9yX0wAmts0DC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZnB9r4oYalhkkzP9hPq9gPdWcw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aouAA51wyDQjF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0vI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5qyvglamx4F5vSb0mWPdYYZ2svw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WN;->A08:[Ljava/lang/String;

    return-void
.end method

.method public static A08()V
    .locals 5

    const/16 v2, 0x20

    const/16 v1, 0x1c

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A05(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x18

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A05(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64273
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/5T;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/5T;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64274
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 64275
    :cond_0
    return-void

    .line 64276
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5R;->A00()Lcom/facebook/ads/redexgen/X/5R;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/5R;->A01(Lcom/facebook/ads/redexgen/X/5T;Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/5Q;

    .line 64277
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/Qu;)V
    .locals 3
    .param p1    # Lcom/facebook/ads/redexgen/X/Qu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64278
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 64279
    :cond_0
    return-void

    .line 64280
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/5p;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/5p;-><init>()V

    .line 64281
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->getBidderTokenProviderApi()Lcom/facebook/ads/redexgen/X/5q;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5o;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/5o;-><init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/Qu;Lcom/facebook/ads/redexgen/X/5p;Lcom/facebook/ads/redexgen/X/5q;)V

    .line 64282
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/Qu;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Qu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64283
    if-nez p1, :cond_0

    .line 64284
    return-void

    .line 64285
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/J7;->A00(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/Qu;)V

    .line 64286
    return-void
.end method


# virtual methods
.method public final declared-synchronized A0C(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8Q;
    .locals 4

    monitor-enter p0

    .line 64287
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    if-nez v0, :cond_0

    .line 64288
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WN;->A01(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    .line 64289
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WN;->A02:Lcom/facebook/ads/redexgen/X/8Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/WN;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/WN;->A08:[Ljava/lang/String;

    const-string v1, "0fQXdJPKge8DX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64290
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0D()Lcom/facebook/ads/redexgen/X/Qu;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 64291
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A05:Lcom/facebook/ads/redexgen/X/Qu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0E(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 2

    monitor-enter p0

    .line 64292
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A05:Lcom/facebook/ads/redexgen/X/Qu;

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64293
    monitor-exit p0

    return-void

    .line 64294
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WN;->A01(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    .line 64295
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WN;->A03(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v1

    .line 64296
    .local p0, "networkModule":Lcom/facebook/ads/redexgen/X/QF;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/WN;->A04(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QF;)Lcom/facebook/ads/redexgen/X/Qu;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A05:Lcom/facebook/ads/redexgen/X/Qu;

    .line 64297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A05:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A00(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/Qu;)Lcom/facebook/ads/redexgen/X/5T;

    move-result-object v0

    .line 64298
    .local p1, "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/5T;
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A09(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/5T;)V

    .line 64299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A05:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0A(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/Qu;)V

    .line 64300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A05:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A0B(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/Qu;)V

    .line 64301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A05:Lcom/facebook/ads/redexgen/X/Qu;

    if-eqz v0, :cond_1

    .line 64302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A05:Lcom/facebook/ads/redexgen/X/Qu;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qu;->A5O()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64303
    .end local v0
    :cond_1
    monitor-exit p0

    return-void

    .line 64304
    .end local p0    # "networkModule":Lcom/facebook/ads/redexgen/X/QF;
    .end local p1    # "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/5T;
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A5V(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 1

    .line 64305
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/TR;->A01(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A5j(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8E;
    .locals 4

    monitor-enter p0

    .line 64306
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:Lcom/facebook/ads/redexgen/X/8E;

    if-nez v0, :cond_0

    .line 64307
    new-instance v0, Lcom/facebook/ads/redexgen/X/WQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/WQ;-><init>(Lcom/facebook/ads/redexgen/X/WN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:Lcom/facebook/ads/redexgen/X/8E;

    .line 64308
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WN;->A01:Lcom/facebook/ads/redexgen/X/8E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/WN;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/WN;->A08:[Ljava/lang/String;

    const-string v1, "Y7CkwGQSA7N0SJfic0QJyn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64309
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6D(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8d;
    .locals 1

    monitor-enter p0

    .line 64310
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wc;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Wc;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6M(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8G;
    .locals 1

    monitor-enter p0

    .line 64311
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/WS;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/WS;-><init>(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/8D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6Y(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/0U;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 64312
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A0r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64313
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/WN;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/WN;->A08:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    monitor-exit p0

    return-object v3

    .line 64314
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:Lcom/facebook/ads/redexgen/X/0U;

    if-nez v0, :cond_2

    .line 64315
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0V;->A00()Lcom/facebook/ads/redexgen/X/0V;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/WP;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/WP;-><init>(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/8D;)V

    .line 64316
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0V;->A01(Lcom/facebook/ads/redexgen/X/0S;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:Lcom/facebook/ads/redexgen/X/0U;

    .line 64317
    .end local v0
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:Lcom/facebook/ads/redexgen/X/0U;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64318
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A76(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8H;
    .locals 1

    monitor-enter p0

    .line 64319
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/WR;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/WR;-><init>(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/8D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A77(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wl;
    .locals 1

    .line 64320
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8C;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 64321
    .local p0, "sdkContext":Lcom/facebook/ads/redexgen/X/Wl;
    if-nez v0, :cond_0

    .line 64322
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wl;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Wl;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;)V

    .line 64323
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8C;->A02(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 64324
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized A78(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/JO;
    .locals 1

    monitor-enter p0

    .line 64325
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A04:Lcom/facebook/ads/redexgen/X/JO;

    if-nez v0, :cond_0

    .line 64326
    new-instance v0, Lcom/facebook/ads/redexgen/X/TX;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/TX;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A04:Lcom/facebook/ads/redexgen/X/JO;

    .line 64327
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Wl;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A04:Lcom/facebook/ads/redexgen/X/JO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64328
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7E()Lcom/facebook/ads/redexgen/X/93;
    .locals 1

    monitor-enter p0

    .line 64329
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A03:Lcom/facebook/ads/redexgen/X/93;

    if-nez v0, :cond_0

    .line 64330
    new-instance v0, Lcom/facebook/ads/redexgen/X/93;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/93;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A03:Lcom/facebook/ads/redexgen/X/93;

    .line 64331
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WN;->A08()V

    .line 64332
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A03:Lcom/facebook/ads/redexgen/X/93;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
