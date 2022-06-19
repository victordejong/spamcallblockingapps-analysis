.class Lcom/rey/material/widget/LTabIndicator$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/LTabIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/rey/material/widget/LTabIndicator;


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/LTabIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/LTabIndicator;Lcom/rey/material/widget/LTabIndicator$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rey/material/widget/LTabIndicator$c;-><init>(Lcom/rey/material/widget/LTabIndicator;)V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {v0, p1}, Lcom/rey/material/widget/LTabIndicator;->e(Lcom/rey/material/widget/LTabIndicator;I)I

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {v0, p2}, Lcom/rey/material/widget/LTabIndicator;->f(Lcom/rey/material/widget/LTabIndicator;F)F

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {v0}, Lcom/rey/material/widget/LTabIndicator;->g(Lcom/rey/material/widget/LTabIndicator;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/rey/material/widget/LTabIndicator;->h(Lcom/rey/material/widget/LTabIndicator;II)V

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    iget-object v0, v0, Lcom/rey/material/widget/LTabIndicator;->b:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$i;->a(IFI)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {v0}, Lcom/rey/material/widget/LTabIndicator;->b(Lcom/rey/material/widget/LTabIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/rey/material/widget/LTabIndicator;->h(Lcom/rey/material/widget/LTabIndicator;II)V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    iget-object v0, v0, Lcom/rey/material/widget/LTabIndicator;->b:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->b(I)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {v0, p1}, Lcom/rey/material/widget/LTabIndicator;->i(Lcom/rey/material/widget/LTabIndicator;I)V

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$c;->b:Lcom/rey/material/widget/LTabIndicator;

    iget-object v0, v0, Lcom/rey/material/widget/LTabIndicator;->b:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_0
    return-void
.end method
