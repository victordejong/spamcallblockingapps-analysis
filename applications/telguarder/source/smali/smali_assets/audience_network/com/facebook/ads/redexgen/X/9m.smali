.class public final Lcom/facebook/ads/redexgen/X/9m;
.super Lcom/facebook/ads/redexgen/X/Rs;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MO;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public A03:Lcom/facebook/ads/redexgen/X/M6;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/P4;

.field public A05:Lcom/facebook/ads/redexgen/X/Hb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A06:Z

.field public final A07:Landroid/widget/FrameLayout;

.field public final A08:Lcom/facebook/ads/redexgen/X/M7;

.field public final A09:Lcom/facebook/ads/redexgen/X/Oj;

.field public final A0A:Lcom/facebook/ads/redexgen/X/I6;

.field public final A0B:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 20318
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9m;->A0F()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9m;->A0E()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;)V
    .locals 4

    .line 20319
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/Rs;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V

    .line 20320
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20321
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9m;->A06:Z

    .line 20322
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 20323
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/M6;

    .line 20324
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    .line 20325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 20326
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20327
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20329
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A09()V

    .line 20330
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A09()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Lcom/facebook/ads/redexgen/X/M7;

    .line 20331
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    .line 20332
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Nq;->A00(Lcom/facebook/ads/redexgen/X/Wm;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 20333
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->A02(Lcom/facebook/ads/redexgen/X/Nw;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    .line 20334
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->bringToFront()V

    .line 20335
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->A04(Lcom/facebook/ads/redexgen/X/Nw;)Lcom/facebook/ads/redexgen/X/I6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/I6;

    .line 20336
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0d()V

    .line 20337
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9m;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 20338
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/P4;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/P4;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/P4;

    .line 20339
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Landroid/widget/FrameLayout;

    .line 20340
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A07()V

    .line 20341
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9m;)Landroid/widget/FrameLayout;
    .locals 0

    .line 20342
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/M6;
    .locals 0

    .line 20343
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/M6;

    return-object p0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Nw;)Lcom/facebook/ads/redexgen/X/Oj;
    .locals 7

    .line 20344
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A02()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Oj;

    .line 20345
    .local p0, "videoView":Lcom/facebook/ads/redexgen/X/Oj;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A0c(Lcom/facebook/ads/redexgen/X/M6;)I

    move-result v6

    .line 20346
    .local p1, "toolbarHeight":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A03()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 20347
    .local v4, "muteButton":Landroid/widget/ImageView;
    sget v5, Lcom/facebook/ads/redexgen/X/Rs;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/Rs;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/Rs;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rs;->A0C:I

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 20348
    sget v1, Lcom/facebook/ads/redexgen/X/Rs;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rs;->A0D:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20349
    .local v4, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Rs;->A0B:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v6, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20350
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20351
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20352
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20353
    .local v0, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20354
    invoke-virtual {p0, v4, v1}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20355
    invoke-virtual {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Oj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20356
    return-object v4
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/Oj;
    .locals 0

    .line 20357
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    return-object p0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Nw;)Lcom/facebook/ads/redexgen/X/I6;
    .locals 6

    .line 20358
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A0A()Lcom/facebook/ads/redexgen/X/I6;

    move-result-object v5

    .line 20359
    .local p0, "progressBarAnimation":Lcom/facebook/ads/redexgen/X/I6;
    sget v0, Lcom/facebook/ads/redexgen/X/Rs;->A08:I

    const/4 v4, -0x1

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/I6;->A07(II)V

    .line 20360
    sget v3, Lcom/facebook/ads/redexgen/X/Rs;->A0G:I

    sget v2, Lcom/facebook/ads/redexgen/X/Rs;->A0G:I

    sget v1, Lcom/facebook/ads/redexgen/X/Rs;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rs;->A0G:I

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I6;->setPadding(IIII)V

    .line 20361
    sget v0, Lcom/facebook/ads/redexgen/X/Rs;->A0F:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20362
    .local p1, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20363
    invoke-virtual {p0, v5, v1}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20364
    return-object v5
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/I6;
    .locals 0

    .line 20365
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/I6;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9m;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x55

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A07()V
    .locals 11

    .line 20366
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/RewardData;

    move-result-object v3

    .line 20367
    .local p0, "rewardData":Lcom/facebook/ads/RewardData;
    if-nez v3, :cond_0

    .line 20368
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1P;->A05()Ljava/lang/String;

    move-result-object v6

    .line 20369
    .local v6, "title":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/MG;

    .line 20370
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v3

    const/4 v4, -0x1

    const/high16 v5, -0x1000000

    const/4 v7, 0x0

    .line 20371
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1P;->A04()Ljava/lang/String;

    move-result-object v8

    .line 20372
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1P;->A03()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0P:Lcom/facebook/ads/redexgen/X/Lr;

    .line 20373
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/MG;-><init>(Lcom/facebook/ads/redexgen/X/Wm;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 20374
    .local v0, "messageAndTwoButtonView":Lcom/facebook/ads/redexgen/X/MG;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/MG;->A02:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nx;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20375
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/MG;->A01:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ny;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ny;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20376
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20377
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20378
    return-void

    .line 20379
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    .line 20380
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v2

    .line 20381
    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getQuantity()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1P;->A06(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private A08()V
    .locals 2

    .line 20382
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20383
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JG;->A0F()V

    .line 20384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0b(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 20385
    :cond_0
    return-void
.end method

.method private A09()V
    .locals 5

    .line 20386
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/M6;

    if-nez v4, :cond_0

    .line 20387
    return-void

    .line 20388
    :cond_0
    const/16 v3, 0x190

    .line 20389
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/M6;->getToolbarHeight()I

    move-result v0

    neg-int v2, v0

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Hb;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A05:Lcom/facebook/ads/redexgen/X/Hb;

    .line 20390
    return-void
.end method

.method private A0A()V
    .locals 6

    .line 20391
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 20392
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JK;
    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0o:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 20393
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20394
    return-void

    .line 20395
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20396
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 20397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 20398
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/I6;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Landroid/widget/FrameLayout;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Lj;->A0b([Landroid/view/View;)V

    .line 20399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0N(Landroid/view/View;)V

    .line 20400
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/P4;

    .line 20401
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getCtaButton()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P4;->A03(Lcom/facebook/ads/redexgen/X/Ry;)Landroid/util/Pair;

    move-result-object v2

    .line 20402
    .local v0, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    .line 20403
    sget-object v1, Lcom/facebook/ads/redexgen/X/Nz;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/P3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P3;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_1

    .line 20404
    .end local v1
    :goto_0
    return-void

    .line 20405
    :cond_1
    new-array v1, v5, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0b([Landroid/view/View;)V

    .line 20406
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20407
    .local v1, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Rs;->A0E:I

    sget v2, Lcom/facebook/ads/redexgen/X/Rs;->A0E:I

    sget v1, Lcom/facebook/ads/redexgen/X/Rs;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rs;->A0E:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 20409
    .end local v1    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Na;->setVisibility(I)V

    .line 20410
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20411
    .local v1, "screenshotParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A0c(Lcom/facebook/ads/redexgen/X/M6;)I

    move-result v0

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20412
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->getId()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20414
    goto :goto_0
.end method

.method private A0B()V
    .locals 4

    .line 20415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20416
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    const/16 v1, 0xb

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;->A0d(ZZI)V

    .line 20417
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/M6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9m;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0D:[Ljava/lang/String;

    const-string v1, "dPRZIP1flRB5AOlRtGehWVGAH35N7oE8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 20418
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 20419
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 20420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/I6;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 20421
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 20422
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20423
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A06:Z

    .line 20425
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 20426
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PF;->A07:Lcom/facebook/ads/redexgen/X/PF;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Y(Lcom/facebook/ads/redexgen/X/PF;)V

    .line 20428
    :goto_0
    return-void

    .line 20429
    :cond_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Lcom/facebook/ads/redexgen/X/M7;

    const/16 v4, 0x49

    const/16 v3, 0x2d

    sget-object v1, Lcom/facebook/ads/redexgen/X/9m;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0D:[Ljava/lang/String;

    const-string v1, "2HRlgj592lhZ36zLYPjOeDQfm4DNKBCg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "cktwBvETCglainEQrIW5umJDnnPhXUcl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x79

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/9m;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D()V
    .locals 6

    .line 20430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A05:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 20431
    invoke-virtual {v0, v4, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A3L(ZZ)V

    .line 20432
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/Hb;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20433
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/Hb;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0D:[Ljava/lang/String;

    const-string v1, "1INNplzEPPEJhw482VYN3vhqC3uVrete"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4, v5}, Lcom/facebook/ads/redexgen/X/Hb;->A3L(ZZ)V

    .line 20434
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x76

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9m;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x9t
        0x2t
        0x17t
        0x6t
        0x20t
        0x14t
        0x15t
        0x2t
        0x13t
        0x15t
        0xat
        0xft
        0x8t
        0x20t
        0x2t
        0xft
        0xat
        0xet
        0x2t
        0x15t
        0xat
        0x10t
        0xft
        0x14t
        0x20t
        0x11t
        0xdt
        0x2t
        0x1at
        0x6t
        0x5t
        -0x52t
        -0x4ft
        -0x4bt
        -0x59t
        -0x3ft
        -0x4ct
        -0x59t
        -0x47t
        -0x5dt
        -0x4ct
        -0x5at
        -0x3ft
        -0x4bt
        -0x5bt
        -0x4ct
        -0x59t
        -0x59t
        -0x50t
        -0x3ft
        -0x4bt
        -0x56t
        -0x4ft
        -0x47t
        -0x50t
        0x10t
        -0x6t
        0xct
        0x18t
        -0x2t
        0x7t
        -0x3t
        0x18t
        -0x4t
        -0x6t
        0xbt
        -0x3t
        0x18t
        0xct
        0x1t
        0x8t
        0x10t
        0x7t
        0x31t
        0x3dt
        0x3bt
        -0x4t
        0x34t
        0x2ft
        0x31t
        0x33t
        0x30t
        0x3dt
        0x3dt
        0x39t
        -0x4t
        0x2ft
        0x32t
        0x41t
        -0x4t
        0x37t
        0x3ct
        0x42t
        0x33t
        0x40t
        0x41t
        0x42t
        0x37t
        0x42t
        0x37t
        0x2ft
        0x3at
        -0x4t
        0x34t
        0x37t
        0x3ct
        0x37t
        0x41t
        0x36t
        0x2dt
        0x2ft
        0x31t
        0x42t
        0x37t
        0x44t
        0x37t
        0x42t
        0x47t
    .end array-data
.end method

.method public static A0F()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zra6hnpaifP7bxfZB5bQOHnqie2tQjg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wy9og3M9LeWlDzkU0RS7zgtaq3xQKlMR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jyAiwm88v9hsYzrfl9gFIABQTfRULZfl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Wwy1p0nUO1H5ggrsb6VvEsAvpBZyxSvp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wjN7zQjrZyyYli8cgu97rk5B2y3BycTh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DSxnyYt0igg0K0GbJ5jSMl2rvJzineXI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "irrLwQMNjn2DglpbBC8hfvG7oGwbzPRC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9jAewdJckPVrzkqluL1z0QkIRDh51Ovv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/9m;)V
    .locals 0

    .line 20435
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0C()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/9m;Z)Z
    .locals 0

    .line 20436
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9m;->A06:Z

    return p1
.end method


# virtual methods
.method public final A0I(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 0

    .line 20437
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ns;->A0I(Lcom/facebook/ads/redexgen/X/7w;)V

    .line 20438
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0A()V

    .line 20439
    return-void
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 3

    .line 20440
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ns;->A0J(Lcom/facebook/ads/redexgen/X/7s;)V

    .line 20441
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ld;->A00()I

    move-result v2

    .line 20442
    .local p0, "currentPosMs":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getDuration()I

    move-result v1

    .line 20443
    .local p1, "videoLengthMs":I
    sub-int/2addr v1, v2

    .line 20444
    .local v2, "remainingVideoTimeInMillis":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbb8

    if-ge v1, v0, :cond_0

    .line 20445
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JG;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20446
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JG;->A0G()V

    .line 20447
    :cond_0
    return-void
.end method

.method public final A0U()V
    .locals 1

    .line 20448
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A0U()V

    .line 20449
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A08()V

    .line 20450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/M6;

    .line 20451
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20452
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Rs;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 20453
    if-nez p5, :cond_0

    .line 20454
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 20455
    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20456
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0D()V

    .line 20457
    :cond_1
    const/16 v2, 0x37

    const/16 v1, 0x12

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20458
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0A()V

    .line 20459
    :cond_2
    const/16 v2, 0x1f

    const/16 v1, 0x18

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20460
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0B()V

    .line 20461
    :cond_3
    return-void
.end method

.method public final A0a()Z
    .locals 1

    .line 20462
    const/4 v0, 0x1

    return v0
.end method

.method public final A0b(Z)Z
    .locals 5

    .line 20463
    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A06:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20464
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0B()V

    .line 20465
    return v4

    .line 20466
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9m;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0D:[Ljava/lang/String;

    const-string v1, "EPxoCM5ZHywZjaL2iUUSFMk3WFd5m6XL"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "lTBjgNJWw5Z4CB7iubQhWZLtOmC1X7yD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 20467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PF;->A08:Lcom/facebook/ads/redexgen/X/PF;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Y(Lcom/facebook/ads/redexgen/X/PF;)V

    .line 20468
    return v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20469
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final A0d()V
    .locals 2

    .line 20470
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Rs;->A0d()V

    .line 20471
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20472
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A8M(Lcom/facebook/ads/redexgen/X/Oj;)V

    .line 20473
    :cond_0
    return-void
.end method

.method public final A0e()Z
    .locals 1

    .line 20474
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 20475
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20476
    const/4 v0, 0x1

    return v0

    .line 20477
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 20478
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Rs;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20479
    return-void
.end method
