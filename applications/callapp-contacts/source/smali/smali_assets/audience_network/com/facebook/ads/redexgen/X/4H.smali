.class public abstract Lcom/facebook/ads/redexgen/X/4H;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Landroid/graphics/Rect;ILcom/facebook/ads/redexgen/X/Eq;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10415
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10416
    return-void
.end method


# virtual methods
.method public final A01(Landroid/graphics/Rect;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 1

    .line 10417
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4L;->A00()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/ads/redexgen/X/4H;->A00(Landroid/graphics/Rect;ILcom/facebook/ads/redexgen/X/Eq;)V

    .line 10418
    return-void
.end method
