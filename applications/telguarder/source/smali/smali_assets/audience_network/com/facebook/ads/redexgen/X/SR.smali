.class public abstract Lcom/facebook/ads/redexgen/X/SR;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M8;


# static fields
.field public static A0E:[B


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/L8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Of;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Lcom/facebook/ads/redexgen/X/17;

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/LX;

.field public final A08:Lcom/facebook/ads/redexgen/X/M7;

.field public final A09:Lcom/facebook/ads/redexgen/X/bx;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0B:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0C:Lcom/facebook/ads/redexgen/X/JK;

.field public final A0D:Lcom/facebook/ads/redexgen/X/M6;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SR;->A0S()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/bx;)V
    .locals 7

    .line 52272
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A04:Z

    .line 52274
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A03:Z

    .line 52275
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SR;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 52276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 52277
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1A(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A06:Z

    .line 52278
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SR;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    .line 52279
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/SR;->A08:Lcom/facebook/ads/redexgen/X/M7;

    .line 52280
    new-instance v0, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LX;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A07:Lcom/facebook/ads/redexgen/X/LX;

    .line 52281
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52283
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A0C:Lcom/facebook/ads/redexgen/X/JK;

    .line 52284
    new-instance v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SR;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 52285
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SR;->A0C:Lcom/facebook/ads/redexgen/X/JK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52286
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0E()I

    move-result v6

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/JK;II)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    .line 52287
    return-void
.end method

.method private A0O(I)Lcom/facebook/ads/redexgen/X/1I;
    .locals 1

    .line 52288
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 52289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A05:Lcom/facebook/ads/redexgen/X/17;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    return-object v0

    .line 52290
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A05:Lcom/facebook/ads/redexgen/X/17;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    return-object v0
.end method

.method public static A0P(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SR;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x25

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0Q()V
    .locals 0

    .line 52291
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->removeAllViews()V

    .line 52292
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 52293
    return-void
.end method

.method private A0R()V
    .locals 7

    .line 52294
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52295
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0b()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A02:Lcom/facebook/ads/redexgen/X/Of;

    if-nez v0, :cond_0

    .line 52296
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/SR;->A04:Z

    .line 52297
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/SR;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52298
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52299
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Od;

    invoke-direct {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/Od;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52300
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/Od;

    move-result-object v0

    .line 52301
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Od;->A0B()Lcom/facebook/ads/redexgen/X/Of;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A02:Lcom/facebook/ads/redexgen/X/Of;

    .line 52302
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SR;->A02:Lcom/facebook/ads/redexgen/X/Of;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A0C:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0T:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 52303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A08:Lcom/facebook/ads/redexgen/X/M7;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/M7;->A3H(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 52304
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A08:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A02:Lcom/facebook/ads/redexgen/X/Of;

    invoke-interface {v1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/M7;->A3H(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 52305
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A02:Lcom/facebook/ads/redexgen/X/Of;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ST;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ST;-><init>(Lcom/facebook/ads/redexgen/X/SR;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Of;->A04(Lcom/facebook/ads/redexgen/X/Oe;)V

    .line 52306
    :goto_0
    return-void

    .line 52307
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A08:Lcom/facebook/ads/redexgen/X/M7;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/M7;->A3H(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 52308
    goto :goto_0
.end method

.method public static A0S()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SR;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x5dt
        -0x51t
        -0x53t
        0x6et
        -0x5at
        -0x5ft
        -0x5dt
        -0x5bt
        -0x5et
        -0x51t
        -0x51t
        -0x55t
        0x6et
        -0x5ft
        -0x5ct
        -0x4dt
        0x6et
        -0x57t
        -0x52t
        -0x4ct
        -0x5bt
        -0x4et
        -0x4dt
        -0x4ct
        -0x57t
        -0x4ct
        -0x57t
        -0x5ft
        -0x54t
        0x6et
        -0x57t
        -0x53t
        -0x50t
        -0x4et
        -0x5bt
        -0x4dt
        -0x4dt
        -0x57t
        -0x51t
        -0x52t
        0x6et
        -0x54t
        -0x51t
        -0x59t
        -0x59t
        -0x5bt
        -0x5ct
    .end array-data
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/1I;Z)V
    .locals 3

    .line 52309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    .line 52310
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->getToolbarHeight()I

    move-result v2

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52311
    .local p0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/M6;->A05(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 52313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/SR;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52314
    return-void
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/SR;Z)Z
    .locals 0

    .line 52315
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SR;->A04:Z

    return p1
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/SR;Z)Z
    .locals 0

    .line 52316
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SR;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0W()V
    .locals 1

    .line 52317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ns;

    if-nez v0, :cond_1

    .line 52318
    :cond_0
    return-void

    .line 52319
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ns;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0Y()V

    .line 52321
    :goto_0
    return-void

    .line 52322
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ns;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0X()V

    goto :goto_0
.end method

.method public final A0X(I)V
    .locals 2

    .line 52323
    new-instance v1, Lcom/facebook/ads/redexgen/X/SS;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/SS;-><init>(Lcom/facebook/ads/redexgen/X/SR;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/L8;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/L8;-><init>(ILcom/facebook/ads/redexgen/X/L7;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Lcom/facebook/ads/redexgen/X/L8;

    .line 52324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A03:Z

    .line 52325
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0W()V

    .line 52326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A07()Z

    .line 52327
    return-void
.end method

.method public final A0Y(Landroid/view/View;ZI)V
    .locals 3

    .line 52328
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Landroid/view/View;

    .line 52329
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A07:Lcom/facebook/ads/redexgen/X/LX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A02:Lcom/facebook/ads/redexgen/X/LW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A06(Lcom/facebook/ads/redexgen/X/LW;)V

    .line 52330
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0Q()V

    .line 52331
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52332
    .local p0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52333
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52334
    invoke-virtual {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/SR;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52335
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/SR;->A0O(I)Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    .line 52336
    .local p2, "colorInfo":Lcom/facebook/ads/redexgen/X/1I;
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/SR;->A0T(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 52337
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1I;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 52338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A08:Lcom/facebook/ads/redexgen/X/M7;

    if-eqz v0, :cond_0

    .line 52339
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0R()V

    .line 52340
    if-eqz p2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    .line 52341
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A07:Lcom/facebook/ads/redexgen/X/LX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LW;->A03:Lcom/facebook/ads/redexgen/X/LW;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A06(Lcom/facebook/ads/redexgen/X/LW;)V

    .line 52342
    :cond_0
    return-void

    .line 52343
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->getToolbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 5

    .line 52344
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A07:Lcom/facebook/ads/redexgen/X/LX;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LX;->A05(Landroid/view/Window;)V

    .line 52345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A05:Lcom/facebook/ads/redexgen/X/17;

    .line 52346
    const/4 v1, 0x0

    .line 52347
    .local p0, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v1

    .line 52349
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52350
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52351
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    .line 52352
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52353
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    .line 52354
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setPageDetails(Lcom/facebook/ads/redexgen/X/1S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1Z;)V

    .line 52355
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SV;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SV;-><init>(Lcom/facebook/ads/redexgen/X/SR;Lcom/facebook/ads/redexgen/X/50;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 52356
    return-void

    .line 52357
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 4

    .line 52358
    move-object v3, p0

    .line 52359
    .local p0, "interstitialView":Lcom/facebook/ads/redexgen/X/SR;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 52360
    .local p1, "fadeOut":Landroid/view/animation/Animation;
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 52361
    new-instance v0, Lcom/facebook/ads/redexgen/X/ME;

    invoke-direct {v0, p0, v3, p1}, Lcom/facebook/ads/redexgen/X/ME;-><init>(Lcom/facebook/ads/redexgen/X/SR;Lcom/facebook/ads/redexgen/X/SR;Lcom/facebook/ads/redexgen/X/50;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 52362
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/SR;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52363
    return-void
.end method

.method public final A0b()Z
    .locals 1

    .line 52364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A09:Lcom/facebook/ads/redexgen/X/bx;

    .line 52365
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 52366
    :goto_0
    return v0

    .line 52367
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0c()Z
    .locals 1

    .line 52368
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A03:Z

    return v0
.end method

.method public final A0d()Z
    .locals 1

    .line 52369
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A04:Z

    return v0
.end method

.method public abstract A0e()Z
.end method

.method public AB2(Z)V
    .locals 1

    .line 52370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Lcom/facebook/ads/redexgen/X/L8;

    if-eqz v0, :cond_0

    .line 52371
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A06()Z

    .line 52373
    :cond_0
    return-void
.end method

.method public ABR(Z)V
    .locals 1

    .line 52374
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Lcom/facebook/ads/redexgen/X/L8;

    if-eqz v0, :cond_0

    .line 52375
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A01:Lcom/facebook/ads/redexgen/X/L8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L8;->A07()Z

    .line 52377
    :cond_0
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/JC;
    .locals 1

    .line 52378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    return-object v0
.end method

.method public getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M7;
    .locals 1

    .line 52379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A08:Lcom/facebook/ads/redexgen/X/M7;

    return-object v0
.end method

.method public abstract getCloseButtonStyle()I
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation
.end method

.method public onDestroy()V
    .locals 2

    .line 52380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A07:Lcom/facebook/ads/redexgen/X/LX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LX;->A04()V

    .line 52381
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SR;->A0D:Lcom/facebook/ads/redexgen/X/M6;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarListener(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 52382
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SR;->A0Q()V

    .line 52383
    return-void
.end method

.method public setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 4

    .line 52384
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lc;->A06()V

    .line 52385
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52386
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SR;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v3

    .line 52387
    const/4 v2, 0x0

    const/16 v1, 0x2f

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SR;->A0P(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 52388
    :cond_0
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 0

    .line 52389
    return-void
.end method
