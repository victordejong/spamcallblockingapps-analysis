.class public final Lcom/facebook/ads/redexgen/X/4v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdViewApi;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/AdListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/F1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/NV;

.field public A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Landroid/util/DisplayMetrics;

.field public final A08:Lcom/facebook/ads/AdView;

.field public final A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Dz;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Js;

.field public final A0C:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4v;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4v;->A02()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .line 12402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12403
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:J

    .line 12404
    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    if-eq p3, v0, :cond_0

    .line 12405
    invoke-virtual {p5}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A07:Landroid/util/DisplayMetrics;

    .line 12406
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Js;->A02(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/redexgen/X/Js;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0B:Lcom/facebook/ads/redexgen/X/Js;

    .line 12407
    move-object v3, p2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A0C:Ljava/lang/String;

    .line 12408
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4v;->A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

    .line 12409
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/4v;->A08:Lcom/facebook/ads/AdView;

    .line 12410
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A06(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Dz;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    .line 12411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0R;->A2h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0B:Lcom/facebook/ads/redexgen/X/Js;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jv;->A02(Lcom/facebook/ads/redexgen/X/Js;)Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v4

    .line 12413
    .local p0, "adTemplate":Lcom/facebook/ads/redexgen/X/Jt;
    new-instance v2, Lcom/facebook/ads/redexgen/X/1m;

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 12414
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Js;->A02(Lcom/facebook/ads/AdSize;)Lcom/facebook/ads/redexgen/X/Js;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/1m;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/Js;I)V

    .line 12415
    .local p1, "adControllerConfig":Lcom/facebook/ads/redexgen/X/1m;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A05:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A05(Ljava/lang/String;)V

    .line 12416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A06:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/1m;->A06(Ljava/lang/String;)V

    .line 12417
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F1;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/F1;-><init>(Lcom/facebook/ads/redexgen/X/Dz;Lcom/facebook/ads/redexgen/X/1m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/F1;

    .line 12418
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/F1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aV;-><init>(Lcom/facebook/ads/redexgen/X/4v;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bh;->A0O(Lcom/facebook/ads/redexgen/X/0o;)V

    .line 12419
    return-void

    .line 12420
    .end local p0    # "adTemplate":Lcom/facebook/ads/redexgen/X/Jt;
    .end local p1    # "adControllerConfig":Lcom/facebook/ads/redexgen/X/1m;
    :cond_0
    const/16 v2, 0x6c

    const/4 v1, 0x6

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jo;
        }
    .end annotation

    .line 12421
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/4v;->A00(Ljava/lang/String;)Lcom/facebook/ads/AdSize;

    move-result-object v3

    move-object v0, p0

    move-object v5, p5

    move-object v4, p4

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4v;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/api/AdViewParentApi;Lcom/facebook/ads/AdView;)V

    .line 12422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3a()V

    .line 12423
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/AdSize;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Jo;
        }
    .end annotation

    .line 12424
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v0

    .line 12425
    .local p0, "template":Lcom/facebook/ads/redexgen/X/Jt;
    if-eqz v0, :cond_0

    .line 12426
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jy;->A04(Lcom/facebook/ads/redexgen/X/Jt;)V

    .line 12427
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jv;->A00(Lcom/facebook/ads/redexgen/X/Jt;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    return-object v0

    .line 12428
    :cond_0
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    .line 12429
    const/16 v2, 0x43

    const/16 v1, 0x29

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jo;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Jo;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x27

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x7f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4v;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x71t
        -0x41t
        -0x6dt
        -0x40t
        -0x3ft
        -0x6bt
        -0x6ct
        -0x6dt
        -0x68t
        -0x67t
        -0x69t
        -0x6dt
        -0x67t
        -0x3bt
        -0x3bt
        -0x38t
        0x64t
        -0x6ft
        0x60t
        -0x6ft
        0x61t
        -0x71t
        0x65t
        0x60t
        -0x53t
        -0x34t
        -0x27t
        -0x27t
        -0x30t
        -0x23t
        -0x75t
        -0x34t
        -0x31t
        -0x75t
        -0x31t
        -0x30t
        -0x22t
        -0x21t
        -0x23t
        -0x26t
        -0x1ct
        -0x30t
        -0x31t
        -0x23t
        -0x4t
        0x9t
        0x9t
        0x0t
        0xdt
        -0x45t
        -0x4t
        -0x1t
        -0x45t
        0x7t
        0xat
        -0x4t
        -0x1t
        -0x45t
        0xdt
        0x0t
        0xct
        0x10t
        0x0t
        0xet
        0xft
        0x0t
        -0x1t
        -0x23t
        -0x5t
        0x8t
        0x8t
        0x9t
        0xet
        -0x46t
        0x0t
        0x3t
        0x8t
        -0x2t
        -0x46t
        -0x5t
        -0x46t
        0xet
        -0x1t
        0x7t
        0xat
        0x6t
        -0x5t
        0xet
        -0x1t
        -0x46t
        0xet
        0x2t
        -0x5t
        0xet
        -0x46t
        0x6t
        0x9t
        -0x5t
        -0x2t
        -0x46t
        -0x4t
        0x3t
        -0x2t
        -0x46t
        -0x3ft
        -0x41t
        0xdt
        -0x3ft
        -0x53t
        -0x50t
        -0x61t
        -0x4bt
        -0x3at
        -0x4ft
        -0x48t
        -0x47t
        -0x39t
        -0x38t
        -0x3at
        -0x3dt
        -0x33t
        -0x3et
        -0x3bt
        -0x49t
        -0x46t
        -0x69t
        -0x46t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8ZsaPqFHBksSubEDxj161z8v83o0PIqL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1NWTdVv6N7aOqefGpQ3nVAkwh7f4QYaR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Q4l1tys1ZSMgMj214694goNihNba6PJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "j8ts1um9VlgNYzePKTTbdrZm7P7LEYQS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "t56Pwr0qdwmiw03ThNEKvYWwkytCRLDg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RREINDdqXCKFIVRasebbhTe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "edGRVZA6FwzGspMgtzkdHpprfoIdLjRD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fNcadsm2hMDvYVzuw1qW3xw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private A04(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:J

    .line 12431
    if-nez p1, :cond_1

    .line 12432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2e()V

    .line 12433
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/F1;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const-string v1, "pe4oZgDQ3sTDNo8k5JxuPcj1mqE4f2TD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 12434
    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/bh;->A0R(Ljava/lang/String;)V

    .line 12435
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_2

    .line 12436
    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const-string v1, "D8Oc2vjooMbkdhwRsJFg2j6kNTTlIbDv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    .line 12437
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const-string v1, "M5Y3D3mNGdfLR2WDul4k9MR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "fol70tWokzFUGtpcuxJkkr6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d()V

    goto :goto_0

    .line 12438
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A05()J
    .locals 2

    .line 12439
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A00:J

    return-wide v0
.end method

.method public final A06()Landroid/util/DisplayMetrics;
    .locals 1

    .line 12440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A07:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public final A07()Lcom/facebook/ads/AdListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method public final A08()Lcom/facebook/ads/AdView;
    .locals 1

    .line 12442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A08:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/F1;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/F1;

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/Dz;
    .locals 1

    .line 12444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    return-object v0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/Js;
    .locals 1

    .line 12445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0B:Lcom/facebook/ads/redexgen/X/Js;

    return-object v0
.end method

.method public final A0C(Landroid/widget/RelativeLayout;Landroid/view/View;)V
    .locals 4

    .line 12446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A06:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cQ;->A3n(Z)V

    .line 12447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A06:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    .line 12449
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ov;->A01(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ow;

    move-result-object v3

    .line 12450
    .local p0, "overlayView":Lcom/facebook/ads/redexgen/X/Ow;
    if-eqz v3, :cond_0

    .line 12451
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12452
    .local p1, "visibleAdViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12453
    .local p2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12454
    .end local p0    # "overlayView":Lcom/facebook/ads/redexgen/X/Ow;
    .end local p1    # "visibleAdViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local p2    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 12455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D(Lcom/facebook/ads/AdListener;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/AdListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(Z)V

    .line 12457
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:Lcom/facebook/ads/AdListener;

    .line 12458
    return-void

    .line 12459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/NV;)V
    .locals 0

    .line 12460
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4v;->A04:Lcom/facebook/ads/redexgen/X/NV;

    .line 12461
    return-void
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 1

    .line 12462
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JP;-><init>(Lcom/facebook/ads/redexgen/X/4v;)V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x72

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x18

    const/16 v1, 0x13

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2i()V

    .line 12464
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/F1;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 12465
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/F1;->A0T(Z)V

    .line 12466
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/F1;

    .line 12467
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A04:Lcom/facebook/ads/redexgen/X/NV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const-string v1, "TN5XSHsAoZcgZfma8JU5HEv6EkUhgjUJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0EGaYiN0xr4bPRWWNOnd4RhBajl5vHs2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/4v;->A08:Lcom/facebook/ads/AdView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12468
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/4v;->A0E:[Ljava/lang/String;

    const-string v1, "TnNHs1kiAbubcu5fNfkZcHChaOM3HmV2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A04:Lcom/facebook/ads/redexgen/X/NV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NV;->A08()V

    .line 12470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 12471
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A04:Lcom/facebook/ads/redexgen/X/NV;

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 12472
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A08:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 12473
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:Landroid/view/View;

    .line 12474
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/4v;->A02:Lcom/facebook/ads/AdListener;

    .line 12475
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 12476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0C:Ljava/lang/String;

    return-object v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 12477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A03:Lcom/facebook/ads/redexgen/X/F1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0U()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 12478
    .local p0, "isInvalidated":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0A:Lcom/facebook/ads/redexgen/X/Dz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4V(Z)V

    .line 12479
    return v1

    .line 12480
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final loadAd()V
    .locals 5

    const/16 v2, 0x79

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2b

    const/16 v1, 0x18

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A04(Ljava/lang/String;)V

    .line 12482
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V
    .locals 5

    const/16 v2, 0x79

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2b

    const/16 v1, 0x18

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/K1;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12483
    check-cast p1, Lcom/facebook/ads/redexgen/X/JP;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JP;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A04(Ljava/lang/String;)V

    .line 12484
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 12485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A09:Lcom/facebook/ads/internal/api/AdViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdViewParentApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12486
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4v;->A01:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 12487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4v;->A07:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A0B:Lcom/facebook/ads/redexgen/X/Js;

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jv;->A04(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Js;)V

    .line 12488
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12489
    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A05:Ljava/lang/String;

    .line 12490
    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4v;->A06:Ljava/lang/String;

    .line 12491
    return-void
.end method
