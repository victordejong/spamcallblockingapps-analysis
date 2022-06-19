.class public final Lcom/facebook/ads/redexgen/X/4F;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10478
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4c;I)Lcom/facebook/ads/redexgen/X/4F;
    .locals 2

    .line 10479
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    .line 10480
    .local p0, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    .line 10481
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A03:I

    .line 10482
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A02:I

    .line 10483
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    .line 10484
    return-object p0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4F;
    .locals 1

    .line 10485
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4F;->A00(Lcom/facebook/ads/redexgen/X/4c;I)Lcom/facebook/ads/redexgen/X/4F;

    move-result-object v0

    return-object v0
.end method
