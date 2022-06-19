.class public final Lcom/facebook/ads/redexgen/X/Ah;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/YL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodQueueTracker"
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Af;

.field public A01:Lcom/facebook/ads/redexgen/X/Ai;

.field public A02:Lcom/facebook/ads/redexgen/X/Ai;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Ad;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Ai;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ah;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    .line 21492
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ad;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ad;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A04:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21493
    sget-object v0, Lcom/facebook/ads/redexgen/X/Af;->A01:Lcom/facebook/ads/redexgen/X/Af;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    .line 21494
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Ai;Lcom/facebook/ads/redexgen/X/Af;)Lcom/facebook/ads/redexgen/X/Ai;
    .locals 4

    .line 21495
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21496
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ah;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Ai;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/Af;
    :cond_0
    return-object p1

    .line 21497
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A04:Lcom/facebook/ads/redexgen/X/Ad;

    const/4 v0, 0x1

    .line 21498
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0B(ILcom/facebook/ads/redexgen/X/Ad;Z)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A03:Ljava/lang/Object;

    .line 21499
    .local p0, "uid":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A05(Ljava/lang/Object;)I

    move-result v1

    .line 21500
    .local p1, "newPeriodIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 21501
    return-object p1

    .line 21502
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A04:Lcom/facebook/ads/redexgen/X/Ad;

    invoke-virtual {p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    .line 21503
    .local p2, "newWindowIndex":I
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    .line 21504
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/FC;->A01(I)Lcom/facebook/ads/redexgen/X/FC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 21505
    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ah;)Ljava/util/ArrayList;
    .locals 0

    .line 21506
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    return-object p0
.end method

.method private A02()V
    .locals 2

    .line 21507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21508
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A01:Lcom/facebook/ads/redexgen/X/Ai;

    .line 21509
    :cond_0
    return-void
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KiEP2P9b6TLdkEYwaN5ndNVtk9NQ5Y9p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yrQkoPMIPCp0FUw5bDslSTdDJuyK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OV0qCkDU4pR0s48LAW0LoXOWDo4ZunO9"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CNzCLbPvty9jTQMUswZxpqZWQtb7JEv9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Vf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ol3MR5ayifXszMqJK7WjfrE4Lr8bJhi8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Hh8EscwfVF04VFT3j4sJSJqD2SmetI3K"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DN3PdRai96zSFxDytd4qNigxYecPuw8S"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/Ai;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A01:Lcom/facebook/ads/redexgen/X/Ai;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/Ai;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21512
    const/4 v0, 0x0

    .line 21513
    :goto_0
    return-object v0

    .line 21514
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    goto :goto_0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/Ai;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A03:Z

    if-eqz v0, :cond_1

    .line 21516
    :cond_0
    const/4 v0, 0x0

    .line 21517
    :goto_0
    return-object v0

    .line 21518
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    goto :goto_0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/Ai;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    return-object v0
.end method

.method public final A08(I)Lcom/facebook/ads/redexgen/X/FC;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21520
    const/4 v6, 0x0

    .line 21521
    .local p0, "match":Lcom/facebook/ads/redexgen/X/FC;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    if-eqz v0, :cond_2

    .line 21522
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A01()I

    move-result v5

    .line 21523
    .local p1, "timelinePeriodCount":I
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 21524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ai;

    .line 21525
    .local v0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    .line 21526
    .local v5, "periodIndex":I
    if-ge v2, v5, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A04:Lcom/facebook/ads/redexgen/X/Ad;

    .line 21527
    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Af;->A0A(ILcom/facebook/ads/redexgen/X/Ad;)Lcom/facebook/ads/redexgen/X/Ad;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ad;->A00:I

    if-ne v0, p1, :cond_1

    .line 21528
    if-eqz v6, :cond_0

    .line 21529
    const/4 v0, 0x0

    return-object v0

    .line 21530
    :cond_0
    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/Ai;->A01:Lcom/facebook/ads/redexgen/X/FC;

    .line 21531
    .end local v0    # "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    .end local v5    # "periodIndex":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21532
    .end local p1    # "timelinePeriodCount":I
    .end local v6    # "i":I
    :cond_2
    return-object v6
.end method

.method public final A09()V
    .locals 1

    .line 21533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A03:Z

    .line 21534
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ah;->A02()V

    .line 21535
    return-void
.end method

.method public final A0A()V
    .locals 1

    .line 21536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A03:Z

    .line 21537
    return-void
.end method

.method public final A0B(I)V
    .locals 0

    .line 21538
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ah;->A02()V

    .line 21539
    return-void
.end method

.method public final A0C(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 4

    .line 21540
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(ILcom/facebook/ads/redexgen/X/FC;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Af;->A0F()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const-string v1, "SFS5Xb2c2LrmqtbhPrHYALinOi1MehvJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 21542
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ah;->A02()V

    .line 21543
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0D(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 2

    .line 21544
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 21545
    .local p0, "mediaPeriod":Lcom/facebook/ads/redexgen/X/Ai;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ai;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    .line 21548
    :cond_0
    return-void

    .line 21549
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    goto :goto_0
.end method

.method public final A0E(ILcom/facebook/ads/redexgen/X/FC;)V
    .locals 1

    .line 21550
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ai;-><init>(ILcom/facebook/ads/redexgen/X/FC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    .line 21551
    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Af;)V
    .locals 4

    .line 21552
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 21553
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A05:Ljava/util/ArrayList;

    .line 21554
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ai;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Ah;->A00(Lcom/facebook/ads/redexgen/X/Ai;Lcom/facebook/ads/redexgen/X/Af;)Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    .line 21555
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21556
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21557
    .end local p0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ah;->A06:[Ljava/lang/String;

    const-string v1, "OE27bQwCbSc4SHZoCTNTYydrCDTv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 21558
    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Ah;->A00(Lcom/facebook/ads/redexgen/X/Ai;Lcom/facebook/ads/redexgen/X/Af;)Lcom/facebook/ads/redexgen/X/Ai;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A02:Lcom/facebook/ads/redexgen/X/Ai;

    .line 21559
    :cond_1
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ah;->A00:Lcom/facebook/ads/redexgen/X/Af;

    .line 21560
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ah;->A02()V

    .line 21561
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0G()Z
    .locals 1

    .line 21562
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ah;->A03:Z

    return v0
.end method
