.class public final Lcom/facebook/ads/redexgen/X/W9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:Landroid/content/Context;

.field public final A03:Lcom/facebook/ads/redexgen/X/C0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W9;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63471
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/W9;-><init>(Landroid/content/Context;I)V

    .line 63472
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 63473
    const/4 v2, 0x0

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move v3, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/W9;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/C0;IJ)V

    .line 63474
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/C0;IJ)V
    .locals 0
    .param p2    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63475
    .local p2, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63476
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W9;->A02:Landroid/content/Context;

    .line 63477
    iput p3, p0, Lcom/facebook/ads/redexgen/X/W9;->A00:I

    .line 63478
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/W9;->A01:J

    .line 63479
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/W9;->A03:Lcom/facebook/ads/redexgen/X/C0;

    .line 63480
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W9;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x79

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

    const/16 v0, 0x215

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W9;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x12t
        0x33t
        0x30t
        0x37t
        0x23t
        0x3at
        0x22t
        0x4t
        0x33t
        0x38t
        0x32t
        0x33t
        0x24t
        0x33t
        0x24t
        0x25t
        0x10t
        0x37t
        0x35t
        0x22t
        0x39t
        0x24t
        0x2ft
        0x7at
        0x4dt
        0x4dt
        0x50t
        0x4dt
        0x1ft
        0x56t
        0x51t
        0x4ct
        0x4bt
        0x5et
        0x51t
        0x4bt
        0x56t
        0x5et
        0x4bt
        0x56t
        0x51t
        0x58t
        0x1ft
        0x79t
        0x79t
        0x52t
        0x4ft
        0x5at
        0x58t
        0x1ft
        0x5at
        0x47t
        0x4bt
        0x5at
        0x51t
        0x4ct
        0x56t
        0x50t
        0x51t
        0x23t
        0x14t
        0x14t
        0x9t
        0x14t
        0x46t
        0xft
        0x8t
        0x15t
        0x12t
        0x7t
        0x8t
        0x12t
        0xft
        0x7t
        0x12t
        0xft
        0x8t
        0x1t
        0x46t
        0x20t
        0x2at
        0x27t
        0x25t
        0x46t
        0x3t
        0x1et
        0x12t
        0x3t
        0x8t
        0x15t
        0xft
        0x9t
        0x8t
        0x2dt
        0x1at
        0x1at
        0x7t
        0x1at
        0x48t
        0x1t
        0x6t
        0x1bt
        0x1ct
        0x9t
        0x6t
        0x1ct
        0x1t
        0x9t
        0x1ct
        0x1t
        0x6t
        0xft
        0x48t
        0x27t
        0x18t
        0x1dt
        0x1bt
        0x48t
        0xdt
        0x10t
        0x1ct
        0xdt
        0x6t
        0x1bt
        0x1t
        0x7t
        0x6t
        0x10t
        0x27t
        0x27t
        0x3at
        0x27t
        0x75t
        0x3ct
        0x3bt
        0x26t
        0x21t
        0x34t
        0x3bt
        0x21t
        0x3ct
        0x34t
        0x21t
        0x3ct
        0x3bt
        0x32t
        0x75t
        0x3t
        0x5t
        0x6ct
        0x75t
        0x30t
        0x2dt
        0x21t
        0x30t
        0x3bt
        0x26t
        0x3ct
        0x3at
        0x3bt
        0x3ct
        0x1ft
        0x11t
        0x14t
        0x15t
        0x14t
        0x50t
        0x36t
        0x16t
        0x1dt
        0x0t
        0x15t
        0x17t
        0x31t
        0x5t
        0x14t
        0x19t
        0x1ft
        0x22t
        0x15t
        0x1et
        0x14t
        0x15t
        0x2t
        0x15t
        0x2t
        0x5et
        0x53t
        0x70t
        0x7et
        0x7bt
        0x7at
        0x7bt
        0x3ft
        0x53t
        0x76t
        0x7dt
        0x79t
        0x73t
        0x7et
        0x7ct
        0x5et
        0x6at
        0x7bt
        0x76t
        0x70t
        0x4dt
        0x7at
        0x71t
        0x7bt
        0x7at
        0x6dt
        0x7at
        0x6dt
        0x31t
        0xct
        0x2ft
        0x21t
        0x24t
        0x25t
        0x24t
        0x60t
        0xct
        0x29t
        0x22t
        0x2ft
        0x30t
        0x35t
        0x33t
        0x1t
        0x35t
        0x24t
        0x29t
        0x2ft
        0x12t
        0x25t
        0x2et
        0x24t
        0x25t
        0x32t
        0x25t
        0x32t
        0x6et
        0x41t
        0x62t
        0x6ct
        0x69t
        0x68t
        0x69t
        0x2dt
        0x41t
        0x64t
        0x6ft
        0x7bt
        0x7dt
        0x75t
        0x5bt
        0x64t
        0x69t
        0x68t
        0x62t
        0x5ft
        0x68t
        0x63t
        0x69t
        0x68t
        0x7ft
        0x68t
        0x7ft
        0x23t
        0x46t
        0x4at
        0x48t
        0xbt
        0x43t
        0x44t
        0x46t
        0x40t
        0x47t
        0x4at
        0x4at
        0x4et
        0xbt
        0x44t
        0x41t
        0x56t
        0xbt
        0x4ct
        0x4bt
        0x51t
        0x40t
        0x57t
        0x4bt
        0x44t
        0x49t
        0xbt
        0x40t
        0x5dt
        0x4at
        0x55t
        0x49t
        0x44t
        0x5ct
        0x40t
        0x57t
        0x17t
        0xbt
        0x40t
        0x5dt
        0x51t
        0xbt
        0x43t
        0x43t
        0x48t
        0x55t
        0x40t
        0x42t
        0xbt
        0x63t
        0x43t
        0x48t
        0x55t
        0x40t
        0x42t
        0x64t
        0x50t
        0x41t
        0x4ct
        0x4at
        0x77t
        0x40t
        0x4bt
        0x41t
        0x40t
        0x57t
        0x40t
        0x57t
        0x1ft
        0x13t
        0x11t
        0x52t
        0x1at
        0x1dt
        0x1ft
        0x19t
        0x1et
        0x13t
        0x13t
        0x17t
        0x52t
        0x1dt
        0x18t
        0xft
        0x52t
        0x15t
        0x12t
        0x8t
        0x19t
        0xet
        0x12t
        0x1dt
        0x10t
        0x52t
        0x19t
        0x4t
        0x13t
        0xct
        0x10t
        0x1dt
        0x5t
        0x19t
        0xet
        0x4et
        0x52t
        0x19t
        0x4t
        0x8t
        0x52t
        0x1at
        0x10t
        0x1dt
        0x1ft
        0x52t
        0x30t
        0x15t
        0x1et
        0x1at
        0x10t
        0x1dt
        0x1ft
        0x3dt
        0x9t
        0x18t
        0x15t
        0x13t
        0x2et
        0x19t
        0x12t
        0x18t
        0x19t
        0xet
        0x19t
        0xet
        0x34t
        0x38t
        0x3at
        0x79t
        0x31t
        0x36t
        0x34t
        0x32t
        0x35t
        0x38t
        0x38t
        0x3ct
        0x79t
        0x36t
        0x33t
        0x24t
        0x79t
        0x3et
        0x39t
        0x23t
        0x32t
        0x25t
        0x39t
        0x36t
        0x3bt
        0x79t
        0x32t
        0x2ft
        0x38t
        0x27t
        0x3bt
        0x36t
        0x2et
        0x32t
        0x25t
        0x65t
        0x79t
        0x32t
        0x2ft
        0x23t
        0x79t
        0x38t
        0x27t
        0x22t
        0x24t
        0x79t
        0x1bt
        0x3et
        0x35t
        0x38t
        0x27t
        0x22t
        0x24t
        0x16t
        0x22t
        0x33t
        0x3et
        0x38t
        0x5t
        0x32t
        0x39t
        0x33t
        0x32t
        0x25t
        0x32t
        0x25t
        0x2et
        0x22t
        0x20t
        0x63t
        0x2bt
        0x2ct
        0x2et
        0x28t
        0x2ft
        0x22t
        0x22t
        0x26t
        0x63t
        0x2ct
        0x29t
        0x3et
        0x63t
        0x24t
        0x23t
        0x39t
        0x28t
        0x3ft
        0x23t
        0x2ct
        0x21t
        0x63t
        0x28t
        0x35t
        0x22t
        0x3dt
        0x21t
        0x2ct
        0x34t
        0x28t
        0x3ft
        0x7ft
        0x63t
        0x28t
        0x35t
        0x39t
        0x63t
        0x3bt
        0x3dt
        0x74t
        0x63t
        0x1t
        0x24t
        0x2ft
        0x3bt
        0x3dt
        0x35t
        0x1bt
        0x24t
        0x29t
        0x28t
        0x22t
        0x1ft
        0x28t
        0x23t
        0x29t
        0x28t
        0x3ft
        0x28t
        0x3ft
    .end array-data
.end method

.method private final A02(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/C0;JLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/J0;ILjava/util/ArrayList;)V
    .locals 18
    .param p2    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;J",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/J0;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/W7;",
            ">;)V"
        }
    .end annotation

    .line 63481
    .local v8, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local v16, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/Renderer;>;"
    new-instance v8, Lcom/facebook/ads/redexgen/X/21;

    sget-object v10, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/Dk;

    const/4 v14, 0x0

    const/16 v17, 0x32

    move-object/from16 v15, p5

    move-wide/from16 v11, p3

    move-object/from16 v13, p2

    move-object/from16 v16, p6

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v17}, Lcom/facebook/ads/redexgen/X/21;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dk;JLcom/facebook/ads/redexgen/X/C0;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/J0;I)V

    move-object/from16 v5, p8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63482
    move/from16 v0, p7

    if-nez v0, :cond_0

    .line 63483
    return-void

    .line 63484
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 63485
    .local p0, "extensionRendererIndex":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_1

    .line 63486
    add-int/lit8 v6, v6, -0x1

    .line 63487
    .end local p0    # "extensionRendererIndex":I
    .local v4, "extensionRendererIndex":I
    :cond_1
    :try_start_0
    const/16 v2, 0x1d5

    const/16 v1, 0x40

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 63488
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 63489
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x5

    new-array v1, v10, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v0, v1, v9

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v0, v1, v7

    const-class v0, Landroid/os/Handler;

    aput-object v0, v1, v8

    const-class v0, Lcom/facebook/ads/redexgen/X/J0;

    const/4 v4, 0x3

    aput-object v0, v1, v4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    aput-object v0, v1, v3

    .line 63490
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 63491
    .local v16, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v10, [Ljava/lang/Object;

    .line 63492
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v9

    .line 63493
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v7

    aput-object v15, v1, v8

    aput-object v16, v1, v4

    const/16 v0, 0x32

    .line 63494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    .line 63495
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63496
    .local v11, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    .end local v4    # "extensionRendererIndex":I
    .local v15, "extensionRendererIndex":I
    :try_start_1
    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 63497
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf3

    const/16 v1, 0x1b

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 63498
    :catch_0
    return-void

    .line 63499
    .end local v15    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    .line 63500
    .local p0, "e":Ljava/lang/Exception;
    :goto_0
    const/16 v2, 0x7f

    const/16 v1, 0x21

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final A03(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/C0;[Lcom/facebook/ads/redexgen/X/Az;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B7;ILjava/util/ArrayList;)V
    .locals 14
    .param p2    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;[",
            "Lcom/facebook/ads/redexgen/X/Az;",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/B7;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/W7;",
            ">;)V"
        }
    .end annotation

    .line 63501
    .local v7, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local v8, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/Renderer;>;"
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/facebook/ads/redexgen/X/2C;

    sget-object v7, Lcom/facebook/ads/redexgen/X/Dk;->A00:Lcom/facebook/ads/redexgen/X/Dk;

    .line 63502
    move-object v6, p1

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/As;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/As;

    move-result-object v12

    const/4 v9, 0x0

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v13, p3

    move-object/from16 v8, p2

    invoke-direct/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/2C;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dk;Lcom/facebook/ads/redexgen/X/C0;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/B7;Lcom/facebook/ads/redexgen/X/As;[Lcom/facebook/ads/redexgen/X/Az;)V

    .line 63503
    move-object/from16 v4, p7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63504
    move/from16 v0, p6

    if-nez v0, :cond_0

    .line 63505
    return-void

    .line 63506
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 63507
    .local p0, "extensionRendererIndex":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 63508
    add-int/lit8 v5, v5, -0x1

    .line 63509
    .end local p0    # "extensionRendererIndex":I
    .local v8, "extensionRendererIndex":I
    :cond_1
    const/4 v9, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    :try_start_0
    const/16 v2, 0x193

    const/16 v1, 0x42

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 63510
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 63511
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v1, v7, [Ljava/lang/Class;

    const-class v0, Landroid/os/Handler;

    aput-object v0, v1, v9

    const-class v0, Lcom/facebook/ads/redexgen/X/B7;

    aput-object v0, v1, v8

    const-class v0, [Lcom/facebook/ads/redexgen/X/Az;

    aput-object v0, v1, v6

    .line 63512
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 63513
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v10, v0, v9

    aput-object v11, v0, v8

    aput-object v13, v0, v6

    .line 63514
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    .line 63515
    .local v4, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    add-int/lit8 v2, v5, 0x1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "extensionRendererIndex":I
    .local v0, "extensionRendererIndex":I
    :try_start_1
    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 63516
    const/16 v5, 0xd7

    const/16 v1, 0x1c

    const/16 v0, 0x39

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63517
    .end local v0    # "extensionRendererIndex":I
    .restart local v8    # "extensionRendererIndex":I
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 63518
    .local p0, "e":Ljava/lang/Exception;
    :goto_0
    const/16 v2, 0x5d

    const/16 v1, 0x22

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 63519
    .end local p0    # "e":Ljava/lang/Exception;
    :catch_2
    move v2, v5

    .line 63520
    :catch_3
    :goto_1
    :try_start_2
    const/16 v5, 0x151

    const/16 v1, 0x42

    const/4 v0, 0x5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 63521
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 63522
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v1, v7, [Ljava/lang/Class;

    const-class v0, Landroid/os/Handler;

    aput-object v0, v1, v9

    const-class v0, Lcom/facebook/ads/redexgen/X/B7;

    aput-object v0, v1, v8

    const-class v0, [Lcom/facebook/ads/redexgen/X/Az;

    aput-object v0, v1, v6

    .line 63523
    invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 63524
    .local v8, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v10, v0, v9

    aput-object v11, v0, v8

    aput-object v13, v0, v6

    .line 63525
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;

    .line 63526
    .local v0, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    add-int/lit8 v5, v2, 0x1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .end local v0    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    .local v4, "extensionRendererIndex":I
    :try_start_3
    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 63527
    const/16 v2, 0xbb

    const/16 v1, 0x1c

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 63528
    .end local v4    # "extensionRendererIndex":I
    .restart local v0    # "renderer":Lcom/facebook/ads/redexgen/X/W7;
    :catch_4
    move-exception v3

    goto :goto_2

    :catch_5
    move-exception v3

    .line 63529
    .local p0, "e":Ljava/lang/Exception;
    :goto_2
    const/16 v2, 0x3b

    const/16 v1, 0x22

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 63530
    .end local p0    # "e":Ljava/lang/Exception;
    :catch_6
    move v5, v2

    .line 63531
    :catch_7
    :goto_3
    :try_start_4
    const/16 v2, 0x10e

    const/16 v1, 0x43

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 63532
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 63533
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v1, v7, [Ljava/lang/Class;

    const-class v0, Landroid/os/Handler;

    aput-object v0, v1, v9

    const-class v0, Lcom/facebook/ads/redexgen/X/B7;

    aput-object v0, v1, v8

    const-class v0, [Lcom/facebook/ads/redexgen/X/Az;

    aput-object v0, v1, v6

    .line 63534
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 63535
    .restart local v8    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v10, v0, v9

    aput-object v11, v0, v8

    aput-object v13, v0, v6

    .line 63536
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/W7;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 63537
    .local v6, "renderer":Lcom/facebook/ads/redexgen/X/W7;
    .end local v4
    .local v13, "extensionRendererIndex":I
    :try_start_5
    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 63538
    const/16 v2, 0xa0

    const/16 v1, 0x1b

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 63539
    :catch_8
    return-void

    .line 63540
    .end local v13    # "extensionRendererIndex":I
    .restart local v4    # "extensionRendererIndex":I
    :catch_9
    move-exception v3

    goto :goto_4

    :catch_a
    move-exception v3

    .line 63541
    .local p0, "e":Ljava/lang/Exception;
    :goto_4
    const/16 v2, 0x17

    const/16 v1, 0x24

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W9;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final A04(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dx;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Dx;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/W7;",
            ">;)V"
        }
    .end annotation

    .line 63542
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/3b;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/3b;-><init>(Lcom/facebook/ads/redexgen/X/Dx;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63543
    return-void
.end method

.method private final A05(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/GF;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/GF;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/W7;",
            ">;)V"
        }
    .end annotation

    .line 63544
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/Renderer;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/3X;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/3X;-><init>(Lcom/facebook/ads/redexgen/X/GF;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63545
    return-void
.end method

.method private final A06()[Lcom/facebook/ads/redexgen/X/Az;
    .locals 1

    .line 63546
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Az;

    return-object v0
.end method


# virtual methods
.method public final A4O(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/J0;Lcom/facebook/ads/redexgen/X/B7;Lcom/facebook/ads/redexgen/X/GF;Lcom/facebook/ads/redexgen/X/Dx;Lcom/facebook/ads/redexgen/X/C0;)[Lcom/facebook/ads/redexgen/X/W7;
    .locals 20
    .param p6    # Lcom/facebook/ads/redexgen/X/C0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/J0;",
            "Lcom/facebook/ads/redexgen/X/B7;",
            "Lcom/facebook/ads/redexgen/X/GF;",
            "Lcom/facebook/ads/redexgen/X/Dx;",
            "Lcom/facebook/ads/redexgen/X/C0<",
            "Lcom/facebook/ads/redexgen/X/Vn;",
            ">;)[",
            "Lcom/facebook/ads/redexgen/X/W7;"
        }
    .end annotation

    move-object/from16 v5, p6

    .line 63547
    .local v8, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    move-object/from16 v2, p0

    if-nez v5, :cond_0

    .line 63548
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/W9;->A03:Lcom/facebook/ads/redexgen/X/C0;

    .line 63549
    .end local v8    # "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .local p0, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    .end local v8
    .local v11, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C0;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 63550
    .local v11, "renderersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/Renderer;>;"
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/W9;->A02:Landroid/content/Context;

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/W9;->A01:J

    iget v10, v2, Lcom/facebook/ads/redexgen/X/W9;->A00:I

    move-object/from16 v3, p0

    move-object/from16 v9, p2

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/W9;->A02(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/C0;JLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/J0;ILjava/util/ArrayList;)V

    .line 63551
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/W9;->A02:Landroid/content/Context;

    .line 63552
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/W9;->A06()[Lcom/facebook/ads/redexgen/X/Az;

    move-result-object v15

    iget v0, v2, Lcom/facebook/ads/redexgen/X/W9;->A00:I

    .line 63553
    move-object/from16 v17, p3

    move-object v12, v3

    move-object v14, v5

    move-object/from16 v16, v8

    move/from16 v18, v0

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/facebook/ads/redexgen/X/W9;->A03(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/C0;[Lcom/facebook/ads/redexgen/X/Az;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/B7;ILjava/util/ArrayList;)V

    .line 63554
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/W9;->A02:Landroid/content/Context;

    .line 63555
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v15

    iget v0, v2, Lcom/facebook/ads/redexgen/X/W9;->A00:I

    .line 63556
    move-object/from16 v14, p4

    move-object v12, v3

    move/from16 v16, v0

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/W9;->A05(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/GF;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 63557
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/W9;->A02:Landroid/content/Context;

    .line 63558
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget v0, v2, Lcom/facebook/ads/redexgen/X/W9;->A00:I

    .line 63559
    move-object/from16 v4, p5

    move-object v2, v3

    move-object v3, v1

    move v6, v0

    move-object v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/W9;->A04(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Dx;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 63560
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/W7;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/W7;

    return-object v0
.end method
