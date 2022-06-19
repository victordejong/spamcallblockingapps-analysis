.class public final Lcom/facebook/ads/redexgen/X/Oz;
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
        Lcom/facebook/ads/redexgen/X/Oy;,
        Lcom/facebook/ads/redexgen/X/Ox;
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

.field public final A05:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A06:Lcom/facebook/ads/redexgen/X/JC;

.field public final A07:Lcom/facebook/ads/redexgen/X/NQ;

.field public final A08:Lcom/facebook/ads/redexgen/X/S1;

.field public final A09:Lcom/facebook/ads/redexgen/X/Ox;

.field public final A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0B:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47600
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oz;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oz;->A09()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Oz;->A0E:F

    .line 47601
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oz;->A0F:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Ox;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/16;",
            "Lcom/facebook/ads/redexgen/X/1U;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/Ox;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47602
    .local v0, "playableMetricsData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47603
    const/4 v2, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47604
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47605
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A01:J

    .line 47606
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:I

    .line 47607
    new-instance v0, Lcom/facebook/ads/redexgen/X/82;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/82;-><init>(Lcom/facebook/ads/redexgen/X/Oz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A07:Lcom/facebook/ads/redexgen/X/NQ;

    .line 47608
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47609
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Oz;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 47610
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Oz;->A04:Lcom/facebook/ads/redexgen/X/1U;

    .line 47611
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Oz;->A06:Lcom/facebook/ads/redexgen/X/JC;

    .line 47612
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Oz;->A09:Lcom/facebook/ads/redexgen/X/Ox;

    .line 47613
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Oz;->A02:Ljava/util/Map;

    .line 47614
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oz;->A04()Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A08:Lcom/facebook/ads/redexgen/X/S1;

    .line 47615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47617
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A07()Lcom/facebook/ads/redexgen/X/JO;

    .line 47618
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A08:Lcom/facebook/ads/redexgen/X/S1;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oz;->A0F:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47619
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Oz;)I
    .locals 2

    .line 47620
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:I

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Oz;J)J
    .locals 0

    .line 47621
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A01:J

    return-wide p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 47622
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A03:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 47623
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A06:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/S1;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface",
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 47624
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A07:Lcom/facebook/ads/redexgen/X/NQ;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47625
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1I(Landroid/content/Context;)Z

    move-result v1

    const/16 v0, 0xa

    new-instance v3, Lcom/facebook/ads/redexgen/X/S1;

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/S1;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/ref/WeakReference;IZ)V

    .line 47626
    .local p0, "adWebView":Lcom/facebook/ads/redexgen/X/S1;
    sget v0, Lcom/facebook/ads/redexgen/X/Oz;->A0E:F

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/S1;->setCornerRadius(F)V

    .line 47627
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/S1;->setLogMultipleImpressions(Z)V

    .line 47628
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/S1;->setCheckAssetsByJavascriptBridge(Z)V

    .line 47629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A08()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/S1;->setWebViewTimeoutInMillis(I)V

    .line 47630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/S1;->setRequestId(Ljava/lang/String;)V

    .line 47631
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oy;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Oy;-><init>(Lcom/facebook/ads/redexgen/X/Oz;Lcom/facebook/ads/redexgen/X/82;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/S1;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47632
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/S1;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 47633
    .local v4, "settings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 47634
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 47635
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 47636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 47637
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 47638
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    .line 47639
    new-instance v4, Lcom/facebook/ads/redexgen/X/P0;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Oz;->A06:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Oz;->A02:Ljava/util/Map;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 47640
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v9

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/P0;-><init>(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/Oz;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Ljava/lang/String;)V

    .line 47641
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/S1;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47642
    :cond_1
    return-object v3
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/Ox;
    .locals 0

    .line 47643
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A09:Lcom/facebook/ads/redexgen/X/Ox;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oz;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x9

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Oz;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 47644
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Oz;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 47645
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A0A:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static A09()V
    .locals 4

    const/16 v3, 0xc8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    const-string v1, "Af0WM9g7Nak7nSkWG18ndsMVC8MahONd"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "VergmF1iO6RBn6aZ7U2vBdquKGl77VZm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oz;->A0C:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x36t
        0x12t
        0x20t
        0x1ct
        0x11t
        0x9t
        0x11t
        0x12t
        0x1ct
        0x15t
        0x31t
        0x14t
        0x13t
        0x22t
        0x31t
        0x30t
        0x2at
        0x2dt
        0x24t
        0x63t
        0x26t
        0x31t
        0x31t
        0x2ct
        0x31t
        0x44t
        0x78t
        0x75t
        0x6dt
        0x75t
        0x76t
        0x78t
        0x71t
        0x34t
        0x70t
        0x7bt
        0x57t
        0x60t
        0x75t
        0x57t
        0x78t
        0x7dt
        0x77t
        0x7ft
        0x34t
        0x60t
        0x66t
        0x7dt
        0x73t
        0x73t
        0x71t
        0x66t
        0x71t
        0x70t
        0x34t
        0x63t
        0x7dt
        0x60t
        0x7ct
        0x34t
        0x64t
        0x66t
        0x71t
        0x39t
        0x71t
        0x62t
        0x71t
        0x7at
        0x60t
        0x34t
        0x77t
        0x78t
        0x7dt
        0x77t
        0x7ft
        0x67t
        0x34t
        0x77t
        0x7bt
        0x61t
        0x7at
        0x60t
        0x34t
        0x75t
        0x7at
        0x70t
        0x34t
        0x50t
        0x71t
        0x78t
        0x75t
        0x6dt
        0xdt
        0x31t
        0x3ct
        0x24t
        0x3ct
        0x3ft
        0x31t
        0x38t
        0x1ct
        0x39t
        0x2et
        0xbt
        0x34t
        0x38t
        0x2at
        0x72t
        0x75t
        0x77t
        0x79t
        0x7et
        0x30t
        0x7ct
        0x7ft
        0x71t
        0x74t
        0x79t
        0x7et
        0x77t
        0x30t
        0x62t
        0x75t
        0x7dt
        0x7ft
        0x64t
        0x75t
        0x30t
        0x60t
        0x7ct
        0x71t
        0x69t
        0x71t
        0x72t
        0x7ct
        0x75t
        0x22t
        0x2dt
        0x28t
        0x22t
        0x2at
        0x32t
        0x5t
        0x4t
        0xdt
        0x0t
        0x18t
        0x72t
        0x6et
        0x63t
        0x7bt
        0x63t
        0x60t
        0x6et
        0x67t
        0x34t
        0x28t
        0x25t
        0x3dt
        0x25t
        0x26t
        0x28t
        0x21t
        0x1bt
        0x36t
        0x21t
        0x29t
        0x2bt
        0x30t
        0x21t
        0x5ft
        0x48t
        0x40t
        0x42t
        0x59t
        0x48t
        0x72t
        0x5et
        0x48t
        0x5et
        0x5et
        0x44t
        0x42t
        0x43t
        0x72t
        0x44t
        0x49t
        0x4et
        0x55t
        0x51t
        0x5ft
        0x54t
        0x77t
        0x65t
        0x62t
        0x5ft
        0x76t
        0x69t
        0x65t
        0x77t
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5vYLtEaU9MAxDoI06TlJjFfWs8tiaGj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TX23sib3Tj6X7eJy5cgYAILp0vVPLOiW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Lxz50jZMaNdiu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "yIxUapHBf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xsW4qvb7U5EMj5cNQbMl14i5qh6u6uOh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8XLPt3rjq6gnj0Cd96o3z24ZTqMdgzej"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IIODaFrLnzdPntRGftRJpuPC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ODWlzaCdU1siup4vWOfVQK22DnthNinE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0B()V
    .locals 9

    .line 47646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A01:J

    sub-long/2addr v3, v0

    .line 47647
    .local p0, "delayMS":J
    const/16 v2, 0x19

    const/16 v1, 0x43

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 47648
    .local v2, "debugLogEvent":Lcom/facebook/ads/redexgen/X/8f;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 47649
    .local v0, "additionalInfo":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:I

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47650
    const/16 v2, 0x8e

    const/4 v1, 0x5

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47651
    const/16 v2, 0xbb

    const/4 v1, 0x5

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47652
    :catch_0
    move-exception v7

    .line 47653
    .local v4, "e":Lorg/json/JSONException;
    const/16 v2, 0x5c

    const/16 v1, 0xf

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0xc

    const/16 v1, 0xd

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47654
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/8f;->A05(Lorg/json/JSONObject;)V

    .line 47655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47656
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v8

    sget v7, Lcom/facebook/ads/redexgen/X/8e;->A1v:I

    .line 47657
    const/16 v2, 0x93

    const/16 v1, 0x8

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5, v7, v6}, Lcom/facebook/ads/redexgen/X/8d;->A8Y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 47658
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:I

    .line 47659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0F(Landroid/content/Context;)I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    .line 47661
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oz;->A09:Lcom/facebook/ads/redexgen/X/Ox;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    const-string v1, "0XAlcIRGce3nNmobAWWNAzxTwWjfpKo1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "vX4VpuJxASYV4FwrDvVxGQ4QiWthZxUm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Ox;->A9p()V

    .line 47662
    :goto_1
    return-void

    .line 47663
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47664
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A1w:I

    .line 47665
    invoke-interface {v1, v5, v0, v6}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_1

    .line 47666
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A09:Lcom/facebook/ads/redexgen/X/Ox;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ox;->A9p()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0C()V
    .locals 8

    .line 47667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47668
    const/16 v2, 0x6b

    const/16 v1, 0x1d

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 47669
    .local p0, "debugLogEvent":Lcom/facebook/ads/redexgen/X/8f;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 47670
    .local v0, "additionalInfo":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xaa

    const/16 v1, 0x11

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A04:Lcom/facebook/ads/redexgen/X/1U;

    .line 47671
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0F()Ljava/lang/String;

    move-result-object v0

    .line 47672
    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47673
    const/16 v2, 0xbb

    const/4 v1, 0x5

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47674
    :catch_0
    move-exception v6

    .line 47675
    .local v0, "e":Lorg/json/JSONException;
    const/16 v2, 0x5c

    const/16 v1, 0xf

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xc

    const/16 v1, 0xd

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    const-string v1, "qKqF8GsLC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "yUBs4wOBB81EmWZp6CsNCuI0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v4, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47676
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/8f;->A05(Lorg/json/JSONObject;)V

    .line 47677
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 47678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47679
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A1y:I

    .line 47680
    const/16 v2, 0x9b

    const/16 v1, 0xf

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8Y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 47681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47682
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LZ;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/LY;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/LY;->A07:Lcom/facebook/ads/redexgen/X/LY;

    if-ne v1, v0, :cond_2

    .line 47683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47684
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8e;->A1x:I

    .line 47685
    invoke-interface {v1, v2, v0, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8Y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 47686
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oz;->A07:Lcom/facebook/ads/redexgen/X/NQ;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->AAA(ILjava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 47687
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    const-string v1, "eYeTyqsAvkMxTzxGPJMzaaOJBs1WoRUE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "DGSgvEgHkFrTWskIwQomZOyU4ros1fyW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oz;->A0D:[Ljava/lang/String;

    const-string v1, "QXwUk7ZcYbXDO6xLw92fyo5XHWgn18Du"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "iXthj0ZXJZZP0QlicLBvNNfJ4d5EWvqr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    .line 47688
    .end local p0    # "debugLogEvent":Lcom/facebook/ads/redexgen/X/8f;
    .end local v0
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A08:Lcom/facebook/ads/redexgen/X/S1;

    .line 47689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 47690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0B()Ljava/lang/String;

    move-result-object v0

    .line 47691
    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/S1;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 47692
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A04:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0E()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47693
    :catch_1
    move-exception v1

    .line 47694
    .local p0, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47695
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A2M:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 47696
    const/16 v2, 0xc0

    const/16 v1, 0x8

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 47697
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public final A0D()V
    .locals 4

    .line 47698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A07()Lcom/facebook/ads/redexgen/X/JO;

    .line 47700
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oz;->A08:Lcom/facebook/ads/redexgen/X/S1;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oz;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/S1;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 47701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A08:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S1;->destroy()V

    .line 47702
    return-void
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lc;
    .locals 1

    .line 47703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A08:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S1;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    return-object v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 47704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oz;->A08:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S1;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    return-object v0
.end method
