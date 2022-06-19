.class public Lcom/facebook/ads/redexgen/X/4L;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
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

    .line 10935
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 10936
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 10938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 10939
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10940
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10941
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 10943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 10944
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 10945
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10946
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 10948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 10949
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 10950
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10951
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 10953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 10954
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4L;)V
    .locals 1

    .line 10955
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10956
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A03:Landroid/graphics/Rect;

    .line 10957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A01:Z

    .line 10958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A02:Z

    .line 10959
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 10960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    return v0
.end method

.method public final A01()Z
    .locals 1

    .line 10961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0g()Z

    move-result v0

    return v0
.end method

.method public final A02()Z
    .locals 1

    .line 10962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    return v0
.end method

.method public final A03()Z
    .locals 1

    .line 10963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A0c()Z

    move-result v0

    return v0
.end method
