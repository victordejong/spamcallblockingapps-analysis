.class public final Lcom/facebook/ads/redexgen/X/SY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M8;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field public static A0C:[B

.field public static final A0D:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/4y;

.field public final A07:Lcom/facebook/ads/redexgen/X/50;

.field public final A08:Lcom/facebook/ads/redexgen/X/JC;

.field public final A09:Lcom/facebook/ads/redexgen/X/N9;

.field public final A0A:Lcom/facebook/ads/redexgen/X/NA;

.field public final A0B:Lcom/facebook/ads/redexgen/X/SA;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 52419
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SY;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/SY;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SY;->A0D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/50;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 6

    .line 52420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52421
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Lcom/facebook/ads/redexgen/X/SY;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A06:Lcom/facebook/ads/redexgen/X/4y;

    .line 52422
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/SY;->A05:Z

    .line 52423
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A01:J

    .line 52424
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/SY;->A04:Z

    .line 52425
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SY;->A07:Lcom/facebook/ads/redexgen/X/50;

    .line 52426
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SY;->A08:Lcom/facebook/ads/redexgen/X/JC;

    .line 52427
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v4, v1

    .line 52428
    .local p0, "progressBarHeightPx":I
    new-instance v2, Lcom/facebook/ads/redexgen/X/Sa;

    invoke-direct {v2, p0, p4}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/SY;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 52429
    .local p1, "browserListener":Lcom/facebook/ads/redexgen/X/NH;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52430
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A7i()V

    .line 52431
    :cond_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/J5;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 52432
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {v1, p2, v2}, Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/NH;)V

    .line 52433
    :goto_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    .line 52434
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N9;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/redexgen/X/N9;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A09:Lcom/facebook/ads/redexgen/X/N9;

    .line 52435
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A09:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->setId(I)V

    .line 52436
    const/4 v3, -0x2

    const/4 v5, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52437
    .local p2, "controlsViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52438
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A09:Lcom/facebook/ads/redexgen/X/N9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SZ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/SY;Lcom/facebook/ads/redexgen/X/50;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->setListener(Lcom/facebook/ads/redexgen/X/N8;)V

    .line 52439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A09:Lcom/facebook/ads/redexgen/X/N9;

    invoke-interface {p4, v0, v2}, Lcom/facebook/ads/redexgen/X/M7;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 52440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A09:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/NI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SA;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/NI;)V

    .line 52441
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52442
    .local p3, "webViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A09:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->getId()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52443
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    invoke-interface {p4, v0, v1}, Lcom/facebook/ads/redexgen/X/M7;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 52445
    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v0, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0A:Lcom/facebook/ads/redexgen/X/NA;

    .line 52446
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52447
    .local p4, "progressBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A09:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->getId()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52448
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A0A:Lcom/facebook/ads/redexgen/X/NA;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->setProgress(I)V

    .line 52449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0A:Lcom/facebook/ads/redexgen/X/NA;

    invoke-interface {p4, v0, v2}, Lcom/facebook/ads/redexgen/X/M7;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 52450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A06:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 52451
    return-void

    .line 52452
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {v1, p2, v0, v2}, Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/NH;)V

    goto/16 :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/N9;
    .locals 0

    .line 52453
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SY;->A09:Lcom/facebook/ads/redexgen/X/N9;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/NA;
    .locals 0

    .line 52454
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0A:Lcom/facebook/ads/redexgen/X/NA;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/SY;)Lcom/facebook/ads/redexgen/X/SA;
    .locals 0

    .line 52455
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SY;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2c

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

    const/16 v0, 0xf2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SY;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x5at
        0x70t
        0x70t
        0x7dt
        0x70t
        0x14t
        0x3ft
        0x3dt
        0x70t
        0x13t
        0x3ft
        0x3et
        0x24t
        0x35t
        0x3et
        0x24t
        0x70t
        0x1ct
        0x3ft
        0x31t
        0x34t
        0x35t
        0x34t
        0x70t
        0x4t
        0x39t
        0x3dt
        0x35t
        0x6at
        0x70t
        0x30t
        0x1at
        0x1at
        0x17t
        0x1at
        0x76t
        0x55t
        0x5bt
        0x5et
        0x1at
        0x7ct
        0x53t
        0x54t
        0x53t
        0x49t
        0x52t
        0x1at
        0x6et
        0x53t
        0x57t
        0x5ft
        0x0t
        0x1at
        0x5ft
        0x75t
        0x75t
        0x78t
        0x75t
        0x19t
        0x3at
        0x34t
        0x31t
        0x75t
        0x6t
        0x21t
        0x34t
        0x27t
        0x21t
        0x75t
        0x1t
        0x3ct
        0x38t
        0x30t
        0x6ft
        0x75t
        0x75t
        0x5ft
        0x5ft
        0x52t
        0x5ft
        0x2dt
        0x1at
        0xct
        0xft
        0x10t
        0x11t
        0xct
        0x1at
        0x5ft
        0x3at
        0x11t
        0x1bt
        0x5ft
        0x2bt
        0x16t
        0x12t
        0x1at
        0x45t
        0x5ft
        0x6dt
        0x47t
        0x47t
        0x4at
        0x47t
        0x34t
        0x4t
        0x15t
        0x8t
        0xbt
        0xbt
        0x47t
        0x35t
        0x2t
        0x6t
        0x3t
        0x1et
        0x47t
        0x33t
        0xet
        0xat
        0x2t
        0x5dt
        0x47t
        0x57t
        0x7dt
        0x7dt
        0x70t
        0x7dt
        0xet
        0x38t
        0x2et
        0x2et
        0x34t
        0x32t
        0x33t
        0x7dt
        0x1bt
        0x34t
        0x33t
        0x34t
        0x2et
        0x35t
        0x7dt
        0x9t
        0x34t
        0x30t
        0x38t
        0x67t
        0x7dt
        0x2at
        0x1at
        0x30t
        0x30t
        0x3dt
        0x30t
        0x58t
        0x71t
        0x7et
        0x74t
        0x7ct
        0x75t
        0x62t
        0x30t
        0x44t
        0x79t
        0x7dt
        0x75t
        0x2at
        0x30t
        0x61t
        0x51t
        0x4ct
        0x54t
        0x50t
        0x46t
        0x51t
        0x3t
        0x50t
        0x46t
        0x50t
        0x50t
        0x4at
        0x4ct
        0x4dt
        0x3t
        0x47t
        0x42t
        0x57t
        0x42t
        0x3t
        0x4ft
        0x4ct
        0x44t
        0x44t
        0x46t
        0x47t
        0x3t
        0x63t
        0x3t
        0x7et
        0x7dt
        0x70t
        0x6at
        0x6bt
        0x25t
        0x7dt
        0x73t
        0x7et
        0x71t
        0x74t
        0x43t
        0x53t
        0x4et
        0x56t
        0x52t
        0x44t
        0x53t
        0x74t
        0x73t
        0x6dt
        0x55t
        0x5at
        0x5ft
        0x53t
        0x58t
        0x42t
        0x62t
        0x59t
        0x5dt
        0x53t
        0x58t
        0x25t
        0x2ct
        0x23t
        0x29t
        0x21t
        0x28t
        0x3ft
        0x19t
        0x24t
        0x20t
        0x28t
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/SY;)Z
    .locals 0

    .line 52456
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SY;->A05:Z

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/SY;Z)Z
    .locals 0

    .line 52457
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SY;->A05:Z

    return p1
.end method


# virtual methods
.method public final A8L(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 7

    .line 52458
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/SY;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 52459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A01:J

    .line 52460
    :cond_0
    const-wide/16 v1, -0x1

    const/16 v4, 0xe7

    const/16 v3, 0xb

    const/16 v0, 0x61

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0xdc

    const/16 v3, 0xb

    const/16 v0, 0x1a

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0xd2

    const/16 v3, 0xa

    const/16 v0, 0xd

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_2

    .line 52461
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A02:Ljava/lang/String;

    .line 52462
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A03:Ljava/lang/String;

    .line 52463
    invoke-virtual {p1, v6, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:J

    .line 52464
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A02:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 52465
    .local p0, "url":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A09:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/N9;->setUrl(Ljava/lang/String;)V

    .line 52466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/SA;->loadUrl(Ljava/lang/String;)V

    .line 52467
    return-void

    .line 52468
    :cond_1
    const/16 v2, 0xc7

    const/16 v1, 0xb

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 52469
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A02:Ljava/lang/String;

    .line 52470
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A03:Ljava/lang/String;

    .line 52471
    invoke-virtual {p2, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:J

    goto :goto_0
.end method

.method public final AB2(Z)V
    .locals 5

    .line 52472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->onPause()V

    .line 52473
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A04:Z

    if-eqz v0, :cond_0

    .line 52474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A04:Z

    .line 52475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    .line 52476
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->getFirstUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/NC;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/NC;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:J

    .line 52477
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NC;->A01(J)Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A01:J

    .line 52478
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NC;->A03(J)Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    .line 52479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->getResponseEndMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NC;->A04(J)Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    .line 52480
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->getDomContentLoadedMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NC;->A00(J)Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    .line 52481
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->getScrollReadyMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NC;->A05(J)Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    .line 52482
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->getLoadFinishMs()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NC;->A02(J)Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v2

    .line 52483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/NC;->A06(J)Lcom/facebook/ads/redexgen/X/NC;

    move-result-object v0

    .line 52484
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NC;->A07()Lcom/facebook/ads/redexgen/X/ND;

    move-result-object v4

    .line 52485
    .local p0, "sessionData":Lcom/facebook/ads/redexgen/X/ND;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SY;->A08:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A03:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ND;->A03()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8S(Ljava/lang/String;Ljava/util/Map;)V

    .line 52486
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa9

    const/16 v1, 0x1e

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x95

    const/16 v1, 0x14

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A01:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    const/16 v1, 0x16

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A03:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x4b

    const/16 v1, 0x18

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A04:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A00:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x63

    const/16 v1, 0x18

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A05:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    const/16 v1, 0x17

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A02:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/ND;->A06:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52489
    .end local p0    # "sessionData":Lcom/facebook/ads/redexgen/X/ND;
    :cond_0
    return-void
.end method

.method public final ABR(Z)V
    .locals 1

    .line 52490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->onResume()V

    .line 52491
    return-void
.end method

.method public final ADU(Landroid/os/Bundle;)V
    .locals 4

    .line 52492
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SY;->A02:Ljava/lang/String;

    const/16 v2, 0xd2

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52493
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 52494
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A07:Lcom/facebook/ads/redexgen/X/50;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A06:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0M(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 52495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NT;->A03(Landroid/webkit/WebView;)V

    .line 52496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A0B:Lcom/facebook/ads/redexgen/X/SA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SA;->destroy()V

    .line 52497
    return-void
.end method
