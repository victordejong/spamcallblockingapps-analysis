.class public final Lcom/facebook/ads/redexgen/X/9m;
.super Lcom/facebook/ads/redexgen/X/Ym;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MT;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/view/View;

.field public A02:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/XJ;

.field public A04:Lcom/facebook/ads/redexgen/X/M4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/redexgen/X/P9;

.field public A06:Lcom/facebook/ads/redexgen/X/Hi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A07:Z

.field public final A08:Landroid/widget/FrameLayout;

.field public final A09:Lcom/facebook/ads/redexgen/X/M9;

.field public final A0A:Lcom/facebook/ads/redexgen/X/PD;

.field public final A0B:Lcom/facebook/ads/redexgen/X/IB;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 20192
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9m;->A0F()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9m;->A0E()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O1;)V
    .locals 4

    .line 20193
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/Ym;-><init>(Lcom/facebook/ads/redexgen/X/O1;Z)V

    .line 20194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20195
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Z

    .line 20196
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 20197
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    .line 20198
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    .line 20199
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 20200
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20201
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20203
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A09()V

    .line 20204
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A09()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/M9;

    .line 20205
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A05()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    .line 20206
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Nv;->A00(Lcom/facebook/ads/redexgen/X/XJ;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 20207
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->A02(Lcom/facebook/ads/redexgen/X/O1;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    .line 20208
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->bringToFront()V

    .line 20209
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->A04(Lcom/facebook/ads/redexgen/X/O1;)Lcom/facebook/ads/redexgen/X/IB;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Lcom/facebook/ads/redexgen/X/IB;

    .line 20210
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0d()V

    .line 20211
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 20212
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/P9;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/P9;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A05:Lcom/facebook/ads/redexgen/X/P9;

    .line 20213
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/widget/FrameLayout;

    .line 20214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20215
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A07()V

    .line 20216
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9m;)Landroid/widget/FrameLayout;
    .locals 0

    .line 20217
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/M4;
    .locals 0

    .line 20218
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    return-object p0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/O1;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 8

    .line 20219
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A02()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/PD;

    .line 20220
    .local p0, "videoView":Lcom/facebook/ads/redexgen/X/PD;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A08()Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ym;->A0c(Lcom/facebook/ads/redexgen/X/M4;)I

    move-result v7

    .line 20221
    .local p1, "toolbarHeight":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A03()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 20222
    .local v5, "muteButton":Landroid/widget/ImageView;
    sget v3, Lcom/facebook/ads/redexgen/X/Ym;->A0D:I

    sget v2, Lcom/facebook/ads/redexgen/X/Ym;->A0D:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ym;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ym;->A0D:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 20223
    sget v1, Lcom/facebook/ads/redexgen/X/Ym;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ym;->A0E:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20224
    .local v5, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Ym;->A0C:I

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v7, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20225
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20226
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1U(Landroid/content/Context;)Z

    move-result v0

    const/16 v7, 0xd

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 20228
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20229
    .local v0, "simpleVideoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v1

    .line 20230
    .local v4, "adDetailsView":Lcom/facebook/ads/redexgen/X/Nf;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A0D(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20231
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 20232
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20233
    :goto_0
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/9m;->A02:Landroid/widget/ImageView;

    .line 20234
    invoke-virtual {p0, v5, v2}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20235
    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20236
    .end local v0    # "simpleVideoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "adDetailsView":Lcom/facebook/ads/redexgen/X/Nf;
    .end local v0
    :goto_1
    return-object v5

    .line 20237
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20238
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 20239
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20240
    .local v0, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20241
    invoke-virtual {p0, v5, v0}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20242
    invoke-virtual {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/PD;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 0

    .line 20243
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    return-object p0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/O1;)Lcom/facebook/ads/redexgen/X/IB;
    .locals 6

    .line 20244
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O1;->A0A()Lcom/facebook/ads/redexgen/X/IB;

    move-result-object v5

    .line 20245
    .local p0, "progressBarAnimation":Lcom/facebook/ads/redexgen/X/IB;
    sget v0, Lcom/facebook/ads/redexgen/X/Ym;->A09:I

    const/4 v4, -0x1

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/IB;->A09(II)V

    .line 20246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20247
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 20248
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/9m;->setUpPortraitAdDetails(Lcom/facebook/ads/redexgen/X/IB;)V

    .line 20249
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/O1;
    :goto_0
    return-object v5

    .line 20250
    :cond_0
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/9m;->setUpLandscapeAdDetails(Lcom/facebook/ads/redexgen/X/IB;)V

    goto :goto_0

    .line 20251
    :cond_1
    sget v3, Lcom/facebook/ads/redexgen/X/Ym;->A0H:I

    sget v2, Lcom/facebook/ads/redexgen/X/Ym;->A0H:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ym;->A0H:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ym;->A0H:I

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IB;->setPadding(IIII)V

    .line 20252
    sget v0, Lcom/facebook/ads/redexgen/X/Ym;->A0G:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20253
    .local p1, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20254
    invoke-virtual {p0, v5, v1}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/IB;
    .locals 0

    .line 20255
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Lcom/facebook/ads/redexgen/X/IB;

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/9m;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xd

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

    .line 20256
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/RewardData;

    move-result-object v3

    .line 20257
    .local p0, "rewardData":Lcom/facebook/ads/RewardData;
    if-nez v3, :cond_0

    .line 20258
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1P;->A06()Ljava/lang/String;

    move-result-object v6

    .line 20259
    .local v6, "title":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/MI;

    .line 20260
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v3

    const/4 v4, -0x1

    const/high16 v5, -0x1000000

    const/4 v7, 0x0

    .line 20261
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1P;->A05()Ljava/lang/String;

    move-result-object v8

    .line 20262
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1P;->A04()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0Q:Lcom/facebook/ads/redexgen/X/Lp;

    .line 20263
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/MI;-><init>(Lcom/facebook/ads/redexgen/X/XJ;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 20264
    .local v0, "messageAndTwoButtonView":Lcom/facebook/ads/redexgen/X/MI;
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/MI;->A02:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O2;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20265
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/MI;->A01:Landroid/widget/Button;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O3;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20266
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20267
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20268
    return-void

    .line 20269
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    .line 20270
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Lcom/facebook/ads/redexgen/X/1P;

    move-result-object v2

    .line 20271
    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/facebook/ads/RewardData;->getQuantity()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1P;->A07(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private A08()V
    .locals 2

    .line 20272
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20273
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0F()V

    .line 20274
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0a(Lcom/facebook/ads/redexgen/X/PP;)V

    .line 20275
    :cond_0
    return-void
.end method

.method private A09()V
    .locals 5

    .line 20276
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    if-nez v4, :cond_0

    .line 20277
    return-void

    .line 20278
    :cond_0
    const/16 v3, 0x190

    .line 20279
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarHeight()I

    move-result v0

    neg-int v2, v0

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hi;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Hi;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A06:Lcom/facebook/ads/redexgen/X/Hi;

    .line 20280
    return-void
.end method

.method private A0A()V
    .locals 9

    .line 20281
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 20282
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0n:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 20283
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20284
    return-void

    .line 20285
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20286
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 20287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 20288
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Lcom/facebook/ads/redexgen/X/IB;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/widget/FrameLayout;

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Lh;->A0e([Landroid/view/View;)V

    .line 20289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 20290
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9m;->A05:Lcom/facebook/ads/redexgen/X/P9;

    .line 20291
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getCtaButton()Lcom/facebook/ads/redexgen/X/a7;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const-string v1, "FxfG3zWETYKhpCEsP1aqGpvXk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v7, v3}, Lcom/facebook/ads/redexgen/X/P9;->A03(Lcom/facebook/ads/redexgen/X/a7;)Landroid/util/Pair;

    move-result-object v2

    .line 20292
    .local v0, "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    .line 20293
    sget-object v1, Lcom/facebook/ads/redexgen/X/O4;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/P8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P8;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    .line 20294
    .end local v0    # "endCard":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/internal/view/rewardedvideo/EndCardController$EndCardViewType;Landroid/view/View;>;"
    :goto_0
    return-void

    .line 20295
    :cond_2
    new-array v1, v6, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0e([Landroid/view/View;)V

    .line 20296
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20297
    .local v1, "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Ym;->A0F:I

    sget v2, Lcom/facebook/ads/redexgen/X/Ym;->A0F:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ym;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ym;->A0F:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 20299
    .end local v1    # "infoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Nf;->setVisibility(I)V

    .line 20300
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20301
    .local v0, "screenshotParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20302
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/9m;->A02:Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 20303
    const/16 v7, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const-string v1, "RenllHEOEhUEXuJGVHYKXOkiOEbWR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Ez9H6xpGZ9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20304
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v2

    .line 20305
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A0C(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Nf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20306
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_5

    .line 20307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ym;->A0c(Lcom/facebook/ads/redexgen/X/M4;)I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    invoke-virtual {v3, v4, v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20308
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->getId()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20309
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20310
    goto/16 :goto_0

    .line 20311
    :cond_5
    sget v1, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    invoke-virtual {v3, v4, v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const-string v1, "KicgKgsrHX1lzbvbA0fubHpFySDNt"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "T8uqPR7oq7Ja3xFAu7WdainZogpwN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 20313
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ym;->A0c(Lcom/facebook/ads/redexgen/X/M4;)I

    move-result v0

    invoke-virtual {v3, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20314
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->getId()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method private A0B()V
    .locals 3

    .line 20315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->A0g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20316
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    const/16 v1, 0xb

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/PD;->A0c(ZZI)V

    .line 20317
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    if-eqz v0, :cond_1

    .line 20318
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/M4;->A06(Lcom/facebook/ads/redexgen/X/MT;)V

    .line 20319
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9m;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Z

    .line 20320
    return-void

    .line 20321
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    if-eqz v0, :cond_2

    .line 20322
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 20323
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 20324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Lcom/facebook/ads/redexgen/X/IB;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 20325
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 20326
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20327
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private A0C()V
    .locals 7

    .line 20328
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A07:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0X(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 20330
    :goto_0
    return-void

    .line 20331
    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Lcom/facebook/ads/redexgen/X/M9;

    const/16 v5, 0x49

    const/16 v4, 0x2d

    const/16 v3, 0x3a

    sget-object v1, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const-string v1, "Zliat4mU5XNL19AyOd3jcD22cYPYEARz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/9m;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/M9;->A3t(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A0D()V
    .locals 3

    .line 20332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A06:Lcom/facebook/ads/redexgen/X/Hi;

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 20333
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A3P(ZZ)V

    .line 20334
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20335
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/Hi;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A3P(ZZ)V

    .line 20336
    :cond_1
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x76

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9m;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x35t
        -0x3ct
        -0x27t
        -0x38t
        -0x1et
        -0x2at
        -0x29t
        -0x3ct
        -0x2bt
        -0x29t
        -0x34t
        -0x2ft
        -0x36t
        -0x1et
        -0x3ct
        -0x2ft
        -0x34t
        -0x30t
        -0x3ct
        -0x29t
        -0x34t
        -0x2et
        -0x2ft
        -0x2at
        -0x1et
        -0x2dt
        -0x31t
        -0x3ct
        -0x24t
        -0x38t
        -0x39t
        -0x33t
        -0x30t
        -0x2ct
        -0x3at
        -0x20t
        -0x2dt
        -0x3at
        -0x28t
        -0x3et
        -0x2dt
        -0x3bt
        -0x20t
        -0x2ct
        -0x3ct
        -0x2dt
        -0x3at
        -0x3at
        -0x31t
        -0x20t
        -0x2ct
        -0x37t
        -0x30t
        -0x28t
        -0x31t
        -0x35t
        -0x4bt
        -0x39t
        -0x2dt
        -0x47t
        -0x3et
        -0x48t
        -0x2dt
        -0x49t
        -0x4bt
        -0x3at
        -0x48t
        -0x2dt
        -0x39t
        -0x44t
        -0x3dt
        -0x35t
        -0x3et
        -0x56t
        -0x4at
        -0x4ct
        0x75t
        -0x53t
        -0x58t
        -0x56t
        -0x54t
        -0x57t
        -0x4at
        -0x4at
        -0x4et
        0x75t
        -0x58t
        -0x55t
        -0x46t
        0x75t
        -0x50t
        -0x4bt
        -0x45t
        -0x54t
        -0x47t
        -0x46t
        -0x45t
        -0x50t
        -0x45t
        -0x50t
        -0x58t
        -0x4dt
        0x75t
        -0x53t
        -0x50t
        -0x4bt
        -0x50t
        -0x46t
        -0x51t
        -0x5at
        -0x58t
        -0x56t
        -0x45t
        -0x50t
        -0x43t
        -0x50t
        -0x45t
        -0x40t
    .end array-data
.end method

.method public static A0F()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QUFYIN7o4MSHfMbcaqgxGqdg8oING"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Qixa92rp7KQSHPhBId3L5m9SXc6gxNRP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TUKhftCqFUFv9xNbjbPA3CLhBIkdW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aNiMBj1VMT3xct4Co4hWzqTsg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QYSCqyZ4CS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VjIbmM2G6pRRrYhuKIf6SOzC6eQUF7eo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KFJXOgKoK7JNlCBWMf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dachHr6cLZKwbIDqTeRsc0FgbmZCJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/9m;)V
    .locals 0

    .line 20337
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0C()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/9m;Z)Z
    .locals 0

    .line 20338
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Z

    return p1
.end method

.method private setUpLandscapeAdDetails(Lcom/facebook/ads/redexgen/X/IB;)V
    .locals 3

    .line 20412
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->removeAllViews()V

    .line 20413
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->removeView(Landroid/view/View;)V

    .line 20414
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A0D(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Nf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20415
    sget v2, Lcom/facebook/ads/redexgen/X/cj;->A0G:I

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20416
    .local p0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20417
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/9m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20418
    return-void
.end method

.method private setUpPortraitAdDetails(Lcom/facebook/ads/redexgen/X/IB;)V
    .locals 3

    .line 20419
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->removeAllViews()V

    .line 20420
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->removeView(Landroid/view/View;)V

    .line 20421
    sget v1, Lcom/facebook/ads/redexgen/X/cj;->A0H:I

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 20422
    .local p0, "progressBarLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/cj;->A0I:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 20423
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/facebook/ads/redexgen/X/Nf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20424
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A0D(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Nf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20425
    return-void
.end method


# virtual methods
.method public final A0I(Lcom/facebook/ads/redexgen/X/7w;)V
    .locals 0

    .line 20339
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nx;->A0I(Lcom/facebook/ads/redexgen/X/7w;)V

    .line 20340
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0A()V

    .line 20341
    return-void
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 5

    .line 20342
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nx;->A0J(Lcom/facebook/ads/redexgen/X/7s;)V

    .line 20343
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lf;->A00()I

    move-result v1

    .line 20344
    .local p0, "currentPosMs":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getDuration()I

    move-result v4

    .line 20345
    .local p1, "videoLengthMs":I
    sub-int/2addr v4, v1

    .line 20346
    .local v1, "remainingVideoTimeInMillis":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v3, 0xbb8

    sget-object v1, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const-string v1, "xiBnzSw2W6K3rvYkwdUGMYXv5m3ZqRWR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_1

    .line 20347
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20348
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0G()V

    .line 20349
    :cond_1
    return-void
.end method

.method public final A0U()V
    .locals 1

    .line 20350
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Nx;->A0U()V

    .line 20351
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A08()V

    .line 20352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    .line 20353
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20354
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ym;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 20355
    if-nez p5, :cond_0

    .line 20356
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 20357
    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20358
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0D()V

    .line 20359
    :cond_1
    const/16 v2, 0x37

    const/16 v1, 0x12

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20360
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0A()V

    .line 20361
    :cond_2
    const/16 v2, 0x1f

    const/16 v1, 0x18

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20362
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0B()V

    .line 20363
    :cond_3
    return-void
.end method

.method public final A0a()Z
    .locals 1

    .line 20364
    const/4 v0, 0x1

    return v0
.end method

.method public final A0b(Z)Z
    .locals 5

    .line 20365
    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const-string v1, "IfEmWBIDBUNw5tL7YhS4lNzldGhzw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "8CoNQoXVMdzgwU1krh95bRLsSKKH4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 20366
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0B()V

    .line 20367
    return v4

    .line 20368
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const-string v1, "YRUjLZqfjvY5EOxU383ujQcW8j7gUgor"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20369
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A08:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0X(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 20370
    return v4

    .line 20371
    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0d()V
    .locals 2

    .line 20372
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ym;->A0d()V

    .line 20373
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20374
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A8K(Lcom/facebook/ads/redexgen/X/PD;)V

    .line 20375
    :cond_0
    return-void
.end method

.method public final A0e()Z
    .locals 1

    .line 20376
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdInfo()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v0

    return v0
.end method

.method public final A9M()V
    .locals 3

    .line 20377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Z

    .line 20378
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A03:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0xf

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 20379
    return-void
.end method

.method public final A9N()V
    .locals 0

    .line 20380
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0C()V

    .line 20381
    return-void
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 20382
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20383
    const/4 v0, 0x1

    return v0

    .line 20384
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 20385
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ym;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20387
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne v0, v5, :cond_5

    .line 20388
    .local p0, "isPortrait":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_2

    .line 20389
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20390
    .local p1, "simpleVideoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v5, :cond_1

    .line 20391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Lcom/facebook/ads/redexgen/X/IB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9m;->setUpPortraitAdDetails(Lcom/facebook/ads/redexgen/X/IB;)V

    .line 20392
    const/16 v0, 0xd

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20393
    :goto_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Lcom/facebook/ads/redexgen/X/PD;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const-string v1, "DO7In235juv9PXUKV934zSaX5akZYCRG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/PD;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20394
    .end local p1    # "simpleVideoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local p0    # "isPortrait":Z
    .end local p1
    :cond_0
    :goto_2
    return-void

    .line 20395
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Lcom/facebook/ads/redexgen/X/IB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9m;->setUpLandscapeAdDetails(Lcom/facebook/ads/redexgen/X/IB;)V

    .line 20396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v6, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20397
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 20398
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 20399
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9m;->A02:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/9m;->A0E:[Ljava/lang/String;

    const-string v1, "g7uXpIwsYCOJvIzf4Zz9qplJQO82wATZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v6, :cond_3

    .line 20400
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20401
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Nf;->setVisibility(I)V

    .line 20402
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 20403
    .local p1, "screenshotParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v3

    .line 20404
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A0C(Landroid/view/View;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Nf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20405
    if-eqz v5, :cond_4

    .line 20406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ym;->A0c(Lcom/facebook/ads/redexgen/X/M4;)I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    invoke-virtual {v2, v4, v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20407
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nf;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20408
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 20409
    :cond_4
    sget v1, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    invoke-virtual {v2, v4, v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 20410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    .line 20411
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
