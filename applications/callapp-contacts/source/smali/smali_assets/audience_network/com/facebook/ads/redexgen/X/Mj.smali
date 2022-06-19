.class public abstract Lcom/facebook/ads/redexgen/X/Mj;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/29;

.field public A02:Lcom/facebook/ads/redexgen/X/2A;

.field public A03:Lcom/facebook/ads/redexgen/X/2B;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A05:Lcom/facebook/ads/redexgen/X/JC;

.field public final A06:Lcom/facebook/ads/redexgen/X/M9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/MA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Ljava/lang/String;

.field public final A09:Lcom/facebook/ads/redexgen/X/1S;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0A:Lcom/facebook/ads/redexgen/X/Ml;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V
    .locals 7

    .line 44314
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Mj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MA;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 44315
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MA;Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 1
    .param p4    # Lcom/facebook/ads/redexgen/X/1S;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/ads/redexgen/X/MA;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/M9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44316
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44317
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A00:I

    .line 44318
    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A04:Lcom/facebook/ads/redexgen/X/29;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A01:Lcom/facebook/ads/redexgen/X/29;

    .line 44319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A03:Lcom/facebook/ads/redexgen/X/2B;

    .line 44320
    new-instance v0, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/Mj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A0A:Lcom/facebook/ads/redexgen/X/Ml;

    .line 44321
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    .line 44322
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Mj;->A05:Lcom/facebook/ads/redexgen/X/JC;

    .line 44323
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Mj;->A07:Lcom/facebook/ads/redexgen/X/MA;

    .line 44324
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Mj;->A06:Lcom/facebook/ads/redexgen/X/M9;

    .line 44325
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Mj;->A08:Ljava/lang/String;

    .line 44326
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Mj;->A09:Lcom/facebook/ads/redexgen/X/1S;

    .line 44327
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Mj;)I
    .locals 2

    .line 44328
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A00:I

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Mj;)I
    .locals 2

    .line 44329
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A00:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A00:I

    return v1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/29;
    .locals 0

    .line 44330
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A01:Lcom/facebook/ads/redexgen/X/29;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Mj;Lcom/facebook/ads/redexgen/X/29;)Lcom/facebook/ads/redexgen/X/29;
    .locals 0

    .line 44331
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A01:Lcom/facebook/ads/redexgen/X/29;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/2A;
    .locals 0

    .line 44332
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A02:Lcom/facebook/ads/redexgen/X/2A;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/2B;
    .locals 0

    .line 44333
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A03:Lcom/facebook/ads/redexgen/X/2B;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 44334
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A04:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/M9;
    .locals 0

    .line 44335
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A06:Lcom/facebook/ads/redexgen/X/M9;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Mj;)Lcom/facebook/ads/redexgen/X/MA;
    .locals 0

    .line 44336
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A07:Lcom/facebook/ads/redexgen/X/MA;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Mj;)Ljava/lang/String;
    .locals 0

    .line 44337
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A08:Ljava/lang/String;

    return-object p0
.end method

.method private A0A()V
    .locals 3

    .line 44338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A02:Lcom/facebook/ads/redexgen/X/2A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44339
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Mj;->A05:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A08:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A02:Lcom/facebook/ads/redexgen/X/2A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2A;->A03()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8N(Ljava/lang/String;Ljava/util/Map;)V

    .line 44340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A02:Lcom/facebook/ads/redexgen/X/2A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2A;->A04()V

    .line 44341
    :cond_0
    return-void
.end method

.method private A0B()V
    .locals 1

    .line 44342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A03:Lcom/facebook/ads/redexgen/X/2B;

    .line 44343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A02:Lcom/facebook/ads/redexgen/X/2A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2A;->A06()V

    .line 44344
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mj;->A0K()V

    .line 44345
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 2

    .line 44346
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A02:Lcom/facebook/ads/redexgen/X/2A;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A01:Lcom/facebook/ads/redexgen/X/29;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2A;->A09(Lcom/facebook/ads/redexgen/X/29;)V

    .line 44347
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A01:Lcom/facebook/ads/redexgen/X/29;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0M(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V

    .line 44348
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A03()V

    .line 44349
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mj;->A0O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44350
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mj;->A0A()V

    .line 44351
    :cond_0
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 3

    .line 44352
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A03:Lcom/facebook/ads/redexgen/X/2B;

    .line 44353
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Mj;->A02:Lcom/facebook/ads/redexgen/X/2A;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A01:Lcom/facebook/ads/redexgen/X/29;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2A;->A0A(Lcom/facebook/ads/redexgen/X/29;I)V

    .line 44354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A01:Lcom/facebook/ads/redexgen/X/29;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->A0N(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V

    .line 44355
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Mj;)V
    .locals 0

    .line 44356
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mj;->A0B()V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Mj;)V
    .locals 0

    .line 44357
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mj;->A0A()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Mj;Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 0

    .line 44358
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Mj;->A0D(Lcom/facebook/ads/redexgen/X/2B;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Mj;Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 0

    .line 44359
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Mj;->A0C(Lcom/facebook/ads/redexgen/X/2B;)V

    return-void
.end method


# virtual methods
.method public final A0I()V
    .locals 0

    .line 44360
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mj;->A0A()V

    .line 44361
    return-void
.end method

.method public final A0J()V
    .locals 3

    .line 44362
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Mj;->A08:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A05:Lcom/facebook/ads/redexgen/X/JC;

    new-instance v1, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/2A;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2A;-><init>(Lcom/facebook/ads/redexgen/X/JJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mj;->A02:Lcom/facebook/ads/redexgen/X/2A;

    .line 44363
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mj;->A07:Lcom/facebook/ads/redexgen/X/MA;

    if-eqz v1, :cond_0

    .line 44364
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MA;->AB2(Z)V

    .line 44365
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mj;->A0B()V

    .line 44366
    return-void
.end method

.method public abstract A0K()V
.end method

.method public abstract A0L()V
.end method

.method public abstract A0M(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
.end method

.method public abstract A0N(Lcom/facebook/ads/redexgen/X/2B;Lcom/facebook/ads/redexgen/X/29;)V
.end method

.method public abstract A0O()Z
.end method
