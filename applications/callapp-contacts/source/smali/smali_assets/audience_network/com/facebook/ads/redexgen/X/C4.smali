.class public final Lcom/facebook/ads/redexgen/X/C4;
.super Lcom/facebook/ads/redexgen/X/aI;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/F9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;,
        Lcom/facebook/ads/redexgen/X/aT;,
        Lcom/facebook/ads/internal/exoplayer2/source/ExtractorMediaSource$EventListener;
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:I

.field public final A03:I

.field public final A04:Landroid/net/Uri;

.field public final A05:Lcom/facebook/ads/redexgen/X/CJ;

.field public final A06:Lcom/facebook/ads/redexgen/X/HH;

.field public final A07:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A08:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/CJ;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23626
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aI;-><init>()V

    .line 23627
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/C4;->A04:Landroid/net/Uri;

    .line 23628
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/C4;->A06:Lcom/facebook/ads/redexgen/X/HH;

    .line 23629
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/C4;->A05:Lcom/facebook/ads/redexgen/X/CJ;

    .line 23630
    iput p4, p0, Lcom/facebook/ads/redexgen/X/C4;->A03:I

    .line 23631
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/C4;->A08:Ljava/lang/String;

    .line 23632
    iput p6, p0, Lcom/facebook/ads/redexgen/X/C4;->A02:I

    .line 23633
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/C4;->A00:J

    .line 23634
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/C4;->A07:Ljava/lang/Object;

    .line 23635
    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/CJ;ILjava/lang/String;ILjava/lang/Object;Lcom/facebook/ads/redexgen/X/FA;)V
    .locals 0

    .line 23636
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/C4;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/CJ;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private A00(JZ)V
    .locals 7

    .line 23637
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/C4;->A00:J

    .line 23638
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/C4;->A01:Z

    .line 23639
    new-instance v1, Lcom/facebook/ads/redexgen/X/aa;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/C4;->A00:J

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/C4;->A01:Z

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/C4;->A07:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/aa;-><init>(JZZLjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/aI;->A01(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)V

    .line 23640
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 0

    .line 23641
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/YF;Z)V
    .locals 3

    .line 23642
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/C4;->A00:J

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/C4;->A00(JZ)V

    .line 23643
    return-void
.end method

.method public final A4Q(Lcom/facebook/ads/redexgen/X/FC;Lcom/facebook/ads/redexgen/X/HA;)Lcom/facebook/ads/redexgen/X/aW;
    .locals 11

    .line 23644
    iget v0, p1, Lcom/facebook/ads/redexgen/X/FC;->A02:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 23645
    new-instance v1, Lcom/facebook/ads/redexgen/X/C5;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/C4;->A04:Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C4;->A06:Lcom/facebook/ads/redexgen/X/HH;

    .line 23646
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4E()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/C4;->A05:Lcom/facebook/ads/redexgen/X/CJ;

    .line 23647
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CJ;->A4I()[Lcom/facebook/ads/redexgen/X/CG;

    move-result-object v4

    iget v5, p0, Lcom/facebook/ads/redexgen/X/C4;->A03:I

    .line 23648
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/aI;->A00(Lcom/facebook/ads/redexgen/X/FC;)Lcom/facebook/ads/redexgen/X/FP;

    move-result-object v6

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/C4;->A08:Ljava/lang/String;

    iget v10, p0, Lcom/facebook/ads/redexgen/X/C4;->A02:I

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/C5;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HI;[Lcom/facebook/ads/redexgen/X/CG;ILcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/F9;Lcom/facebook/ads/redexgen/X/HA;Ljava/lang/String;I)V

    .line 23649
    return-object v1

    .line 23650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A91()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23651
    return-void
.end method

.method public final ABd(JZ)V
    .locals 3

    .line 23652
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/C4;->A00:J

    .line 23653
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/C4;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/C4;->A01:Z

    if-ne v0, p3, :cond_1

    .line 23654
    return-void

    .line 23655
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/C4;->A00(JZ)V

    .line 23656
    return-void
.end method

.method public final AD4(Lcom/facebook/ads/redexgen/X/aW;)V
    .locals 0

    .line 23657
    check-cast p1, Lcom/facebook/ads/redexgen/X/C5;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/C5;->A0S()V

    .line 23658
    return-void
.end method
