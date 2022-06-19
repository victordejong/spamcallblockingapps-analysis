.class public Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;
.super Lyi1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->q()Lyi1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;


# direct methods
.method public constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-direct {p0}, Lyi1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->l(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(IIF)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->l(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->m(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)F

    move-result v2

    iget-object v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v3}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->m(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)F

    move-result v3

    iget-object v4, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v4}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->n(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    mul-float v3, v3, v4

    sub-float v4, v5, p3

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v3, v1, v2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->o(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;Landroid/widget/ImageView;I)V

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->l(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->m(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)F

    move-result v0

    iget-object v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->m(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)F

    move-result v2

    iget-object v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v3}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->n(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)F

    move-result v3

    sub-float/2addr v3, v5

    mul-float v2, v2, v3

    mul-float v2, v2, p3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v2, p2, v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->o(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;Landroid/widget/ImageView;I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lxi1;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Lxi1;

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)I

    move-result v1

    iget-object v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->d(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->e(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v3}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->d(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->e(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v3}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->d(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v4}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p3, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lxi1;->setColor(I)V

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->f(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->k(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-gt p1, p2, :cond_2

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->c(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)I

    move-result p1

    invoke-virtual {v0, p1}, Lxi1;->setColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lxi1;->setColor(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->l(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$c;->c:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->m(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->o(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;Landroid/widget/ImageView;I)V

    return-void
.end method
