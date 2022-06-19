.class public final Lcom/facebook/ads/redexgen/X/LP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnalysisWindow"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:I

.field public final A02:I

.field public final A03:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 42572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42573
    iput p1, p0, Lcom/facebook/ads/redexgen/X/LP;->A02:I

    .line 42574
    iput p2, p0, Lcom/facebook/ads/redexgen/X/LP;->A01:I

    .line 42575
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A04:Ljava/util/Deque;

    .line 42576
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A03:Ljava/util/Deque;

    .line 42577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Ljava/lang/String;

    .line 42578
    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A03:Ljava/util/Deque;

    return-object v0
.end method

.method public final A01()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A04:Ljava/util/Deque;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 42581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()V
    .locals 2

    .line 42582
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 42583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A04:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 42584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A02:I

    if-le v1, v0, :cond_0

    .line 42585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 42586
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A03:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 42587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A03:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Ljava/lang/String;

    .line 42588
    :goto_0
    return-void

    .line 42589
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Ljava/lang/String;

    goto :goto_0
.end method

.method public final A04(Ljava/lang/String;)V
    .locals 2

    .line 42590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A03:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 42591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A03:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A01:I

    if-gt v1, v0, :cond_0

    .line 42592
    return-void

    .line 42593
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 42594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A04:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 42595
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A03:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A00:Ljava/lang/String;

    .line 42596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A02:I

    if-le v1, v0, :cond_2

    .line 42597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LP;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 42598
    :cond_2
    return-void
.end method
