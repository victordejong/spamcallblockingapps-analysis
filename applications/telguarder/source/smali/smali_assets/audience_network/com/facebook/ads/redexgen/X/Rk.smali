.class public final Lcom/facebook/ads/redexgen/X/Rk;
.super Lcom/facebook/ads/redexgen/X/Ns;
.source ""


# static fields
.field public static A0P:Lcom/facebook/ads/redexgen/X/Rk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A0Q:[B

.field public static A0R:[Ljava/lang/String;

.field public static final A0S:I

.field public static final A0T:I

.field public static final A0U:I

.field public static final A0V:I

.field public static final A0W:I


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/view/View;

.field public A07:Landroid/widget/LinearLayout;

.field public A08:Landroid/widget/LinearLayout;

.field public A09:Landroid/widget/TextView;

.field public A0A:Lcom/facebook/ads/redexgen/X/16;

.field public A0B:Lcom/facebook/ads/redexgen/X/N9;

.field public A0C:Lcom/facebook/ads/redexgen/X/NA;

.field public A0D:Lcom/facebook/ads/redexgen/X/SA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0E:Lcom/facebook/ads/redexgen/X/Nw;

.field public A0F:Lcom/facebook/ads/redexgen/X/O5;

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public final A0L:Landroid/view/View;

.field public final A0M:Lcom/facebook/ads/redexgen/X/0f;

.field public final A0N:Lcom/facebook/ads/redexgen/X/JK;

.field public final A0O:Lcom/facebook/ads/redexgen/X/I6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 50358
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rk;->A0L()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rk;->A0K()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rk;->A0U:I

    .line 50359
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rk;->A0S:I

    .line 50360
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rk;->A0W:I

    .line 50361
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Rk;->A0T:I

    .line 50362
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rk;->A0V:I

    .line 50363
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rk;->A0P:Lcom/facebook/ads/redexgen/X/Rk;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;)V
    .locals 10

    .line 50364
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Ns;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V

    .line 50365
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Rk;->A01:I

    .line 50366
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0G:Z

    .line 50367
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0I:Z

    .line 50368
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0K:Z

    .line 50369
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0J:Z

    .line 50370
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    .line 50371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0A:Lcom/facebook/ads/redexgen/X/16;

    .line 50372
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0N:Lcom/facebook/ads/redexgen/X/JK;

    .line 50373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A0A()Lcom/facebook/ads/redexgen/X/I6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    .line 50374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    if-eqz v0, :cond_0

    .line 50375
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50376
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A03()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0L:Landroid/view/View;

    .line 50377
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v3

    .line 50378
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v4

    .line 50379
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v5

    .line 50380
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 50381
    invoke-static/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0M:Lcom/facebook/ads/redexgen/X/0f;

    .line 50382
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    .line 50383
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    .line 50384
    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Nq;->A00(Lcom/facebook/ads/redexgen/X/Wm;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 50385
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Rk;->setupLayoutConfiguration(Z)V

    .line 50386
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0G()V

    .line 50387
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0C()V

    .line 50388
    new-instance v2, Lcom/facebook/ads/redexgen/X/Rp;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Rp;-><init>(Lcom/facebook/ads/redexgen/X/Rk;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Rk;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50389
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0J()V

    .line 50390
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Rk;)F
    .locals 0

    .line 50391
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Rk;F)F
    .locals 0

    .line 50392
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A00:F

    return p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Rk;)Landroid/view/View;
    .locals 0

    .line 50393
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/0f;
    .locals 0

    .line 50394
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0M:Lcom/facebook/ads/redexgen/X/0f;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/JK;
    .locals 0

    .line 50395
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0N:Lcom/facebook/ads/redexgen/X/JK;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/N9;
    .locals 0

    .line 50396
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0B:Lcom/facebook/ads/redexgen/X/N9;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/NA;
    .locals 0

    .line 50397
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0C:Lcom/facebook/ads/redexgen/X/NA;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/SA;
    .locals 0

    .line 50398
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0D:Lcom/facebook/ads/redexgen/X/SA;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Nw;
    .locals 0

    .line 50399
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/O5;
    .locals 0

    .line 50400
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0F:Lcom/facebook/ads/redexgen/X/O5;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rk;->A0Q:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const-string v1, "BAn7g4Tg6kNh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "sSvO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x22

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B()V
    .locals 3

    .line 50401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A08:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A08:Landroid/widget/LinearLayout;

    .line 50403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0T(Landroid/view/View;Landroid/content/Context;)V

    .line 50404
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A02:I

    div-int/lit8 v2, v0, 0x4

    :goto_0
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50405
    .local p0, "descriptionOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50407
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A08:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Rk;->addView(Landroid/view/View;I)V

    .line 50408
    return-void

    .line 50409
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A02:I

    div-int/lit8 v2, v0, 0x5

    goto :goto_0
.end method

.method private A0C()V
    .locals 2

    .line 50410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    .line 50412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50414
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0H()V

    .line 50415
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 50416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rk;->addView(Landroid/view/View;)V

    .line 50417
    return-void
.end method

.method private A0D()V
    .locals 5

    .line 50418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0L:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50419
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50420
    sget v1, Lcom/facebook/ads/redexgen/X/Ns;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ns;->A09:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50421
    .local p0, "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50422
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50423
    sget v3, Lcom/facebook/ads/redexgen/X/Ns;->A08:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Rk;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ns;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ns;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 50424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0L:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Rk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50425
    .end local p0    # "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0E()V
    .locals 4

    .line 50426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    if-eqz v0, :cond_0

    .line 50427
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50428
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    sget v0, Lcom/facebook/ads/redexgen/X/Rk;->A0V:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/I6;->setPadding(IIII)V

    .line 50429
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    sget v0, Lcom/facebook/ads/redexgen/X/Rk;->A0T:I

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/I6;->A07(II)V

    .line 50430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/I6;->setTranslationY(F)V

    .line 50431
    sget v0, Lcom/facebook/ads/redexgen/X/Rk;->A0U:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50432
    .local p0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0H:Z

    if-eqz v0, :cond_1

    .line 50433
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50434
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Rk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50435
    .end local p0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 50436
    :cond_1
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private A0F()V
    .locals 2

    .line 50437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v1

    .line 50438
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M6;
    if-nez v1, :cond_0

    .line 50439
    return-void

    .line 50440
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0H:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/M6;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setPageDetailsVisible(Z)V

    .line 50441
    return-void

    .line 50442
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0G()V
    .locals 5

    .line 50443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    .line 50444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50446
    const/4 v4, -0x2

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50447
    .local p0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Rk;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 50449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    .line 50450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50451
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 50452
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/1I;->A05(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50453
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50454
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 50455
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50456
    .local v0, "descriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50457
    sget v2, Lcom/facebook/ads/redexgen/X/Rk;->A0W:I

    div-int/lit8 v1, v2, 0x2

    .line 50458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    if-nez v0, :cond_0

    move v0, v2

    .line 50459
    :goto_0
    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 50460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Rk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50462
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    .line 50463
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A03()Ljava/lang/String;

    move-result-object v3

    .line 50464
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ro;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Ro;-><init>(Lcom/facebook/ads/redexgen/X/Rk;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/O5;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O5;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/Nd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0F:Lcom/facebook/ads/redexgen/X/O5;

    .line 50465
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0F:Lcom/facebook/ads/redexgen/X/O5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0I(ILandroid/view/View;)V

    .line 50466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0F:Lcom/facebook/ads/redexgen/X/O5;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Rk;->addView(Landroid/view/View;)V

    .line 50467
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0I()V

    .line 50468
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0B()V

    .line 50469
    return-void

    .line 50470
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Rk;->A0U:I

    goto :goto_0
.end method

.method private A0H()V
    .locals 5

    .line 50471
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A03:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50472
    .local p0, "browserParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 50473
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50474
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const-string v1, "lVu96jIJ4wtN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "vEsO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 50476
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A03:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 50477
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 50478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50479
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const-string v1, "ao8FhOByUXKbyI2dbjVU10hQSvAA73UK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "1fPkz4yBU6BXLdgQ7SVXdDzzX5ZOz4LN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 50480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50481
    return-void
.end method

.method private A0I()V
    .locals 3

    .line 50482
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A02:I

    div-int/lit8 v1, v0, 0x4

    :goto_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50483
    .local p0, "ctaButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50484
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50485
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 50486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0F:Lcom/facebook/ads/redexgen/X/O5;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/O5;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50487
    return-void

    .line 50488
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A02:I

    div-int/lit8 v1, v0, 0x5

    goto :goto_0
.end method

.method private A0J()V
    .locals 0

    .line 50489
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0E()V

    .line 50490
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0D()V

    .line 50491
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0F()V

    .line 50492
    return-void
.end method

.method public static A0K()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rk;->A0Q:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x51t
    .end array-data
.end method

.method public static A0L()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fr3Y9tf6ePgTPq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pEcG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X6n0DjY1D3c56kEYNT7NkudbHULcUpi8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xLfqb7j3EStc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2nglUwJ7J1gVDM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1eQzmRPEbuFcZFemJlVYaDXjMdIAS51D"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mnsD3rfSZRPYnMaeA3V0PZWjFbonJuRI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JvQjcWyuZKXxmxTpCuNSfYxSgxmPRmOD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Rk;)V
    .locals 0

    .line 50493
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0H()V

    return-void
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/Rk;Ljava/lang/String;)V
    .locals 0

    .line 50494
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rk;->A0P(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/Rk;Z)V
    .locals 0

    .line 50495
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rk;->A0Q(Z)V

    return-void
.end method

.method private A0P(Ljava/lang/String;)V
    .locals 4

    .line 50496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0D:Lcom/facebook/ads/redexgen/X/SA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50497
    new-instance v3, Lcom/facebook/ads/redexgen/X/Rm;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/Rm;-><init>(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 50498
    .local p0, "browserListener":Lcom/facebook/ads/redexgen/X/NH;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A7i()V

    .line 50500
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    .line 50501
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J5;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    .line 50502
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 50503
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/NH;)V

    .line 50504
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0D:Lcom/facebook/ads/redexgen/X/SA;

    .line 50505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0D:Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Rk;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/SA;)V

    .line 50506
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50507
    .local p1, "webViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3f666666    # 0.9f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50508
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0D:Lcom/facebook/ads/redexgen/X/SA;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0D:Lcom/facebook/ads/redexgen/X/SA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SA;->loadUrl(Ljava/lang/String;)V

    .line 50510
    return-void

    .line 50511
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    .line 50512
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/NH;)V

    goto :goto_0
.end method

.method private A0Q(Z)V
    .locals 14

    .line 50513
    move-object v4, p0

    iput-boolean p1, v4, Lcom/facebook/ads/redexgen/X/Rk;->A0H:Z

    .line 50514
    new-instance v2, Lcom/facebook/ads/redexgen/X/Rl;

    invoke-direct {v2, v4, p1}, Lcom/facebook/ads/redexgen/X/Rl;-><init>(Lcom/facebook/ads/redexgen/X/Rk;Z)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v4, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Rk;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50515
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0A(III)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    const/4 v7, 0x2

    const/4 v12, 0x0

    if-eqz p1, :cond_9

    .line 50516
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Rk;->A0F:Lcom/facebook/ads/redexgen/X/O5;

    new-array v1, v7, [F

    .line 50517
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/O5;->getY()F

    move-result v0

    aput v0, v1, v12

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Rk;->A03:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    aput v0, v1, v13

    .line 50518
    invoke-static {v2, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 50519
    .local v5, "ctaTransAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    new-array v1, v7, [F

    .line 50520
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    aput v0, v1, v12

    .line 50521
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Rk;->A03:I

    if-eqz p1, :cond_0

    div-int/lit8 v0, v0, 0x5

    :cond_0
    int-to-float v0, v0

    aput v0, v1, v13

    .line 50522
    invoke-static {v2, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 50523
    .local v2, "browserTransAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50524
    iget v11, v4, Lcom/facebook/ads/redexgen/X/Rk;->A03:I

    div-int/2addr v11, v7

    iget v2, v4, Lcom/facebook/ads/redexgen/X/Rk;->A01:I

    div-int/2addr v2, v7

    sub-int/2addr v11, v2

    .line 50525
    .local v9, "mediaViewTop":I
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    new-array v8, v7, [F

    .line 50526
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v8, v12

    if-nez p1, :cond_1

    iget-boolean v2, v4, Lcom/facebook/ads/redexgen/X/Rk;->A0G:Z

    if-eqz v2, :cond_8

    :cond_1
    const/4 v2, 0x0

    :goto_1
    aput v2, v8, v13

    .line 50527
    invoke-static {v10, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 50528
    .local v13, "mediaViewTransAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50529
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    if-nez v0, :cond_7

    const/4 v8, 0x0

    .line 50530
    .local v7, "mediaProgressbarHeight":I
    :goto_2
    if-eqz p1, :cond_6

    .line 50531
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Rk;->A02:I

    div-int/lit8 v1, v0, 0x5

    sub-int/2addr v1, v8

    .line 50532
    .local v12, "mediaTransAnimToY":I
    :goto_3
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Rk;->A0O:Lcom/facebook/ads/redexgen/X/I6;

    if-eqz v8, :cond_2

    .line 50533
    new-array v5, v7, [F

    .line 50534
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/I6;->getY()F

    move-result v0

    aput v0, v5, v12

    int-to-float v0, v1

    aput v0, v5, v13

    .line 50535
    invoke-static {v8, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 50536
    .local v4, "mediaProgressbarTransAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    new-array v1, v7, [I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    .line 50537
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, v1, v12

    .line 50538
    if-eqz p1, :cond_5

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Rk;->A03:I

    div-int/lit8 v0, v0, 0x5

    :goto_4
    aput v0, v1, v13

    .line 50539
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 50540
    const-wide/16 v0, 0x1f4

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 50541
    .local p1, "mediaViewScaleAnim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/facebook/ads/redexgen/X/O1;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/O1;-><init>(Lcom/facebook/ads/redexgen/X/Rk;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 50542
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 50543
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50544
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v12

    aput-object v2, v0, v13

    aput-object v1, v0, v7

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 50545
    if-eqz v6, :cond_4

    .line 50546
    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50547
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v6, v0, v12

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 50548
    :goto_5
    if-eqz v5, :cond_3

    .line 50549
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50550
    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v5, v0, v12

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 50551
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/O2;

    invoke-direct {v0, v4, p1}, Lcom/facebook/ads/redexgen/X/O2;-><init>(Lcom/facebook/ads/redexgen/X/Rk;Z)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50552
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 50553
    return-void

    .line 50554
    :cond_4
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x1

    goto :goto_5

    .line 50555
    :cond_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Rk;->A01:I

    goto :goto_4

    .line 50556
    :cond_6
    iget v1, v4, Lcom/facebook/ads/redexgen/X/Rk;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rk;->A0U:I

    sub-int/2addr v1, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Rk;->A0W:I

    sub-int/2addr v1, v0

    goto/16 :goto_3

    .line 50557
    :cond_7
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I6;->getHeight()I

    move-result v8

    goto/16 :goto_2

    .line 50558
    :cond_8
    int-to-float v2, v11

    goto/16 :goto_1

    .line 50559
    :cond_9
    move-object v6, v5

    goto/16 :goto_0
.end method

.method private A0R(Z)V
    .locals 3

    .line 50560
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rk;->setupLayoutConfiguration(Z)V

    .line 50561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    .line 50563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50564
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0H:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 50565
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A03:I

    div-int/lit8 v0, v0, 0x5

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50566
    .local p0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50567
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50568
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 50569
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A06:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Rk;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 50570
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0B()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50571
    .end local p0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50572
    .restart local p0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50573
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0C()V

    goto :goto_0

    .line 50574
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const-string v1, "vsQMzuL85pElT0uyLkCOYkbLp6FYZ6Kp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Jg0wEDfumSgIDDBadFZcUW5HjHx0Xq4t"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0I()V

    .line 50575
    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/Rk;)Z
    .locals 0

    .line 50576
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0I:Z

    return p0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/Rk;Z)Z
    .locals 0

    .line 50577
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0I:Z

    return p1
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .line 50618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A04()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setUpBrowserControls(Lcom/facebook/ads/redexgen/X/SA;)V
    .locals 5

    .line 50625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0B:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/N9;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/N9;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0B:Lcom/facebook/ads/redexgen/X/N9;

    .line 50627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0B:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/NI;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/SA;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/NI;)V

    .line 50628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0B:Lcom/facebook/ads/redexgen/X/N9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50629
    const/4 v4, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50630
    .local p0, "controlsViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50631
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0B:Lcom/facebook/ads/redexgen/X/N9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rn;-><init>(Lcom/facebook/ads/redexgen/X/Rk;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->setListener(Lcom/facebook/ads/redexgen/X/N8;)V

    .line 50632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0B:Lcom/facebook/ads/redexgen/X/N9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O0;-><init>(Lcom/facebook/ads/redexgen/X/Rk;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N9;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50633
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0B:Lcom/facebook/ads/redexgen/X/N9;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0C:Lcom/facebook/ads/redexgen/X/NA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 50635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    .line 50636
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v3

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/NA;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0C:Lcom/facebook/ads/redexgen/X/NA;

    .line 50637
    sget v0, Lcom/facebook/ads/redexgen/X/Rk;->A0S:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50638
    .local p1, "browserProgressBarParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0C:Lcom/facebook/ads/redexgen/X/NA;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50639
    return-void
.end method

.method private setupLayoutConfiguration(Z)V
    .locals 3

    .line 50640
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0G:Z

    .line 50641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A05:I

    .line 50642
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0H:Z

    .line 50643
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A02:I

    .line 50644
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A04:I

    .line 50645
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A02:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0G:Z

    if-eqz v0, :cond_0

    :goto_2
    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A03:I

    .line 50646
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A01:I

    .line 50647
    return-void

    .line 50648
    :cond_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Rk;->A05:I

    goto :goto_2

    .line 50649
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->getToolbarHeight()I

    move-result v0

    goto :goto_1

    .line 50650
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0U()V
    .locals 1

    .line 50578
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ns;->A0U()V

    .line 50579
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rk;->A0P:Lcom/facebook/ads/redexgen/X/Rk;

    .line 50580
    return-void
.end method

.method public final A0V()V
    .locals 3

    .line 50581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v2

    .line 50582
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M6;
    const/4 v1, 0x0

    if-eqz v2, :cond_0

    .line 50583
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/M6;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/M6;->setPageDetailsVisible(Z)V

    .line 50584
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0J:Z

    .line 50585
    return-void

    .line 50586
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0W()V
    .locals 2

    .line 50587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0E:Lcom/facebook/ads/redexgen/X/Nw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setPageDetailsVisible(Z)V

    .line 50589
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0J:Z

    .line 50590
    return-void
.end method

.method public final A0X()V
    .locals 1

    .line 50591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0K:Z

    .line 50592
    return-void
.end method

.method public final A0Y()V
    .locals 1

    .line 50593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0K:Z

    .line 50594
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 5
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50595
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ns;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 50596
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v4

    .line 50597
    .local p0, "description":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 50598
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rk;->A08:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 50599
    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_1

    .line 50600
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A04:I

    int-to-double v1, v0

    div-double/2addr v1, p3

    double-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A01:I

    .line 50601
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0G:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A02:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A01:I

    .line 50602
    return-void

    .line 50603
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A01:I

    goto :goto_1

    .line 50604
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rk;->A09:Landroid/widget/TextView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rk;->A0R:[Ljava/lang/String;

    const-string v1, "VgJeomTAZA5kOTOI37nKcnntHqCv9Rb0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "TiOxfsXb8smulQbFm5BrVCbrl9dIk9np"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0a()Z
    .locals 1

    .line 50605
    const/4 v0, 0x1

    return v0
.end method

.method public final A0b(Z)Z
    .locals 2

    .line 50606
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0c()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 50607
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0Q(Z)V

    .line 50608
    const/4 v0, 0x1

    return v0

    .line 50609
    :cond_0
    return v0
.end method

.method public final A0c()Z
    .locals 1

    .line 50610
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0H:Z

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 50611
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50612
    const/4 v0, 0x3

    return v0

    .line 50613
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0K:Z

    if-eqz v0, :cond_1

    .line 50614
    const/4 v0, 0x2

    return v0

    .line 50615
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rk;->A0J:Z

    if-eqz v0, :cond_2

    .line 50616
    const/4 v0, 0x4

    return v0

    .line 50617
    :cond_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 50619
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ns;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50620
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0R(Z)V

    .line 50621
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0J()V

    .line 50622
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Rk;->setupLayoutConfiguration(Z)V

    .line 50623
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Rk;->A0H()V

    .line 50624
    return-void
.end method
