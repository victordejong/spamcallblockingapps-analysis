.class public Lcom/callerid/block/customview/CustomViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected W(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/rey/material/widget/Slider;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/rey/material/widget/Switch;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected g(Landroid/view/View;ZIII)Z
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/view/View;ZIII)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/callerid/block/customview/CustomViewPager;->W(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
