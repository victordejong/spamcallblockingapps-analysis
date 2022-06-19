.class public final Lcom/facebook/ads/redexgen/X/P4;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/P3;,
        Lcom/facebook/ads/redexgen/X/P2;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:F

.field public static final A0F:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/16;

.field public final A04:Lcom/facebook/ads/redexgen/X/1U;

.field public final A05:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A06:Lcom/facebook/ads/redexgen/X/JC;

.field public final A07:Lcom/facebook/ads/redexgen/X/NV;

.field public final A08:Lcom/facebook/ads/redexgen/X/aD;

.field public final A09:Lcom/facebook/ads/redexgen/X/P2;

.field public final A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0B:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47418
    invoke-static {}, Lcom/facebook/ads/redexgen/X/P4;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/P4;->A09()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/P4;->A0E:F

    .line 47419
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/P4;->A0F:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/P2;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Lcom/facebook/ads/redexgen/X/16;",
            "Lcom/facebook/ads/redexgen/X/1U;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/P2;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47420
    .local v0, "playableMetricsData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47421
    const/4 v2, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47422
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47423
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A01:J

    .line 47424
    iput v2, p0, Lcom/facebook/ads/redexgen/X/P4;->A00:I

    .line 47425
    new-instance v0, Lcom/facebook/ads/redexgen/X/82;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/82;-><init>(Lcom/facebook/ads/redexgen/X/P4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A07:Lcom/facebook/ads/redexgen/X/NV;

    .line 47426
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47427
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/P4;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 47428
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/1U;

    .line 47429
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/P4;->A06:Lcom/facebook/ads/redexgen/X/JC;

    .line 47430
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/P4;->A09:Lcom/facebook/ads/redexgen/X/P2;

    .line 47431
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/P4;->A02:Ljava/util/Map;

    .line 47432
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/P4;->A04()Lcom/facebook/ads/redexgen/X/aD;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A08:Lcom/facebook/ads/redexgen/X/aD;

    .line 47433
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P4;->A08:Lcom/facebook/ads/redexgen/X/aD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/P4;->A0F:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47434
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/P4;)I
    .locals 2

    .line 47435
    iget v1, p0, Lcom/facebook/ads/redexgen/X/P4;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A00:I

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/P4;J)J
    .locals 0

    .line 47436
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/P4;->A01:J

    return-wide p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/P4;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 47437
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P4;->A03:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/P4;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 47438
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P4;->A06:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/aD;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface",
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 47439
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A07:Lcom/facebook/ads/redexgen/X/NV;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/16 v0, 0xa

    new-instance v3, Lcom/facebook/ads/redexgen/X/aD;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aD;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/ref/WeakReference;I)V

    .line 47440
    .local p0, "adWebView":Lcom/facebook/ads/redexgen/X/aD;
    sget v0, Lcom/facebook/ads/redexgen/X/P4;->A0E:F

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/aD;->setCornerRadius(F)V

    .line 47441
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/aD;->setLogMultipleImpressions(Z)V

    .line 47442
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/aD;->setCheckAssetsByJavascriptBridge(Z)V

    .line 47443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A09()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/aD;->setWebViewTimeoutInMillis(I)V

    .line 47444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/aD;->setRequestId(Ljava/lang/String;)V

    .line 47445
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/P3;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/P3;-><init>(Lcom/facebook/ads/redexgen/X/P4;Lcom/facebook/ads/redexgen/X/82;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/aD;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47446
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/aD;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 47447
    .local v2, "settings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 47448
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 47449
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 47450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 47451
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 47452
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    .line 47453
    new-instance v4, Lcom/facebook/ads/redexgen/X/P5;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/P4;->A06:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/P4;->A02:Ljava/util/Map;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 47454
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v9

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/P5;-><init>(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/P4;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Ljava/lang/String;)V

    .line 47455
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/aD;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47456
    :cond_1
    return-object v3
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/P4;)Lcom/facebook/ads/redexgen/X/P2;
    .locals 0

    .line 47457
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P4;->A09:Lcom/facebook/ads/redexgen/X/P2;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/P4;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const-string v1, "2xsSJQdmJTzWNKbVkLPVv70adF3crTtp"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x25

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/P4;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 47458
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P4;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/P4;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 47459
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P4;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0xc8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/P4;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x2ft
        0x1dt
        0x21t
        0x2ct
        0x34t
        0x2ct
        0x2ft
        0x21t
        0x28t
        0xct
        0x29t
        0x34t
        0x5t
        0x16t
        0x17t
        0xdt
        0xat
        0x3t
        0x44t
        0x1t
        0x16t
        0x16t
        0xbt
        0x16t
        0x34t
        0x8t
        0x5t
        0x1dt
        0x5t
        0x6t
        0x8t
        0x1t
        0x44t
        0x0t
        0xbt
        0x27t
        0x10t
        0x5t
        0x27t
        0x8t
        0xdt
        0x7t
        0xft
        0x44t
        0x10t
        0x16t
        0xdt
        0x3t
        0x3t
        0x1t
        0x16t
        0x1t
        0x0t
        0x44t
        0x13t
        0xdt
        0x10t
        0xct
        0x44t
        0x14t
        0x16t
        0x1t
        0x49t
        0x1t
        0x12t
        0x1t
        0xat
        0x10t
        0x44t
        0x7t
        0x8t
        0xdt
        0x7t
        0xft
        0x17t
        0x44t
        0x7t
        0xbt
        0x11t
        0xat
        0x10t
        0x44t
        0x5t
        0xat
        0x0t
        0x44t
        0x20t
        0x1t
        0x8t
        0x5t
        0x1dt
        0x6at
        0x56t
        0x5bt
        0x43t
        0x5bt
        0x58t
        0x56t
        0x5ft
        0x7bt
        0x5et
        0x49t
        0x6ct
        0x53t
        0x5ft
        0x4dt
        0x66t
        0x61t
        0x63t
        0x6dt
        0x6at
        0x24t
        0x68t
        0x6bt
        0x65t
        0x60t
        0x6dt
        0x6at
        0x63t
        0x24t
        0x76t
        0x61t
        0x69t
        0x6bt
        0x70t
        0x61t
        0x24t
        0x74t
        0x68t
        0x65t
        0x7dt
        0x65t
        0x66t
        0x68t
        0x61t
        0x3dt
        0x32t
        0x37t
        0x3dt
        0x35t
        0x2dt
        0x70t
        0x71t
        0x78t
        0x75t
        0x6dt
        0x5dt
        0x41t
        0x4ct
        0x54t
        0x4ct
        0x4ft
        0x41t
        0x48t
        0x37t
        0x2bt
        0x26t
        0x3et
        0x26t
        0x25t
        0x2bt
        0x22t
        0x18t
        0x35t
        0x22t
        0x2at
        0x28t
        0x33t
        0x22t
        0x15t
        0x2t
        0xat
        0x8t
        0x13t
        0x2t
        0x38t
        0x14t
        0x2t
        0x14t
        0x14t
        0xet
        0x8t
        0x9t
        0x38t
        0xet
        0x3t
        0x14t
        0xft
        0xbt
        0x5t
        0xet
        0x6bt
        0x79t
        0x7et
        0x43t
        0x6at
        0x75t
        0x79t
        0x6bt
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2LrpfYyae0azpeRldXrTpIs5j5WolZYJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aTWFoH17M5HvBaS06GyoTMgY8LK09kB1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZT9jJV1ne"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vwbwskwEgIVHj6V8wHV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a8UIfMhCahgZVDol7QIaAFMNjSR7v8Rm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pauq9xVSe1TSbn6Nh8iDWIypG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tig0s2h3zWgeN1kA13N6tuAlrnUP1dby"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gu60Pcp0oAdbO9RcUpkXMIBgrMh0CW0V"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0B()V
    .locals 9

    .line 47460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A01:J

    sub-long/2addr v3, v0

    .line 47461
    .local p0, "delayMS":J
    const/16 v2, 0x19

    const/16 v1, 0x43

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 47462
    .local v2, "debugLogEvent":Lcom/facebook/ads/redexgen/X/8f;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 47463
    .local v0, "additionalInfo":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A00:I

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47464
    const/16 v2, 0x8e

    const/4 v1, 0x5

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47465
    const/16 v2, 0xbb

    const/4 v1, 0x5

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47466
    :catch_0
    move-exception v7

    .line 47467
    .local v4, "e":Lorg/json/JSONException;
    const/16 v2, 0x5c

    const/16 v1, 0xf

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xc

    const/16 v1, 0xd

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47468
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/8f;->A05(Lorg/json/JSONObject;)V

    .line 47469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47470
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v8

    sget v7, Lcom/facebook/ads/redexgen/X/8e;->A1u:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_4

    .line 47471
    sget-object v2, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const-string v1, "lhJ8s2Q4sCds7IROMAxOWHrUi0xft2U2"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "JiEJ4GJfM63VUjRSw5kXmgHmRai0omG0"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v2, 0x93

    const/16 v1, 0x8

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5, v7, v6}, Lcom/facebook/ads/redexgen/X/8d;->A8W(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 47472
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A00:I

    .line 47473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A18(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47474
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_1

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/J4;->A0F(Landroid/content/Context;)I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    .line 47475
    :goto_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/P4;->A09:Lcom/facebook/ads/redexgen/X/P2;

    sget-object v2, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/P2;->A9q()V

    .line 47476
    :goto_2
    return-void

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const-string v1, "1qrV4xG42mjJ5wR1PYF4mguO0xYm8sMw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "To2gWJFbGkwQ4PRGYAw3BZd3UXo54AHv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/P2;->A9q()V

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/J4;->A0F(Landroid/content/Context;)I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2

    goto :goto_1

    .line 47477
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47478
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A1v:I

    .line 47479
    invoke-interface {v1, v5, v0, v6}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_2

    .line 47480
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A09:Lcom/facebook/ads/redexgen/X/P2;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P2;->A9q()V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0C()V
    .locals 7

    .line 47481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47482
    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 47483
    .local p0, "debugLogEvent":Lcom/facebook/ads/redexgen/X/8f;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 47484
    .local v0, "additionalInfo":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xaa

    const/16 v1, 0x11

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/1U;

    .line 47485
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0G()Ljava/lang/String;

    move-result-object v0

    .line 47486
    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47487
    const/16 v2, 0xbb

    const/4 v1, 0x5

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47488
    :catch_0
    move-exception v4

    .line 47489
    .local v0, "e":Lorg/json/JSONException;
    const/16 v2, 0x5c

    const/16 v1, 0xf

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/16 v1, 0xd

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47490
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/8f;->A05(Lorg/json/JSONObject;)V

    .line 47491
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 47492
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    .line 47493
    sget-object v2, Lcom/facebook/ads/redexgen/X/P4;->A0D:[Ljava/lang/String;

    const-string v1, "TEDpWyR4sKSlO4xRZxixfnQAFgDgpHMF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A1w:I

    .line 47494
    const/16 v2, 0x9b

    const/16 v1, 0xf

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8W(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47495
    .end local p0    # "debugLogEvent":Lcom/facebook/ads/redexgen/X/8f;
    .end local v0
    :cond_1
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P4;->A08:Lcom/facebook/ads/redexgen/X/aD;

    .line 47496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0C()Ljava/lang/String;

    move-result-object v0

    .line 47498
    :goto_2
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aD;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 47499
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0F()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47500
    :catch_1
    move-exception v1

    .line 47501
    .local p0, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 47502
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A2J:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 47503
    const/16 v2, 0xc0

    const/16 v1, 0x8

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 47504
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public final A0D()V
    .locals 4

    .line 47505
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/P4;->A08:Lcom/facebook/ads/redexgen/X/aD;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/aD;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 47506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A08:Lcom/facebook/ads/redexgen/X/aD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aD;->destroy()V

    .line 47507
    return-void
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;
    .locals 1

    .line 47508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A08:Lcom/facebook/ads/redexgen/X/aD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aD;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    return-object v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P4;->A08:Lcom/facebook/ads/redexgen/X/aD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aD;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    return-object v0
.end method
