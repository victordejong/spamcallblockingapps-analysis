.class public Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;


# direct methods
.method public constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {p3}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->c(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)I

    move-result p3

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->d(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    mul-int p1, p1, p3

    int-to-float p1, p1

    iget-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {p3}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->c(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)I

    move-result p3

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->d(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    int-to-float p3, p3

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->e(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->f(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->g(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->h(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)Lzc;

    move-result-object p2

    invoke-virtual {p2}, Lzc;->n()Lad;

    move-result-object p2

    invoke-virtual {p2, p1}, Lad;->e(F)Lad;

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator$b;->a:Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;->h(Lcom/tbuonomo/viewpagerdotsindicator/SpringDotsIndicator;)Lzc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lzc;->m(F)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
