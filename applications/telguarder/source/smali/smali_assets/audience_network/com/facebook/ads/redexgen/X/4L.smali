.class public Lcom/facebook/ads/redexgen/X/4L;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4c;

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 11041
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 11042
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 11043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 11044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 11045
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 11046
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11047
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 11048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 11049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 11050
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 11051
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11052
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 11053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 11054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 11055
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 11056
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11057
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 11058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 11059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 11060
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4L;)V
    .locals 1

    .line 11061
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11062
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 11063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 11064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 11065
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 11066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    return v0
.end method

.method public final A01()Z
    .locals 1

    .line 11067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0g()Z

    move-result v0

    return v0
.end method

.method public final A02()Z
    .locals 1

    .line 11068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    return v0
.end method

.method public final A03()Z
    .locals 1

    .line 11069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    return v0
.end method
