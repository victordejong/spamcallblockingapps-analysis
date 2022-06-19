.class public final Lcom/facebook/ads/redexgen/X/Tg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HH;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/HF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/HH;

.field public final A03:Lcom/facebook/ads/redexgen/X/HH;

.field public final A04:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A05:Lcom/facebook/ads/redexgen/X/Hj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HF;ILcom/facebook/ads/redexgen/X/Hj;)V
    .locals 0

    .line 54959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54960
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tg;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    .line 54961
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tg;->A03:Lcom/facebook/ads/redexgen/X/HH;

    .line 54962
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Tg;->A02:Lcom/facebook/ads/redexgen/X/HH;

    .line 54963
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/HF;

    .line 54964
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:I

    .line 54965
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Tg;->A05:Lcom/facebook/ads/redexgen/X/Hj;

    .line 54966
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/Th;
    .locals 8

    .line 54967
    new-instance v1, Lcom/facebook/ads/redexgen/X/Th;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Tg;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A03:Lcom/facebook/ads/redexgen/X/HH;

    .line 54968
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4B()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A02:Lcom/facebook/ads/redexgen/X/HH;

    .line 54969
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4B()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v4

    .line 54970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tg;->A01:Lcom/facebook/ads/redexgen/X/HF;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HF;->createDataSink()Lcom/facebook/ads/redexgen/X/HG;

    move-result-object v5

    :goto_0
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Tg;->A00:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Tg;->A05:Lcom/facebook/ads/redexgen/X/Hj;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Th;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HG;ILcom/facebook/ads/redexgen/X/Hj;)V

    .line 54971
    return-object v1

    .line 54972
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A4B()Lcom/facebook/ads/redexgen/X/HI;
    .locals 1

    .line 54973
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tg;->A00()Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v0

    return-object v0
.end method
